lbl_8014A908:
/* 8014A908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014A90C  7C 08 02 A6 */	mflr r0
/* 8014A910  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014A914  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014A918  93 C1 00 08 */	stw r30, 8(r1)
/* 8014A91C  7C 7E 1B 78 */	mr r30, r3
/* 8014A920  7C 9F 23 78 */	mr r31, r4
/* 8014A924  C0 24 00 04 */	lfs f1, 4(r4)
/* 8014A928  C0 02 9A 48 */	lfs f0, lit_6667(r2)
/* 8014A92C  EC 01 00 2A */	fadds f0, f1, f0
/* 8014A930  D0 04 00 04 */	stfs f0, 4(r4)
/* 8014A934  38 7E 09 30 */	addi r3, r30, 0x930
/* 8014A938  48 11 D3 F1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8014A93C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8014A940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8014A944  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8014A948  38 9E 09 30 */	addi r4, r30, 0x930
/* 8014A94C  4B F2 9B 55 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8014A950  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8014A954  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8014A958  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8014A95C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8014A960  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8014A964  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8014A968  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8014A96C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8014A970  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 8014A974  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8014A978  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8014A97C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8014A980  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 8014A984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014A988  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014A98C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014A990  7C 08 03 A6 */	mtlr r0
/* 8014A994  38 21 00 10 */	addi r1, r1, 0x10
/* 8014A998  4E 80 00 20 */	blr 
