lbl_80D38278:
/* 80D38278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3827C  7C 08 02 A6 */	mflr r0
/* 80D38280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D38284  7C 64 1B 78 */	mr r4, r3
/* 80D38288  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3828C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D38290  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D38294  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 80D38298  54 00 8B FC */	rlwinm r0, r0, 0x11, 0xf, 0x1e
/* 80D3829C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D382A0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D382A4  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D382A8  4B 2F C7 14 */	b isEventBit__11dSv_event_cCFUs
/* 80D382AC  7C 60 00 34 */	cntlzw r0, r3
/* 80D382B0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80D382B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D382B8  7C 08 03 A6 */	mtlr r0
/* 80D382BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D382C0  4E 80 00 20 */	blr 
