lbl_80A765CC:
/* 80A765CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A765D0  7C 08 02 A6 */	mflr r0
/* 80A765D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A765D8  38 63 16 1C */	addi r3, r3, 0x161c
/* 80A765DC  4B 8E BA 6C */	b __ptmf_cmpr
/* 80A765E0  7C 60 00 34 */	cntlzw r0, r3
/* 80A765E4  54 03 D9 7E */	srwi r3, r0, 5
/* 80A765E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A765EC  7C 08 03 A6 */	mtlr r0
/* 80A765F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A765F4  4E 80 00 20 */	blr 
