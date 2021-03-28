lbl_80D63F74:
/* 80D63F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63F78  7C 08 02 A6 */	mflr r0
/* 80D63F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D63F84  93 C1 00 08 */	stw r30, 8(r1)
/* 80D63F88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D63F8C  7C 9F 23 78 */	mr r31, r4
/* 80D63F90  41 82 00 28 */	beq lbl_80D63FB8
/* 80D63F94  3C 80 80 D6 */	lis r4, __vt__13daTagWrHowl_c@ha
/* 80D63F98  38 04 42 54 */	addi r0, r4, __vt__13daTagWrHowl_c@l
/* 80D63F9C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D63FA0  38 80 00 00 */	li r4, 0
/* 80D63FA4  4B 2B 4C E8 */	b __dt__10fopAc_ac_cFv
/* 80D63FA8  7F E0 07 35 */	extsh. r0, r31
/* 80D63FAC  40 81 00 0C */	ble lbl_80D63FB8
/* 80D63FB0  7F C3 F3 78 */	mr r3, r30
/* 80D63FB4  4B 56 AD 88 */	b __dl__FPv
lbl_80D63FB8:
/* 80D63FB8  7F C3 F3 78 */	mr r3, r30
/* 80D63FBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D63FC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D63FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63FC8  7C 08 03 A6 */	mtlr r0
/* 80D63FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63FD0  4E 80 00 20 */	blr 
