lbl_80AD2630:
/* 80AD2630  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AD2634  7C 08 02 A6 */	mflr r0
/* 80AD2638  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AD263C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AD2640  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AD2644  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD2648  4B 88 FB 95 */	bl _savegpr_29
/* 80AD264C  7C 7D 1B 78 */	mr r29, r3
/* 80AD2650  7C BE 2B 78 */	mr r30, r5
/* 80AD2654  FF E0 08 90 */	fmr f31, f1
/* 80AD2658  3C 60 80 AD */	lis r3, m__20daNpc_Seira2_Param_c@ha /* 0x80AD4A60@ha */
/* 80AD265C  3B E3 4A 60 */	addi r31, r3, m__20daNpc_Seira2_Param_c@l /* 0x80AD4A60@l */
/* 80AD2660  38 E0 00 00 */	li r7, 0
/* 80AD2664  80 1D 0F 7C */	lwz r0, 0xf7c(r29)
/* 80AD2668  28 00 00 00 */	cmplwi r0, 0
/* 80AD266C  41 82 00 80 */	beq lbl_80AD26EC
/* 80AD2670  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 80AD2674  40 82 00 14 */	bne lbl_80AD2688
/* 80AD2678  88 1D 10 C1 */	lbz r0, 0x10c1(r29)
/* 80AD267C  30 00 FF FF */	addic r0, r0, -1
/* 80AD2680  7C 60 01 10 */	subfe r3, r0, r0
/* 80AD2684  38 83 00 1A */	addi r4, r3, 0x1a
lbl_80AD2688:
/* 80AD2688  54 80 18 38 */	slwi r0, r4, 3
/* 80AD268C  3C 60 80 AD */	lis r3, bottlAnmData@ha /* 0x80AD5318@ha */
/* 80AD2690  38 83 53 18 */	addi r4, r3, bottlAnmData@l /* 0x80AD5318@l */
/* 80AD2694  7C A4 00 2E */	lwzx r5, r4, r0
/* 80AD2698  2C 05 00 00 */	cmpwi r5, 0
/* 80AD269C  40 81 00 28 */	ble lbl_80AD26C4
/* 80AD26A0  7F A3 EB 78 */	mr r3, r29
/* 80AD26A4  7C 84 02 14 */	add r4, r4, r0
/* 80AD26A8  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD26AC  54 00 10 3A */	slwi r0, r0, 2
/* 80AD26B0  3C 80 80 AD */	lis r4, l_resNameList@ha /* 0x80AD4BD0@ha */
/* 80AD26B4  38 84 4B D0 */	addi r4, r4, l_resNameList@l /* 0x80AD4BD0@l */
/* 80AD26B8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AD26BC  4B 67 59 D9 */	bl getTrnsfrmKeyAnmP__8daNpcT_cFPCci
/* 80AD26C0  7C 67 1B 78 */	mr r7, r3
lbl_80AD26C4:
/* 80AD26C4  28 07 00 00 */	cmplwi r7, 0
/* 80AD26C8  41 82 00 24 */	beq lbl_80AD26EC
/* 80AD26CC  80 7D 0F 7C */	lwz r3, 0xf7c(r29)
/* 80AD26D0  7C E4 3B 78 */	mr r4, r7
/* 80AD26D4  7F C5 F3 78 */	mr r5, r30
/* 80AD26D8  FC 20 F8 90 */	fmr f1, f31
/* 80AD26DC  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80AD26E0  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 80AD26E4  C0 9F 00 C0 */	lfs f4, 0xc0(r31)
/* 80AD26E8  4B 53 E7 89 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80AD26EC:
/* 80AD26EC  38 60 00 01 */	li r3, 1
/* 80AD26F0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AD26F4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AD26F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD26FC  4B 88 FB 2D */	bl _restgpr_29
/* 80AD2700  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AD2704  7C 08 03 A6 */	mtlr r0
/* 80AD2708  38 21 00 30 */	addi r1, r1, 0x30
/* 80AD270C  4E 80 00 20 */	blr 
