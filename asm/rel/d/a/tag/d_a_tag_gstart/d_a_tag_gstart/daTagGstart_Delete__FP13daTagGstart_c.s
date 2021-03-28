lbl_805A3568:
/* 805A3568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A356C  7C 08 02 A6 */	mflr r0
/* 805A3570  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3574  38 80 FF FF */	li r4, -1
/* 805A3578  4B FF FF 9D */	bl __dt__13daTagGstart_cFv
/* 805A357C  38 60 00 01 */	li r3, 1
/* 805A3580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3584  7C 08 03 A6 */	mtlr r0
/* 805A3588  38 21 00 10 */	addi r1, r1, 0x10
/* 805A358C  4E 80 00 20 */	blr 
