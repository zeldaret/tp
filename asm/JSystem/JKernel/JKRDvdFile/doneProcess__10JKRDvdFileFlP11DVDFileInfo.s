lbl_802D9AC4:
/* 802D9AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D9AC8  7C 08 02 A6 */	mflr r0
/* 802D9ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D9AD0  7C 60 1B 78 */	mr r0, r3
/* 802D9AD4  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 802D9AD8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 802D9ADC  7C 04 03 78 */	mr r4, r0
/* 802D9AE0  38 A0 00 00 */	li r5, 0
/* 802D9AE4  48 06 4F 11 */	bl OSSendMessage
/* 802D9AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D9AEC  7C 08 03 A6 */	mtlr r0
/* 802D9AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 802D9AF4  4E 80 00 20 */	blr 
