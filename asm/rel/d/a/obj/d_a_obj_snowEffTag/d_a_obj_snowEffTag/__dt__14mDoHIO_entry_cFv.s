lbl_80CDF0E4:
/* 80CDF0E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF0E8  7C 08 02 A6 */	mflr r0
/* 80CDF0EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF0F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDF0F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CDF0F8  41 82 00 1C */	beq lbl_80CDF114
/* 80CDF0FC  3C A0 80 CE */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80CDF7B4@ha */
/* 80CDF100  38 05 F7 B4 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80CDF7B4@l */
/* 80CDF104  90 1F 00 00 */	stw r0, 0(r31)
/* 80CDF108  7C 80 07 35 */	extsh. r0, r4
/* 80CDF10C  40 81 00 08 */	ble lbl_80CDF114
/* 80CDF110  4B 5E FC 2D */	bl __dl__FPv
lbl_80CDF114:
/* 80CDF114  7F E3 FB 78 */	mr r3, r31
/* 80CDF118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDF11C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF120  7C 08 03 A6 */	mtlr r0
/* 80CDF124  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF128  4E 80 00 20 */	blr 
