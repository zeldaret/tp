lbl_8004FE6C:
/* 8004FE6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004FE70  7C 08 02 A6 */	mflr r0
/* 8004FE74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004FE78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004FE7C  93 C1 00 08 */	stw r30, 8(r1)
/* 8004FE80  7C 7E 1B 79 */	or. r30, r3, r3
/* 8004FE84  7C 9F 23 78 */	mr r31, r4
/* 8004FE88  41 82 00 28 */	beq lbl_8004FEB0
/* 8004FE8C  3C 80 80 3B */	lis r4, __vt__19dPa_fsenthPcallBack@ha /* 0x803A8400@ha */
/* 8004FE90  38 04 84 00 */	addi r0, r4, __vt__19dPa_fsenthPcallBack@l /* 0x803A8400@l */
/* 8004FE94  90 1E 00 00 */	stw r0, 0(r30)
/* 8004FE98  38 80 00 00 */	li r4, 0
/* 8004FE9C  48 22 F1 09 */	bl __dt__19JPAParticleCallBackFv
/* 8004FEA0  7F E0 07 35 */	extsh. r0, r31
/* 8004FEA4  40 81 00 0C */	ble lbl_8004FEB0
/* 8004FEA8  7F C3 F3 78 */	mr r3, r30
/* 8004FEAC  48 27 EE 91 */	bl __dl__FPv
lbl_8004FEB0:
/* 8004FEB0  7F C3 F3 78 */	mr r3, r30
/* 8004FEB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004FEB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004FEBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004FEC0  7C 08 03 A6 */	mtlr r0
/* 8004FEC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8004FEC8  4E 80 00 20 */	blr 
