lbl_8076AC90:
/* 8076AC90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076AC94  7C 08 02 A6 */	mflr r0
/* 8076AC98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076AC9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8076ACA0  93 C1 00 08 */	stw r30, 8(r1)
/* 8076ACA4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8076ACA8  7C 9F 23 78 */	mr r31, r4
/* 8076ACAC  41 82 00 94 */	beq lbl_8076AD40
/* 8076ACB0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8076ACB4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8076ACB8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8076ACBC  38 03 00 2C */	addi r0, r3, 0x2c
/* 8076ACC0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8076ACC4  38 03 00 84 */	addi r0, r3, 0x84
/* 8076ACC8  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8076ACCC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8076ACD0  41 82 00 54 */	beq lbl_8076AD24
/* 8076ACD4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8076ACD8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8076ACDC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8076ACE0  38 03 00 58 */	addi r0, r3, 0x58
/* 8076ACE4  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8076ACE8  34 1E 01 24 */	addic. r0, r30, 0x124
/* 8076ACEC  41 82 00 10 */	beq lbl_8076ACFC
/* 8076ACF0  3C 60 80 77 */	lis r3, __vt__8cM3dGSph@ha
/* 8076ACF4  38 03 B9 68 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8076ACF8  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_8076ACFC:
/* 8076ACFC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8076AD00  41 82 00 24 */	beq lbl_8076AD24
/* 8076AD04  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8076AD08  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8076AD0C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8076AD10  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8076AD14  41 82 00 10 */	beq lbl_8076AD24
/* 8076AD18  3C 60 80 77 */	lis r3, __vt__8cM3dGAab@ha
/* 8076AD1C  38 03 B9 80 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8076AD20  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_8076AD24:
/* 8076AD24  7F C3 F3 78 */	mr r3, r30
/* 8076AD28  38 80 00 00 */	li r4, 0
/* 8076AD2C  4B 91 93 B8 */	b __dt__12dCcD_GObjInfFv
/* 8076AD30  7F E0 07 35 */	extsh. r0, r31
/* 8076AD34  40 81 00 0C */	ble lbl_8076AD40
/* 8076AD38  7F C3 F3 78 */	mr r3, r30
/* 8076AD3C  4B B6 40 00 */	b __dl__FPv
lbl_8076AD40:
/* 8076AD40  7F C3 F3 78 */	mr r3, r30
/* 8076AD44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8076AD48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8076AD4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076AD50  7C 08 03 A6 */	mtlr r0
/* 8076AD54  38 21 00 10 */	addi r1, r1, 0x10
/* 8076AD58  4E 80 00 20 */	blr 
