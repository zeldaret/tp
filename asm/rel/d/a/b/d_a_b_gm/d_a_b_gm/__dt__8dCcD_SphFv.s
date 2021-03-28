lbl_805F3B84:
/* 805F3B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F3B88  7C 08 02 A6 */	mflr r0
/* 805F3B8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F3B90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F3B94  93 C1 00 08 */	stw r30, 8(r1)
/* 805F3B98  7C 7E 1B 79 */	or. r30, r3, r3
/* 805F3B9C  7C 9F 23 78 */	mr r31, r4
/* 805F3BA0  41 82 00 94 */	beq lbl_805F3C34
/* 805F3BA4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805F3BA8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 805F3BAC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 805F3BB0  38 03 00 2C */	addi r0, r3, 0x2c
/* 805F3BB4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805F3BB8  38 03 00 84 */	addi r0, r3, 0x84
/* 805F3BBC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 805F3BC0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805F3BC4  41 82 00 54 */	beq lbl_805F3C18
/* 805F3BC8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805F3BCC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 805F3BD0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 805F3BD4  38 03 00 58 */	addi r0, r3, 0x58
/* 805F3BD8  90 1E 01 34 */	stw r0, 0x134(r30)
/* 805F3BDC  34 1E 01 24 */	addic. r0, r30, 0x124
/* 805F3BE0  41 82 00 10 */	beq lbl_805F3BF0
/* 805F3BE4  3C 60 80 5F */	lis r3, __vt__8cM3dGSph@ha
/* 805F3BE8  38 03 47 28 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805F3BEC  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_805F3BF0:
/* 805F3BF0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805F3BF4  41 82 00 24 */	beq lbl_805F3C18
/* 805F3BF8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805F3BFC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805F3C00  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805F3C04  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805F3C08  41 82 00 10 */	beq lbl_805F3C18
/* 805F3C0C  3C 60 80 5F */	lis r3, __vt__8cM3dGAab@ha
/* 805F3C10  38 03 47 34 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805F3C14  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_805F3C18:
/* 805F3C18  7F C3 F3 78 */	mr r3, r30
/* 805F3C1C  38 80 00 00 */	li r4, 0
/* 805F3C20  4B A9 04 C4 */	b __dt__12dCcD_GObjInfFv
/* 805F3C24  7F E0 07 35 */	extsh. r0, r31
/* 805F3C28  40 81 00 0C */	ble lbl_805F3C34
/* 805F3C2C  7F C3 F3 78 */	mr r3, r30
/* 805F3C30  4B CD B1 0C */	b __dl__FPv
lbl_805F3C34:
/* 805F3C34  7F C3 F3 78 */	mr r3, r30
/* 805F3C38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F3C3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F3C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F3C44  7C 08 03 A6 */	mtlr r0
/* 805F3C48  38 21 00 10 */	addi r1, r1, 0x10
/* 805F3C4C  4E 80 00 20 */	blr 
