lbl_806F5198:
/* 806F5198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F519C  7C 08 02 A6 */	mflr r0
/* 806F51A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F51A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F51A8  93 C1 00 08 */	stw r30, 8(r1)
/* 806F51AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 806F51B0  7C 9F 23 78 */	mr r31, r4
/* 806F51B4  41 82 00 94 */	beq lbl_806F5248
/* 806F51B8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806F51BC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806F51C0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 806F51C4  38 03 00 2C */	addi r0, r3, 0x2c
/* 806F51C8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806F51CC  38 03 00 84 */	addi r0, r3, 0x84
/* 806F51D0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806F51D4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806F51D8  41 82 00 54 */	beq lbl_806F522C
/* 806F51DC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806F51E0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806F51E4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 806F51E8  38 03 00 58 */	addi r0, r3, 0x58
/* 806F51EC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806F51F0  34 1E 01 24 */	addic. r0, r30, 0x124
/* 806F51F4  41 82 00 10 */	beq lbl_806F5204
/* 806F51F8  3C 60 80 6F */	lis r3, __vt__8cM3dGSph@ha /* 0x806F58C8@ha */
/* 806F51FC  38 03 58 C8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806F58C8@l */
/* 806F5200  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_806F5204:
/* 806F5204  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806F5208  41 82 00 24 */	beq lbl_806F522C
/* 806F520C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806F5210  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806F5214  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806F5218  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806F521C  41 82 00 10 */	beq lbl_806F522C
/* 806F5220  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha /* 0x806F58D4@ha */
/* 806F5224  38 03 58 D4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806F58D4@l */
/* 806F5228  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_806F522C:
/* 806F522C  7F C3 F3 78 */	mr r3, r30
/* 806F5230  38 80 00 00 */	li r4, 0
/* 806F5234  4B 98 EE B1 */	bl __dt__12dCcD_GObjInfFv
/* 806F5238  7F E0 07 35 */	extsh. r0, r31
/* 806F523C  40 81 00 0C */	ble lbl_806F5248
/* 806F5240  7F C3 F3 78 */	mr r3, r30
/* 806F5244  4B BD 9A F9 */	bl __dl__FPv
lbl_806F5248:
/* 806F5248  7F C3 F3 78 */	mr r3, r30
/* 806F524C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F5250  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F5254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F5258  7C 08 03 A6 */	mtlr r0
/* 806F525C  38 21 00 10 */	addi r1, r1, 0x10
/* 806F5260  4E 80 00 20 */	blr 
