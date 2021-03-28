lbl_800D2188:
/* 800D2188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D218C  7C 08 02 A6 */	mflr r0
/* 800D2190  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D2194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D2198  3B E0 00 00 */	li r31, 0
/* 800D219C  80 03 05 78 */	lwz r0, 0x578(r3)
/* 800D21A0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800D21A4  41 82 00 14 */	beq lbl_800D21B8
/* 800D21A8  48 04 3A 79 */	bl checkEventRun__9daAlink_cCFv
/* 800D21AC  2C 03 00 00 */	cmpwi r3, 0
/* 800D21B0  40 82 00 08 */	bne lbl_800D21B8
/* 800D21B4  3B E0 00 01 */	li r31, 1
lbl_800D21B8:
/* 800D21B8  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800D21BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D21C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D21C4  7C 08 03 A6 */	mtlr r0
/* 800D21C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800D21CC  4E 80 00 20 */	blr 
