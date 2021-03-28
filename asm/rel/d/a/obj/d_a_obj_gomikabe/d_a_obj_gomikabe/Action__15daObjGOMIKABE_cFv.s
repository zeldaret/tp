lbl_80BFEEA8:
/* 80BFEEA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFEEAC  7C 08 02 A6 */	mflr r0
/* 80BFEEB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFEEB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFEEB8  7C 7F 1B 78 */	mr r31, r3
/* 80BFEEBC  88 03 05 A1 */	lbz r0, 0x5a1(r3)
/* 80BFEEC0  2C 00 00 01 */	cmpwi r0, 1
/* 80BFEEC4  41 82 00 34 */	beq lbl_80BFEEF8
/* 80BFEEC8  40 80 00 44 */	bge lbl_80BFEF0C
/* 80BFEECC  2C 00 00 00 */	cmpwi r0, 0
/* 80BFEED0  40 80 00 08 */	bge lbl_80BFEED8
/* 80BFEED4  48 00 00 38 */	b lbl_80BFEF0C
lbl_80BFEED8:
/* 80BFEED8  4B FF F5 A5 */	bl WaitAction__15daObjGOMIKABE_cFv
/* 80BFEEDC  7F E3 FB 78 */	mr r3, r31
/* 80BFEEE0  4B FF F5 E5 */	bl BreakChk__15daObjGOMIKABE_cFv
/* 80BFEEE4  7F E3 FB 78 */	mr r3, r31
/* 80BFEEE8  4B FF F3 E5 */	bl SetCcCyl__15daObjGOMIKABE_cFv
/* 80BFEEEC  7F E3 FB 78 */	mr r3, r31
/* 80BFEEF0  48 00 00 31 */	bl setBaseMtx__15daObjGOMIKABE_cFv
/* 80BFEEF4  48 00 00 18 */	b lbl_80BFEF0C
lbl_80BFEEF8:
/* 80BFEEF8  4B FF FE 5D */	bl BreakAction__15daObjGOMIKABE_cFv
/* 80BFEEFC  7F E3 FB 78 */	mr r3, r31
/* 80BFEF00  48 00 00 85 */	bl setBaseMtx2__15daObjGOMIKABE_cFv
/* 80BFEF04  7F E3 FB 78 */	mr r3, r31
/* 80BFEF08  4B FF FE 6D */	bl CheckCull__15daObjGOMIKABE_cFv
lbl_80BFEF0C:
/* 80BFEF0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFEF10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFEF14  7C 08 03 A6 */	mtlr r0
/* 80BFEF18  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFEF1C  4E 80 00 20 */	blr 
