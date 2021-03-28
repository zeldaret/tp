lbl_80CFF3C8:
/* 80CFF3C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFF3CC  7C 08 02 A6 */	mflr r0
/* 80CFF3D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFF3D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFF3D8  7C 7F 1B 78 */	mr r31, r3
/* 80CFF3DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFF3E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFF3E4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CFF3E8  A8 9F 05 CE */	lha r4, 0x5ce(r31)
/* 80CFF3EC  4B 34 80 D0 */	b getEventData__16dEvent_manager_cFs
/* 80CFF3F0  28 03 00 00 */	cmplwi r3, 0
/* 80CFF3F4  41 82 00 70 */	beq lbl_80CFF464
/* 80CFF3F8  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 80CFF3FC  2C 00 00 00 */	cmpwi r0, 0
/* 80CFF400  41 82 00 14 */	beq lbl_80CFF414
/* 80CFF404  2C 00 00 01 */	cmpwi r0, 1
/* 80CFF408  41 82 00 0C */	beq lbl_80CFF414
/* 80CFF40C  2C 00 00 02 */	cmpwi r0, 2
/* 80CFF410  40 82 00 68 */	bne lbl_80CFF478
lbl_80CFF414:
/* 80CFF414  7F E3 FB 78 */	mr r3, r31
/* 80CFF418  4B FF FF 5D */	bl demo_stop_puase__Q212daObjSwpush25Act_cFv
/* 80CFF41C  38 00 00 03 */	li r0, 3
/* 80CFF420  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 80CFF424  7F E3 FB 78 */	mr r3, r31
/* 80CFF428  38 80 00 08 */	li r4, 8
/* 80CFF42C  38 A0 00 00 */	li r5, 0
/* 80CFF430  48 00 07 A1 */	bl func_80CFFBD0
/* 80CFF434  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80CFF438  7F E3 FB 78 */	mr r3, r31
/* 80CFF43C  A8 9F 05 CE */	lha r4, 0x5ce(r31)
/* 80CFF440  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CFF444  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CFF448  38 E0 00 00 */	li r7, 0
/* 80CFF44C  39 00 00 01 */	li r8, 1
/* 80CFF450  4B 31 C2 2C */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CFF454  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CFF458  60 00 00 02 */	ori r0, r0, 2
/* 80CFF45C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80CFF460  48 00 00 18 */	b lbl_80CFF478
lbl_80CFF464:
/* 80CFF464  38 00 00 64 */	li r0, 0x64
/* 80CFF468  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 80CFF46C  7F E3 FB 78 */	mr r3, r31
/* 80CFF470  38 80 00 00 */	li r4, 0
/* 80CFF474  4B FF FE 79 */	bl demo_runPause_init__Q212daObjSwpush25Act_cFi
lbl_80CFF478:
/* 80CFF478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFF47C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFF480  7C 08 03 A6 */	mtlr r0
/* 80CFF484  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFF488  4E 80 00 20 */	blr 
