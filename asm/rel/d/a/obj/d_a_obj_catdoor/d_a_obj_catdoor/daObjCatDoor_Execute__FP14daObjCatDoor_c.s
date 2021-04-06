lbl_80BC46EC:
/* 80BC46EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC46F0  7C 08 02 A6 */	mflr r0
/* 80BC46F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC46F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC46FC  7C 7F 1B 78 */	mr r31, r3
/* 80BC4700  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC4704  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC4708  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BC470C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BC4710  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BC4714  7C 05 07 74 */	extsb r5, r0
/* 80BC4718  4B 47 0C 49 */	bl isSwitch__10dSv_info_cCFii
/* 80BC471C  2C 03 00 00 */	cmpwi r3, 0
/* 80BC4720  40 82 00 10 */	bne lbl_80BC4730
/* 80BC4724  A8 1F 07 90 */	lha r0, 0x790(r31)
/* 80BC4728  2C 00 00 00 */	cmpwi r0, 0
/* 80BC472C  40 82 00 0C */	bne lbl_80BC4738
lbl_80BC4730:
/* 80BC4730  38 60 00 01 */	li r3, 1
/* 80BC4734  48 00 00 18 */	b lbl_80BC474C
lbl_80BC4738:
/* 80BC4738  7F E3 FB 78 */	mr r3, r31
/* 80BC473C  4B FF FE 25 */	bl calcOpen__14daObjCatDoor_cFv
/* 80BC4740  7F E3 FB 78 */	mr r3, r31
/* 80BC4744  4B FF FD 11 */	bl setBaseMtx__14daObjCatDoor_cFv
/* 80BC4748  38 60 00 01 */	li r3, 1
lbl_80BC474C:
/* 80BC474C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC4750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC4754  7C 08 03 A6 */	mtlr r0
/* 80BC4758  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC475C  4E 80 00 20 */	blr 
