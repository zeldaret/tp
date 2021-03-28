lbl_800157FC:
/* 800157FC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80015800  7C 08 02 A6 */	mflr r0
/* 80015804  90 01 00 94 */	stw r0, 0x94(r1)
/* 80015808  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8001580C  7C 7F 1B 78 */	mr r31, r3
/* 80015810  48 32 B4 75 */	bl OSGetCurrentThread
/* 80015814  7C 64 1B 78 */	mr r4, r3
/* 80015818  38 61 00 08 */	addi r3, r1, 8
/* 8001581C  38 A0 00 00 */	li r5, 0
/* 80015820  48 2B BE 99 */	bl __ct__9JKRThreadFP8OSThreadi
/* 80015824  38 61 00 08 */	addi r3, r1, 8
/* 80015828  38 80 FF FF */	li r4, -1
/* 8001582C  48 2B BF 2D */	bl __dt__9JKRThreadFv
/* 80015830  4B FF 94 B5 */	bl mDoExt_getAssertHeap__Fv
/* 80015834  48 2B 8C 05 */	bl becomeCurrentHeap__7JKRHeapFv
/* 80015838  7F E3 FB 78 */	mr r3, r31
/* 8001583C  48 00 02 9D */	bl mainLoop__17mDoDvdThd_param_cFv
/* 80015840  38 60 00 00 */	li r3, 0
/* 80015844  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80015848  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8001584C  7C 08 03 A6 */	mtlr r0
/* 80015850  38 21 00 90 */	addi r1, r1, 0x90
/* 80015854  4E 80 00 20 */	blr 
