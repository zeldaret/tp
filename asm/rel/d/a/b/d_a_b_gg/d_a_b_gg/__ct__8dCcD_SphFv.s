lbl_805EC848:
/* 805EC848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EC84C  7C 08 02 A6 */	mflr r0
/* 805EC850  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EC854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EC858  7C 7F 1B 78 */	mr r31, r3
/* 805EC85C  4B A9 71 CD */	bl __ct__12dCcD_GObjInfFv
/* 805EC860  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 805EC864  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 805EC868  90 1F 01 20 */	stw r0, 0x120(r31)
/* 805EC86C  3C 60 80 5F */	lis r3, __vt__8cM3dGAab@ha /* 0x805ED690@ha */
/* 805EC870  38 03 D6 90 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x805ED690@l */
/* 805EC874  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 805EC878  3C 60 80 5F */	lis r3, __vt__8cM3dGSph@ha /* 0x805ED678@ha */
/* 805EC87C  38 03 D6 78 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x805ED678@l */
/* 805EC880  90 1F 01 34 */	stw r0, 0x134(r31)
/* 805EC884  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 805EC888  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 805EC88C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 805EC890  38 03 00 58 */	addi r0, r3, 0x58
/* 805EC894  90 1F 01 34 */	stw r0, 0x134(r31)
/* 805EC898  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 805EC89C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 805EC8A0  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 805EC8A4  38 03 00 2C */	addi r0, r3, 0x2c
/* 805EC8A8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 805EC8AC  38 03 00 84 */	addi r0, r3, 0x84
/* 805EC8B0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 805EC8B4  7F E3 FB 78 */	mr r3, r31
/* 805EC8B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EC8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EC8C0  7C 08 03 A6 */	mtlr r0
/* 805EC8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805EC8C8  4E 80 00 20 */	blr 
