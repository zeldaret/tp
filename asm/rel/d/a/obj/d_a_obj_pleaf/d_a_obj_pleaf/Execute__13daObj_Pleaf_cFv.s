lbl_80CB13F8:
/* 80CB13F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CB13FC  7C 08 02 A6 */	mflr r0
/* 80CB1400  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CB1404  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CB1408  7C 7F 1B 78 */	mr r31, r3
/* 80CB140C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CB1410  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CB1414  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80CB1418  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CB141C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CB1420  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CB1424  3C 60 80 CB */	lis r3, lit_3908@ha /* 0x80CB1880@ha */
/* 80CB1428  C0 03 18 80 */	lfs f0, lit_3908@l(r3)  /* 0x80CB1880@l */
/* 80CB142C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CB1430  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CB1434  38 7F 07 CC */	addi r3, r31, 0x7cc
/* 80CB1438  38 81 00 08 */	addi r4, r1, 8
/* 80CB143C  4B 5B 68 ED */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80CB1440  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB1444  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB1448  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CB144C  38 9F 07 CC */	addi r4, r31, 0x7cc
/* 80CB1450  4B 3C 30 51 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80CB1454  D0 3F 09 40 */	stfs f1, 0x940(r31)
/* 80CB1458  3C 60 80 CB */	lis r3, lit_3909@ha /* 0x80CB1884@ha */
/* 80CB145C  C0 23 18 84 */	lfs f1, lit_3909@l(r3)  /* 0x80CB1884@l */
/* 80CB1460  C0 1F 09 40 */	lfs f0, 0x940(r31)
/* 80CB1464  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CB1468  41 82 00 14 */	beq lbl_80CB147C
/* 80CB146C  7F E3 FB 78 */	mr r3, r31
/* 80CB1470  48 00 01 79 */	bl setEnvTevColor__13daObj_Pleaf_cFv
/* 80CB1474  7F E3 FB 78 */	mr r3, r31
/* 80CB1478  48 00 01 CD */	bl setRoomNo__13daObj_Pleaf_cFv
lbl_80CB147C:
/* 80CB147C  7F E3 FB 78 */	mr r3, r31
/* 80CB1480  48 00 02 05 */	bl setMtx__13daObj_Pleaf_cFv
/* 80CB1484  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CB1488  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80CB148C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CB1490  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80CB1494  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CB1498  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80CB149C  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 80CB14A0  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80CB14A4  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80CB14A8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80CB14AC  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 80CB14B0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80CB14B4  38 00 00 00 */	li r0, 0
/* 80CB14B8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CB14BC  38 60 00 01 */	li r3, 1
/* 80CB14C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CB14C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CB14C8  7C 08 03 A6 */	mtlr r0
/* 80CB14CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CB14D0  4E 80 00 20 */	blr 
