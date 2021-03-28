lbl_80C04C7C:
/* 80C04C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04C80  7C 08 02 A6 */	mflr r0
/* 80C04C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04C88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C04C8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C04C90  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C04C94  7C 9F 23 78 */	mr r31, r4
/* 80C04C98  41 82 00 94 */	beq lbl_80C04D2C
/* 80C04C9C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80C04CA0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80C04CA4  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C04CA8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C04CAC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C04CB0  38 03 00 84 */	addi r0, r3, 0x84
/* 80C04CB4  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C04CB8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C04CBC  41 82 00 54 */	beq lbl_80C04D10
/* 80C04CC0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80C04CC4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80C04CC8  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C04CCC  38 03 00 58 */	addi r0, r3, 0x58
/* 80C04CD0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C04CD4  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C04CD8  41 82 00 10 */	beq lbl_80C04CE8
/* 80C04CDC  3C 60 80 C1 */	lis r3, __vt__8cM3dGSph@ha
/* 80C04CE0  38 03 08 58 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80C04CE4  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80C04CE8:
/* 80C04CE8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C04CEC  41 82 00 24 */	beq lbl_80C04D10
/* 80C04CF0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C04CF4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C04CF8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C04CFC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C04D00  41 82 00 10 */	beq lbl_80C04D10
/* 80C04D04  3C 60 80 C1 */	lis r3, __vt__8cM3dGAab@ha
/* 80C04D08  38 03 08 7C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C04D0C  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C04D10:
/* 80C04D10  7F C3 F3 78 */	mr r3, r30
/* 80C04D14  38 80 00 00 */	li r4, 0
/* 80C04D18  4B 47 F3 CC */	b __dt__12dCcD_GObjInfFv
/* 80C04D1C  7F E0 07 35 */	extsh. r0, r31
/* 80C04D20  40 81 00 0C */	ble lbl_80C04D2C
/* 80C04D24  7F C3 F3 78 */	mr r3, r30
/* 80C04D28  4B 6C A0 14 */	b __dl__FPv
lbl_80C04D2C:
/* 80C04D2C  7F C3 F3 78 */	mr r3, r30
/* 80C04D30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C04D34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C04D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04D3C  7C 08 03 A6 */	mtlr r0
/* 80C04D40  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04D44  4E 80 00 20 */	blr 
