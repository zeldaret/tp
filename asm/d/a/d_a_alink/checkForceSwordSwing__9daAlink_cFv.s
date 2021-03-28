lbl_800D20B4:
/* 800D20B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D20B8  7C 08 02 A6 */	mflr r0
/* 800D20BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D20C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D20C4  3B E0 00 00 */	li r31, 0
/* 800D20C8  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800D20CC  28 00 01 03 */	cmplwi r0, 0x103
/* 800D20D0  40 82 00 14 */	bne lbl_800D20E4
/* 800D20D4  4B FE 05 E5 */	bl swordSwingTrigger__9daAlink_cFv
/* 800D20D8  2C 03 00 00 */	cmpwi r3, 0
/* 800D20DC  41 82 00 08 */	beq lbl_800D20E4
/* 800D20E0  3B E0 00 01 */	li r31, 1
lbl_800D20E4:
/* 800D20E4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800D20E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D20EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D20F0  7C 08 03 A6 */	mtlr r0
/* 800D20F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800D20F8  4E 80 00 20 */	blr 
