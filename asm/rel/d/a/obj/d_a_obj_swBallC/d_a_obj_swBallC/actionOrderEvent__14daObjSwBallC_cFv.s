lbl_80CF629C:
/* 80CF629C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF62A0  7C 08 02 A6 */	mflr r0
/* 80CF62A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF62A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF62AC  7C 7F 1B 78 */	mr r31, r3
/* 80CF62B0  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CF62B4  28 00 00 02 */	cmplwi r0, 2
/* 80CF62B8  40 82 00 50 */	bne lbl_80CF6308
/* 80CF62BC  38 00 00 02 */	li r0, 2
/* 80CF62C0  98 1F 05 7F */	stb r0, 0x57f(r31)
/* 80CF62C4  48 00 01 31 */	bl demoProc__14daObjSwBallC_cFv
/* 80CF62C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF62CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF62D0  38 80 00 3F */	li r4, 0x3f
/* 80CF62D4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF62D8  7C 05 07 74 */	extsb r5, r0
/* 80CF62DC  4B 33 EF 24 */	b onSwitch__10dSv_info_cFii
/* 80CF62E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF62E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF62E8  3B E3 09 58 */	addi r31, r3, 0x958
/* 80CF62EC  7F E3 FB 78 */	mr r3, r31
/* 80CF62F0  38 80 00 0A */	li r4, 0xa
/* 80CF62F4  4B 33 E4 AC */	b onTbox__12dSv_memBit_cFi
/* 80CF62F8  7F E3 FB 78 */	mr r3, r31
/* 80CF62FC  38 80 00 0B */	li r4, 0xb
/* 80CF6300  4B 33 E4 A0 */	b onTbox__12dSv_memBit_cFi
/* 80CF6304  48 00 00 2C */	b lbl_80CF6330
lbl_80CF6308:
/* 80CF6308  A8 9F 05 7C */	lha r4, 0x57c(r31)
/* 80CF630C  88 BF 05 7E */	lbz r5, 0x57e(r31)
/* 80CF6310  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CF6314  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CF6318  38 E0 00 00 */	li r7, 0
/* 80CF631C  39 00 00 01 */	li r8, 1
/* 80CF6320  4B 32 53 5C */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CF6324  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CF6328  60 00 00 02 */	ori r0, r0, 2
/* 80CF632C  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CF6330:
/* 80CF6330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF6334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF6338  7C 08 03 A6 */	mtlr r0
/* 80CF633C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF6340  4E 80 00 20 */	blr 
