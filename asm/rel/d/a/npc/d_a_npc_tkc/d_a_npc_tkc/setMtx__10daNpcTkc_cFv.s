lbl_80B0D3C0:
/* 80B0D3C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0D3C4  7C 08 02 A6 */	mflr r0
/* 80B0D3C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0D3CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0D3D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B0D3D4  7C 7E 1B 78 */	mr r30, r3
/* 80B0D3D8  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80B0D3DC  83 E3 00 04 */	lwz r31, 4(r3)
/* 80B0D3E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B0D3E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B0D3E8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80B0D3EC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80B0D3F0  C0 1E 0D 64 */	lfs f0, 0xd64(r30)
/* 80B0D3F4  EC 42 00 2A */	fadds f2, f2, f0
/* 80B0D3F8  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80B0D3FC  4B 83 94 EC */	b PSMTXTrans
/* 80B0D400  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 80B0D404  4B 4F FB 40 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B0D408  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 80B0D40C  4B 4F FA 64 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80B0D410  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B0D414  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B0D418  38 9F 00 24 */	addi r4, r31, 0x24
/* 80B0D41C  4B 83 90 94 */	b PSMTXCopy
/* 80B0D420  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B0D424  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B0D428  41 82 00 10 */	beq lbl_80B0D438
/* 80B0D42C  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 80B0D430  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80B0D434  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80B0D438:
/* 80B0D438  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B0D43C  4B 50 3D B0 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80B0D440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0D444  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B0D448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0D44C  7C 08 03 A6 */	mtlr r0
/* 80B0D450  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0D454  4E 80 00 20 */	blr 
