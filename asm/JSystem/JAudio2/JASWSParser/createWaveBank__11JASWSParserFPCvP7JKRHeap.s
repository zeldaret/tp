lbl_80298FD8:
/* 80298FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298FDC  7C 08 02 A6 */	mflr r0
/* 80298FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298FE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298FE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80298FEC  7C 7E 1B 78 */	mr r30, r3
/* 80298FF0  7C 9F 23 78 */	mr r31, r4
/* 80298FF4  4B FF FF BD */	bl getGroupCount__11JASWSParserFPCv
/* 80298FF8  28 03 00 01 */	cmplwi r3, 1
/* 80298FFC  40 82 00 14 */	bne lbl_80299010
/* 80299000  7F C3 F3 78 */	mr r3, r30
/* 80299004  7F E4 FB 78 */	mr r4, r31
/* 80299008  48 00 02 5D */	bl createSimpleWaveBank__11JASWSParserFPCvP7JKRHeap
/* 8029900C  48 00 00 10 */	b lbl_8029901C
lbl_80299010:
/* 80299010  7F C3 F3 78 */	mr r3, r30
/* 80299014  7F E4 FB 78 */	mr r4, r31
/* 80299018  48 00 00 1D */	bl createBasicWaveBank__11JASWSParserFPCvP7JKRHeap
lbl_8029901C:
/* 8029901C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80299020  83 C1 00 08 */	lwz r30, 8(r1)
/* 80299024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80299028  7C 08 03 A6 */	mtlr r0
/* 8029902C  38 21 00 10 */	addi r1, r1, 0x10
/* 80299030  4E 80 00 20 */	blr 
