lbl_805B9DFC:
/* 805B9DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B9E00  7C 08 02 A6 */	mflr r0
/* 805B9E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B9E08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B9E0C  93 C1 00 08 */	stw r30, 8(r1)
/* 805B9E10  7C 7E 1B 79 */	or. r30, r3, r3
/* 805B9E14  7C 9F 23 78 */	mr r31, r4
/* 805B9E18  41 82 00 94 */	beq lbl_805B9EAC
/* 805B9E1C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805B9E20  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 805B9E24  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 805B9E28  38 03 00 2C */	addi r0, r3, 0x2c
/* 805B9E2C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805B9E30  38 03 00 84 */	addi r0, r3, 0x84
/* 805B9E34  90 1E 01 34 */	stw r0, 0x134(r30)
/* 805B9E38  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805B9E3C  41 82 00 54 */	beq lbl_805B9E90
/* 805B9E40  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805B9E44  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 805B9E48  90 7E 01 20 */	stw r3, 0x120(r30)
/* 805B9E4C  38 03 00 58 */	addi r0, r3, 0x58
/* 805B9E50  90 1E 01 34 */	stw r0, 0x134(r30)
/* 805B9E54  34 1E 01 24 */	addic. r0, r30, 0x124
/* 805B9E58  41 82 00 10 */	beq lbl_805B9E68
/* 805B9E5C  3C 60 80 5C */	lis r3, __vt__8cM3dGSph@ha
/* 805B9E60  38 03 AD 14 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805B9E64  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_805B9E68:
/* 805B9E68  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805B9E6C  41 82 00 24 */	beq lbl_805B9E90
/* 805B9E70  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805B9E74  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805B9E78  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805B9E7C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805B9E80  41 82 00 10 */	beq lbl_805B9E90
/* 805B9E84  3C 60 80 5C */	lis r3, __vt__8cM3dGAab@ha
/* 805B9E88  38 03 AD 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805B9E8C  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_805B9E90:
/* 805B9E90  7F C3 F3 78 */	mr r3, r30
/* 805B9E94  38 80 00 00 */	li r4, 0
/* 805B9E98  4B AC A2 4C */	b __dt__12dCcD_GObjInfFv
/* 805B9E9C  7F E0 07 35 */	extsh. r0, r31
/* 805B9EA0  40 81 00 0C */	ble lbl_805B9EAC
/* 805B9EA4  7F C3 F3 78 */	mr r3, r30
/* 805B9EA8  4B D1 4E 94 */	b __dl__FPv
lbl_805B9EAC:
/* 805B9EAC  7F C3 F3 78 */	mr r3, r30
/* 805B9EB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B9EB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B9EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B9EBC  7C 08 03 A6 */	mtlr r0
/* 805B9EC0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B9EC4  4E 80 00 20 */	blr 
