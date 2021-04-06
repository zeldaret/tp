lbl_809813E8:
/* 809813E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809813EC  7C 08 02 A6 */	mflr r0
/* 809813F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809813F4  39 61 00 20 */	addi r11, r1, 0x20
/* 809813F8  4B 9E 0D E1 */	bl _savegpr_28
/* 809813FC  7C 7F 1B 78 */	mr r31, r3
/* 80981400  7C 9D 23 78 */	mr r29, r4
/* 80981404  7C BC 2B 78 */	mr r28, r5
/* 80981408  88 03 09 F4 */	lbz r0, 0x9f4(r3)
/* 8098140C  28 00 00 00 */	cmplwi r0, 0
/* 80981410  41 82 00 24 */	beq lbl_80981434
/* 80981414  38 7F 0D E4 */	addi r3, r31, 0xde4
/* 80981418  57 A0 10 3A */	slwi r0, r29, 2
/* 8098141C  3C 80 80 98 */	lis r4, l_resNameTbl@ha /* 0x8098797C@ha */
/* 80981420  38 84 79 7C */	addi r4, r4, l_resNameTbl@l /* 0x8098797C@l */
/* 80981424  7C 84 00 2E */	lwzx r4, r4, r0
/* 80981428  80 84 00 04 */	lwz r4, 4(r4)
/* 8098142C  4B 6A BB DD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80981430  48 00 00 20 */	b lbl_80981450
lbl_80981434:
/* 80981434  38 7F 0D E4 */	addi r3, r31, 0xde4
/* 80981438  57 A0 10 3A */	slwi r0, r29, 2
/* 8098143C  3C 80 80 98 */	lis r4, l_resNameTbl@ha /* 0x8098797C@ha */
/* 80981440  38 84 79 7C */	addi r4, r4, l_resNameTbl@l /* 0x8098797C@l */
/* 80981444  7C 84 00 2E */	lwzx r4, r4, r0
/* 80981448  80 84 00 00 */	lwz r4, 0(r4)
/* 8098144C  4B 6A BB BD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80981450:
/* 80981450  38 7F 0D EC */	addi r3, r31, 0xdec
/* 80981454  57 BD 10 3A */	slwi r29, r29, 2
/* 80981458  3C 80 80 98 */	lis r4, l_resNameTbl@ha /* 0x8098797C@ha */
/* 8098145C  3B C4 79 7C */	addi r30, r4, l_resNameTbl@l /* 0x8098797C@l */
/* 80981460  7C 9E E8 2E */	lwzx r4, r30, r29
/* 80981464  80 84 00 08 */	lwz r4, 8(r4)
/* 80981468  4B 6A BB A1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8098146C  2C 1C 00 00 */	cmpwi r28, 0
/* 80981470  40 82 00 10 */	bne lbl_80981480
/* 80981474  88 1F 0E 51 */	lbz r0, 0xe51(r31)
/* 80981478  28 00 00 01 */	cmplwi r0, 1
/* 8098147C  40 82 00 44 */	bne lbl_809814C0
lbl_80981480:
/* 80981480  38 7F 0D F4 */	addi r3, r31, 0xdf4
/* 80981484  7C 9E E8 2E */	lwzx r4, r30, r29
/* 80981488  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8098148C  4B 6A BB 7D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80981490  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 80981494  28 00 00 00 */	cmplwi r0, 0
/* 80981498  41 82 00 18 */	beq lbl_809814B0
/* 8098149C  38 7F 0D FC */	addi r3, r31, 0xdfc
/* 809814A0  7C 9E E8 2E */	lwzx r4, r30, r29
/* 809814A4  80 84 00 14 */	lwz r4, 0x14(r4)
/* 809814A8  4B 6A BB 61 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809814AC  48 00 00 14 */	b lbl_809814C0
lbl_809814B0:
/* 809814B0  38 7F 0D FC */	addi r3, r31, 0xdfc
/* 809814B4  7C 9E E8 2E */	lwzx r4, r30, r29
/* 809814B8  80 84 00 10 */	lwz r4, 0x10(r4)
/* 809814BC  4B 6A BB 4D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_809814C0:
/* 809814C0  38 60 00 01 */	li r3, 1
/* 809814C4  39 61 00 20 */	addi r11, r1, 0x20
/* 809814C8  4B 9E 0D 5D */	bl _restgpr_28
/* 809814CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809814D0  7C 08 03 A6 */	mtlr r0
/* 809814D4  38 21 00 20 */	addi r1, r1, 0x20
/* 809814D8  4E 80 00 20 */	blr 
