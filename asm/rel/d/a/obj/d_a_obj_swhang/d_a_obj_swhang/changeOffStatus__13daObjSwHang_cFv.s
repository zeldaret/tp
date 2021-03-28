lbl_80CFC1F4:
/* 80CFC1F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFC1F8  7C 08 02 A6 */	mflr r0
/* 80CFC1FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFC200  7C 65 1B 78 */	mr r5, r3
/* 80CFC204  80 83 00 B0 */	lwz r4, 0xb0(r3)
/* 80CFC208  54 80 3F FF */	rlwinm. r0, r4, 7, 0x1f, 0x1f
/* 80CFC20C  40 82 00 20 */	bne lbl_80CFC22C
/* 80CFC210  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFC214  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFC218  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80CFC21C  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80CFC220  7C 05 07 74 */	extsb r5, r0
/* 80CFC224  4B 33 90 8C */	b offSwitch__10dSv_info_cFii
/* 80CFC228  48 00 00 1C */	b lbl_80CFC244
lbl_80CFC22C:
/* 80CFC22C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFC230  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFC234  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80CFC238  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80CFC23C  7C 05 07 74 */	extsb r5, r0
/* 80CFC240  4B 33 8F C0 */	b onSwitch__10dSv_info_cFii
lbl_80CFC244:
/* 80CFC244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFC248  7C 08 03 A6 */	mtlr r0
/* 80CFC24C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFC250  4E 80 00 20 */	blr 
