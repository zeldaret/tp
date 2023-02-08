lbl_806D9D44:
/* 806D9D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D9D48  7C 08 02 A6 */	mflr r0
/* 806D9D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D9D50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D9D54  93 C1 00 08 */	stw r30, 8(r1)
/* 806D9D58  7C 7E 1B 78 */	mr r30, r3
/* 806D9D5C  3C 60 80 6E */	lis r3, lit_3763@ha /* 0x806DEE38@ha */
/* 806D9D60  3B E3 EE 38 */	addi r31, r3, lit_3763@l /* 0x806DEE38@l */
/* 806D9D64  38 60 00 05 */	li r3, 5
/* 806D9D68  B0 7E 06 7E */	sth r3, 0x67e(r30)
/* 806D9D6C  A8 1E 06 58 */	lha r0, 0x658(r30)
/* 806D9D70  2C 00 00 02 */	cmpwi r0, 2
/* 806D9D74  40 80 00 40 */	bge lbl_806D9DB4
/* 806D9D78  2C 00 00 00 */	cmpwi r0, 0
/* 806D9D7C  40 80 00 08 */	bge lbl_806D9D84
/* 806D9D80  48 00 00 34 */	b lbl_806D9DB4
lbl_806D9D84:
/* 806D9D84  B0 7E 06 56 */	sth r3, 0x656(r30)
/* 806D9D88  38 00 00 00 */	li r0, 0
/* 806D9D8C  B0 1E 06 58 */	sth r0, 0x658(r30)
/* 806D9D90  38 00 00 1E */	li r0, 0x1e
/* 806D9D94  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 806D9D98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D9D9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D9DA0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 806D9DA4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 806D9DA8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 806D9DAC  A0 84 05 40 */	lhz r4, 0x540(r4)
/* 806D9DB0  4B 95 AB DD */	bl onEventBit__11dSv_event_cFUs
lbl_806D9DB4:
/* 806D9DB4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806D9DB8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806D9DBC  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806D9DC0  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 806D9DC4  4B B9 5C 79 */	bl cLib_addCalc2__FPffff
/* 806D9DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D9DCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 806D9DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D9DD4  7C 08 03 A6 */	mtlr r0
/* 806D9DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 806D9DDC  4E 80 00 20 */	blr 
