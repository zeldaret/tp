lbl_80293C6C:
/* 80293C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80293C70  7C 08 02 A6 */	mflr r0
/* 80293C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293C78  3C 60 80 3C */	lis r3, __vt__12JASSeqParser@ha
/* 80293C7C  38 03 76 50 */	addi r0, r3, __vt__12JASSeqParser@l
/* 80293C80  90 0D 8C B8 */	stw r0, sDefaultParser__10JASSeqCtrl(r13)
/* 80293C84  38 6D 8C B8 */	la r3, sDefaultParser__10JASSeqCtrl(r13) /* 80451238-_SDA_BASE_ */
/* 80293C88  3C 80 80 29 */	lis r4, __dt__12JASSeqParserFv@ha
/* 80293C8C  38 84 3C AC */	addi r4, r4, __dt__12JASSeqParserFv@l
/* 80293C90  3C A0 80 43 */	lis r5, lit_433@ha
/* 80293C94  38 A5 1B 18 */	addi r5, r5, lit_433@l
/* 80293C98  48 0C DF 8D */	bl __register_global_object
/* 80293C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80293CA0  7C 08 03 A6 */	mtlr r0
/* 80293CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80293CA8  4E 80 00 20 */	blr 
