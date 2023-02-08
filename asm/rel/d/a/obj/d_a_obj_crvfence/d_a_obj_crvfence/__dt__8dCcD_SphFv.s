lbl_80BCFD6C:
/* 80BCFD6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCFD70  7C 08 02 A6 */	mflr r0
/* 80BCFD74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCFD78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCFD7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BCFD80  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BCFD84  7C 9F 23 78 */	mr r31, r4
/* 80BCFD88  41 82 00 94 */	beq lbl_80BCFE1C
/* 80BCFD8C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BCFD90  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BCFD94  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BCFD98  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BCFD9C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BCFDA0  38 03 00 84 */	addi r0, r3, 0x84
/* 80BCFDA4  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80BCFDA8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BCFDAC  41 82 00 54 */	beq lbl_80BCFE00
/* 80BCFDB0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BCFDB4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BCFDB8  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BCFDBC  38 03 00 58 */	addi r0, r3, 0x58
/* 80BCFDC0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80BCFDC4  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80BCFDC8  41 82 00 10 */	beq lbl_80BCFDD8
/* 80BCFDCC  3C 60 80 BD */	lis r3, __vt__8cM3dGSph@ha /* 0x80BD02C0@ha */
/* 80BCFDD0  38 03 02 C0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BD02C0@l */
/* 80BCFDD4  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80BCFDD8:
/* 80BCFDD8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BCFDDC  41 82 00 24 */	beq lbl_80BCFE00
/* 80BCFDE0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BCFDE4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BCFDE8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BCFDEC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BCFDF0  41 82 00 10 */	beq lbl_80BCFE00
/* 80BCFDF4  3C 60 80 BD */	lis r3, __vt__8cM3dGAab@ha /* 0x80BD02B4@ha */
/* 80BCFDF8  38 03 02 B4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BD02B4@l */
/* 80BCFDFC  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80BCFE00:
/* 80BCFE00  7F C3 F3 78 */	mr r3, r30
/* 80BCFE04  38 80 00 00 */	li r4, 0
/* 80BCFE08  4B 4B 42 DD */	bl __dt__12dCcD_GObjInfFv
/* 80BCFE0C  7F E0 07 35 */	extsh. r0, r31
/* 80BCFE10  40 81 00 0C */	ble lbl_80BCFE1C
/* 80BCFE14  7F C3 F3 78 */	mr r3, r30
/* 80BCFE18  4B 6F EF 25 */	bl __dl__FPv
lbl_80BCFE1C:
/* 80BCFE1C  7F C3 F3 78 */	mr r3, r30
/* 80BCFE20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCFE24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BCFE28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCFE2C  7C 08 03 A6 */	mtlr r0
/* 80BCFE30  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCFE34  4E 80 00 20 */	blr 
