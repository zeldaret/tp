lbl_80056FCC:
/* 80056FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056FD0  7C 08 02 A6 */	mflr r0
/* 80056FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056FD8  7C 64 1B 78 */	mr r4, r3
/* 80056FDC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80056FE0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80056FE4  38 84 00 10 */	addi r4, r4, 0x10
/* 80056FE8  48 01 4E 25 */	bl dKyr_odour_draw__FPA4_fPPUc
/* 80056FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056FF0  7C 08 03 A6 */	mtlr r0
/* 80056FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80056FF8  4E 80 00 20 */	blr 
