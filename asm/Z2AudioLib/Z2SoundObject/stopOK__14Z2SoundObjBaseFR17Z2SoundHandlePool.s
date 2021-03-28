lbl_802BE104:
/* 802BE104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BE108  7C 08 02 A6 */	mflr r0
/* 802BE10C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE110  80 64 00 00 */	lwz r3, 0(r4)
/* 802BE114  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802BE118  90 01 00 08 */	stw r0, 8(r1)
/* 802BE11C  80 6D 85 CC */	lwz r3, data_80450B4C(r13)
/* 802BE120  38 81 00 08 */	addi r4, r1, 8
/* 802BE124  4B FF D9 A5 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BE128  54 60 04 20 */	rlwinm r0, r3, 0, 0x10, 0x10
/* 802BE12C  7C 00 00 34 */	cntlzw r0, r0
/* 802BE130  54 03 D9 7E */	srwi r3, r0, 5
/* 802BE134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BE138  7C 08 03 A6 */	mtlr r0
/* 802BE13C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BE140  4E 80 00 20 */	blr 
