lbl_80C728A0:
/* 80C728A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C728A4  7C 08 02 A6 */	mflr r0
/* 80C728A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C728AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C728B0  7C 7F 1B 78 */	mr r31, r3
/* 80C728B4  4B 41 11 75 */	bl __ct__12dCcD_GObjInfFv
/* 80C728B8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C728BC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C728C0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C728C4  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C73264@ha */
/* 80C728C8  38 03 32 64 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C73264@l */
/* 80C728CC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C728D0  3C 60 80 C7 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C73270@ha */
/* 80C728D4  38 03 32 70 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C73270@l */
/* 80C728D8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C728DC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C728E0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C728E4  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C728E8  38 03 00 58 */	addi r0, r3, 0x58
/* 80C728EC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C728F0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C728F4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C728F8  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C728FC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C72900  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C72904  38 03 00 84 */	addi r0, r3, 0x84
/* 80C72908  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C7290C  7F E3 FB 78 */	mr r3, r31
/* 80C72910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C72914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C72918  7C 08 03 A6 */	mtlr r0
/* 80C7291C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C72920  4E 80 00 20 */	blr 
