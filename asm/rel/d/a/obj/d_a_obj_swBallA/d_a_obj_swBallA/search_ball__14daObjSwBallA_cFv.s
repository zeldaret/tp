lbl_80CF34E4:
/* 80CF34E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF34E8  7C 08 02 A6 */	mflr r0
/* 80CF34EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF34F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF34F4  7C 7F 1B 78 */	mr r31, r3
/* 80CF34F8  38 A0 00 00 */	li r5, 0
/* 80CF34FC  3C 60 80 CF */	lis r3, l_target_info_count@ha
/* 80CF3500  90 A3 45 28 */	stw r5, l_target_info_count@l(r3)
/* 80CF3504  7C A3 2B 78 */	mr r3, r5
/* 80CF3508  3C 80 80 CF */	lis r4, l_target_info@ha
/* 80CF350C  38 84 45 08 */	addi r4, r4, l_target_info@l
/* 80CF3510  38 00 00 08 */	li r0, 8
/* 80CF3514  7C 09 03 A6 */	mtctr r0
lbl_80CF3518:
/* 80CF3518  7C A4 19 2E */	stwx r5, r4, r3
/* 80CF351C  38 63 00 04 */	addi r3, r3, 4
/* 80CF3520  42 00 FF F8 */	bdnz lbl_80CF3518
/* 80CF3524  3C 60 80 CF */	lis r3, s_ball_sub__FPvPv@ha
/* 80CF3528  38 63 32 F8 */	addi r3, r3, s_ball_sub__FPvPv@l
/* 80CF352C  7F E4 FB 78 */	mr r4, r31
/* 80CF3530  4B 32 DE 08 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80CF3534  39 40 00 00 */	li r10, 0
/* 80CF3538  38 60 00 00 */	li r3, 0
/* 80CF353C  3C 80 80 CF */	lis r4, l_target_info@ha
/* 80CF3540  38 E4 45 08 */	addi r7, r4, l_target_info@l
/* 80CF3544  3C 80 80 CF */	lis r4, l_target_info_count@ha
/* 80CF3548  38 A4 45 28 */	addi r5, r4, l_target_info_count@l
/* 80CF354C  48 00 00 A4 */	b lbl_80CF35F0
lbl_80CF3550:
/* 80CF3550  7C 87 18 2E */	lwzx r4, r7, r3
/* 80CF3554  28 04 00 00 */	cmplwi r4, 0
/* 80CF3558  41 82 00 90 */	beq lbl_80CF35E8
/* 80CF355C  41 82 00 0C */	beq lbl_80CF3568
/* 80CF3560  81 04 00 04 */	lwz r8, 4(r4)
/* 80CF3564  48 00 00 08 */	b lbl_80CF356C
lbl_80CF3568:
/* 80CF3568  39 00 FF FF */	li r8, -1
lbl_80CF356C:
/* 80CF356C  3C 08 00 01 */	addis r0, r8, 1
/* 80CF3570  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF3574  41 82 00 74 */	beq lbl_80CF35E8
/* 80CF3578  38 C0 FF FF */	li r6, -1
/* 80CF357C  39 20 00 00 */	li r9, 0
/* 80CF3580  38 80 00 00 */	li r4, 0
/* 80CF3584  38 00 00 08 */	li r0, 8
/* 80CF3588  7C 09 03 A6 */	mtctr r0
lbl_80CF358C:
/* 80CF358C  38 04 05 8C */	addi r0, r4, 0x58c
/* 80CF3590  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80CF3594  7C 08 00 40 */	cmplw r8, r0
/* 80CF3598  40 82 00 0C */	bne lbl_80CF35A4
/* 80CF359C  7D 26 4B 78 */	mr r6, r9
/* 80CF35A0  48 00 00 10 */	b lbl_80CF35B0
lbl_80CF35A4:
/* 80CF35A4  39 29 00 01 */	addi r9, r9, 1
/* 80CF35A8  38 84 00 04 */	addi r4, r4, 4
/* 80CF35AC  42 00 FF E0 */	bdnz lbl_80CF358C
lbl_80CF35B0:
/* 80CF35B0  2C 06 00 00 */	cmpwi r6, 0
/* 80CF35B4  40 80 00 34 */	bge lbl_80CF35E8
/* 80CF35B8  38 80 00 00 */	li r4, 0
/* 80CF35BC  38 00 00 08 */	li r0, 8
/* 80CF35C0  7C 09 03 A6 */	mtctr r0
lbl_80CF35C4:
/* 80CF35C4  39 24 05 8C */	addi r9, r4, 0x58c
/* 80CF35C8  7C DF 48 2E */	lwzx r6, r31, r9
/* 80CF35CC  3C 06 00 01 */	addis r0, r6, 1
/* 80CF35D0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF35D4  40 82 00 0C */	bne lbl_80CF35E0
/* 80CF35D8  7D 1F 49 2E */	stwx r8, r31, r9
/* 80CF35DC  48 00 00 0C */	b lbl_80CF35E8
lbl_80CF35E0:
/* 80CF35E0  38 84 00 04 */	addi r4, r4, 4
/* 80CF35E4  42 00 FF E0 */	bdnz lbl_80CF35C4
lbl_80CF35E8:
/* 80CF35E8  39 4A 00 01 */	addi r10, r10, 1
/* 80CF35EC  38 63 00 04 */	addi r3, r3, 4
lbl_80CF35F0:
/* 80CF35F0  80 05 00 00 */	lwz r0, 0(r5)
/* 80CF35F4  7C 0A 00 00 */	cmpw r10, r0
/* 80CF35F8  41 80 FF 58 */	blt lbl_80CF3550
/* 80CF35FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF3600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF3604  7C 08 03 A6 */	mtlr r0
/* 80CF3608  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF360C  4E 80 00 20 */	blr 
