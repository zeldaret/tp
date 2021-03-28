lbl_8095CCA0:
/* 8095CCA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095CCA4  7C 08 02 A6 */	mflr r0
/* 8095CCA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095CCAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095CCB0  3C 60 80 96 */	lis r3, cNullVec__6Z2Calc@ha
/* 8095CCB4  3B E3 D9 90 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 8095CCB8  3C 60 80 96 */	lis r3, __vt__16daNpcAsh_Param_c@ha
/* 8095CCBC  38 03 DD 2C */	addi r0, r3, __vt__16daNpcAsh_Param_c@l
/* 8095CCC0  3C 60 80 96 */	lis r3, l_HIO@ha
/* 8095CCC4  94 03 DD 4C */	stwu r0, l_HIO@l(r3)
/* 8095CCC8  3C 80 80 96 */	lis r4, __dt__16daNpcAsh_Param_cFv@ha
/* 8095CCCC  38 84 D5 D4 */	addi r4, r4, __dt__16daNpcAsh_Param_cFv@l
/* 8095CCD0  3C A0 80 96 */	lis r5, lit_3822@ha
/* 8095CCD4  38 A5 DD 40 */	addi r5, r5, lit_3822@l
/* 8095CCD8  4B FF B5 A1 */	bl __register_global_object
/* 8095CCDC  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 8095CCE0  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 8095CCE4  80 64 00 00 */	lwz r3, 0(r4)
/* 8095CCE8  80 04 00 04 */	lwz r0, 4(r4)
/* 8095CCEC  90 7F 01 94 */	stw r3, 0x194(r31)
/* 8095CCF0  90 1F 01 98 */	stw r0, 0x198(r31)
/* 8095CCF4  80 04 00 08 */	lwz r0, 8(r4)
/* 8095CCF8  90 1F 01 9C */	stw r0, 0x19c(r31)
/* 8095CCFC  38 9F 01 94 */	addi r4, r31, 0x194
/* 8095CD00  80 7F 01 58 */	lwz r3, 0x158(r31)
/* 8095CD04  80 1F 01 5C */	lwz r0, 0x15c(r31)
/* 8095CD08  90 64 00 0C */	stw r3, 0xc(r4)
/* 8095CD0C  90 04 00 10 */	stw r0, 0x10(r4)
/* 8095CD10  80 1F 01 60 */	lwz r0, 0x160(r31)
/* 8095CD14  90 04 00 14 */	stw r0, 0x14(r4)
/* 8095CD18  80 7F 01 64 */	lwz r3, 0x164(r31)
/* 8095CD1C  80 1F 01 68 */	lwz r0, 0x168(r31)
/* 8095CD20  90 64 00 18 */	stw r3, 0x18(r4)
/* 8095CD24  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8095CD28  80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 8095CD2C  90 04 00 20 */	stw r0, 0x20(r4)
/* 8095CD30  80 7F 01 70 */	lwz r3, 0x170(r31)
/* 8095CD34  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8095CD38  90 64 00 24 */	stw r3, 0x24(r4)
/* 8095CD3C  90 04 00 28 */	stw r0, 0x28(r4)
/* 8095CD40  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 8095CD44  90 04 00 2C */	stw r0, 0x2c(r4)
/* 8095CD48  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8095CD4C  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 8095CD50  90 64 00 30 */	stw r3, 0x30(r4)
/* 8095CD54  90 04 00 34 */	stw r0, 0x34(r4)
/* 8095CD58  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 8095CD5C  90 04 00 38 */	stw r0, 0x38(r4)
/* 8095CD60  80 7F 01 88 */	lwz r3, 0x188(r31)
/* 8095CD64  80 1F 01 8C */	lwz r0, 0x18c(r31)
/* 8095CD68  90 64 00 3C */	stw r3, 0x3c(r4)
/* 8095CD6C  90 04 00 40 */	stw r0, 0x40(r4)
/* 8095CD70  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 8095CD74  90 04 00 44 */	stw r0, 0x44(r4)
/* 8095CD78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095CD7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095CD80  7C 08 03 A6 */	mtlr r0
/* 8095CD84  38 21 00 10 */	addi r1, r1, 0x10
/* 8095CD88  4E 80 00 20 */	blr 
