lbl_80C25AC8:
/* 80C25AC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C25ACC  7C 08 02 A6 */	mflr r0
/* 80C25AD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C25AD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C25AD8  7C 7F 1B 78 */	mr r31, r3
/* 80C25ADC  3C 60 80 C2 */	lis r3, l_arcName@ha /* 0x80C25DD0@ha */
/* 80C25AE0  38 63 5D D0 */	addi r3, r3, l_arcName@l /* 0x80C25DD0@l */
/* 80C25AE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C25AE8  38 80 00 04 */	li r4, 4
/* 80C25AEC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C25AF0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C25AF4  3C A5 00 02 */	addis r5, r5, 2
/* 80C25AF8  38 C0 00 80 */	li r6, 0x80
/* 80C25AFC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C25B00  4B 41 67 ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C25B04  38 80 00 00 */	li r4, 0
/* 80C25B08  38 BF 09 08 */	addi r5, r31, 0x908
/* 80C25B0C  81 83 00 00 */	lwz r12, 0(r3)
/* 80C25B10  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80C25B14  7D 89 03 A6 */	mtctr r12
/* 80C25B18  4E 80 04 21 */	bctrl 
/* 80C25B1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C25B20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C25B24  C0 3F 09 1C */	lfs f1, 0x91c(r31)
/* 80C25B28  C0 5F 09 20 */	lfs f2, 0x920(r31)
/* 80C25B2C  C0 7F 09 24 */	lfs f3, 0x924(r31)
/* 80C25B30  4B 72 0D B9 */	bl PSMTXTrans
/* 80C25B34  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C25B38  4B 3E 72 9D */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80C25B3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C25B40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C25B44  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C25B48  D0 1F 09 70 */	stfs f0, 0x970(r31)
/* 80C25B4C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C25B50  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 80C25B54  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C25B58  D0 1F 09 78 */	stfs f0, 0x978(r31)
/* 80C25B5C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802A1@ha */
/* 80C25B60  38 03 02 A1 */	addi r0, r3, 0x02A1 /* 0x000802A1@l */
/* 80C25B64  90 01 00 08 */	stw r0, 8(r1)
/* 80C25B68  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C25B6C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C25B70  80 63 00 00 */	lwz r3, 0(r3)
/* 80C25B74  38 81 00 08 */	addi r4, r1, 8
/* 80C25B78  38 BF 09 70 */	addi r5, r31, 0x970
/* 80C25B7C  38 C0 00 00 */	li r6, 0
/* 80C25B80  38 E0 00 00 */	li r7, 0
/* 80C25B84  3D 00 80 C2 */	lis r8, lit_3806@ha /* 0x80C25D78@ha */
/* 80C25B88  C0 28 5D 78 */	lfs f1, lit_3806@l(r8)  /* 0x80C25D78@l */
/* 80C25B8C  FC 40 08 90 */	fmr f2, f1
/* 80C25B90  3D 00 80 C2 */	lis r8, lit_4095@ha /* 0x80C25DA0@ha */
/* 80C25B94  C0 68 5D A0 */	lfs f3, lit_4095@l(r8)  /* 0x80C25DA0@l */
/* 80C25B98  FC 80 18 90 */	fmr f4, f3
/* 80C25B9C  39 00 00 00 */	li r8, 0
/* 80C25BA0  4B 68 5D E5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C25BA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C25BA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C25BAC  7C 08 03 A6 */	mtlr r0
/* 80C25BB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C25BB4  4E 80 00 20 */	blr 
