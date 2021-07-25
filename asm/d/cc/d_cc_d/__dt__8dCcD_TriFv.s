lbl_80084EF4:
/* 80084EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80084EF8  7C 08 02 A6 */	mflr r0
/* 80084EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80084F00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80084F04  93 C1 00 08 */	stw r30, 8(r1)
/* 80084F08  7C 7E 1B 79 */	or. r30, r3, r3
/* 80084F0C  7C 9F 23 78 */	mr r31, r4
/* 80084F10  41 82 00 A8 */	beq lbl_80084FB8
/* 80084F14  3C 60 80 3B */	lis r3, __vt__8dCcD_Tri@ha /* 0x803AC0E0@ha */
/* 80084F18  38 63 C0 E0 */	addi r3, r3, __vt__8dCcD_Tri@l /* 0x803AC0E0@l */
/* 80084F1C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80084F20  38 03 00 2C */	addi r0, r3, 0x2c
/* 80084F24  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80084F28  38 03 00 84 */	addi r0, r3, 0x84
/* 80084F2C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80084F30  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80084F34  41 82 00 68 */	beq lbl_80084F9C
/* 80084F38  3C 60 80 3C */	lis r3, __vt__12cCcD_TriAttr@ha /* 0x803C366C@ha */
/* 80084F3C  38 63 36 6C */	addi r3, r3, __vt__12cCcD_TriAttr@l /* 0x803C366C@l */
/* 80084F40  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80084F44  38 03 00 58 */	addi r0, r3, 0x58
/* 80084F48  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80084F4C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80084F50  41 82 00 24 */	beq lbl_80084F74
/* 80084F54  3C 60 80 3B */	lis r3, __vt__8cM3dGTri@ha /* 0x803ABB84@ha */
/* 80084F58  38 03 BB 84 */	addi r0, r3, __vt__8cM3dGTri@l /* 0x803ABB84@l */
/* 80084F5C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80084F60  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80084F64  41 82 00 10 */	beq lbl_80084F74
/* 80084F68  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80084F6C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80084F70  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80084F74:
/* 80084F74  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80084F78  41 82 00 24 */	beq lbl_80084F9C
/* 80084F7C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80084F80  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80084F84  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80084F88  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80084F8C  41 82 00 10 */	beq lbl_80084F9C
/* 80084F90  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 80084F94  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 80084F98  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80084F9C:
/* 80084F9C  7F C3 F3 78 */	mr r3, r30
/* 80084FA0  38 80 00 00 */	li r4, 0
/* 80084FA4  4B FF F1 41 */	bl __dt__12dCcD_GObjInfFv
/* 80084FA8  7F E0 07 35 */	extsh. r0, r31
/* 80084FAC  40 81 00 0C */	ble lbl_80084FB8
/* 80084FB0  7F C3 F3 78 */	mr r3, r30
/* 80084FB4  48 24 9D 89 */	bl __dl__FPv
lbl_80084FB8:
/* 80084FB8  7F C3 F3 78 */	mr r3, r30
/* 80084FBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80084FC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80084FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80084FC8  7C 08 03 A6 */	mtlr r0
/* 80084FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80084FD0  4E 80 00 20 */	blr 
