lbl_80C323D0:
/* 80C323D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C323D4  7C 08 02 A6 */	mflr r0
/* 80C323D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C323DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C323E0  7C 7F 1B 78 */	mr r31, r3
/* 80C323E4  88 03 0B 10 */	lbz r0, 0xb10(r3)
/* 80C323E8  28 00 00 02 */	cmplwi r0, 2
/* 80C323EC  41 82 00 0C */	beq lbl_80C323F8
/* 80C323F0  28 00 00 03 */	cmplwi r0, 3
/* 80C323F4  40 82 00 40 */	bne lbl_80C32434
lbl_80C323F8:
/* 80C323F8  3C 60 80 C3 */	lis r3, l_bmdData@ha
/* 80C323FC  38 83 3D C0 */	addi r4, r3, l_bmdData@l
/* 80C32400  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80C32404  54 00 10 3A */	slwi r0, r0, 2
/* 80C32408  3C 60 80 C3 */	lis r3, l_resNameList@ha
/* 80C3240C  38 63 3D D0 */	addi r3, r3, l_resNameList@l
/* 80C32410  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C32414  80 84 00 08 */	lwz r4, 8(r4)
/* 80C32418  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C3241C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C32420  3C A5 00 02 */	addis r5, r5, 2
/* 80C32424  38 C0 00 80 */	li r6, 0x80
/* 80C32428  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C3242C  4B 40 9E C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C32430  48 00 00 3C */	b lbl_80C3246C
lbl_80C32434:
/* 80C32434  3C 60 80 C3 */	lis r3, l_bmdData@ha
/* 80C32438  38 83 3D C0 */	addi r4, r3, l_bmdData@l
/* 80C3243C  80 04 00 04 */	lwz r0, 4(r4)
/* 80C32440  54 00 10 3A */	slwi r0, r0, 2
/* 80C32444  3C 60 80 C3 */	lis r3, l_resNameList@ha
/* 80C32448  38 63 3D D0 */	addi r3, r3, l_resNameList@l
/* 80C3244C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C32450  80 84 00 00 */	lwz r4, 0(r4)
/* 80C32454  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C32458  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C3245C  3C A5 00 02 */	addis r5, r5, 2
/* 80C32460  38 C0 00 80 */	li r6, 0x80
/* 80C32464  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C32468  4B 40 9E 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_80C3246C:
/* 80C3246C  28 03 00 00 */	cmplwi r3, 0
/* 80C32470  40 82 00 0C */	bne lbl_80C3247C
/* 80C32474  38 60 00 00 */	li r3, 0
/* 80C32478  48 00 00 24 */	b lbl_80C3249C
lbl_80C3247C:
/* 80C3247C  3C 80 00 08 */	lis r4, 8
/* 80C32480  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C32484  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C32488  4B 3E 27 CC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C3248C  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80C32490  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C32494  30 03 FF FF */	addic r0, r3, -1
/* 80C32498  7C 60 19 10 */	subfe r3, r0, r3
lbl_80C3249C:
/* 80C3249C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C324A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C324A4  7C 08 03 A6 */	mtlr r0
/* 80C324A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C324AC  4E 80 00 20 */	blr 
