lbl_80AFB49C:
/* 80AFB49C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFB4A0  7C 08 02 A6 */	mflr r0
/* 80AFB4A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFB4A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFB4AC  3C 60 80 B0 */	lis r3, cNullVec__6Z2Calc@ha
/* 80AFB4B0  3B E3 C1 D0 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80AFB4B4  3C 60 80 B0 */	lis r3, __vt__16daNpcThe_Param_c@ha
/* 80AFB4B8  38 03 C6 5C */	addi r0, r3, __vt__16daNpcThe_Param_c@l
/* 80AFB4BC  3C 60 80 B0 */	lis r3, l_HIO@ha
/* 80AFB4C0  94 03 C6 7C */	stwu r0, l_HIO@l(r3)
/* 80AFB4C4  3C 80 80 B0 */	lis r4, __dt__16daNpcThe_Param_cFv@ha
/* 80AFB4C8  38 84 BD A0 */	addi r4, r4, __dt__16daNpcThe_Param_cFv@l
/* 80AFB4CC  3C A0 80 B0 */	lis r5, lit_3809@ha
/* 80AFB4D0  38 A5 C6 70 */	addi r5, r5, lit_3809@l
/* 80AFB4D4  4B FF C1 85 */	bl __register_global_object
/* 80AFB4D8  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80AFB4DC  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80AFB4E0  80 64 00 00 */	lwz r3, 0(r4)
/* 80AFB4E4  80 04 00 04 */	lwz r0, 4(r4)
/* 80AFB4E8  90 7F 02 18 */	stw r3, 0x218(r31)
/* 80AFB4EC  90 1F 02 1C */	stw r0, 0x21c(r31)
/* 80AFB4F0  80 04 00 08 */	lwz r0, 8(r4)
/* 80AFB4F4  90 1F 02 20 */	stw r0, 0x220(r31)
/* 80AFB4F8  38 9F 02 18 */	addi r4, r31, 0x218
/* 80AFB4FC  80 7F 01 F4 */	lwz r3, 0x1f4(r31)
/* 80AFB500  80 1F 01 F8 */	lwz r0, 0x1f8(r31)
/* 80AFB504  90 64 00 0C */	stw r3, 0xc(r4)
/* 80AFB508  90 04 00 10 */	stw r0, 0x10(r4)
/* 80AFB50C  80 1F 01 FC */	lwz r0, 0x1fc(r31)
/* 80AFB510  90 04 00 14 */	stw r0, 0x14(r4)
/* 80AFB514  80 7F 02 00 */	lwz r3, 0x200(r31)
/* 80AFB518  80 1F 02 04 */	lwz r0, 0x204(r31)
/* 80AFB51C  90 64 00 18 */	stw r3, 0x18(r4)
/* 80AFB520  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80AFB524  80 1F 02 08 */	lwz r0, 0x208(r31)
/* 80AFB528  90 04 00 20 */	stw r0, 0x20(r4)
/* 80AFB52C  80 7F 02 0C */	lwz r3, 0x20c(r31)
/* 80AFB530  80 1F 02 10 */	lwz r0, 0x210(r31)
/* 80AFB534  90 64 00 24 */	stw r3, 0x24(r4)
/* 80AFB538  90 04 00 28 */	stw r0, 0x28(r4)
/* 80AFB53C  80 1F 02 14 */	lwz r0, 0x214(r31)
/* 80AFB540  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80AFB544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFB548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFB54C  7C 08 03 A6 */	mtlr r0
/* 80AFB550  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFB554  4E 80 00 20 */	blr 
