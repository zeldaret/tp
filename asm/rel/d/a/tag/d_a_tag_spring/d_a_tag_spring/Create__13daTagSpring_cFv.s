lbl_805A6AD0:
/* 805A6AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6AD4  7C 08 02 A6 */	mflr r0
/* 805A6AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6ADC  4B FF FF 7D */	bl initBaseMtx__13daTagSpring_cFv
/* 805A6AE0  38 60 00 01 */	li r3, 1
/* 805A6AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6AE8  7C 08 03 A6 */	mtlr r0
/* 805A6AEC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6AF0  4E 80 00 20 */	blr 
