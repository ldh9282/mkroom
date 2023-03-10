package com.beatphobia.mkroom.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.beatphobia.mkroom.common.fileupload.FileInfoDTO;
import com.beatphobia.mkroom.common.paging.QuestPagingCreatorDTO;
import com.beatphobia.mkroom.common.paging.QuestPagingDTO;
import com.beatphobia.mkroom.domain.quest.QuestDTO;
import com.beatphobia.mkroom.service.quest.QuestBookingService;
import com.beatphobia.mkroom.service.review.ReviewService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping(value = "/quest/*")
public class QuestController {
	
	private QuestBookingService questBookingService ;
	private ReviewService reviewService;
	
	@GetMapping("/list")
	public String showQuestInfo(QuestPagingDTO questPagingDTO, Principal principal, Model model) {
		
		if(questPagingDTO.getLocationScope() == null) {
			questPagingDTO.setLocationScope("");
		} 
		if(questPagingDTO.getDiffScope() == null) {
			questPagingDTO.setDiffScope("");
		} 
		if(questPagingDTO.getQuestTimeScope() == null) {
			questPagingDTO.setQuestTimeScope("");
		} 
		
		if(principal != null) {
			String userId = principal.getName();
			model.addAttribute("BmanagerLocation", questBookingService.selectBmanagerLocation(userId));
		}

		
		model.addAttribute("questList", questBookingService.getQuestInfoList(questPagingDTO));
		
		model.addAttribute("locationList", questBookingService.getBranchLocationList());
		model.addAttribute("difficultyList", questBookingService.getDifficultyList());
		model.addAttribute("questTimeList", questBookingService.getQuestTimeList());
		
		long rowAmountTotal = questBookingService.getRowAmountTotal(questPagingDTO);
		QuestPagingCreatorDTO questPagingCreatorDTO = new QuestPagingCreatorDTO(rowAmountTotal, questPagingDTO);
		model.addAttribute("pagingCreator", questPagingCreatorDTO);
		
		return "/quest/list";
	}
	
	@GetMapping("/detail")
	public String showQuestInfoDetail(QuestDTO questDTO, Principal principal, Model model) {
		
		if(questDTO.getGenre() == null) {
			questDTO.setGenre("");
		} 
		if(questDTO.getDetailComment() == null) {
			questDTO.setDetailComment("");
		}
		
		
		if(principal != null) {
			String userId = principal.getName();
			model.addAttribute("BmanagerLocation", questBookingService.selectBmanagerLocation(userId));
		}
		
		
		model.addAttribute("questDetail", questBookingService.getQuestDetail(questDTO));
		
		model.addAttribute("questImageDetail", questBookingService.getQuestImageDetail(questDTO));
		
		return "/quest/detail";
	}
	
	//?????? ????????? ??????
	@GetMapping("/register")
	public String registerQuestInfo(Principal principal, Model model) {
				
		if(principal != null) {
			String userId = principal.getName();
			model.addAttribute("BmanagerLocation", questBookingService.selectBmanagerLocation(userId));
		}
		
		return "/quest/register" ; 
	}
	
	//????????????
	@PostMapping("/register")
	@Transactional
	public String registerQuestInfo(QuestDTO questDTO, RedirectAttributes attr) {
		
		if(questDTO.getFileInfos() == null) {
			questBookingService.registerQuestNoFile(questDTO);
		} else if((questDTO.getQuestName() != null) && (questDTO.getBranchLocation() != null)) {
			FileInfoDTO fileInfo = questDTO.getFileInfos().get(0);
			questBookingService.registerQuestInfo(questDTO, fileInfo);
		}
		
		return "redirect:/quest/list" ; 
	}
	
	//?????? ????????? ??????
	@GetMapping("/modify")
	public String InputQuestInfo(QuestDTO questDTO, QuestPagingDTO questPagingDTO, Principal principal, Model model) {
		
		if(principal != null) {
			String userId = principal.getName();
			model.addAttribute("BmanagerLocation", questBookingService.selectBmanagerLocation(userId));
		}
		
		model.addAttribute("questDetail", questBookingService.getQuestDetail(questDTO));
		model.addAttribute("questImageDetail", questBookingService.getQuestImageDetail(questDTO));
		
		return "/quest/modify" ; 
	}
	
	//???????????? ??? ????????? ????????? ????????? ?????????
	@PostMapping("/modify")
	@Transactional
	public String modifyQuestInfo(@RequestParam(value = "beforeQuestName") String beforeQuestName, 
								  @RequestParam(value = "beforeBranchLocation") String beforeBranchLocation, 
								  QuestDTO questDTO, Model model, Principal principal) {
		
		QuestDTO beforeQuestDTO = new QuestDTO(beforeQuestName, beforeBranchLocation, " ", 0, 0, 0, 0, " ", 0, null, null);
		
		//?????? ????????? ?????? ??? ????????? ???????????? ????????? ????????? ?????? ?????? if???
		if(questDTO.getFileInfos().get(0).getUuid().equals(questBookingService.getQuestImageDetail(beforeQuestDTO).getUuid()) &&
		   questDTO.getFileInfos().get(0).getFileType().equals(questBookingService.getQuestImageDetail(beforeQuestDTO).getFileType()) &&
		   questDTO.getFileInfos().get(0).getUploadPath().equals(questBookingService.getQuestImageDetail(beforeQuestDTO).getUploadPath()) && 
		   questDTO.getFileInfos().get(0).getFileName().equals(questBookingService.getQuestImageDetail(beforeQuestDTO).getFileName()) ) {
			
			questBookingService.modifyQuestInfo(beforeQuestDTO, questDTO);
			
			if(principal != null) {
				String userId = principal.getName();
				model.addAttribute("BmanagerLocation", questBookingService.selectBmanagerLocation(userId));
			}
			
			model.addAttribute("questDetail", questBookingService.getQuestDetail(questDTO));
			model.addAttribute("questImageDetail", questBookingService.getQuestImageDetail(questDTO));	
			
			return "/quest/detail"; 
		}
		
		removeAttachFiles(questBookingService.getQuestImageDetail(beforeQuestDTO));
		questBookingService.delQuestDetail(beforeQuestDTO);
		questBookingService.modifyQuestInfo(beforeQuestDTO, questDTO);
		
		FileInfoDTO fileInfo = questDTO.getFileInfos().get(0);
		questBookingService.registerQuestFile(questDTO, fileInfo);
		
		if(principal != null) {
			String userId = principal.getName();
			model.addAttribute("BmanagerLocation", questBookingService.selectBmanagerLocation(userId));
		}
		
		model.addAttribute("questDetail", questBookingService.getQuestDetail(questDTO));
		model.addAttribute("questImageDetail", questBookingService.getQuestImageDetail(questDTO));	
		
		return "/quest/detail"; 
	}
	
	//?????? ??????
	@GetMapping("/delete")
	@Transactional
	public String deleteQuestInfo(QuestDTO questDTO, RedirectAttributes attr) {
		
		if(questDTO.getDetailComment() == null) {
			questDTO.setDetailComment("");
		} 
		
		if(questDTO.getGenre() == null) {
			questDTO.setGenre("");
		} 
		
		removeAttachFiles(questBookingService.getQuestImageDetail(questDTO));
		questBookingService.delQuestDetail(questDTO);
		
		reviewService.removeDetialReview(questDTO);
		questBookingService.delQuestInfo(questDTO);
		
		return "redirect:/quest/list" ; 
	}
	
	
	//????????? ?????? ?????? ?????? ????????? 
	private void removeAttachFiles(FileInfoDTO fileInfoDTO) {

		if (fileInfoDTO == null) {
			return;
		}

		
		Path file =  Paths.get("C:/myupload/" + fileInfoDTO.getUploadPath() + "/" + fileInfoDTO.getUuid()+ "_" + fileInfoDTO.getFileName());
		try {
			Files.deleteIfExists(file); 

			if (Files.probeContentType(file).startsWith("image")) {
				Path thumbnail = Paths.get("C:/myupload/" + fileInfoDTO.getUploadPath() + "/s_" + fileInfoDTO.getUuid()+ "_" + fileInfoDTO.getFileName());
				Files.delete(thumbnail);
			}

		} catch (Exception e) {
			System.out.println("??????: " + e.getMessage());
		}
		
	}
	
	

	
	
	
	
}
