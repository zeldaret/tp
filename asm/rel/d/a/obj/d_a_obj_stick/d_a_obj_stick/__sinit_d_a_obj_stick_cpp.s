lbl_80599D5C:
/* 80599D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599D60  7C 08 02 A6 */	mflr r0
/* 80599D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599D68  3C 60 80 5A */	lis r3, mCcDSph__13daObj_Stick_c@ha
/* 80599D6C  38 63 9E 70 */	addi r3, r3, mCcDSph__13daObj_Stick_c@l
/* 80599D70  38 A3 FF FC */	addi r5, r3, -4
/* 80599D74  3C 60 80 39 */	lis r3, mCcDObjData__8daNpcT_c@ha
/* 80599D78  38 63 26 80 */	addi r3, r3, mCcDObjData__8daNpcT_c@l
/* 80599D7C  38 83 FF FC */	addi r4, r3, -4
/* 80599D80  38 00 00 06 */	li r0, 6
/* 80599D84  7C 09 03 A6 */	mtctr r0
lbl_80599D88:
/* 80599D88  80 64 00 04 */	lwz r3, 4(r4)
/* 80599D8C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80599D90  90 65 00 04 */	stw r3, 4(r5)
/* 80599D94  94 05 00 08 */	stwu r0, 8(r5)
/* 80599D98  42 00 FF F0 */	bdnz lbl_80599D88
/* 80599D9C  3C 60 80 5A */	lis r3, __vt__19daObj_Stick_Param_c@ha
/* 80599DA0  38 03 9F 70 */	addi r0, r3, __vt__19daObj_Stick_Param_c@l
/* 80599DA4  3C 60 80 5A */	lis r3, l_HIO@ha
/* 80599DA8  94 03 9F 94 */	stwu r0, l_HIO@l(r3)
/* 80599DAC  3C 80 80 5A */	lis r4, __dt__19daObj_Stick_Param_cFv@ha
/* 80599DB0  38 84 9D D0 */	addi r4, r4, __dt__19daObj_Stick_Param_cFv@l
/* 80599DB4  3C A0 80 5A */	lis r5, lit_3805@ha
/* 80599DB8  38 A5 9F 88 */	addi r5, r5, lit_3805@l
/* 80599DBC  4B FF F3 FD */	bl __register_global_object
/* 80599DC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599DC4  7C 08 03 A6 */	mtlr r0
/* 80599DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80599DCC  4E 80 00 20 */	blr 
