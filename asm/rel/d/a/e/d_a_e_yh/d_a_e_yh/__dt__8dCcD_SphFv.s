lbl_80803B40:
/* 80803B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80803B44  7C 08 02 A6 */	mflr r0
/* 80803B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80803B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80803B50  93 C1 00 08 */	stw r30, 8(r1)
/* 80803B54  7C 7E 1B 79 */	or. r30, r3, r3
/* 80803B58  7C 9F 23 78 */	mr r31, r4
/* 80803B5C  41 82 00 94 */	beq lbl_80803BF0
/* 80803B60  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80803B64  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80803B68  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80803B6C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80803B70  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80803B74  38 03 00 84 */	addi r0, r3, 0x84
/* 80803B78  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80803B7C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80803B80  41 82 00 54 */	beq lbl_80803BD4
/* 80803B84  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80803B88  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80803B8C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80803B90  38 03 00 58 */	addi r0, r3, 0x58
/* 80803B94  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80803B98  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80803B9C  41 82 00 10 */	beq lbl_80803BAC
/* 80803BA0  3C 60 80 80 */	lis r3, __vt__8cM3dGSph@ha
/* 80803BA4  38 03 46 CC */	addi r0, r3, __vt__8cM3dGSph@l
/* 80803BA8  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80803BAC:
/* 80803BAC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80803BB0  41 82 00 24 */	beq lbl_80803BD4
/* 80803BB4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80803BB8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80803BBC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80803BC0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80803BC4  41 82 00 10 */	beq lbl_80803BD4
/* 80803BC8  3C 60 80 80 */	lis r3, __vt__8cM3dGAab@ha
/* 80803BCC  38 03 46 D8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80803BD0  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80803BD4:
/* 80803BD4  7F C3 F3 78 */	mr r3, r30
/* 80803BD8  38 80 00 00 */	li r4, 0
/* 80803BDC  4B 88 05 08 */	b __dt__12dCcD_GObjInfFv
/* 80803BE0  7F E0 07 35 */	extsh. r0, r31
/* 80803BE4  40 81 00 0C */	ble lbl_80803BF0
/* 80803BE8  7F C3 F3 78 */	mr r3, r30
/* 80803BEC  4B AC B1 50 */	b __dl__FPv
lbl_80803BF0:
/* 80803BF0  7F C3 F3 78 */	mr r3, r30
/* 80803BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80803BF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80803BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80803C00  7C 08 03 A6 */	mtlr r0
/* 80803C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80803C08  4E 80 00 20 */	blr 
