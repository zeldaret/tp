lbl_8054DE0C:
/* 8054DE0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054DE10  7C 08 02 A6 */	mflr r0
/* 8054DE14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054DE18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054DE1C  93 C1 00 08 */	stw r30, 8(r1)
/* 8054DE20  7C 7E 1B 79 */	or. r30, r3, r3
/* 8054DE24  7C 9F 23 78 */	mr r31, r4
/* 8054DE28  41 82 00 94 */	beq lbl_8054DEBC
/* 8054DE2C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8054DE30  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8054DE34  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8054DE38  38 03 00 2C */	addi r0, r3, 0x2c
/* 8054DE3C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8054DE40  38 03 00 84 */	addi r0, r3, 0x84
/* 8054DE44  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8054DE48  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8054DE4C  41 82 00 54 */	beq lbl_8054DEA0
/* 8054DE50  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8054DE54  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8054DE58  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8054DE5C  38 03 00 58 */	addi r0, r3, 0x58
/* 8054DE60  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8054DE64  34 1E 01 24 */	addic. r0, r30, 0x124
/* 8054DE68  41 82 00 10 */	beq lbl_8054DE78
/* 8054DE6C  3C 60 80 55 */	lis r3, __vt__8cM3dGSph@ha /* 0x8054F02C@ha */
/* 8054DE70  38 03 F0 2C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8054F02C@l */
/* 8054DE74  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_8054DE78:
/* 8054DE78  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8054DE7C  41 82 00 24 */	beq lbl_8054DEA0
/* 8054DE80  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8054DE84  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8054DE88  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8054DE8C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8054DE90  41 82 00 10 */	beq lbl_8054DEA0
/* 8054DE94  3C 60 80 55 */	lis r3, __vt__8cM3dGAab@ha /* 0x8054F0B0@ha */
/* 8054DE98  38 03 F0 B0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8054F0B0@l */
/* 8054DE9C  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_8054DEA0:
/* 8054DEA0  7F C3 F3 78 */	mr r3, r30
/* 8054DEA4  38 80 00 00 */	li r4, 0
/* 8054DEA8  4B B3 62 3D */	bl __dt__12dCcD_GObjInfFv
/* 8054DEAC  7F E0 07 35 */	extsh. r0, r31
/* 8054DEB0  40 81 00 0C */	ble lbl_8054DEBC
/* 8054DEB4  7F C3 F3 78 */	mr r3, r30
/* 8054DEB8  4B D8 0E 85 */	bl __dl__FPv
lbl_8054DEBC:
/* 8054DEBC  7F C3 F3 78 */	mr r3, r30
/* 8054DEC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054DEC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054DEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054DECC  7C 08 03 A6 */	mtlr r0
/* 8054DED0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054DED4  4E 80 00 20 */	blr 
