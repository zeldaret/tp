lbl_80A1339C:
/* 80A1339C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A133A0  7C 08 02 A6 */	mflr r0
/* 80A133A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A133A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A133AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A133B0  7C 7E 1B 78 */	mr r30, r3
/* 80A133B4  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80A133B8  83 E3 00 04 */	lwz r31, 4(r3)
/* 80A133BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A133C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A133C4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80A133C8  C0 5E 0E 10 */	lfs f2, 0xe10(r30)
/* 80A133CC  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80A133D0  4B 93 35 18 */	b PSMTXTrans
/* 80A133D4  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 80A133D8  4B 5F 9B 6C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80A133DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A133E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A133E4  38 9F 00 24 */	addi r4, r31, 0x24
/* 80A133E8  4B 93 30 C8 */	b PSMTXCopy
/* 80A133EC  93 DF 00 14 */	stw r30, 0x14(r31)
/* 80A133F0  C0 1E 09 78 */	lfs f0, 0x978(r30)
/* 80A133F4  FC 00 02 10 */	fabs f0, f0
/* 80A133F8  FC 20 00 18 */	frsp f1, f0
/* 80A133FC  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80A13400  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80A13404  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A13408  41 80 00 14 */	blt lbl_80A1341C
/* 80A1340C  38 00 00 01 */	li r0, 1
/* 80A13410  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A13414  98 03 00 55 */	stb r0, 0x55(r3)
/* 80A13418  48 00 00 10 */	b lbl_80A13428
lbl_80A1341C:
/* 80A1341C  38 00 00 00 */	li r0, 0
/* 80A13420  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A13424  98 03 00 55 */	stb r0, 0x55(r3)
lbl_80A13428:
/* 80A13428  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80A1342C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80A13430  41 82 00 10 */	beq lbl_80A13440
/* 80A13434  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 80A13438  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80A1343C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80A13440:
/* 80A13440  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A13444  4B 5F DD A8 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80A13448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1344C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A13450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A13454  7C 08 03 A6 */	mtlr r0
/* 80A13458  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1345C  4E 80 00 20 */	blr 
