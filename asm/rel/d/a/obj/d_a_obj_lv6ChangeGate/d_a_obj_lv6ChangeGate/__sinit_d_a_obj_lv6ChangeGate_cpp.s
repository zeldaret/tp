lbl_80C71F54:
/* 80C71F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C71F58  7C 08 02 A6 */	mflr r0
/* 80C71F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C71F60  3C 60 80 C7 */	lis r3, l_HIO@ha
/* 80C71F64  38 63 23 8C */	addi r3, r3, l_HIO@l
/* 80C71F68  4B FF EC E5 */	bl __ct__21daLv6ChangeGate_HIO_cFv
/* 80C71F6C  3C 80 80 C7 */	lis r4, __dt__21daLv6ChangeGate_HIO_cFv@ha
/* 80C71F70  38 84 1E E8 */	addi r4, r4, __dt__21daLv6ChangeGate_HIO_cFv@l
/* 80C71F74  3C A0 80 C7 */	lis r5, lit_3631@ha
/* 80C71F78  38 A5 23 80 */	addi r5, r5, lit_3631@l
/* 80C71F7C  4B FF EC 5D */	bl __register_global_object
/* 80C71F80  3C 60 80 C7 */	lis r3, mCcDCyl__17daLv6ChangeGate_c@ha
/* 80C71F84  38 63 21 CC */	addi r3, r3, mCcDCyl__17daLv6ChangeGate_c@l
/* 80C71F88  38 A3 FF FC */	addi r5, r3, -4
/* 80C71F8C  3C 60 80 C7 */	lis r3, mCcDObjInfo__17daLv6ChangeGate_c@ha
/* 80C71F90  38 63 21 54 */	addi r3, r3, mCcDObjInfo__17daLv6ChangeGate_c@l
/* 80C71F94  38 83 FF FC */	addi r4, r3, -4
/* 80C71F98  38 00 00 06 */	li r0, 6
/* 80C71F9C  7C 09 03 A6 */	mtctr r0
lbl_80C71FA0:
/* 80C71FA0  80 64 00 04 */	lwz r3, 4(r4)
/* 80C71FA4  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C71FA8  90 65 00 04 */	stw r3, 4(r5)
/* 80C71FAC  94 05 00 08 */	stwu r0, 8(r5)
/* 80C71FB0  42 00 FF F0 */	bdnz lbl_80C71FA0
/* 80C71FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C71FB8  7C 08 03 A6 */	mtlr r0
/* 80C71FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C71FC0  4E 80 00 20 */	blr 
