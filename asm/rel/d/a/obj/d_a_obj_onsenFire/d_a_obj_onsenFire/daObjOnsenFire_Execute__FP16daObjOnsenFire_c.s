lbl_80CA841C:
/* 80CA841C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA8420  7C 08 02 A6 */	mflr r0
/* 80CA8424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8428  4B FF FE CD */	bl execute__16daObjOnsenFire_cFv
/* 80CA842C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA8430  7C 08 03 A6 */	mtlr r0
/* 80CA8434  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8438  4E 80 00 20 */	blr 
