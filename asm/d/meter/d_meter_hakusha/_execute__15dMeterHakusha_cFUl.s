lbl_8020C808:
/* 8020C808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020C80C  7C 08 02 A6 */	mflr r0
/* 8020C810  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020C814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020C818  93 C1 00 08 */	stw r30, 8(r1)
/* 8020C81C  7C 7E 1B 78 */	mr r30, r3
/* 8020C820  7C 9F 23 78 */	mr r31, r4
/* 8020C824  48 00 05 49 */	bl updateHakusha__15dMeterHakusha_cFv
/* 8020C828  7F C3 F3 78 */	mr r3, r30
/* 8020C82C  7F E4 FB 78 */	mr r4, r31
/* 8020C830  48 00 04 29 */	bl alphaAnimeHakusha__15dMeterHakusha_cFUl
/* 8020C834  38 60 00 01 */	li r3, 1
/* 8020C838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020C83C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020C840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020C844  7C 08 03 A6 */	mtlr r0
/* 8020C848  38 21 00 10 */	addi r1, r1, 0x10
/* 8020C84C  4E 80 00 20 */	blr 
