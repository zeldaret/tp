lbl_805C50BC:
/* 805C50BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C50C0  7C 08 02 A6 */	mflr r0
/* 805C50C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C50C8  28 03 00 00 */	cmplwi r3, 0
/* 805C50CC  41 82 00 10 */	beq lbl_805C50DC
/* 805C50D0  4B FF FE E5 */	bl demo_skip__8daB_DR_cFi
/* 805C50D4  38 60 00 01 */	li r3, 1
/* 805C50D8  48 00 00 08 */	b lbl_805C50E0
lbl_805C50DC:
/* 805C50DC  38 60 00 00 */	li r3, 0
lbl_805C50E0:
/* 805C50E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C50E4  7C 08 03 A6 */	mtlr r0
/* 805C50E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805C50EC  4E 80 00 20 */	blr 
