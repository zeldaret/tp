lbl_8026F22C:
/* 8026F22C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026F230  7C 08 02 A6 */	mflr r0
/* 8026F234  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026F238  4B FF D1 7D */	bl cM3d_Cross_CylCyl__FPC8cM3dGCylPC8cM3dGCylP3Vec
/* 8026F23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026F240  7C 08 03 A6 */	mtlr r0
/* 8026F244  38 21 00 10 */	addi r1, r1, 0x10
/* 8026F248  4E 80 00 20 */	blr 
