lbl_80D41518:
/* 80D41518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4151C  7C 08 02 A6 */	mflr r0
/* 80D41520  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D41524  3C 60 80 D4 */	lis r3, l_HIO@ha /* 0x80D4178C@ha */
/* 80D41528  38 63 17 8C */	addi r3, r3, l_HIO@l /* 0x80D4178C@l */
/* 80D4152C  4B FF F0 41 */	bl __ct__16daZrTurara_HIO_cFv
/* 80D41530  3C 80 80 D4 */	lis r4, __dt__16daZrTurara_HIO_cFv@ha /* 0x80D414BC@ha */
/* 80D41534  38 84 14 BC */	addi r4, r4, __dt__16daZrTurara_HIO_cFv@l /* 0x80D414BC@l */
/* 80D41538  3C A0 80 D4 */	lis r5, lit_3651@ha /* 0x80D41780@ha */
/* 80D4153C  38 A5 17 80 */	addi r5, r5, lit_3651@l /* 0x80D41780@l */
/* 80D41540  4B FF EF B9 */	bl __register_global_object
/* 80D41544  3C 60 80 D4 */	lis r3, mCcDCyl__12daZrTurara_c@ha /* 0x80D41628@ha */
/* 80D41548  38 63 16 28 */	addi r3, r3, mCcDCyl__12daZrTurara_c@l /* 0x80D41628@l */
/* 80D4154C  38 A3 FF FC */	addi r5, r3, -4
/* 80D41550  3C 60 80 D4 */	lis r3, mCcDObjInfo__12daZrTurara_c@ha /* 0x80D415A0@ha */
/* 80D41554  38 63 15 A0 */	addi r3, r3, mCcDObjInfo__12daZrTurara_c@l /* 0x80D415A0@l */
/* 80D41558  38 83 FF FC */	addi r4, r3, -4
/* 80D4155C  38 00 00 06 */	li r0, 6
/* 80D41560  7C 09 03 A6 */	mtctr r0
lbl_80D41564:
/* 80D41564  80 64 00 04 */	lwz r3, 4(r4)
/* 80D41568  84 04 00 08 */	lwzu r0, 8(r4)
/* 80D4156C  90 65 00 04 */	stw r3, 4(r5)
/* 80D41570  94 05 00 08 */	stwu r0, 8(r5)
/* 80D41574  42 00 FF F0 */	bdnz lbl_80D41564
/* 80D41578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4157C  7C 08 03 A6 */	mtlr r0
/* 80D41580  38 21 00 10 */	addi r1, r1, 0x10
/* 80D41584  4E 80 00 20 */	blr 
