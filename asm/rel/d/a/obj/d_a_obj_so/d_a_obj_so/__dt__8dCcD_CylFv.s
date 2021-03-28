lbl_80CE36D0:
/* 80CE36D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE36D4  7C 08 02 A6 */	mflr r0
/* 80CE36D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE36DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE36E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE36E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CE36E8  7C 9F 23 78 */	mr r31, r4
/* 80CE36EC  41 82 00 94 */	beq lbl_80CE3780
/* 80CE36F0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CE36F4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CE36F8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CE36FC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CE3700  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CE3704  38 03 00 84 */	addi r0, r3, 0x84
/* 80CE3708  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CE370C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CE3710  41 82 00 54 */	beq lbl_80CE3764
/* 80CE3714  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CE3718  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CE371C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CE3720  38 03 00 58 */	addi r0, r3, 0x58
/* 80CE3724  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CE3728  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80CE372C  41 82 00 10 */	beq lbl_80CE373C
/* 80CE3730  3C 60 80 CE */	lis r3, __vt__8cM3dGCyl@ha
/* 80CE3734  38 03 3C 18 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CE3738  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80CE373C:
/* 80CE373C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CE3740  41 82 00 24 */	beq lbl_80CE3764
/* 80CE3744  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CE3748  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CE374C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CE3750  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CE3754  41 82 00 10 */	beq lbl_80CE3764
/* 80CE3758  3C 60 80 CE */	lis r3, __vt__8cM3dGAab@ha
/* 80CE375C  38 03 3C 0C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CE3760  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80CE3764:
/* 80CE3764  7F C3 F3 78 */	mr r3, r30
/* 80CE3768  38 80 00 00 */	li r4, 0
/* 80CE376C  4B 3A 09 78 */	b __dt__12dCcD_GObjInfFv
/* 80CE3770  7F E0 07 35 */	extsh. r0, r31
/* 80CE3774  40 81 00 0C */	ble lbl_80CE3780
/* 80CE3778  7F C3 F3 78 */	mr r3, r30
/* 80CE377C  4B 5E B5 C0 */	b __dl__FPv
lbl_80CE3780:
/* 80CE3780  7F C3 F3 78 */	mr r3, r30
/* 80CE3784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE3788  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE378C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE3790  7C 08 03 A6 */	mtlr r0
/* 80CE3794  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE3798  4E 80 00 20 */	blr 
