lbl_805CC158:
/* 805CC158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CC15C  7C 08 02 A6 */	mflr r0
/* 805CC160  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CC164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CC168  93 C1 00 08 */	stw r30, 8(r1)
/* 805CC16C  7C 7E 1B 78 */	mr r30, r3
/* 805CC170  7C 9F 23 78 */	mr r31, r4
/* 805CC174  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805CC178  41 82 00 0C */	beq lbl_805CC184
/* 805CC17C  28 00 00 01 */	cmplwi r0, 1
/* 805CC180  40 82 00 10 */	bne lbl_805CC190
lbl_805CC184:
/* 805CC184  7F C3 F3 78 */	mr r3, r30
/* 805CC188  38 80 00 00 */	li r4, 0
/* 805CC18C  4B FF FD 45 */	bl handSPosSet__8daB_DS_cFi
lbl_805CC190:
/* 805CC190  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 805CC194  41 82 00 0C */	beq lbl_805CC1A0
/* 805CC198  28 00 00 02 */	cmplwi r0, 2
/* 805CC19C  40 82 00 10 */	bne lbl_805CC1AC
lbl_805CC1A0:
/* 805CC1A0  7F C3 F3 78 */	mr r3, r30
/* 805CC1A4  38 80 00 01 */	li r4, 1
/* 805CC1A8  4B FF FD 29 */	bl handSPosSet__8daB_DS_cFi
lbl_805CC1AC:
/* 805CC1AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CC1B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805CC1B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CC1B8  7C 08 03 A6 */	mtlr r0
/* 805CC1BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805CC1C0  4E 80 00 20 */	blr 
