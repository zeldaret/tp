lbl_80CBE5A4:
/* 80CBE5A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBE5A8  7C 08 02 A6 */	mflr r0
/* 80CBE5AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBE5B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBE5B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CBE5B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CBE5BC  7C 9F 23 78 */	mr r31, r4
/* 80CBE5C0  41 82 00 9C */	beq lbl_80CBE65C
/* 80CBE5C4  34 1E 00 24 */	addic. r0, r30, 0x24
/* 80CBE5C8  41 82 00 84 */	beq lbl_80CBE64C
/* 80CBE5CC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80CBE5D0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80CBE5D4  90 7E 00 60 */	stw r3, 0x60(r30)
/* 80CBE5D8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CBE5DC  90 1E 01 44 */	stw r0, 0x144(r30)
/* 80CBE5E0  38 03 00 84 */	addi r0, r3, 0x84
/* 80CBE5E4  90 1E 01 58 */	stw r0, 0x158(r30)
/* 80CBE5E8  34 1E 01 28 */	addic. r0, r30, 0x128
/* 80CBE5EC  41 82 00 54 */	beq lbl_80CBE640
/* 80CBE5F0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80CBE5F4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80CBE5F8  90 7E 01 44 */	stw r3, 0x144(r30)
/* 80CBE5FC  38 03 00 58 */	addi r0, r3, 0x58
/* 80CBE600  90 1E 01 58 */	stw r0, 0x158(r30)
/* 80CBE604  34 1E 01 48 */	addic. r0, r30, 0x148
/* 80CBE608  41 82 00 10 */	beq lbl_80CBE618
/* 80CBE60C  3C 60 80 CC */	lis r3, __vt__8cM3dGSph@ha /* 0x80CBE88C@ha */
/* 80CBE610  38 03 E8 8C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80CBE88C@l */
/* 80CBE614  90 1E 01 58 */	stw r0, 0x158(r30)
lbl_80CBE618:
/* 80CBE618  34 1E 01 28 */	addic. r0, r30, 0x128
/* 80CBE61C  41 82 00 24 */	beq lbl_80CBE640
/* 80CBE620  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CBE624  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CBE628  90 1E 01 44 */	stw r0, 0x144(r30)
/* 80CBE62C  34 1E 01 28 */	addic. r0, r30, 0x128
/* 80CBE630  41 82 00 10 */	beq lbl_80CBE640
/* 80CBE634  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha /* 0x80CBE880@ha */
/* 80CBE638  38 03 E8 80 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CBE880@l */
/* 80CBE63C  90 1E 01 40 */	stw r0, 0x140(r30)
lbl_80CBE640:
/* 80CBE640  38 7E 00 24 */	addi r3, r30, 0x24
/* 80CBE644  38 80 00 00 */	li r4, 0
/* 80CBE648  4B 3C 5A 9D */	bl __dt__12dCcD_GObjInfFv
lbl_80CBE64C:
/* 80CBE64C  7F E0 07 35 */	extsh. r0, r31
/* 80CBE650  40 81 00 0C */	ble lbl_80CBE65C
/* 80CBE654  7F C3 F3 78 */	mr r3, r30
/* 80CBE658  4B 61 06 E5 */	bl __dl__FPv
lbl_80CBE65C:
/* 80CBE65C  7F C3 F3 78 */	mr r3, r30
/* 80CBE660  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBE664  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CBE668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBE66C  7C 08 03 A6 */	mtlr r0
/* 80CBE670  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBE674  4E 80 00 20 */	blr 
