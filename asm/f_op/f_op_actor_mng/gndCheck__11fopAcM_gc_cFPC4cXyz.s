lbl_8001DCBC:
/* 8001DCBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001DCC0  7C 08 02 A6 */	mflr r0
/* 8001DCC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001DCC8  7C 64 1B 78 */	mr r4, r3
/* 8001DCCC  3C 60 80 3F */	lis r3, mGndCheck__11fopAcM_gc_c@ha /* 0x803F1CC4@ha */
/* 8001DCD0  38 63 1C C4 */	addi r3, r3, mGndCheck__11fopAcM_gc_c@l /* 0x803F1CC4@l */
/* 8001DCD4  48 24 A0 55 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8001DCD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001DCDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001DCE0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8001DCE4  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha /* 0x803F1CC4@ha */
/* 8001DCE8  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l /* 0x803F1CC4@l */
/* 8001DCEC  48 05 67 B5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8001DCF0  D0 2D 87 50 */	stfs f1, mGroundY__11fopAcM_gc_c(r13)
/* 8001DCF4  C0 42 82 58 */	lfs f2, lit_6353(r2)
/* 8001DCF8  FC 00 08 18 */	frsp f0, f1
/* 8001DCFC  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8001DD00  7C 00 00 26 */	mfcr r0
/* 8001DD04  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
/* 8001DD08  68 03 00 01 */	xori r3, r0, 1
/* 8001DD0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001DD10  7C 08 03 A6 */	mtlr r0
/* 8001DD14  38 21 00 10 */	addi r1, r1, 0x10
/* 8001DD18  4E 80 00 20 */	blr 
