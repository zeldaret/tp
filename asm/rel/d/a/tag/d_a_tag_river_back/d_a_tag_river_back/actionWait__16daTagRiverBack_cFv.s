lbl_80D5F548:
/* 80D5F548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5F54C  7C 08 02 A6 */	mflr r0
/* 80D5F550  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5F554  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5F558  7C 7F 1B 78 */	mr r31, r3
/* 80D5F55C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D5F560  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D5F564  80 04 5F 18 */	lwz r0, 0x5f18(r4)
/* 80D5F568  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80D5F56C  41 82 00 3C */	beq lbl_80D5F5A8
/* 80D5F570  38 00 00 00 */	li r0, 0
/* 80D5F574  B0 1F 05 76 */	sth r0, 0x576(r31)
/* 80D5F578  38 00 00 01 */	li r0, 1
/* 80D5F57C  98 1F 05 71 */	stb r0, 0x571(r31)
/* 80D5F580  A8 9F 05 74 */	lha r4, 0x574(r31)
/* 80D5F584  88 BF 05 72 */	lbz r5, 0x572(r31)
/* 80D5F588  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D5F58C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D5F590  38 E0 00 00 */	li r7, 0
/* 80D5F594  39 00 00 01 */	li r8, 1
/* 80D5F598  4B 2B C0 E4 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80D5F59C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80D5F5A0  60 00 00 02 */	ori r0, r0, 2
/* 80D5F5A4  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80D5F5A8:
/* 80D5F5A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5F5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5F5B0  7C 08 03 A6 */	mtlr r0
/* 80D5F5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5F5B8  4E 80 00 20 */	blr 
