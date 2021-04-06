lbl_80B40D34:
/* 80B40D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B40D38  7C 08 02 A6 */	mflr r0
/* 80B40D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B40D40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B40D44  3C 60 80 B4 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80B41DF8@ha */
/* 80B40D48  3B E3 1D F8 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80B41DF8@l */
/* 80B40D4C  3C 60 80 B4 */	lis r3, __vt__21daNpcWrestler_Param_c@ha /* 0x80B42E00@ha */
/* 80B40D50  38 03 2E 00 */	addi r0, r3, __vt__21daNpcWrestler_Param_c@l /* 0x80B42E00@l */
/* 80B40D54  3C 60 80 B4 */	lis r3, l_HIO@ha /* 0x80B42E24@ha */
/* 80B40D58  94 03 2E 24 */	stwu r0, l_HIO@l(r3)  /* 0x80B42E24@l */
/* 80B40D5C  3C 80 80 B4 */	lis r4, __dt__21daNpcWrestler_Param_cFv@ha /* 0x80B41670@ha */
/* 80B40D60  38 84 16 70 */	addi r4, r4, __dt__21daNpcWrestler_Param_cFv@l /* 0x80B41670@l */
/* 80B40D64  3C A0 80 B4 */	lis r5, lit_3974@ha /* 0x80B42E18@ha */
/* 80B40D68  38 A5 2E 18 */	addi r5, r5, lit_3974@l /* 0x80B42E18@l */
/* 80B40D6C  4B FE E4 AD */	bl __register_global_object
/* 80B40D70  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B40D74  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B40D78  80 64 00 00 */	lwz r3, 0(r4)
/* 80B40D7C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B40D80  90 7F 08 74 */	stw r3, 0x874(r31)
/* 80B40D84  90 1F 08 78 */	stw r0, 0x878(r31)
/* 80B40D88  80 04 00 08 */	lwz r0, 8(r4)
/* 80B40D8C  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80B40D90  38 9F 08 74 */	addi r4, r31, 0x874
/* 80B40D94  80 7F 08 2C */	lwz r3, 0x82c(r31)
/* 80B40D98  80 1F 08 30 */	lwz r0, 0x830(r31)
/* 80B40D9C  90 64 00 0C */	stw r3, 0xc(r4)
/* 80B40DA0  90 04 00 10 */	stw r0, 0x10(r4)
/* 80B40DA4  80 1F 08 34 */	lwz r0, 0x834(r31)
/* 80B40DA8  90 04 00 14 */	stw r0, 0x14(r4)
/* 80B40DAC  80 7F 08 38 */	lwz r3, 0x838(r31)
/* 80B40DB0  80 1F 08 3C */	lwz r0, 0x83c(r31)
/* 80B40DB4  90 64 00 18 */	stw r3, 0x18(r4)
/* 80B40DB8  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80B40DBC  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 80B40DC0  90 04 00 20 */	stw r0, 0x20(r4)
/* 80B40DC4  80 7F 08 44 */	lwz r3, 0x844(r31)
/* 80B40DC8  80 1F 08 48 */	lwz r0, 0x848(r31)
/* 80B40DCC  90 64 00 24 */	stw r3, 0x24(r4)
/* 80B40DD0  90 04 00 28 */	stw r0, 0x28(r4)
/* 80B40DD4  80 1F 08 4C */	lwz r0, 0x84c(r31)
/* 80B40DD8  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80B40DDC  80 7F 08 50 */	lwz r3, 0x850(r31)
/* 80B40DE0  80 1F 08 54 */	lwz r0, 0x854(r31)
/* 80B40DE4  90 64 00 30 */	stw r3, 0x30(r4)
/* 80B40DE8  90 04 00 34 */	stw r0, 0x34(r4)
/* 80B40DEC  80 1F 08 58 */	lwz r0, 0x858(r31)
/* 80B40DF0  90 04 00 38 */	stw r0, 0x38(r4)
/* 80B40DF4  80 7F 08 5C */	lwz r3, 0x85c(r31)
/* 80B40DF8  80 1F 08 60 */	lwz r0, 0x860(r31)
/* 80B40DFC  90 64 00 3C */	stw r3, 0x3c(r4)
/* 80B40E00  90 04 00 40 */	stw r0, 0x40(r4)
/* 80B40E04  80 1F 08 64 */	lwz r0, 0x864(r31)
/* 80B40E08  90 04 00 44 */	stw r0, 0x44(r4)
/* 80B40E0C  80 7F 08 68 */	lwz r3, 0x868(r31)
/* 80B40E10  80 1F 08 6C */	lwz r0, 0x86c(r31)
/* 80B40E14  90 64 00 48 */	stw r3, 0x48(r4)
/* 80B40E18  90 04 00 4C */	stw r0, 0x4c(r4)
/* 80B40E1C  80 1F 08 70 */	lwz r0, 0x870(r31)
/* 80B40E20  90 04 00 50 */	stw r0, 0x50(r4)
/* 80B40E24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B40E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B40E2C  7C 08 03 A6 */	mtlr r0
/* 80B40E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80B40E34  4E 80 00 20 */	blr 
