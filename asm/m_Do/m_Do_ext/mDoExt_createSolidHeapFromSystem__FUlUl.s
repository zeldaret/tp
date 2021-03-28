lbl_8000EF20:
/* 8000EF20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000EF24  7C 08 02 A6 */	mflr r0
/* 8000EF28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000EF2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000EF30  93 C1 00 08 */	stw r30, 8(r1)
/* 8000EF34  7C 7E 1B 78 */	mr r30, r3
/* 8000EF38  7C 9F 23 78 */	mr r31, r4
/* 8000EF3C  4B FF FE 45 */	bl mDoExt_getZeldaHeap__Fv
/* 8000EF40  7C 64 1B 78 */	mr r4, r3
/* 8000EF44  7F C3 F3 78 */	mr r3, r30
/* 8000EF48  7F E5 FB 78 */	mr r5, r31
/* 8000EF4C  4B FF FE F5 */	bl mDoExt_createSolidHeap__FUlP7JKRHeapUl
/* 8000EF50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000EF54  83 C1 00 08 */	lwz r30, 8(r1)
/* 8000EF58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000EF5C  7C 08 03 A6 */	mtlr r0
/* 8000EF60  38 21 00 10 */	addi r1, r1, 0x10
/* 8000EF64  4E 80 00 20 */	blr 
