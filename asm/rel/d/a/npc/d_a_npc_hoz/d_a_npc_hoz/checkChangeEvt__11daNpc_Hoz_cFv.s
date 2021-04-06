lbl_80A02374:
/* 80A02374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A02378  7C 08 02 A6 */	mflr r0
/* 80A0237C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A02380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A02384  7C 7F 1B 78 */	mr r31, r3
/* 80A02388  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80A0238C  2C 00 00 04 */	cmpwi r0, 4
/* 80A02390  41 82 00 08 */	beq lbl_80A02398
/* 80A02394  48 00 00 40 */	b lbl_80A023D4
lbl_80A02398:
/* 80A02398  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0239C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A023A0  88 9F 0F 88 */	lbz r4, 0xf88(r31)
/* 80A023A4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A023A8  7C 05 07 74 */	extsb r5, r0
/* 80A023AC  4B 63 2F B5 */	bl isSwitch__10dSv_info_cCFii
/* 80A023B0  2C 03 00 00 */	cmpwi r3, 0
/* 80A023B4  40 82 00 20 */	bne lbl_80A023D4
/* 80A023B8  38 00 00 07 */	li r0, 7
/* 80A023BC  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A023C0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A023C4  7F E3 FB 78 */	mr r3, r31
/* 80A023C8  4B 74 7E 5D */	bl evtChange__8daNpcT_cFv
/* 80A023CC  38 60 00 01 */	li r3, 1
/* 80A023D0  48 00 00 08 */	b lbl_80A023D8
lbl_80A023D4:
/* 80A023D4  38 60 00 00 */	li r3, 0
lbl_80A023D8:
/* 80A023D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A023DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A023E0  7C 08 03 A6 */	mtlr r0
/* 80A023E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A023E8  4E 80 00 20 */	blr 
