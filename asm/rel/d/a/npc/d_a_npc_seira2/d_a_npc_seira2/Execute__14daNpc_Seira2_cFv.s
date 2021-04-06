lbl_80AD153C:
/* 80AD153C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD1540  7C 08 02 A6 */	mflr r0
/* 80AD1544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD1548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD154C  7C 7F 1B 78 */	mr r31, r3
/* 80AD1550  88 03 0A 88 */	lbz r0, 0xa88(r3)
/* 80AD1554  28 00 00 00 */	cmplwi r0, 0
/* 80AD1558  40 82 00 74 */	bne lbl_80AD15CC
/* 80AD155C  4B 6C 95 C9 */	bl checkShopOpen__13dShopSystem_cFv
/* 80AD1560  2C 03 00 00 */	cmpwi r3, 0
/* 80AD1564  40 82 00 68 */	bne lbl_80AD15CC
/* 80AD1568  88 1F 10 ED */	lbz r0, 0x10ed(r31)
/* 80AD156C  28 00 00 00 */	cmplwi r0, 0
/* 80AD1570  40 82 00 5C */	bne lbl_80AD15CC
/* 80AD1574  7F E3 FB 78 */	mr r3, r31
/* 80AD1578  4B 6C 5D C1 */	bl initShopSystem__13dShopSystem_cFv
/* 80AD157C  7F E3 FB 78 */	mr r3, r31
/* 80AD1580  48 00 02 39 */	bl getMaxNumItem__14daNpc_Seira2_cFv
/* 80AD1584  7C 64 1B 78 */	mr r4, r3
/* 80AD1588  7F E3 FB 78 */	mr r3, r31
/* 80AD158C  4B 6C 95 91 */	bl setSellItemMax__13dShopSystem_cFUc
/* 80AD1590  38 00 FF FF */	li r0, -1
/* 80AD1594  90 1F 0F 60 */	stw r0, 0xf60(r31)
/* 80AD1598  38 A0 00 01 */	li r5, 1
/* 80AD159C  98 BF 0F 77 */	stb r5, 0xf77(r31)
/* 80AD15A0  38 00 00 00 */	li r0, 0
/* 80AD15A4  B0 1F 0F 4E */	sth r0, 0xf4e(r31)
/* 80AD15A8  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AD15AC  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AD15B0  80 64 00 00 */	lwz r3, 0(r4)
/* 80AD15B4  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD15B8  90 7F 0E 78 */	stw r3, 0xe78(r31)
/* 80AD15BC  90 1F 0E 7C */	stw r0, 0xe7c(r31)
/* 80AD15C0  80 04 00 08 */	lwz r0, 8(r4)
/* 80AD15C4  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80AD15C8  98 BF 10 ED */	stb r5, 0x10ed(r31)
lbl_80AD15CC:
/* 80AD15CC  7F E3 FB 78 */	mr r3, r31
/* 80AD15D0  4B 67 6F 5D */	bl execute__8daNpcT_cFv
/* 80AD15D4  88 1F 10 ED */	lbz r0, 0x10ed(r31)
/* 80AD15D8  28 00 00 00 */	cmplwi r0, 0
/* 80AD15DC  41 82 00 1C */	beq lbl_80AD15F8
/* 80AD15E0  7F E3 FB 78 */	mr r3, r31
/* 80AD15E4  4B 6C 8F ED */	bl searchItemActor__13dShopSystem_cFv
/* 80AD15E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AD15EC  41 82 00 0C */	beq lbl_80AD15F8
/* 80AD15F0  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 80AD15F4  4B 6C 4E D5 */	bl move__16ShopCam_action_cFv
lbl_80AD15F8:
/* 80AD15F8  38 60 00 01 */	li r3, 1
/* 80AD15FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD1600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD1604  7C 08 03 A6 */	mtlr r0
/* 80AD1608  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD160C  4E 80 00 20 */	blr 
