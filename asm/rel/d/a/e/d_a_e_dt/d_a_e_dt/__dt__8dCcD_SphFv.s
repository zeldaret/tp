lbl_806B592C:
/* 806B592C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B5930  7C 08 02 A6 */	mflr r0
/* 806B5934  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B5938  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B593C  93 C1 00 08 */	stw r30, 8(r1)
/* 806B5940  7C 7E 1B 79 */	or. r30, r3, r3
/* 806B5944  7C 9F 23 78 */	mr r31, r4
/* 806B5948  41 82 00 94 */	beq lbl_806B59DC
/* 806B594C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806B5950  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806B5954  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 806B5958  38 03 00 2C */	addi r0, r3, 0x2c
/* 806B595C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806B5960  38 03 00 84 */	addi r0, r3, 0x84
/* 806B5964  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806B5968  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806B596C  41 82 00 54 */	beq lbl_806B59C0
/* 806B5970  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806B5974  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806B5978  90 7E 01 20 */	stw r3, 0x120(r30)
/* 806B597C  38 03 00 58 */	addi r0, r3, 0x58
/* 806B5980  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806B5984  34 1E 01 24 */	addic. r0, r30, 0x124
/* 806B5988  41 82 00 10 */	beq lbl_806B5998
/* 806B598C  3C 60 80 6B */	lis r3, __vt__8cM3dGSph@ha
/* 806B5990  38 03 62 0C */	addi r0, r3, __vt__8cM3dGSph@l
/* 806B5994  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_806B5998:
/* 806B5998  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806B599C  41 82 00 24 */	beq lbl_806B59C0
/* 806B59A0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806B59A4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806B59A8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806B59AC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806B59B0  41 82 00 10 */	beq lbl_806B59C0
/* 806B59B4  3C 60 80 6B */	lis r3, __vt__8cM3dGAab@ha
/* 806B59B8  38 03 62 00 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806B59BC  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_806B59C0:
/* 806B59C0  7F C3 F3 78 */	mr r3, r30
/* 806B59C4  38 80 00 00 */	li r4, 0
/* 806B59C8  4B 9C E7 1C */	b __dt__12dCcD_GObjInfFv
/* 806B59CC  7F E0 07 35 */	extsh. r0, r31
/* 806B59D0  40 81 00 0C */	ble lbl_806B59DC
/* 806B59D4  7F C3 F3 78 */	mr r3, r30
/* 806B59D8  4B C1 93 64 */	b __dl__FPv
lbl_806B59DC:
/* 806B59DC  7F C3 F3 78 */	mr r3, r30
/* 806B59E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B59E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 806B59E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B59EC  7C 08 03 A6 */	mtlr r0
/* 806B59F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806B59F4  4E 80 00 20 */	blr 
