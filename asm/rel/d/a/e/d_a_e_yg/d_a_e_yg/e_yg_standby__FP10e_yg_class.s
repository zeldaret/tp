lbl_807FA284:
/* 807FA284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FA288  7C 08 02 A6 */	mflr r0
/* 807FA28C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FA290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807FA294  7C 7F 1B 78 */	mr r31, r3
/* 807FA298  38 00 00 06 */	li r0, 6
/* 807FA29C  B0 03 06 8E */	sth r0, 0x68e(r3)
/* 807FA2A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FA2A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FA2A8  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 807FA2AC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807FA2B0  7C 05 07 74 */	extsb r5, r0
/* 807FA2B4  4B 83 B0 AD */	bl isSwitch__10dSv_info_cCFii
/* 807FA2B8  2C 03 00 00 */	cmpwi r3, 0
/* 807FA2BC  41 82 00 14 */	beq lbl_807FA2D0
/* 807FA2C0  38 00 00 00 */	li r0, 0
/* 807FA2C4  98 1F 0B A5 */	stb r0, 0xba5(r31)
/* 807FA2C8  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 807FA2CC  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_807FA2D0:
/* 807FA2D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807FA2D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FA2D8  7C 08 03 A6 */	mtlr r0
/* 807FA2DC  38 21 00 10 */	addi r1, r1, 0x10
/* 807FA2E0  4E 80 00 20 */	blr 
