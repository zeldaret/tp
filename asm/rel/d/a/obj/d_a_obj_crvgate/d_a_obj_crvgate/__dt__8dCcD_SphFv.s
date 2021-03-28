lbl_80BD2C74:
/* 80BD2C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD2C78  7C 08 02 A6 */	mflr r0
/* 80BD2C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD2C80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD2C84  93 C1 00 08 */	stw r30, 8(r1)
/* 80BD2C88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BD2C8C  7C 9F 23 78 */	mr r31, r4
/* 80BD2C90  41 82 00 94 */	beq lbl_80BD2D24
/* 80BD2C94  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80BD2C98  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80BD2C9C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BD2CA0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BD2CA4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BD2CA8  38 03 00 84 */	addi r0, r3, 0x84
/* 80BD2CAC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80BD2CB0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BD2CB4  41 82 00 54 */	beq lbl_80BD2D08
/* 80BD2CB8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80BD2CBC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80BD2CC0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BD2CC4  38 03 00 58 */	addi r0, r3, 0x58
/* 80BD2CC8  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80BD2CCC  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80BD2CD0  41 82 00 10 */	beq lbl_80BD2CE0
/* 80BD2CD4  3C 60 80 BD */	lis r3, __vt__8cM3dGSph@ha
/* 80BD2CD8  38 03 32 48 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80BD2CDC  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80BD2CE0:
/* 80BD2CE0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BD2CE4  41 82 00 24 */	beq lbl_80BD2D08
/* 80BD2CE8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BD2CEC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BD2CF0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BD2CF4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BD2CF8  41 82 00 10 */	beq lbl_80BD2D08
/* 80BD2CFC  3C 60 80 BD */	lis r3, __vt__8cM3dGAab@ha
/* 80BD2D00  38 03 32 60 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BD2D04  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80BD2D08:
/* 80BD2D08  7F C3 F3 78 */	mr r3, r30
/* 80BD2D0C  38 80 00 00 */	li r4, 0
/* 80BD2D10  4B 4B 13 D4 */	b __dt__12dCcD_GObjInfFv
/* 80BD2D14  7F E0 07 35 */	extsh. r0, r31
/* 80BD2D18  40 81 00 0C */	ble lbl_80BD2D24
/* 80BD2D1C  7F C3 F3 78 */	mr r3, r30
/* 80BD2D20  4B 6F C0 1C */	b __dl__FPv
lbl_80BD2D24:
/* 80BD2D24  7F C3 F3 78 */	mr r3, r30
/* 80BD2D28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD2D2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BD2D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD2D34  7C 08 03 A6 */	mtlr r0
/* 80BD2D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD2D3C  4E 80 00 20 */	blr 
