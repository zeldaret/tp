lbl_8024C3A0:
/* 8024C3A0  38 A0 00 00 */	li r5, 0
/* 8024C3A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024C3A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024C3AC  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 8024C3B0  80 04 05 70 */	lwz r0, 0x570(r4)
/* 8024C3B4  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 8024C3B8  40 82 00 10 */	bne lbl_8024C3C8
/* 8024C3BC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8024C3C0  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8024C3C4  41 82 00 08 */	beq lbl_8024C3CC
lbl_8024C3C8:
/* 8024C3C8  38 A0 00 01 */	li r5, 1
lbl_8024C3CC:
/* 8024C3CC  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8024C3D0  4E 80 00 20 */	blr 
