lbl_80CA8278:
/* 80CA8278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA827C  7C 08 02 A6 */	mflr r0
/* 80CA8280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA8288  7C 7F 1B 78 */	mr r31, r3
/* 80CA828C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CA8290  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CA8294  40 82 00 1C */	bne lbl_80CA82B0
/* 80CA8298  28 1F 00 00 */	cmplwi r31, 0
/* 80CA829C  41 82 00 08 */	beq lbl_80CA82A4
/* 80CA82A0  4B 37 08 C4 */	b __ct__10fopAc_ac_cFv
lbl_80CA82A4:
/* 80CA82A4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CA82A8  60 00 00 08 */	ori r0, r0, 8
/* 80CA82AC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CA82B0:
/* 80CA82B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA82B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA82B8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80CA82BC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80CA82C0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80CA82C4  A0 84 02 F2 */	lhz r4, 0x2f2(r4)
/* 80CA82C8  4B 38 C6 F4 */	b isEventBit__11dSv_event_cCFUs
/* 80CA82CC  2C 03 00 00 */	cmpwi r3, 0
/* 80CA82D0  40 82 00 0C */	bne lbl_80CA82DC
/* 80CA82D4  38 60 00 05 */	li r3, 5
/* 80CA82D8  48 00 00 08 */	b lbl_80CA82E0
lbl_80CA82DC:
/* 80CA82DC  38 60 00 04 */	li r3, 4
lbl_80CA82E0:
/* 80CA82E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA82E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA82E8  7C 08 03 A6 */	mtlr r0
/* 80CA82EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA82F0  4E 80 00 20 */	blr 
