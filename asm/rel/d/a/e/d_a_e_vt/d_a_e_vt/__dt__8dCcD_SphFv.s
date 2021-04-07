lbl_807CDF98:
/* 807CDF98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CDF9C  7C 08 02 A6 */	mflr r0
/* 807CDFA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CDFA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CDFA8  93 C1 00 08 */	stw r30, 8(r1)
/* 807CDFAC  7C 7E 1B 79 */	or. r30, r3, r3
/* 807CDFB0  7C 9F 23 78 */	mr r31, r4
/* 807CDFB4  41 82 00 94 */	beq lbl_807CE048
/* 807CDFB8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807CDFBC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807CDFC0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 807CDFC4  38 03 00 2C */	addi r0, r3, 0x2c
/* 807CDFC8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 807CDFCC  38 03 00 84 */	addi r0, r3, 0x84
/* 807CDFD0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 807CDFD4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807CDFD8  41 82 00 54 */	beq lbl_807CE02C
/* 807CDFDC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807CDFE0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807CDFE4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 807CDFE8  38 03 00 58 */	addi r0, r3, 0x58
/* 807CDFEC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 807CDFF0  34 1E 01 24 */	addic. r0, r30, 0x124
/* 807CDFF4  41 82 00 10 */	beq lbl_807CE004
/* 807CDFF8  3C 60 80 7D */	lis r3, __vt__8cM3dGSph@ha /* 0x807CF3F8@ha */
/* 807CDFFC  38 03 F3 F8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x807CF3F8@l */
/* 807CE000  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_807CE004:
/* 807CE004  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807CE008  41 82 00 24 */	beq lbl_807CE02C
/* 807CE00C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807CE010  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807CE014  90 1E 01 20 */	stw r0, 0x120(r30)
/* 807CE018  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807CE01C  41 82 00 10 */	beq lbl_807CE02C
/* 807CE020  3C 60 80 7D */	lis r3, __vt__8cM3dGAab@ha /* 0x807CF454@ha */
/* 807CE024  38 03 F4 54 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807CF454@l */
/* 807CE028  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_807CE02C:
/* 807CE02C  7F C3 F3 78 */	mr r3, r30
/* 807CE030  38 80 00 00 */	li r4, 0
/* 807CE034  4B 8B 60 B1 */	bl __dt__12dCcD_GObjInfFv
/* 807CE038  7F E0 07 35 */	extsh. r0, r31
/* 807CE03C  40 81 00 0C */	ble lbl_807CE048
/* 807CE040  7F C3 F3 78 */	mr r3, r30
/* 807CE044  4B B0 0C F9 */	bl __dl__FPv
lbl_807CE048:
/* 807CE048  7F C3 F3 78 */	mr r3, r30
/* 807CE04C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CE050  83 C1 00 08 */	lwz r30, 8(r1)
/* 807CE054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CE058  7C 08 03 A6 */	mtlr r0
/* 807CE05C  38 21 00 10 */	addi r1, r1, 0x10
/* 807CE060  4E 80 00 20 */	blr 
