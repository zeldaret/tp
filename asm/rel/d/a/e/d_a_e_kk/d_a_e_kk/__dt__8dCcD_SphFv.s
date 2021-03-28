lbl_806FEDA4:
/* 806FEDA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FEDA8  7C 08 02 A6 */	mflr r0
/* 806FEDAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FEDB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806FEDB4  93 C1 00 08 */	stw r30, 8(r1)
/* 806FEDB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 806FEDBC  7C 9F 23 78 */	mr r31, r4
/* 806FEDC0  41 82 00 94 */	beq lbl_806FEE54
/* 806FEDC4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806FEDC8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806FEDCC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 806FEDD0  38 03 00 2C */	addi r0, r3, 0x2c
/* 806FEDD4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806FEDD8  38 03 00 84 */	addi r0, r3, 0x84
/* 806FEDDC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806FEDE0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806FEDE4  41 82 00 54 */	beq lbl_806FEE38
/* 806FEDE8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806FEDEC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806FEDF0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 806FEDF4  38 03 00 58 */	addi r0, r3, 0x58
/* 806FEDF8  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806FEDFC  34 1E 01 24 */	addic. r0, r30, 0x124
/* 806FEE00  41 82 00 10 */	beq lbl_806FEE10
/* 806FEE04  3C 60 80 70 */	lis r3, __vt__8cM3dGSph@ha
/* 806FEE08  38 03 F8 20 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806FEE0C  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_806FEE10:
/* 806FEE10  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806FEE14  41 82 00 24 */	beq lbl_806FEE38
/* 806FEE18  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806FEE1C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806FEE20  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806FEE24  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806FEE28  41 82 00 10 */	beq lbl_806FEE38
/* 806FEE2C  3C 60 80 70 */	lis r3, __vt__8cM3dGAab@ha
/* 806FEE30  38 03 F8 38 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806FEE34  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_806FEE38:
/* 806FEE38  7F C3 F3 78 */	mr r3, r30
/* 806FEE3C  38 80 00 00 */	li r4, 0
/* 806FEE40  4B 98 52 A4 */	b __dt__12dCcD_GObjInfFv
/* 806FEE44  7F E0 07 35 */	extsh. r0, r31
/* 806FEE48  40 81 00 0C */	ble lbl_806FEE54
/* 806FEE4C  7F C3 F3 78 */	mr r3, r30
/* 806FEE50  4B BC FE EC */	b __dl__FPv
lbl_806FEE54:
/* 806FEE54  7F C3 F3 78 */	mr r3, r30
/* 806FEE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806FEE5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806FEE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FEE64  7C 08 03 A6 */	mtlr r0
/* 806FEE68  38 21 00 10 */	addi r1, r1, 0x10
/* 806FEE6C  4E 80 00 20 */	blr 
