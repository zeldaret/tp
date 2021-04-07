lbl_80CF7E58:
/* 80CF7E58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF7E5C  7C 08 02 A6 */	mflr r0
/* 80CF7E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF7E64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF7E68  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF7E6C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CF7E70  7C 9F 23 78 */	mr r31, r4
/* 80CF7E74  41 82 00 94 */	beq lbl_80CF7F08
/* 80CF7E78  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80CF7E7C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80CF7E80  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CF7E84  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CF7E88  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CF7E8C  38 03 00 84 */	addi r0, r3, 0x84
/* 80CF7E90  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CF7E94  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CF7E98  41 82 00 54 */	beq lbl_80CF7EEC
/* 80CF7E9C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80CF7EA0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80CF7EA4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CF7EA8  38 03 00 58 */	addi r0, r3, 0x58
/* 80CF7EAC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CF7EB0  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80CF7EB4  41 82 00 10 */	beq lbl_80CF7EC4
/* 80CF7EB8  3C 60 80 D0 */	lis r3, __vt__8cM3dGSph@ha /* 0x80CF85BC@ha */
/* 80CF7EBC  38 03 85 BC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80CF85BC@l */
/* 80CF7EC0  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80CF7EC4:
/* 80CF7EC4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CF7EC8  41 82 00 24 */	beq lbl_80CF7EEC
/* 80CF7ECC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CF7ED0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CF7ED4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CF7ED8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CF7EDC  41 82 00 10 */	beq lbl_80CF7EEC
/* 80CF7EE0  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha /* 0x80CF85C8@ha */
/* 80CF7EE4  38 03 85 C8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CF85C8@l */
/* 80CF7EE8  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80CF7EEC:
/* 80CF7EEC  7F C3 F3 78 */	mr r3, r30
/* 80CF7EF0  38 80 00 00 */	li r4, 0
/* 80CF7EF4  4B 38 C1 F1 */	bl __dt__12dCcD_GObjInfFv
/* 80CF7EF8  7F E0 07 35 */	extsh. r0, r31
/* 80CF7EFC  40 81 00 0C */	ble lbl_80CF7F08
/* 80CF7F00  7F C3 F3 78 */	mr r3, r30
/* 80CF7F04  4B 5D 6E 39 */	bl __dl__FPv
lbl_80CF7F08:
/* 80CF7F08  7F C3 F3 78 */	mr r3, r30
/* 80CF7F0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF7F10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF7F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF7F18  7C 08 03 A6 */	mtlr r0
/* 80CF7F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF7F20  4E 80 00 20 */	blr 
