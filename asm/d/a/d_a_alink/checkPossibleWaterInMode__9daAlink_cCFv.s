lbl_80101CB8:
/* 80101CB8  38 A0 00 00 */	li r5, 0
/* 80101CBC  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 80101CC0  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80101CC4  40 82 00 24 */	bne lbl_80101CE8
/* 80101CC8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80101CCC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80101CD0  80 04 5F 1C */	lwz r0, 0x5f1c(r4)
/* 80101CD4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80101CD8  40 82 00 10 */	bne lbl_80101CE8
/* 80101CDC  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 80101CE0  28 00 00 C6 */	cmplwi r0, 0xc6
/* 80101CE4  40 82 00 08 */	bne lbl_80101CEC
lbl_80101CE8:
/* 80101CE8  38 A0 00 01 */	li r5, 1
lbl_80101CEC:
/* 80101CEC  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80101CF0  4E 80 00 20 */	blr 
