lbl_800B3494:
/* 800B3494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B3498  7C 08 02 A6 */	mflr r0
/* 800B349C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B34A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B34A4  7C 7F 1B 78 */	mr r31, r3
/* 800B34A8  7F E3 07 34 */	extsh r3, r31
/* 800B34AC  48 2B 1C 25 */	bl abs
/* 800B34B0  2C 03 60 00 */	cmpwi r3, 0x6000
/* 800B34B4  40 81 00 0C */	ble lbl_800B34C0
/* 800B34B8  38 60 00 01 */	li r3, 1
/* 800B34BC  48 00 00 30 */	b lbl_800B34EC
lbl_800B34C0:
/* 800B34C0  7F E0 07 34 */	extsh r0, r31
/* 800B34C4  2C 00 20 00 */	cmpwi r0, 0x2000
/* 800B34C8  41 80 00 0C */	blt lbl_800B34D4
/* 800B34CC  38 60 00 02 */	li r3, 2
/* 800B34D0  48 00 00 1C */	b lbl_800B34EC
lbl_800B34D4:
/* 800B34D4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800B34D8  20 00 E0 00 */	subfic r0, r0, -8192
/* 800B34DC  7C 00 18 14 */	addc r0, r0, r3
/* 800B34E0  7C 60 01 10 */	subfe r3, r0, r0
/* 800B34E4  38 00 00 03 */	li r0, 3
/* 800B34E8  7C 03 18 38 */	and r3, r0, r3
lbl_800B34EC:
/* 800B34EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B34F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B34F4  7C 08 03 A6 */	mtlr r0
/* 800B34F8  38 21 00 10 */	addi r1, r1, 0x10
/* 800B34FC  4E 80 00 20 */	blr 
