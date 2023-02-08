lbl_802A5D9C:
/* 802A5D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A5DA0  7C 08 02 A6 */	mflr r0
/* 802A5DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A5DA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5DAC  7C 7F 1B 78 */	mr r31, r3
/* 802A5DB0  38 60 00 00 */	li r3, 0
/* 802A5DB4  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 802A5DB8  28 04 00 00 */	cmplwi r4, 0
/* 802A5DBC  41 82 00 24 */	beq lbl_802A5DE0
/* 802A5DC0  38 7F 00 AC */	addi r3, r31, 0xac
/* 802A5DC4  4B FF EC BD */	bl func_802A4A80
/* 802A5DC8  38 00 00 00 */	li r0, 0
/* 802A5DCC  90 1F 00 34 */	stw r0, 0x34(r31)
/* 802A5DD0  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 802A5DD4  28 03 00 00 */	cmplwi r3, 0
/* 802A5DD8  41 82 00 08 */	beq lbl_802A5DE0
/* 802A5DDC  38 63 00 10 */	addi r3, r3, 0x10
lbl_802A5DE0:
/* 802A5DE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A5DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5DE8  7C 08 03 A6 */	mtlr r0
/* 802A5DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A5DF0  4E 80 00 20 */	blr 
