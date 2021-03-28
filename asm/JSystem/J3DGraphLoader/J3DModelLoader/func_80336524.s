lbl_80336524:
/* 80336524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80336528  7C 08 02 A6 */	mflr r0
/* 8033652C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80336530  C0 04 00 00 */	lfs f0, 0(r4)
/* 80336534  3C 60 80 43 */	lis r3, mCurrentS__6J3DSys@ha
/* 80336538  D4 03 4C 14 */	stfsu f0, mCurrentS__6J3DSys@l(r3)
/* 8033653C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80336540  D0 03 00 04 */	stfs f0, 4(r3)
/* 80336544  C0 04 00 08 */	lfs f0, 8(r4)
/* 80336548  D0 03 00 08 */	stfs f0, 8(r3)
/* 8033654C  7C A3 2B 78 */	mr r3, r5
/* 80336550  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80336554  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80336558  48 00 FF 59 */	bl PSMTXCopy
/* 8033655C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80336560  7C 08 03 A6 */	mtlr r0
/* 80336564  38 21 00 10 */	addi r1, r1, 0x10
/* 80336568  4E 80 00 20 */	blr 
