lbl_80BE35C0:
/* 80BE35C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE35C4  7C 08 02 A6 */	mflr r0
/* 80BE35C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE35CC  80 63 05 7C */	lwz r3, 0x57c(r3)
/* 80BE35D0  28 03 00 00 */	cmplwi r3, 0
/* 80BE35D4  41 82 00 08 */	beq lbl_80BE35DC
/* 80BE35D8  4B 6E B7 88 */	b __dla__FPv
lbl_80BE35DC:
/* 80BE35DC  38 60 00 01 */	li r3, 1
/* 80BE35E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE35E4  7C 08 03 A6 */	mtlr r0
/* 80BE35E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE35EC  4E 80 00 20 */	blr 
