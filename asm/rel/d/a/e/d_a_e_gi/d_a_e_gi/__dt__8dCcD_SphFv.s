lbl_806D0608:
/* 806D0608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D060C  7C 08 02 A6 */	mflr r0
/* 806D0610  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D0614  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D0618  93 C1 00 08 */	stw r30, 8(r1)
/* 806D061C  7C 7E 1B 79 */	or. r30, r3, r3
/* 806D0620  7C 9F 23 78 */	mr r31, r4
/* 806D0624  41 82 00 94 */	beq lbl_806D06B8
/* 806D0628  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806D062C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806D0630  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 806D0634  38 03 00 2C */	addi r0, r3, 0x2c
/* 806D0638  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806D063C  38 03 00 84 */	addi r0, r3, 0x84
/* 806D0640  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806D0644  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806D0648  41 82 00 54 */	beq lbl_806D069C
/* 806D064C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806D0650  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806D0654  90 7E 01 20 */	stw r3, 0x120(r30)
/* 806D0658  38 03 00 58 */	addi r0, r3, 0x58
/* 806D065C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806D0660  34 1E 01 24 */	addic. r0, r30, 0x124
/* 806D0664  41 82 00 10 */	beq lbl_806D0674
/* 806D0668  3C 60 80 6D */	lis r3, __vt__8cM3dGSph@ha
/* 806D066C  38 03 10 E4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806D0670  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_806D0674:
/* 806D0674  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806D0678  41 82 00 24 */	beq lbl_806D069C
/* 806D067C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806D0680  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806D0684  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806D0688  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806D068C  41 82 00 10 */	beq lbl_806D069C
/* 806D0690  3C 60 80 6D */	lis r3, __vt__8cM3dGAab@ha
/* 806D0694  38 03 10 D8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806D0698  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_806D069C:
/* 806D069C  7F C3 F3 78 */	mr r3, r30
/* 806D06A0  38 80 00 00 */	li r4, 0
/* 806D06A4  4B 9B 3A 40 */	b __dt__12dCcD_GObjInfFv
/* 806D06A8  7F E0 07 35 */	extsh. r0, r31
/* 806D06AC  40 81 00 0C */	ble lbl_806D06B8
/* 806D06B0  7F C3 F3 78 */	mr r3, r30
/* 806D06B4  4B BF E6 88 */	b __dl__FPv
lbl_806D06B8:
/* 806D06B8  7F C3 F3 78 */	mr r3, r30
/* 806D06BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D06C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806D06C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D06C8  7C 08 03 A6 */	mtlr r0
/* 806D06CC  38 21 00 10 */	addi r1, r1, 0x10
/* 806D06D0  4E 80 00 20 */	blr 
