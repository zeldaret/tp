lbl_805A6A58:
/* 805A6A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6A5C  7C 08 02 A6 */	mflr r0
/* 805A6A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6A64  48 00 00 15 */	bl setBaseMtx__13daTagSpring_cFv
/* 805A6A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6A6C  7C 08 03 A6 */	mtlr r0
/* 805A6A70  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6A74  4E 80 00 20 */	blr 
