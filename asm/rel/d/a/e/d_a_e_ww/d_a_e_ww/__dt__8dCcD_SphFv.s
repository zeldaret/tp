lbl_807EEB38:
/* 807EEB38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EEB3C  7C 08 02 A6 */	mflr r0
/* 807EEB40  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EEB44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807EEB48  93 C1 00 08 */	stw r30, 8(r1)
/* 807EEB4C  7C 7E 1B 79 */	or. r30, r3, r3
/* 807EEB50  7C 9F 23 78 */	mr r31, r4
/* 807EEB54  41 82 00 94 */	beq lbl_807EEBE8
/* 807EEB58  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807EEB5C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807EEB60  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 807EEB64  38 03 00 2C */	addi r0, r3, 0x2c
/* 807EEB68  90 1E 01 20 */	stw r0, 0x120(r30)
/* 807EEB6C  38 03 00 84 */	addi r0, r3, 0x84
/* 807EEB70  90 1E 01 34 */	stw r0, 0x134(r30)
/* 807EEB74  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807EEB78  41 82 00 54 */	beq lbl_807EEBCC
/* 807EEB7C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807EEB80  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807EEB84  90 7E 01 20 */	stw r3, 0x120(r30)
/* 807EEB88  38 03 00 58 */	addi r0, r3, 0x58
/* 807EEB8C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 807EEB90  34 1E 01 24 */	addic. r0, r30, 0x124
/* 807EEB94  41 82 00 10 */	beq lbl_807EEBA4
/* 807EEB98  3C 60 80 7F */	lis r3, __vt__8cM3dGSph@ha /* 0x807EFB00@ha */
/* 807EEB9C  38 03 FB 00 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x807EFB00@l */
/* 807EEBA0  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_807EEBA4:
/* 807EEBA4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807EEBA8  41 82 00 24 */	beq lbl_807EEBCC
/* 807EEBAC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807EEBB0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807EEBB4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 807EEBB8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807EEBBC  41 82 00 10 */	beq lbl_807EEBCC
/* 807EEBC0  3C 60 80 7F */	lis r3, __vt__8cM3dGAab@ha /* 0x807EFAF4@ha */
/* 807EEBC4  38 03 FA F4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807EFAF4@l */
/* 807EEBC8  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_807EEBCC:
/* 807EEBCC  7F C3 F3 78 */	mr r3, r30
/* 807EEBD0  38 80 00 00 */	li r4, 0
/* 807EEBD4  4B 89 55 11 */	bl __dt__12dCcD_GObjInfFv
/* 807EEBD8  7F E0 07 35 */	extsh. r0, r31
/* 807EEBDC  40 81 00 0C */	ble lbl_807EEBE8
/* 807EEBE0  7F C3 F3 78 */	mr r3, r30
/* 807EEBE4  4B AE 01 59 */	bl __dl__FPv
lbl_807EEBE8:
/* 807EEBE8  7F C3 F3 78 */	mr r3, r30
/* 807EEBEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807EEBF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 807EEBF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EEBF8  7C 08 03 A6 */	mtlr r0
/* 807EEBFC  38 21 00 10 */	addi r1, r1, 0x10
/* 807EEC00  4E 80 00 20 */	blr 
