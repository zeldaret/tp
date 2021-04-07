lbl_8058140C:
/* 8058140C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80581410  7C 08 02 A6 */	mflr r0
/* 80581414  90 01 00 14 */	stw r0, 0x14(r1)
/* 80581418  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058141C  7C 7F 1B 78 */	mr r31, r3
/* 80581420  88 03 11 99 */	lbz r0, 0x1199(r3)
/* 80581424  28 00 00 00 */	cmplwi r0, 0
/* 80581428  41 82 00 50 */	beq lbl_80581478
/* 8058142C  3C 60 80 58 */	lis r3, l_arcName@ha /* 0x805815E4@ha */
/* 80581430  38 63 15 E4 */	addi r3, r3, l_arcName@l /* 0x805815E4@l */
/* 80581434  80 63 00 00 */	lwz r3, 0(r3)
/* 80581438  3C 80 80 58 */	lis r4, d_a_obj_hhashi__stringBase0@ha /* 0x805815AC@ha */
/* 8058143C  38 84 15 AC */	addi r4, r4, d_a_obj_hhashi__stringBase0@l /* 0x805815AC@l */
/* 80581440  38 84 00 18 */	addi r4, r4, 0x18
/* 80581444  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80581448  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8058144C  3C A5 00 02 */	addis r5, r5, 2
/* 80581450  38 C0 00 80 */	li r6, 0x80
/* 80581454  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80581458  4B AB AF 25 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8058145C  7C 64 1B 78 */	mr r4, r3
/* 80581460  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80581464  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80581468  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8058146C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80581470  7C 05 07 74 */	extsb r5, r0
/* 80581474  4B AA B6 BD */	bl removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
lbl_80581478:
/* 80581478  38 7F 10 18 */	addi r3, r31, 0x1018
/* 8058147C  3C 80 80 58 */	lis r4, l_arcName@ha /* 0x805815E4@ha */
/* 80581480  38 84 15 E4 */	addi r4, r4, l_arcName@l /* 0x805815E4@l */
/* 80581484  80 84 00 00 */	lwz r4, 0(r4)
/* 80581488  4B AA BB 81 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8058148C  38 60 00 01 */	li r3, 1
/* 80581490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80581494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80581498  7C 08 03 A6 */	mtlr r0
/* 8058149C  38 21 00 10 */	addi r1, r1, 0x10
/* 805814A0  4E 80 00 20 */	blr 
