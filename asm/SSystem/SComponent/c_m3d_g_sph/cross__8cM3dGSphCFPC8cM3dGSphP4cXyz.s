lbl_8026F710:
/* 8026F710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026F714  7C 08 02 A6 */	mflr r0
/* 8026F718  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026F71C  7C 60 1B 78 */	mr r0, r3
/* 8026F720  7C 83 23 78 */	mr r3, r4
/* 8026F724  7C 04 03 78 */	mr r4, r0
/* 8026F728  4B FF C6 61 */	bl cM3d_Cross_SphSph__FPC8cM3dGSphPC8cM3dGSphP3Vec
/* 8026F72C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026F730  7C 08 03 A6 */	mtlr r0
/* 8026F734  38 21 00 10 */	addi r1, r1, 0x10
/* 8026F738  4E 80 00 20 */	blr 
