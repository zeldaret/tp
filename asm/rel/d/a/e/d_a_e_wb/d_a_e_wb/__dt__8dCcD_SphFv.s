lbl_807E1E04:
/* 807E1E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E1E08  7C 08 02 A6 */	mflr r0
/* 807E1E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E1E10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E1E14  93 C1 00 08 */	stw r30, 8(r1)
/* 807E1E18  7C 7E 1B 79 */	or. r30, r3, r3
/* 807E1E1C  7C 9F 23 78 */	mr r31, r4
/* 807E1E20  41 82 00 94 */	beq lbl_807E1EB4
/* 807E1E24  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807E1E28  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807E1E2C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 807E1E30  38 03 00 2C */	addi r0, r3, 0x2c
/* 807E1E34  90 1E 01 20 */	stw r0, 0x120(r30)
/* 807E1E38  38 03 00 84 */	addi r0, r3, 0x84
/* 807E1E3C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 807E1E40  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807E1E44  41 82 00 54 */	beq lbl_807E1E98
/* 807E1E48  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807E1E4C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 807E1E50  90 7E 01 20 */	stw r3, 0x120(r30)
/* 807E1E54  38 03 00 58 */	addi r0, r3, 0x58
/* 807E1E58  90 1E 01 34 */	stw r0, 0x134(r30)
/* 807E1E5C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 807E1E60  41 82 00 10 */	beq lbl_807E1E70
/* 807E1E64  3C 60 80 7E */	lis r3, __vt__8cM3dGSph@ha
/* 807E1E68  38 03 35 24 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807E1E6C  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_807E1E70:
/* 807E1E70  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807E1E74  41 82 00 24 */	beq lbl_807E1E98
/* 807E1E78  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807E1E7C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807E1E80  90 1E 01 20 */	stw r0, 0x120(r30)
/* 807E1E84  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807E1E88  41 82 00 10 */	beq lbl_807E1E98
/* 807E1E8C  3C 60 80 7E */	lis r3, __vt__8cM3dGAab@ha
/* 807E1E90  38 03 35 30 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807E1E94  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_807E1E98:
/* 807E1E98  7F C3 F3 78 */	mr r3, r30
/* 807E1E9C  38 80 00 00 */	li r4, 0
/* 807E1EA0  4B 8A 22 44 */	b __dt__12dCcD_GObjInfFv
/* 807E1EA4  7F E0 07 35 */	extsh. r0, r31
/* 807E1EA8  40 81 00 0C */	ble lbl_807E1EB4
/* 807E1EAC  7F C3 F3 78 */	mr r3, r30
/* 807E1EB0  4B AE CE 8C */	b __dl__FPv
lbl_807E1EB4:
/* 807E1EB4  7F C3 F3 78 */	mr r3, r30
/* 807E1EB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E1EBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 807E1EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E1EC4  7C 08 03 A6 */	mtlr r0
/* 807E1EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 807E1ECC  4E 80 00 20 */	blr 
