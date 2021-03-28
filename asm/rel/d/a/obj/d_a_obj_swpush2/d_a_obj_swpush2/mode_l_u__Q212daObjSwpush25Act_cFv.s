lbl_80CFF18C:
/* 80CFF18C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFF190  7C 08 02 A6 */	mflr r0
/* 80CFF194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFF198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFF19C  7C 7F 1B 78 */	mr r31, r3
/* 80CFF1A0  C0 23 05 E8 */	lfs f1, 0x5e8(r3)
/* 80CFF1A4  3C 80 80 D0 */	lis r4, lit_3857@ha
/* 80CFF1A8  C0 04 FC E0 */	lfs f0, lit_3857@l(r4)
/* 80CFF1AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFF1B0  4C 41 13 82 */	cror 2, 1, 2
/* 80CFF1B4  40 82 00 84 */	bne lbl_80CFF238
/* 80CFF1B8  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80CFF1BC  28 00 00 00 */	cmplwi r0, 0
/* 80CFF1C0  41 82 00 70 */	beq lbl_80CFF230
/* 80CFF1C4  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 80CFF1C8  1C A0 00 38 */	mulli r5, r0, 0x38
/* 80CFF1CC  3C 80 80 D0 */	lis r4, M_attr__Q212daObjSwpush25Act_c@ha
/* 80CFF1D0  38 04 FC 00 */	addi r0, r4, M_attr__Q212daObjSwpush25Act_c@l
/* 80CFF1D4  7C 80 2A 14 */	add r4, r0, r5
/* 80CFF1D8  80 04 00 04 */	lwz r0, 4(r4)
/* 80CFF1DC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80CFF1E0  41 82 00 2C */	beq lbl_80CFF20C
/* 80CFF1E4  38 80 00 08 */	li r4, 8
/* 80CFF1E8  38 A0 00 08 */	li r5, 8
/* 80CFF1EC  48 00 09 E5 */	bl func_80CFFBD0
/* 80CFF1F0  7C 64 1B 78 */	mr r4, r3
/* 80CFF1F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFF1F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFF1FC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CFF200  7C 05 07 74 */	extsb r5, r0
/* 80CFF204  4B 33 5F FC */	b onSwitch__10dSv_info_cFii
/* 80CFF208  48 00 00 28 */	b lbl_80CFF230
lbl_80CFF20C:
/* 80CFF20C  38 80 00 08 */	li r4, 8
/* 80CFF210  38 A0 00 08 */	li r5, 8
/* 80CFF214  48 00 09 BD */	bl func_80CFFBD0
/* 80CFF218  7C 64 1B 78 */	mr r4, r3
/* 80CFF21C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFF220  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFF224  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CFF228  7C 05 07 74 */	extsb r5, r0
/* 80CFF22C  4B 33 60 84 */	b offSwitch__10dSv_info_cFii
lbl_80CFF230:
/* 80CFF230  7F E3 FB 78 */	mr r3, r31
/* 80CFF234  4B FF FB A9 */	bl mode_upper_init__Q212daObjSwpush25Act_cFv
lbl_80CFF238:
/* 80CFF238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFF23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFF240  7C 08 03 A6 */	mtlr r0
/* 80CFF244  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFF248  4E 80 00 20 */	blr 
