lbl_80294248:
/* 80294248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029424C  7C 08 02 A6 */	mflr r0
/* 80294250  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294254  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80294258  93 C1 00 08 */	stw r30, 8(r1)
/* 8029425C  7C 9E 23 78 */	mr r30, r4
/* 80294260  7C BF 2B 78 */	mr r31, r5
/* 80294264  80 A5 00 00 */	lwz r5, 0(r5)
/* 80294268  4B FF FA 8D */	bl conditionCheck__12JASSeqParserFP8JASTrackQ212JASSeqParser15BranchCondition
/* 8029426C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80294270  41 82 00 10 */	beq lbl_80294280
/* 80294274  7F C3 F3 78 */	mr r3, r30
/* 80294278  80 9F 00 04 */	lwz r4, 4(r31)
/* 8029427C  48 00 1F 11 */	bl call__12JASSeqReaderFUl
lbl_80294280:
/* 80294280  38 60 00 00 */	li r3, 0
/* 80294284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80294288  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029428C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294290  7C 08 03 A6 */	mtlr r0
/* 80294294  38 21 00 10 */	addi r1, r1, 0x10
/* 80294298  4E 80 00 20 */	blr 
