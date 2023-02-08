lbl_80CE85B0:
/* 80CE85B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE85B4  7C 08 02 A6 */	mflr r0
/* 80CE85B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE85BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE85C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE85C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CE85C8  7C 9F 23 78 */	mr r31, r4
/* 80CE85CC  41 82 00 94 */	beq lbl_80CE8660
/* 80CE85D0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80CE85D4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80CE85D8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CE85DC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CE85E0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CE85E4  38 03 00 84 */	addi r0, r3, 0x84
/* 80CE85E8  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CE85EC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CE85F0  41 82 00 54 */	beq lbl_80CE8644
/* 80CE85F4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80CE85F8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80CE85FC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CE8600  38 03 00 58 */	addi r0, r3, 0x58
/* 80CE8604  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CE8608  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80CE860C  41 82 00 10 */	beq lbl_80CE861C
/* 80CE8610  3C 60 80 CF */	lis r3, __vt__8cM3dGSph@ha /* 0x80CE8F80@ha */
/* 80CE8614  38 03 8F 80 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80CE8F80@l */
/* 80CE8618  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80CE861C:
/* 80CE861C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CE8620  41 82 00 24 */	beq lbl_80CE8644
/* 80CE8624  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CE8628  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CE862C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CE8630  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CE8634  41 82 00 10 */	beq lbl_80CE8644
/* 80CE8638  3C 60 80 CF */	lis r3, __vt__8cM3dGAab@ha /* 0x80CE8F74@ha */
/* 80CE863C  38 03 8F 74 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CE8F74@l */
/* 80CE8640  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80CE8644:
/* 80CE8644  7F C3 F3 78 */	mr r3, r30
/* 80CE8648  38 80 00 00 */	li r4, 0
/* 80CE864C  4B 39 BA 99 */	bl __dt__12dCcD_GObjInfFv
/* 80CE8650  7F E0 07 35 */	extsh. r0, r31
/* 80CE8654  40 81 00 0C */	ble lbl_80CE8660
/* 80CE8658  7F C3 F3 78 */	mr r3, r30
/* 80CE865C  4B 5E 66 E1 */	bl __dl__FPv
lbl_80CE8660:
/* 80CE8660  7F C3 F3 78 */	mr r3, r30
/* 80CE8664  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE8668  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE866C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE8670  7C 08 03 A6 */	mtlr r0
/* 80CE8674  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE8678  4E 80 00 20 */	blr 
