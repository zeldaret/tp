lbl_809DFCE0:
/* 809DFCE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809DFCE4  7C 08 02 A6 */	mflr r0
/* 809DFCE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 809DFCEC  39 61 00 40 */	addi r11, r1, 0x40
/* 809DFCF0  4B 98 24 D8 */	b _savegpr_24
/* 809DFCF4  7C 7E 1B 78 */	mr r30, r3
/* 809DFCF8  3C 80 80 9E */	lis r4, m__17daNpc_grR_Param_c@ha
/* 809DFCFC  3B E4 38 D8 */	addi r31, r4, m__17daNpc_grR_Param_c@l
/* 809DFD00  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809DFD04  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809DFD08  40 82 00 1C */	bne lbl_809DFD24
/* 809DFD0C  28 1E 00 00 */	cmplwi r30, 0
/* 809DFD10  41 82 00 08 */	beq lbl_809DFD18
/* 809DFD14  4B FF FB B9 */	bl __ct__11daNpc_grR_cFv
lbl_809DFD18:
/* 809DFD18  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 809DFD1C  60 00 00 08 */	ori r0, r0, 8
/* 809DFD20  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_809DFD24:
/* 809DFD24  7F C3 F3 78 */	mr r3, r30
/* 809DFD28  48 00 18 71 */	bl getTypeFromParam__11daNpc_grR_cFv
/* 809DFD2C  98 7E 0E 10 */	stb r3, 0xe10(r30)
/* 809DFD30  A8 7E 04 B4 */	lha r3, 0x4b4(r30)
/* 809DFD34  3C 03 00 00 */	addis r0, r3, 0
/* 809DFD38  28 00 FF FF */	cmplwi r0, 0xffff
/* 809DFD3C  41 82 00 0C */	beq lbl_809DFD48
/* 809DFD40  90 7E 0E 08 */	stw r3, 0xe08(r30)
/* 809DFD44  48 00 00 0C */	b lbl_809DFD50
lbl_809DFD48:
/* 809DFD48  38 00 FF FF */	li r0, -1
/* 809DFD4C  90 1E 0E 08 */	stw r0, 0xe08(r30)
lbl_809DFD50:
/* 809DFD50  7F C3 F3 78 */	mr r3, r30
/* 809DFD54  48 00 18 91 */	bl isDelete__11daNpc_grR_cFv
/* 809DFD58  2C 03 00 00 */	cmpwi r3, 0
/* 809DFD5C  41 82 00 0C */	beq lbl_809DFD68
/* 809DFD60  38 60 00 05 */	li r3, 5
/* 809DFD64  48 00 02 3C */	b lbl_809DFFA0
lbl_809DFD68:
/* 809DFD68  3B 20 00 00 */	li r25, 0
/* 809DFD6C  3B 00 00 00 */	li r24, 0
/* 809DFD70  3B A0 00 00 */	li r29, 0
/* 809DFD74  3B 80 00 00 */	li r28, 0
/* 809DFD78  3C 60 80 9E */	lis r3, l_resNames@ha
/* 809DFD7C  3B 43 3D 30 */	addi r26, r3, l_resNames@l
/* 809DFD80  3C 60 80 9E */	lis r3, l_loadRes_list@ha
/* 809DFD84  3B 63 3D 20 */	addi r27, r3, l_loadRes_list@l
/* 809DFD88  48 00 00 48 */	b lbl_809DFDD0
lbl_809DFD8C:
/* 809DFD8C  38 7C 0D E0 */	addi r3, r28, 0xde0
/* 809DFD90  7C 7E 1A 14 */	add r3, r30, r3
/* 809DFD94  54 00 10 3A */	slwi r0, r0, 2
/* 809DFD98  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809DFD9C  4B 64 D1 20 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809DFDA0  2C 03 00 05 */	cmpwi r3, 5
/* 809DFDA4  41 82 00 0C */	beq lbl_809DFDB0
/* 809DFDA8  2C 03 00 03 */	cmpwi r3, 3
/* 809DFDAC  40 82 00 0C */	bne lbl_809DFDB8
lbl_809DFDB0:
/* 809DFDB0  38 60 00 05 */	li r3, 5
/* 809DFDB4  48 00 01 EC */	b lbl_809DFFA0
lbl_809DFDB8:
/* 809DFDB8  2C 03 00 04 */	cmpwi r3, 4
/* 809DFDBC  40 82 00 08 */	bne lbl_809DFDC4
/* 809DFDC0  3B 39 00 01 */	addi r25, r25, 1
lbl_809DFDC4:
/* 809DFDC4  3B 18 00 01 */	addi r24, r24, 1
/* 809DFDC8  3B BD 00 04 */	addi r29, r29, 4
/* 809DFDCC  3B 9C 00 08 */	addi r28, r28, 8
lbl_809DFDD0:
/* 809DFDD0  88 1E 0E 10 */	lbz r0, 0xe10(r30)
/* 809DFDD4  54 06 10 3A */	slwi r6, r0, 2
/* 809DFDD8  7C 7B 30 2E */	lwzx r3, r27, r6
/* 809DFDDC  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809DFDE0  2C 00 00 00 */	cmpwi r0, 0
/* 809DFDE4  40 80 FF A8 */	bge lbl_809DFD8C
/* 809DFDE8  7C 19 C0 00 */	cmpw r25, r24
/* 809DFDEC  40 82 01 B0 */	bne lbl_809DFF9C
/* 809DFDF0  7F C3 F3 78 */	mr r3, r30
/* 809DFDF4  3C 80 80 9E */	lis r4, createHeapCallBack__11daNpc_grR_cFP10fopAc_ac_c@ha
/* 809DFDF8  38 84 07 14 */	addi r4, r4, createHeapCallBack__11daNpc_grR_cFP10fopAc_ac_c@l
/* 809DFDFC  38 BF 00 6C */	addi r5, r31, 0x6c
/* 809DFE00  7C A5 30 2E */	lwzx r5, r5, r6
/* 809DFE04  4B 63 A6 AC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809DFE08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809DFE0C  40 82 00 0C */	bne lbl_809DFE18
/* 809DFE10  38 60 00 05 */	li r3, 5
/* 809DFE14  48 00 01 8C */	b lbl_809DFFA0
lbl_809DFE18:
/* 809DFE18  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809DFE1C  80 63 00 04 */	lwz r3, 4(r3)
/* 809DFE20  38 03 00 24 */	addi r0, r3, 0x24
/* 809DFE24  90 1E 05 04 */	stw r0, 0x504(r30)
/* 809DFE28  7F C3 F3 78 */	mr r3, r30
/* 809DFE2C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 809DFE30  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 809DFE34  FC 60 08 90 */	fmr f3, f1
/* 809DFE38  C0 9F 00 84 */	lfs f4, 0x84(r31)
/* 809DFE3C  C0 BF 00 88 */	lfs f5, 0x88(r31)
/* 809DFE40  FC C0 20 90 */	fmr f6, f4
/* 809DFE44  4B 63 A7 04 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809DFE48  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809DFE4C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809DFE50  38 BE 05 38 */	addi r5, r30, 0x538
/* 809DFE54  38 C0 00 03 */	li r6, 3
/* 809DFE58  38 E0 00 01 */	li r7, 1
/* 809DFE5C  4B 8E 06 D4 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 809DFE60  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809DFE64  38 9F 00 00 */	addi r4, r31, 0
/* 809DFE68  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809DFE6C  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 809DFE70  4B 69 60 E8 */	b SetWall__12dBgS_AcchCirFff
/* 809DFE74  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 809DFE78  90 01 00 08 */	stw r0, 8(r1)
/* 809DFE7C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809DFE80  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809DFE84  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 809DFE88  7F C6 F3 78 */	mr r6, r30
/* 809DFE8C  38 E0 00 01 */	li r7, 1
/* 809DFE90  39 1E 07 E4 */	addi r8, r30, 0x7e4
/* 809DFE94  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 809DFE98  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 809DFE9C  4B 69 63 AC */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809DFEA0  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 809DFEA4  38 9F 00 00 */	addi r4, r31, 0
/* 809DFEA8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809DFEAC  FC 00 00 1E */	fctiwz f0, f0
/* 809DFEB0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809DFEB4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809DFEB8  38 A0 00 00 */	li r5, 0
/* 809DFEBC  7F C6 F3 78 */	mr r6, r30
/* 809DFEC0  4B 6A 39 A0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809DFEC4  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809DFEC8  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 809DFECC  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 809DFED0  4B 6A 49 E4 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809DFED4  38 1E 07 A8 */	addi r0, r30, 0x7a8
/* 809DFED8  90 1E 0C D0 */	stw r0, 0xcd0(r30)
/* 809DFEDC  3C 60 80 15 */	lis r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 809DFEE0  38 03 26 14 */	addi r0, r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 809DFEE4  90 1E 0D 30 */	stw r0, 0xd30(r30)
/* 809DFEE8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809DFEEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809DFEF0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809DFEF4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809DFEF8  4B 69 6B B4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 809DFEFC  80 1E 06 AC */	lwz r0, 0x6ac(r30)
/* 809DFF00  90 1E 0A 44 */	stw r0, 0xa44(r30)
/* 809DFF04  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 809DFF08  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 809DFF0C  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 809DFF10  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 809DFF14  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 809DFF18  98 1E 0A 50 */	stb r0, 0xa50(r30)
/* 809DFF1C  A0 1E 06 C0 */	lhz r0, 0x6c0(r30)
/* 809DFF20  B0 1E 0A 58 */	sth r0, 0xa58(r30)
/* 809DFF24  A0 1E 06 C2 */	lhz r0, 0x6c2(r30)
/* 809DFF28  B0 1E 0A 5A */	sth r0, 0xa5a(r30)
/* 809DFF2C  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 809DFF30  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809DFF34  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 809DFF38  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 809DFF3C  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 809DFF40  D0 1E 0A 68 */	stfs f0, 0xa68(r30)
/* 809DFF44  C0 1E 06 D4 */	lfs f0, 0x6d4(r30)
/* 809DFF48  D0 1E 0A 6C */	stfs f0, 0xa6c(r30)
/* 809DFF4C  C0 1E 06 D8 */	lfs f0, 0x6d8(r30)
/* 809DFF50  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 809DFF54  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 809DFF58  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 809DFF5C  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 809DFF60  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 809DFF64  80 1E 06 E4 */	lwz r0, 0x6e4(r30)
/* 809DFF68  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 809DFF6C  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 809DFF70  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 809DFF74  7F C3 F3 78 */	mr r3, r30
/* 809DFF78  4B 77 2E 0C */	b setEnvTevColor__8daNpcF_cFv
/* 809DFF7C  7F C3 F3 78 */	mr r3, r30
/* 809DFF80  4B 77 2E 60 */	b setRoomNo__8daNpcF_cFv
/* 809DFF84  7F C3 F3 78 */	mr r3, r30
/* 809DFF88  48 00 17 45 */	bl reset__11daNpc_grR_cFv
/* 809DFF8C  7F C3 F3 78 */	mr r3, r30
/* 809DFF90  48 00 04 A1 */	bl Execute__11daNpc_grR_cFv
/* 809DFF94  38 60 00 04 */	li r3, 4
/* 809DFF98  48 00 00 08 */	b lbl_809DFFA0
lbl_809DFF9C:
/* 809DFF9C  38 60 00 00 */	li r3, 0
lbl_809DFFA0:
/* 809DFFA0  39 61 00 40 */	addi r11, r1, 0x40
/* 809DFFA4  4B 98 22 70 */	b _restgpr_24
/* 809DFFA8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809DFFAC  7C 08 03 A6 */	mtlr r0
/* 809DFFB0  38 21 00 40 */	addi r1, r1, 0x40
/* 809DFFB4  4E 80 00 20 */	blr 
