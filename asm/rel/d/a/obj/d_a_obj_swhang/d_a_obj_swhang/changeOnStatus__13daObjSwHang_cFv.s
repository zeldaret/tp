lbl_80CFC194:
/* 80CFC194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFC198  7C 08 02 A6 */	mflr r0
/* 80CFC19C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFC1A0  7C 65 1B 78 */	mr r5, r3
/* 80CFC1A4  80 83 00 B0 */	lwz r4, 0xb0(r3)
/* 80CFC1A8  54 80 3F FF */	rlwinm. r0, r4, 7, 0x1f, 0x1f
/* 80CFC1AC  40 82 00 20 */	bne lbl_80CFC1CC
/* 80CFC1B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFC1B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFC1B8  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80CFC1BC  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80CFC1C0  7C 05 07 74 */	extsb r5, r0
/* 80CFC1C4  4B 33 90 3C */	b onSwitch__10dSv_info_cFii
/* 80CFC1C8  48 00 00 1C */	b lbl_80CFC1E4
lbl_80CFC1CC:
/* 80CFC1CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFC1D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFC1D4  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80CFC1D8  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80CFC1DC  7C 05 07 74 */	extsb r5, r0
/* 80CFC1E0  4B 33 90 D0 */	b offSwitch__10dSv_info_cFii
lbl_80CFC1E4:
/* 80CFC1E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFC1E8  7C 08 03 A6 */	mtlr r0
/* 80CFC1EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFC1F0  4E 80 00 20 */	blr 
