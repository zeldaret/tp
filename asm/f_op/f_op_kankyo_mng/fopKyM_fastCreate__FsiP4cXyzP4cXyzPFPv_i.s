lbl_8001F818:
/* 8001F818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F81C  7C 08 02 A6 */	mflr r0
/* 8001F820  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F824  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001F828  93 C1 00 08 */	stw r30, 8(r1)
/* 8001F82C  7C 7E 1B 78 */	mr r30, r3
/* 8001F830  7C FF 3B 78 */	mr r31, r7
/* 8001F834  7C 83 23 78 */	mr r3, r4
/* 8001F838  7C A4 2B 78 */	mr r4, r5
/* 8001F83C  7C C5 33 78 */	mr r5, r6
/* 8001F840  4B FF FE 79 */	bl createAppend__FiP4cXyzP4cXyz
/* 8001F844  7C 66 1B 79 */	or. r6, r3, r3
/* 8001F848  40 82 00 0C */	bne lbl_8001F854
/* 8001F84C  38 60 00 00 */	li r3, 0
/* 8001F850  48 00 00 14 */	b lbl_8001F864
lbl_8001F854:
/* 8001F854  7F C3 F3 78 */	mr r3, r30
/* 8001F858  7F E4 FB 78 */	mr r4, r31
/* 8001F85C  38 A0 00 00 */	li r5, 0
/* 8001F860  48 00 2A 95 */	bl fpcM_FastCreate__FsPFPv_iPvPv
lbl_8001F864:
/* 8001F864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001F868  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001F86C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F870  7C 08 03 A6 */	mtlr r0
/* 8001F874  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F878  4E 80 00 20 */	blr 
