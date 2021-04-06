lbl_800F75BC:
/* 800F75BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F75C0  7C 08 02 A6 */	mflr r0
/* 800F75C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F75C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F75CC  7C 7F 1B 78 */	mr r31, r3
/* 800F75D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F75D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F75D8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800F75DC  7F E4 FB 78 */	mr r4, r31
/* 800F75E0  38 A0 00 00 */	li r5, 0
/* 800F75E4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FBFF@ha */
/* 800F75E8  38 C6 FB FF */	addi r6, r6, 0xFBFF /* 0x0000FBFF@l */
/* 800F75EC  4B F4 BB 81 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 800F75F0  2C 03 00 00 */	cmpwi r3, 0
/* 800F75F4  40 82 00 0C */	bne lbl_800F7600
/* 800F75F8  38 60 00 00 */	li r3, 0
/* 800F75FC  48 00 00 74 */	b lbl_800F7670
lbl_800F7600:
/* 800F7600  38 00 00 05 */	li r0, 5
/* 800F7604  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 800F7608  7F E3 FB 78 */	mr r3, r31
/* 800F760C  38 80 00 A1 */	li r4, 0xa1
/* 800F7610  4B FC A9 5D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F7614  7F E3 FB 78 */	mr r3, r31
/* 800F7618  4B FF CF 85 */	bl setSyncCanoePos__9daAlink_cFv
/* 800F761C  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800F7620  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F7624  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 800F7628  D0 03 14 68 */	stfs f0, 0x1468(r3)
/* 800F762C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F7630  B0 03 14 4C */	sth r0, 0x144c(r3)
/* 800F7634  38 00 00 01 */	li r0, 1
/* 800F7638  98 03 14 42 */	stb r0, 0x1442(r3)
/* 800F763C  7F E3 FB 78 */	mr r3, r31
/* 800F7640  38 80 01 0C */	li r4, 0x10c
/* 800F7644  4B FB 4E 0D */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F7648  A0 83 00 02 */	lhz r4, 2(r3)
/* 800F764C  7F E3 FB 78 */	mr r3, r31
/* 800F7650  38 A0 00 02 */	li r5, 2
/* 800F7654  3C C0 80 39 */	lis r6, m__23daAlinkHIO_kandelaar_c0@ha /* 0x8038E77C@ha */
/* 800F7658  38 C6 E7 7C */	addi r6, r6, m__23daAlinkHIO_kandelaar_c0@l /* 0x8038E77C@l */
/* 800F765C  38 C6 00 14 */	addi r6, r6, 0x14
/* 800F7660  4B FB 60 91 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800F7664  7F E3 FB 78 */	mr r3, r31
/* 800F7668  48 01 99 79 */	bl commonKandelaarPourInit__9daAlink_cFv
/* 800F766C  38 60 00 01 */	li r3, 1
lbl_800F7670:
/* 800F7670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F7674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F7678  7C 08 03 A6 */	mtlr r0
/* 800F767C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F7680  4E 80 00 20 */	blr 
