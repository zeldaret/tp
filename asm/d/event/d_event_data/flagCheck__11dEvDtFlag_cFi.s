lbl_80043D60:
/* 80043D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80043D64  7C 08 02 A6 */	mflr r0
/* 80043D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80043D6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80043D70  93 C1 00 08 */	stw r30, 8(r1)
/* 80043D74  7C 7E 1B 78 */	mr r30, r3
/* 80043D78  7C 9F 23 78 */	mr r31, r4
/* 80043D7C  48 00 00 B5 */	bl flagMaxCheck__11dEvDtFlag_cFi
/* 80043D80  2C 03 00 00 */	cmpwi r3, 0
/* 80043D84  41 82 00 0C */	beq lbl_80043D90
/* 80043D88  38 60 00 00 */	li r3, 0
/* 80043D8C  48 00 00 24 */	b lbl_80043DB0
lbl_80043D90:
/* 80043D90  38 60 00 01 */	li r3, 1
/* 80043D94  57 E0 06 FE */	clrlwi r0, r31, 0x1b
/* 80043D98  7C 63 00 30 */	slw r3, r3, r0
/* 80043D9C  57 E0 E8 FA */	rlwinm r0, r31, 0x1d, 3, 0x1d
/* 80043DA0  7C 1E 00 2E */	lwzx r0, r30, r0
/* 80043DA4  7C 63 00 38 */	and r3, r3, r0
/* 80043DA8  30 03 FF FF */	addic r0, r3, -1
/* 80043DAC  7C 60 19 10 */	subfe r3, r0, r3
lbl_80043DB0:
/* 80043DB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80043DB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80043DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80043DBC  7C 08 03 A6 */	mtlr r0
/* 80043DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80043DC4  4E 80 00 20 */	blr 
