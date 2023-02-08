lbl_80C31C90:
/* 80C31C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C31C94  7C 08 02 A6 */	mflr r0
/* 80C31C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C31C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C31CA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C31CA4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C31CA8  7C 9F 23 78 */	mr r31, r4
/* 80C31CAC  41 82 00 94 */	beq lbl_80C31D40
/* 80C31CB0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C31CB4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C31CB8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C31CBC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C31CC0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C31CC4  38 03 00 84 */	addi r0, r3, 0x84
/* 80C31CC8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C31CCC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C31CD0  41 82 00 54 */	beq lbl_80C31D24
/* 80C31CD4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C31CD8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C31CDC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C31CE0  38 03 00 58 */	addi r0, r3, 0x58
/* 80C31CE4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C31CE8  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C31CEC  41 82 00 10 */	beq lbl_80C31CFC
/* 80C31CF0  3C 60 80 C3 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C33E80@ha */
/* 80C31CF4  38 03 3E 80 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C33E80@l */
/* 80C31CF8  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C31CFC:
/* 80C31CFC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C31D00  41 82 00 24 */	beq lbl_80C31D24
/* 80C31D04  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C31D08  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C31D0C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C31D10  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C31D14  41 82 00 10 */	beq lbl_80C31D24
/* 80C31D18  3C 60 80 C3 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C33E74@ha */
/* 80C31D1C  38 03 3E 74 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C33E74@l */
/* 80C31D20  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C31D24:
/* 80C31D24  7F C3 F3 78 */	mr r3, r30
/* 80C31D28  38 80 00 00 */	li r4, 0
/* 80C31D2C  4B 45 23 B9 */	bl __dt__12dCcD_GObjInfFv
/* 80C31D30  7F E0 07 35 */	extsh. r0, r31
/* 80C31D34  40 81 00 0C */	ble lbl_80C31D40
/* 80C31D38  7F C3 F3 78 */	mr r3, r30
/* 80C31D3C  4B 69 D0 01 */	bl __dl__FPv
lbl_80C31D40:
/* 80C31D40  7F C3 F3 78 */	mr r3, r30
/* 80C31D44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C31D48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C31D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C31D50  7C 08 03 A6 */	mtlr r0
/* 80C31D54  38 21 00 10 */	addi r1, r1, 0x10
/* 80C31D58  4E 80 00 20 */	blr 
