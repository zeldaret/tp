lbl_80CA5F74:
/* 80CA5F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA5F78  7C 08 02 A6 */	mflr r0
/* 80CA5F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA5F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA5F84  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA5F88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CA5F8C  7C 9F 23 78 */	mr r31, r4
/* 80CA5F90  41 82 00 94 */	beq lbl_80CA6024
/* 80CA5F94  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80CA5F98  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80CA5F9C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CA5FA0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CA5FA4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CA5FA8  38 03 00 84 */	addi r0, r3, 0x84
/* 80CA5FAC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CA5FB0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CA5FB4  41 82 00 54 */	beq lbl_80CA6008
/* 80CA5FB8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80CA5FBC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80CA5FC0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CA5FC4  38 03 00 58 */	addi r0, r3, 0x58
/* 80CA5FC8  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CA5FCC  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80CA5FD0  41 82 00 10 */	beq lbl_80CA5FE0
/* 80CA5FD4  3C 60 80 CA */	lis r3, __vt__8cM3dGSph@ha
/* 80CA5FD8  38 03 66 34 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80CA5FDC  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80CA5FE0:
/* 80CA5FE0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CA5FE4  41 82 00 24 */	beq lbl_80CA6008
/* 80CA5FE8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CA5FEC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CA5FF0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CA5FF4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CA5FF8  41 82 00 10 */	beq lbl_80CA6008
/* 80CA5FFC  3C 60 80 CA */	lis r3, __vt__8cM3dGAab@ha
/* 80CA6000  38 03 66 4C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CA6004  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80CA6008:
/* 80CA6008  7F C3 F3 78 */	mr r3, r30
/* 80CA600C  38 80 00 00 */	li r4, 0
/* 80CA6010  4B 3D E0 D4 */	b __dt__12dCcD_GObjInfFv
/* 80CA6014  7F E0 07 35 */	extsh. r0, r31
/* 80CA6018  40 81 00 0C */	ble lbl_80CA6024
/* 80CA601C  7F C3 F3 78 */	mr r3, r30
/* 80CA6020  4B 62 8D 1C */	b __dl__FPv
lbl_80CA6024:
/* 80CA6024  7F C3 F3 78 */	mr r3, r30
/* 80CA6028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA602C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA6030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6034  7C 08 03 A6 */	mtlr r0
/* 80CA6038  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA603C  4E 80 00 20 */	blr 
