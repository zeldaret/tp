lbl_8026F208:
/* 8026F208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026F20C  7C 08 02 A6 */	mflr r0
/* 8026F210  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026F214  38 C1 00 08 */	addi r6, r1, 8
/* 8026F218  4B FF C8 31 */	bl cM3d_Cross_CylSph__FPC8cM3dGCylPC8cM3dGSphP3VecPf
/* 8026F21C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026F220  7C 08 03 A6 */	mtlr r0
/* 8026F224  38 21 00 10 */	addi r1, r1, 0x10
/* 8026F228  4E 80 00 20 */	blr 
