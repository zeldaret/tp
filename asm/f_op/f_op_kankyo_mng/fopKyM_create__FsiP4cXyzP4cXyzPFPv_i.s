lbl_8001F7B8:
/* 8001F7B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F7BC  7C 08 02 A6 */	mflr r0
/* 8001F7C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F7C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001F7C8  93 C1 00 08 */	stw r30, 8(r1)
/* 8001F7CC  7C 7E 1B 78 */	mr r30, r3
/* 8001F7D0  7C FF 3B 78 */	mr r31, r7
/* 8001F7D4  7C 83 23 78 */	mr r3, r4
/* 8001F7D8  7C A4 2B 78 */	mr r4, r5
/* 8001F7DC  7C C5 33 78 */	mr r5, r6
/* 8001F7E0  4B FF FE D9 */	bl createAppend__FiP4cXyzP4cXyz
/* 8001F7E4  7C 65 1B 79 */	or. r5, r3, r3
/* 8001F7E8  40 82 00 0C */	bne lbl_8001F7F4
/* 8001F7EC  38 60 FF FF */	li r3, -1
/* 8001F7F0  48 00 00 10 */	b lbl_8001F800
lbl_8001F7F4:
/* 8001F7F4  7F C3 F3 78 */	mr r3, r30
/* 8001F7F8  7F E4 FB 78 */	mr r4, r31
/* 8001F7FC  4B FF FF 6D */	bl fopKyM_Create__FsPFPv_iPv
lbl_8001F800:
/* 8001F800  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001F804  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001F808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F80C  7C 08 03 A6 */	mtlr r0
/* 8001F810  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F814  4E 80 00 20 */	blr 
