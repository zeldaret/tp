lbl_807FA2E4:
/* 807FA2E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807FA2E8  7C 08 02 A6 */	mflr r0
/* 807FA2EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807FA2F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807FA2F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807FA2F8  7C 7F 1B 78 */	mr r31, r3
/* 807FA2FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FA300  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FA304  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 807FA308  A8 1F 06 8E */	lha r0, 0x68e(r31)
/* 807FA30C  2C 00 00 00 */	cmpwi r0, 0
/* 807FA310  40 82 01 50 */	bne lbl_807FA460
/* 807FA314  38 7F 08 D0 */	addi r3, r31, 0x8d0
/* 807FA318  4B 88 95 19 */	bl Move__10dCcD_GSttsFv
/* 807FA31C  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 807FA320  4B 88 A1 41 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807FA324  28 03 00 00 */	cmplwi r3, 0
/* 807FA328  41 82 01 24 */	beq lbl_807FA44C
/* 807FA32C  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 807FA330  4B 88 A1 C9 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807FA334  90 7F 0B 60 */	stw r3, 0xb60(r31)
/* 807FA338  7F E3 FB 78 */	mr r3, r31
/* 807FA33C  38 9F 0B 60 */	addi r4, r31, 0xb60
/* 807FA340  4B 88 D8 C5 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807FA344  80 7F 0B 60 */	lwz r3, 0xb60(r31)
/* 807FA348  80 63 00 10 */	lwz r3, 0x10(r3)
/* 807FA34C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 807FA350  40 82 00 14 */	bne lbl_807FA364
/* 807FA354  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 807FA358  40 82 00 0C */	bne lbl_807FA364
/* 807FA35C  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 807FA360  41 82 00 0C */	beq lbl_807FA36C
lbl_807FA364:
/* 807FA364  38 00 00 00 */	li r0, 0
/* 807FA368  B0 1F 05 62 */	sth r0, 0x562(r31)
lbl_807FA36C:
/* 807FA36C  80 7F 0B 60 */	lwz r3, 0xb60(r31)
/* 807FA370  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807FA374  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 807FA378  41 82 00 10 */	beq lbl_807FA388
/* 807FA37C  38 00 00 14 */	li r0, 0x14
/* 807FA380  B0 1F 06 8E */	sth r0, 0x68e(r31)
/* 807FA384  48 00 00 0C */	b lbl_807FA390
lbl_807FA388:
/* 807FA388  38 00 00 0A */	li r0, 0xa
/* 807FA38C  B0 1F 06 8E */	sth r0, 0x68e(r31)
lbl_807FA390:
/* 807FA390  80 7F 0B 60 */	lwz r3, 0xb60(r31)
/* 807FA394  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807FA398  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 807FA39C  41 82 00 4C */	beq lbl_807FA3E8
/* 807FA3A0  7F C3 F3 78 */	mr r3, r30
/* 807FA3A4  7F E4 FB 78 */	mr r4, r31
/* 807FA3A8  38 A0 00 08 */	li r5, 8
/* 807FA3AC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 807FA3B0  81 8C 01 DC */	lwz r12, 0x1dc(r12)
/* 807FA3B4  7D 89 03 A6 */	mtctr r12
/* 807FA3B8  4E 80 04 21 */	bctrl 
/* 807FA3BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807FA3C0  41 82 00 28 */	beq lbl_807FA3E8
/* 807FA3C4  38 00 00 05 */	li r0, 5
/* 807FA3C8  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 807FA3CC  38 80 00 00 */	li r4, 0
/* 807FA3D0  B0 9F 05 B4 */	sth r4, 0x5b4(r31)
/* 807FA3D4  38 00 00 C8 */	li r0, 0xc8
/* 807FA3D8  B0 1F 06 8E */	sth r0, 0x68e(r31)
/* 807FA3DC  3C 60 80 45 */	lis r3, pauseTimer__9dScnPly_c+0x1@ha /* 0x80451125@ha */
/* 807FA3E0  98 83 11 25 */	stb r4, pauseTimer__9dScnPly_c+0x1@l(r3)  /* 0x80451125@l */
/* 807FA3E4  48 00 00 7C */	b lbl_807FA460
lbl_807FA3E8:
/* 807FA3E8  38 00 00 04 */	li r0, 4
/* 807FA3EC  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 807FA3F0  38 00 00 00 */	li r0, 0
/* 807FA3F4  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807FA3F8  A8 1F 0B 6E */	lha r0, 0xb6e(r31)
/* 807FA3FC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 807FA400  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 807FA404  2C 00 00 00 */	cmpwi r0, 0
/* 807FA408  41 82 00 1C */	beq lbl_807FA424
/* 807FA40C  88 1F 0B 80 */	lbz r0, 0xb80(r31)
/* 807FA410  28 00 00 10 */	cmplwi r0, 0x10
/* 807FA414  40 82 00 10 */	bne lbl_807FA424
/* 807FA418  38 00 00 01 */	li r0, 1
/* 807FA41C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 807FA420  48 00 00 2C */	b lbl_807FA44C
lbl_807FA424:
/* 807FA424  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701D2@ha */
/* 807FA428  38 03 01 D2 */	addi r0, r3, 0x01D2 /* 0x000701D2@l */
/* 807FA42C  90 01 00 08 */	stw r0, 8(r1)
/* 807FA430  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 807FA434  38 81 00 08 */	addi r4, r1, 8
/* 807FA438  38 A0 FF FF */	li r5, -1
/* 807FA43C  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 807FA440  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807FA444  7D 89 03 A6 */	mtctr r12
/* 807FA448  4E 80 04 21 */	bctrl 
lbl_807FA44C:
/* 807FA44C  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 807FA450  2C 00 00 0A */	cmpwi r0, 0xa
/* 807FA454  41 81 00 0C */	bgt lbl_807FA460
/* 807FA458  38 00 00 03 */	li r0, 3
/* 807FA45C  98 1F 09 AA */	stb r0, 0x9aa(r31)
lbl_807FA460:
/* 807FA460  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807FA464  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807FA468  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807FA46C  7C 08 03 A6 */	mtlr r0
/* 807FA470  38 21 00 20 */	addi r1, r1, 0x20
/* 807FA474  4E 80 00 20 */	blr 
