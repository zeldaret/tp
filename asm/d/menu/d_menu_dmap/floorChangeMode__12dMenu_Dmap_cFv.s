lbl_801BD6C4:
/* 801BD6C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BD6C8  7C 08 02 A6 */	mflr r0
/* 801BD6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BD6D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BD6D4  7C 7F 1B 78 */	mr r31, r3
/* 801BD6D8  88 03 01 6D */	lbz r0, 0x16d(r3)
/* 801BD6DC  7C 03 07 74 */	extsb r3, r0
/* 801BD6E0  88 9F 01 6C */	lbz r4, 0x16c(r31)
/* 801BD6E4  7C 80 07 74 */	extsb r0, r4
/* 801BD6E8  7C 03 00 00 */	cmpw r3, r0
/* 801BD6EC  40 81 00 40 */	ble lbl_801BD72C
/* 801BD6F0  98 9F 01 6E */	stb r4, 0x16e(r31)
/* 801BD6F4  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BD6F8  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 801BD6FC  98 1F 01 79 */	stb r0, 0x179(r31)
/* 801BD700  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 801BD704  88 7F 01 6D */	lbz r3, 0x16d(r31)
/* 801BD708  7C 00 18 50 */	subf r0, r0, r3
/* 801BD70C  7C 04 07 74 */	extsb r4, r0
/* 801BD710  98 7F 01 6C */	stb r3, 0x16c(r31)
/* 801BD714  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BD718  88 BF 01 79 */	lbz r5, 0x179(r31)
/* 801BD71C  48 00 3B 8D */	bl setPlusNowStayFloorNo__20dMenu_StageMapCtrl_cFScUc
/* 801BD720  38 00 00 01 */	li r0, 1
/* 801BD724  98 1F 01 7D */	stb r0, 0x17d(r31)
/* 801BD728  48 00 00 3C */	b lbl_801BD764
lbl_801BD72C:
/* 801BD72C  98 9F 01 6E */	stb r4, 0x16e(r31)
/* 801BD730  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BD734  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 801BD738  98 1F 01 79 */	stb r0, 0x179(r31)
/* 801BD73C  38 00 00 01 */	li r0, 1
/* 801BD740  98 1F 01 7D */	stb r0, 0x17d(r31)
/* 801BD744  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 801BD748  88 7F 01 6D */	lbz r3, 0x16d(r31)
/* 801BD74C  7C 00 18 50 */	subf r0, r0, r3
/* 801BD750  7C 04 07 74 */	extsb r4, r0
/* 801BD754  98 7F 01 6C */	stb r3, 0x16c(r31)
/* 801BD758  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BD75C  88 BF 01 79 */	lbz r5, 0x179(r31)
/* 801BD760  48 00 3B 49 */	bl setPlusNowStayFloorNo__20dMenu_StageMapCtrl_cFScUc
lbl_801BD764:
/* 801BD764  38 00 00 00 */	li r0, 0
/* 801BD768  98 1F 01 85 */	stb r0, 0x185(r31)
/* 801BD76C  88 1F 01 7F */	lbz r0, 0x17f(r31)
/* 801BD770  28 00 00 00 */	cmplwi r0, 0
/* 801BD774  41 82 00 20 */	beq lbl_801BD794
/* 801BD778  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BD77C  38 80 00 00 */	li r4, 0
/* 801BD780  4B FF B6 65 */	bl setAButtonString__14dMenu_DmapBg_cFUl
/* 801BD784  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BD788  38 80 05 22 */	li r4, 0x522
/* 801BD78C  4B FF B7 31 */	bl setBButtonString__14dMenu_DmapBg_cFUl
/* 801BD790  48 00 00 1C */	b lbl_801BD7AC
lbl_801BD794:
/* 801BD794  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BD798  38 80 05 27 */	li r4, 0x527
/* 801BD79C  4B FF B6 49 */	bl setAButtonString__14dMenu_DmapBg_cFUl
/* 801BD7A0  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BD7A4  38 80 03 F9 */	li r4, 0x3f9
/* 801BD7A8  4B FF B7 15 */	bl setBButtonString__14dMenu_DmapBg_cFUl
lbl_801BD7AC:
/* 801BD7AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BD7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BD7B4  7C 08 03 A6 */	mtlr r0
/* 801BD7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801BD7BC  4E 80 00 20 */	blr 
