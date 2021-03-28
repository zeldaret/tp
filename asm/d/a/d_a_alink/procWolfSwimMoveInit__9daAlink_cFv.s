lbl_8013871C:
/* 8013871C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138720  7C 08 02 A6 */	mflr r0
/* 80138724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80138728  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013872C  7C 7F 1B 78 */	mr r31, r3
/* 80138730  38 80 01 29 */	li r4, 0x129
/* 80138734  4B F8 98 39 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80138738  7F E3 FB 78 */	mr r3, r31
/* 8013873C  4B FF FA 4D */	bl getWolfSwimMoveAnmSpeed__9daAlink_cFv
/* 80138740  7F E3 FB 78 */	mr r3, r31
/* 80138744  38 80 00 38 */	li r4, 0x38
/* 80138748  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlSwim_c0@ha
/* 8013874C  38 A5 F8 B4 */	addi r5, r5, m__20daAlinkHIO_wlSwim_c0@l
/* 80138750  C0 45 00 78 */	lfs f2, 0x78(r5)
/* 80138754  4B FF 0F 85 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 80138758  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8013875C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80138760  41 82 00 14 */	beq lbl_80138774
/* 80138764  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 80138768  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8013876C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80138770  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_80138774:
/* 80138774  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80138778  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8013877C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80138780  64 00 00 10 */	oris r0, r0, 0x10
/* 80138784  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80138788  38 60 00 01 */	li r3, 1
/* 8013878C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80138790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138794  7C 08 03 A6 */	mtlr r0
/* 80138798  38 21 00 10 */	addi r1, r1, 0x10
/* 8013879C  4E 80 00 20 */	blr 
