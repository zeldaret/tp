lbl_80294F10:
/* 80294F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294F14  7C 08 02 A6 */	mflr r0
/* 80294F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294F1C  7C A6 2B 78 */	mr r6, r5
/* 80294F20  80 A5 00 00 */	lwz r5, 0(r5)
/* 80294F24  80 C6 00 04 */	lwz r6, 4(r6)
/* 80294F28  4B FF EE 9D */	bl writeReg__12JASSeqParserFP8JASTrackUlUl
/* 80294F2C  38 60 00 00 */	li r3, 0
/* 80294F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294F34  7C 08 03 A6 */	mtlr r0
/* 80294F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80294F3C  4E 80 00 20 */	blr 
