lbl_8004FE0C:
/* 8004FE0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004FE10  7C 08 02 A6 */	mflr r0
/* 8004FE14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004FE18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004FE1C  93 C1 00 08 */	stw r30, 8(r1)
/* 8004FE20  7C 7E 1B 79 */	or. r30, r3, r3
/* 8004FE24  7C 9F 23 78 */	mr r31, r4
/* 8004FE28  41 82 00 28 */	beq lbl_8004FE50
/* 8004FE2C  3C 80 80 3B */	lis r4, __vt__19dPa_light8PcallBack@ha /* 0x803A83EC@ha */
/* 8004FE30  38 04 83 EC */	addi r0, r4, __vt__19dPa_light8PcallBack@l /* 0x803A83EC@l */
/* 8004FE34  90 1E 00 00 */	stw r0, 0(r30)
/* 8004FE38  38 80 00 00 */	li r4, 0
/* 8004FE3C  48 22 F1 69 */	bl __dt__19JPAParticleCallBackFv
/* 8004FE40  7F E0 07 35 */	extsh. r0, r31
/* 8004FE44  40 81 00 0C */	ble lbl_8004FE50
/* 8004FE48  7F C3 F3 78 */	mr r3, r30
/* 8004FE4C  48 27 EE F1 */	bl __dl__FPv
lbl_8004FE50:
/* 8004FE50  7F C3 F3 78 */	mr r3, r30
/* 8004FE54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004FE58  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004FE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004FE60  7C 08 03 A6 */	mtlr r0
/* 8004FE64  38 21 00 10 */	addi r1, r1, 0x10
/* 8004FE68  4E 80 00 20 */	blr 
