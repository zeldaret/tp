lbl_80CAD528:
/* 80CAD528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD52C  7C 08 02 A6 */	mflr r0
/* 80CAD530  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAD538  93 C1 00 08 */	stw r30, 8(r1)
/* 80CAD53C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CAD540  7C 9F 23 78 */	mr r31, r4
/* 80CAD544  41 82 00 8C */	beq lbl_80CAD5D0
/* 80CAD548  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 80CAD54C  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 80CAD550  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CAD554  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CAD558  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CAD55C  38 03 00 84 */	addi r0, r3, 0x84
/* 80CAD560  90 1E 01 3C */	stw r0, 0x13c(r30)
/* 80CAD564  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CAD568  41 82 00 4C */	beq lbl_80CAD5B4
/* 80CAD56C  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 80CAD570  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 80CAD574  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CAD578  38 03 00 58 */	addi r0, r3, 0x58
/* 80CAD57C  90 1E 01 3C */	stw r0, 0x13c(r30)
/* 80CAD580  38 7E 01 24 */	addi r3, r30, 0x124
/* 80CAD584  38 80 00 00 */	li r4, 0
/* 80CAD588  4B 5C 1A 1D */	bl __dt__8cM3dGCpsFv
/* 80CAD58C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CAD590  41 82 00 24 */	beq lbl_80CAD5B4
/* 80CAD594  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CAD598  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CAD59C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CAD5A0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CAD5A4  41 82 00 10 */	beq lbl_80CAD5B4
/* 80CAD5A8  3C 60 80 CB */	lis r3, __vt__8cM3dGAab@ha /* 0x80CAF234@ha */
/* 80CAD5AC  38 03 F2 34 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CAF234@l */
/* 80CAD5B0  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80CAD5B4:
/* 80CAD5B4  7F C3 F3 78 */	mr r3, r30
/* 80CAD5B8  38 80 00 00 */	li r4, 0
/* 80CAD5BC  4B 3D 6B 29 */	bl __dt__12dCcD_GObjInfFv
/* 80CAD5C0  7F E0 07 35 */	extsh. r0, r31
/* 80CAD5C4  40 81 00 0C */	ble lbl_80CAD5D0
/* 80CAD5C8  7F C3 F3 78 */	mr r3, r30
/* 80CAD5CC  4B 62 17 71 */	bl __dl__FPv
lbl_80CAD5D0:
/* 80CAD5D0  7F C3 F3 78 */	mr r3, r30
/* 80CAD5D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAD5D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CAD5DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD5E0  7C 08 03 A6 */	mtlr r0
/* 80CAD5E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD5E8  4E 80 00 20 */	blr 
