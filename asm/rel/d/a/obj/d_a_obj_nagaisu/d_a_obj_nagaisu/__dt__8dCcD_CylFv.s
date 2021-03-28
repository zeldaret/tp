lbl_80C9FAFC:
/* 80C9FAFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9FB00  7C 08 02 A6 */	mflr r0
/* 80C9FB04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9FB08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9FB0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9FB10  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C9FB14  7C 9F 23 78 */	mr r31, r4
/* 80C9FB18  41 82 00 94 */	beq lbl_80C9FBAC
/* 80C9FB1C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C9FB20  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C9FB24  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C9FB28  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C9FB2C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C9FB30  38 03 00 84 */	addi r0, r3, 0x84
/* 80C9FB34  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C9FB38  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C9FB3C  41 82 00 54 */	beq lbl_80C9FB90
/* 80C9FB40  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C9FB44  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C9FB48  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C9FB4C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C9FB50  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C9FB54  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C9FB58  41 82 00 10 */	beq lbl_80C9FB68
/* 80C9FB5C  3C 60 80 CA */	lis r3, __vt__8cM3dGCyl@ha
/* 80C9FB60  38 03 04 74 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C9FB64  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C9FB68:
/* 80C9FB68  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C9FB6C  41 82 00 24 */	beq lbl_80C9FB90
/* 80C9FB70  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C9FB74  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C9FB78  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C9FB7C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C9FB80  41 82 00 10 */	beq lbl_80C9FB90
/* 80C9FB84  3C 60 80 CA */	lis r3, __vt__8cM3dGAab@ha
/* 80C9FB88  38 03 04 68 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C9FB8C  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C9FB90:
/* 80C9FB90  7F C3 F3 78 */	mr r3, r30
/* 80C9FB94  38 80 00 00 */	li r4, 0
/* 80C9FB98  4B 3E 45 4C */	b __dt__12dCcD_GObjInfFv
/* 80C9FB9C  7F E0 07 35 */	extsh. r0, r31
/* 80C9FBA0  40 81 00 0C */	ble lbl_80C9FBAC
/* 80C9FBA4  7F C3 F3 78 */	mr r3, r30
/* 80C9FBA8  4B 62 F1 94 */	b __dl__FPv
lbl_80C9FBAC:
/* 80C9FBAC  7F C3 F3 78 */	mr r3, r30
/* 80C9FBB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9FBB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9FBB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9FBBC  7C 08 03 A6 */	mtlr r0
/* 80C9FBC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9FBC4  4E 80 00 20 */	blr 
