lbl_80462928:
/* 80462928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046292C  7C 08 02 A6 */	mflr r0
/* 80462930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80462934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80462938  93 C1 00 08 */	stw r30, 8(r1)
/* 8046293C  7C 7E 1B 78 */	mr r30, r3
/* 80462940  3C 80 80 46 */	lis r4, lit_4018@ha /* 0x80466820@ha */
/* 80462944  3B E4 68 20 */	addi r31, r4, lit_4018@l /* 0x80466820@l */
/* 80462948  88 03 06 8C */	lbz r0, 0x68c(r3)
/* 8046294C  98 03 05 F1 */	stb r0, 0x5f1(r3)
/* 80462950  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80462954  D0 23 05 94 */	stfs f1, 0x594(r3)
/* 80462958  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8046295C  D0 03 05 90 */	stfs f0, 0x590(r3)
/* 80462960  D0 23 05 B0 */	stfs f1, 0x5b0(r3)
/* 80462964  D0 03 05 AC */	stfs f0, 0x5ac(r3)
/* 80462968  38 80 00 01 */	li r4, 1
/* 8046296C  48 00 2C B5 */	bl openInitCom__10daDoor20_cFi
/* 80462970  88 1E 06 7F */	lbz r0, 0x67f(r30)
/* 80462974  3C 60 80 45 */	lis r3, mNextRoomNo__10dMapInfo_c@ha /* 0x80450630@ha */
/* 80462978  90 03 06 30 */	stw r0, mNextRoomNo__10dMapInfo_c@l(r3)  /* 0x80450630@l */
/* 8046297C  A0 1E 06 8E */	lhz r0, 0x68e(r30)
/* 80462980  60 00 00 01 */	ori r0, r0, 1
/* 80462984  B0 1E 06 8E */	sth r0, 0x68e(r30)
/* 80462988  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046298C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80462990  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80462994  80 9E 05 C4 */	lwz r4, 0x5c4(r30)
/* 80462998  4B C1 18 B9 */	bl Release__4cBgSFP9dBgW_Base
/* 8046299C  88 1E 05 F1 */	lbz r0, 0x5f1(r30)
/* 804629A0  28 00 00 00 */	cmplwi r0, 0
/* 804629A4  40 82 00 10 */	bne lbl_804629B4
/* 804629A8  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 804629AC  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 804629B0  48 00 00 0C */	b lbl_804629BC
lbl_804629B4:
/* 804629B4  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 804629B8  90 1E 05 BC */	stw r0, 0x5bc(r30)
lbl_804629BC:
/* 804629BC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 804629C0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804629C4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804629C8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804629CC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804629D0  4B EE 3A E1 */	bl PSMTXCopy
/* 804629D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804629D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804629DC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804629E0  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 804629E4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804629E8  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 804629EC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804629F0  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 804629F4  C0 3E 05 E4 */	lfs f1, 0x5e4(r30)
/* 804629F8  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 804629FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80462A00  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80462A04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80462A08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80462A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80462A10  7C 08 03 A6 */	mtlr r0
/* 80462A14  38 21 00 10 */	addi r1, r1, 0x10
/* 80462A18  4E 80 00 20 */	blr 
