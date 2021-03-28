lbl_8026F73C:
/* 8026F73C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026F740  7C 08 02 A6 */	mflr r0
/* 8026F744  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026F748  7C 60 1B 78 */	mr r0, r3
/* 8026F74C  7C 83 23 78 */	mr r3, r4
/* 8026F750  7C 04 03 78 */	mr r4, r0
/* 8026F754  38 C1 00 08 */	addi r6, r1, 8
/* 8026F758  4B FF C2 F1 */	bl cM3d_Cross_CylSph__FPC8cM3dGCylPC8cM3dGSphP3VecPf
/* 8026F75C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026F760  7C 08 03 A6 */	mtlr r0
/* 8026F764  38 21 00 10 */	addi r1, r1, 0x10
/* 8026F768  4E 80 00 20 */	blr 
