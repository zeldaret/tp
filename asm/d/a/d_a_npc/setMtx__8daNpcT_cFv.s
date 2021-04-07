lbl_80149190:
/* 80149190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80149194  7C 08 02 A6 */	mflr r0
/* 80149198  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014919C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801491A0  93 C1 00 08 */	stw r30, 8(r1)
/* 801491A4  7C 7E 1B 78 */	mr r30, r3
/* 801491A8  80 63 05 78 */	lwz r3, 0x578(r3)
/* 801491AC  83 E3 00 04 */	lwz r31, 4(r3)
/* 801491B0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 801491B4  4B EC 3B B1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 801491B8  38 7E 0D 78 */	addi r3, r30, 0xd78
/* 801491BC  4B EC 3D 89 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 801491C0  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 801491C4  4B EC 3C AD */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 801491C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801491CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801491D0  38 9F 00 24 */	addi r4, r31, 0x24
/* 801491D4  48 1F D2 DD */	bl PSMTXCopy
/* 801491D8  93 DF 00 14 */	stw r30, 0x14(r31)
/* 801491DC  38 00 00 01 */	li r0, 1
/* 801491E0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 801491E4  98 03 00 55 */	stb r0, 0x55(r3)
/* 801491E8  C0 1E 0D FC */	lfs f0, 0xdfc(r30)
/* 801491EC  FC 00 02 10 */	fabs f0, f0
/* 801491F0  FC 20 00 18 */	frsp f1, f0
/* 801491F4  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 801491F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801491FC  7C 00 00 26 */	mfcr r0
/* 80149200  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80149204  41 82 00 10 */	beq lbl_80149214
/* 80149208  38 00 00 00 */	li r0, 0
/* 8014920C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80149210  98 03 00 55 */	stb r0, 0x55(r3)
lbl_80149214:
/* 80149214  80 1E 0D 98 */	lwz r0, 0xd98(r30)
/* 80149218  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8014921C  41 82 00 10 */	beq lbl_8014922C
/* 80149220  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 80149224  80 7E 06 24 */	lwz r3, 0x624(r30)
/* 80149228  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8014922C:
/* 8014922C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80149230  4B EC 7F BD */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80149234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80149238  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014923C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80149240  7C 08 03 A6 */	mtlr r0
/* 80149244  38 21 00 10 */	addi r1, r1, 0x10
/* 80149248  4E 80 00 20 */	blr 
