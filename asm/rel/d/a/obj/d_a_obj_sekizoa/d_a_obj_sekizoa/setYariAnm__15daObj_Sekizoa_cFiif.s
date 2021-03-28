lbl_80CD04FC:
/* 80CD04FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CD0500  7C 08 02 A6 */	mflr r0
/* 80CD0504  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CD0508  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80CD050C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80CD0510  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD0514  4B 69 1C C8 */	b _savegpr_29
/* 80CD0518  7C 7D 1B 78 */	mr r29, r3
/* 80CD051C  7C BE 2B 78 */	mr r30, r5
/* 80CD0520  FF E0 08 90 */	fmr f31, f1
/* 80CD0524  3C A0 80 CD */	lis r5, m__21daObj_Sekizoa_Param_c@ha
/* 80CD0528  3B E5 5C FC */	addi r31, r5, m__21daObj_Sekizoa_Param_c@l
/* 80CD052C  38 C0 00 00 */	li r6, 0
/* 80CD0530  38 00 00 00 */	li r0, 0
/* 80CD0534  98 03 11 79 */	stb r0, 0x1179(r3)
/* 80CD0538  80 03 0E 40 */	lwz r0, 0xe40(r3)
/* 80CD053C  28 00 00 00 */	cmplwi r0, 0
/* 80CD0540  41 82 00 6C */	beq lbl_80CD05AC
/* 80CD0544  54 80 18 38 */	slwi r0, r4, 3
/* 80CD0548  3C 80 80 CD */	lis r4, yariAnmData@ha
/* 80CD054C  38 84 65 34 */	addi r4, r4, yariAnmData@l
/* 80CD0550  7C A4 00 2E */	lwzx r5, r4, r0
/* 80CD0554  2C 05 00 00 */	cmpwi r5, 0
/* 80CD0558  40 81 00 24 */	ble lbl_80CD057C
/* 80CD055C  7C 84 02 14 */	add r4, r4, r0
/* 80CD0560  80 04 00 04 */	lwz r0, 4(r4)
/* 80CD0564  54 00 10 3A */	slwi r0, r0, 2
/* 80CD0568  3C 80 80 CD */	lis r4, l_resNameList@ha
/* 80CD056C  38 84 5F 90 */	addi r4, r4, l_resNameList@l
/* 80CD0570  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CD0574  4B 47 7B 20 */	b getTrnsfrmKeyAnmP__8daNpcT_cFPCci
/* 80CD0578  7C 66 1B 78 */	mr r6, r3
lbl_80CD057C:
/* 80CD057C  28 06 00 00 */	cmplwi r6, 0
/* 80CD0580  41 82 00 2C */	beq lbl_80CD05AC
/* 80CD0584  80 7D 0E 40 */	lwz r3, 0xe40(r29)
/* 80CD0588  7C C4 33 78 */	mr r4, r6
/* 80CD058C  7F C5 F3 78 */	mr r5, r30
/* 80CD0590  FC 20 F8 90 */	fmr f1, f31
/* 80CD0594  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 80CD0598  C0 7F 00 C0 */	lfs f3, 0xc0(r31)
/* 80CD059C  C0 9F 01 18 */	lfs f4, 0x118(r31)
/* 80CD05A0  4B 34 08 D0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80CD05A4  38 00 00 01 */	li r0, 1
/* 80CD05A8  98 1D 11 79 */	stb r0, 0x1179(r29)
lbl_80CD05AC:
/* 80CD05AC  38 60 00 01 */	li r3, 1
/* 80CD05B0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80CD05B4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80CD05B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD05BC  4B 69 1C 6C */	b _restgpr_29
/* 80CD05C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CD05C4  7C 08 03 A6 */	mtlr r0
/* 80CD05C8  38 21 00 30 */	addi r1, r1, 0x30
/* 80CD05CC  4E 80 00 20 */	blr 
