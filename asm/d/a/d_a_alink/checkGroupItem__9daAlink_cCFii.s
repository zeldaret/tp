lbl_800C0114:
/* 800C0114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C0118  7C 08 02 A6 */	mflr r0
/* 800C011C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C0120  2C 04 01 07 */	cmpwi r4, 0x107
/* 800C0124  40 82 00 10 */	bne lbl_800C0134
/* 800C0128  7C A3 2B 78 */	mr r3, r5
/* 800C012C  48 09 E9 AD */	bl checkDrinkBottleItem__9daPy_py_cFi
/* 800C0130  48 00 00 24 */	b lbl_800C0154
lbl_800C0134:
/* 800C0134  2C 04 01 08 */	cmpwi r4, 0x108
/* 800C0138  40 82 00 10 */	bne lbl_800C0148
/* 800C013C  7C A3 2B 78 */	mr r3, r5
/* 800C0140  48 09 E8 E1 */	bl checkFishingRodItem__9daPy_py_cFi
/* 800C0144  48 00 00 10 */	b lbl_800C0154
lbl_800C0148:
/* 800C0148  7C 04 28 50 */	subf r0, r4, r5
/* 800C014C  7C 00 00 34 */	cntlzw r0, r0
/* 800C0150  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
lbl_800C0154:
/* 800C0154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C0158  7C 08 03 A6 */	mtlr r0
/* 800C015C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0160  4E 80 00 20 */	blr 
