lbl_80C6E5A8:
/* 80C6E5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6E5AC  7C 08 02 A6 */	mflr r0
/* 80C6E5B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6E5B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6E5B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6E5BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C6E5C0  7C 9F 23 78 */	mr r31, r4
/* 80C6E5C4  41 82 00 94 */	beq lbl_80C6E658
/* 80C6E5C8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C6E5CC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C6E5D0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C6E5D4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C6E5D8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C6E5DC  38 03 00 84 */	addi r0, r3, 0x84
/* 80C6E5E0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C6E5E4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C6E5E8  41 82 00 54 */	beq lbl_80C6E63C
/* 80C6E5EC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C6E5F0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C6E5F4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C6E5F8  38 03 00 58 */	addi r0, r3, 0x58
/* 80C6E5FC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C6E600  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C6E604  41 82 00 10 */	beq lbl_80C6E614
/* 80C6E608  3C 60 80 C7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C6EB20@ha */
/* 80C6E60C  38 03 EB 20 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C6EB20@l */
/* 80C6E610  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C6E614:
/* 80C6E614  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C6E618  41 82 00 24 */	beq lbl_80C6E63C
/* 80C6E61C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C6E620  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C6E624  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C6E628  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C6E62C  41 82 00 10 */	beq lbl_80C6E63C
/* 80C6E630  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C6EB2C@ha */
/* 80C6E634  38 03 EB 2C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C6EB2C@l */
/* 80C6E638  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C6E63C:
/* 80C6E63C  7F C3 F3 78 */	mr r3, r30
/* 80C6E640  38 80 00 00 */	li r4, 0
/* 80C6E644  4B 41 5A A1 */	bl __dt__12dCcD_GObjInfFv
/* 80C6E648  7F E0 07 35 */	extsh. r0, r31
/* 80C6E64C  40 81 00 0C */	ble lbl_80C6E658
/* 80C6E650  7F C3 F3 78 */	mr r3, r30
/* 80C6E654  4B 66 06 E9 */	bl __dl__FPv
lbl_80C6E658:
/* 80C6E658  7F C3 F3 78 */	mr r3, r30
/* 80C6E65C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6E660  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6E664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6E668  7C 08 03 A6 */	mtlr r0
/* 80C6E66C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6E670  4E 80 00 20 */	blr 
