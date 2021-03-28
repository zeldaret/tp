lbl_8048A380:
/* 8048A380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048A384  7C 08 02 A6 */	mflr r0
/* 8048A388  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048A38C  4B FF FB E9 */	bl execute__11daTag_Cam_cFv
/* 8048A390  38 60 00 01 */	li r3, 1
/* 8048A394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048A398  7C 08 03 A6 */	mtlr r0
/* 8048A39C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048A3A0  4E 80 00 20 */	blr 
