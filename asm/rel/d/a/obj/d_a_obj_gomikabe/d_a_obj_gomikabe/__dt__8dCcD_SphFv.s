lbl_80BFF5B4:
/* 80BFF5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFF5B8  7C 08 02 A6 */	mflr r0
/* 80BFF5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFF5C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFF5C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BFF5C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BFF5CC  7C 9F 23 78 */	mr r31, r4
/* 80BFF5D0  41 82 00 94 */	beq lbl_80BFF664
/* 80BFF5D4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BFF5D8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BFF5DC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BFF5E0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BFF5E4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BFF5E8  38 03 00 84 */	addi r0, r3, 0x84
/* 80BFF5EC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80BFF5F0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BFF5F4  41 82 00 54 */	beq lbl_80BFF648
/* 80BFF5F8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BFF5FC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BFF600  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BFF604  38 03 00 58 */	addi r0, r3, 0x58
/* 80BFF608  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80BFF60C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80BFF610  41 82 00 10 */	beq lbl_80BFF620
/* 80BFF614  3C 60 80 C0 */	lis r3, __vt__8cM3dGSph@ha /* 0x80BFFDC0@ha */
/* 80BFF618  38 03 FD C0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BFFDC0@l */
/* 80BFF61C  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80BFF620:
/* 80BFF620  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BFF624  41 82 00 24 */	beq lbl_80BFF648
/* 80BFF628  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BFF62C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BFF630  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BFF634  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BFF638  41 82 00 10 */	beq lbl_80BFF648
/* 80BFF63C  3C 60 80 C0 */	lis r3, __vt__8cM3dGAab@ha /* 0x80BFFDB4@ha */
/* 80BFF640  38 03 FD B4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BFFDB4@l */
/* 80BFF644  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80BFF648:
/* 80BFF648  7F C3 F3 78 */	mr r3, r30
/* 80BFF64C  38 80 00 00 */	li r4, 0
/* 80BFF650  4B 48 4A 95 */	bl __dt__12dCcD_GObjInfFv
/* 80BFF654  7F E0 07 35 */	extsh. r0, r31
/* 80BFF658  40 81 00 0C */	ble lbl_80BFF664
/* 80BFF65C  7F C3 F3 78 */	mr r3, r30
/* 80BFF660  4B 6C F6 DD */	bl __dl__FPv
lbl_80BFF664:
/* 80BFF664  7F C3 F3 78 */	mr r3, r30
/* 80BFF668  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFF66C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BFF670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFF674  7C 08 03 A6 */	mtlr r0
/* 80BFF678  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFF67C  4E 80 00 20 */	blr 
