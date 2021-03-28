lbl_802942D4:
/* 802942D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802942D8  7C 08 02 A6 */	mflr r0
/* 802942DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802942E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802942E4  7C 9F 23 78 */	mr r31, r4
/* 802942E8  80 A5 00 00 */	lwz r5, 0(r5)
/* 802942EC  4B FF FA 09 */	bl conditionCheck__12JASSeqParserFP8JASTrackQ212JASSeqParser15BranchCondition
/* 802942F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802942F4  41 82 00 1C */	beq lbl_80294310
/* 802942F8  7F E3 FB 78 */	mr r3, r31
/* 802942FC  48 00 1F 81 */	bl ret__12JASSeqReaderFv
/* 80294300  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80294304  40 82 00 0C */	bne lbl_80294310
/* 80294308  38 60 00 00 */	li r3, 0
/* 8029430C  48 00 00 08 */	b lbl_80294314
lbl_80294310:
/* 80294310  38 60 00 00 */	li r3, 0
lbl_80294314:
/* 80294314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80294318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029431C  7C 08 03 A6 */	mtlr r0
/* 80294320  38 21 00 10 */	addi r1, r1, 0x10
/* 80294324  4E 80 00 20 */	blr 
