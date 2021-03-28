lbl_80D083C0:
/* 80D083C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D083C4  7C 08 02 A6 */	mflr r0
/* 80D083C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D083CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D083D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D083D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D083D8  7C 9F 23 78 */	mr r31, r4
/* 80D083DC  41 82 00 9C */	beq lbl_80D08478
/* 80D083E0  34 1E 00 20 */	addic. r0, r30, 0x20
/* 80D083E4  41 82 00 84 */	beq lbl_80D08468
/* 80D083E8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D083EC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D083F0  90 7E 00 5C */	stw r3, 0x5c(r30)
/* 80D083F4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D083F8  90 1E 01 40 */	stw r0, 0x140(r30)
/* 80D083FC  38 03 00 84 */	addi r0, r3, 0x84
/* 80D08400  90 1E 01 58 */	stw r0, 0x158(r30)
/* 80D08404  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80D08408  41 82 00 54 */	beq lbl_80D0845C
/* 80D0840C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D08410  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D08414  90 7E 01 40 */	stw r3, 0x140(r30)
/* 80D08418  38 03 00 58 */	addi r0, r3, 0x58
/* 80D0841C  90 1E 01 58 */	stw r0, 0x158(r30)
/* 80D08420  34 1E 01 44 */	addic. r0, r30, 0x144
/* 80D08424  41 82 00 10 */	beq lbl_80D08434
/* 80D08428  3C 60 80 D1 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D0842C  38 03 86 C8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D08430  90 1E 01 58 */	stw r0, 0x158(r30)
lbl_80D08434:
/* 80D08434  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80D08438  41 82 00 24 */	beq lbl_80D0845C
/* 80D0843C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D08440  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D08444  90 1E 01 40 */	stw r0, 0x140(r30)
/* 80D08448  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80D0844C  41 82 00 10 */	beq lbl_80D0845C
/* 80D08450  3C 60 80 D1 */	lis r3, __vt__8cM3dGAab@ha
/* 80D08454  38 03 86 BC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D08458  90 1E 01 3C */	stw r0, 0x13c(r30)
lbl_80D0845C:
/* 80D0845C  38 7E 00 20 */	addi r3, r30, 0x20
/* 80D08460  38 80 00 00 */	li r4, 0
/* 80D08464  4B 37 BC 80 */	b __dt__12dCcD_GObjInfFv
lbl_80D08468:
/* 80D08468  7F E0 07 35 */	extsh. r0, r31
/* 80D0846C  40 81 00 0C */	ble lbl_80D08478
/* 80D08470  7F C3 F3 78 */	mr r3, r30
/* 80D08474  4B 5C 68 C8 */	b __dl__FPv
lbl_80D08478:
/* 80D08478  7F C3 F3 78 */	mr r3, r30
/* 80D0847C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D08480  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D08484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D08488  7C 08 03 A6 */	mtlr r0
/* 80D0848C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D08490  4E 80 00 20 */	blr 
