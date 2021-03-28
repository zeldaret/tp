lbl_804843C0:
/* 804843C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804843C4  7C 08 02 A6 */	mflr r0
/* 804843C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804843CC  39 61 00 20 */	addi r11, r1, 0x20
/* 804843D0  4B ED DE 0C */	b _savegpr_29
/* 804843D4  7C 7E 1B 78 */	mr r30, r3
/* 804843D8  3C 80 80 48 */	lis r4, M_bmd__Q211daObjSwpush5Act_c@ha
/* 804843DC  3B E4 4D 10 */	addi r31, r4, M_bmd__Q211daObjSwpush5Act_c@l
/* 804843E0  C0 23 05 D0 */	lfs f1, 0x5d0(r3)
/* 804843E4  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 804843E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804843EC  4C 41 13 82 */	cror 2, 1, 2
/* 804843F0  40 82 01 68 */	bne lbl_80484558
/* 804843F4  88 1E 05 CB */	lbz r0, 0x5cb(r30)
/* 804843F8  28 00 00 00 */	cmplwi r0, 0
/* 804843FC  41 82 00 68 */	beq lbl_80484464
/* 80484400  80 1E 05 AC */	lwz r0, 0x5ac(r30)
/* 80484404  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 80484408  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8048440C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80484410  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80484414  41 82 00 2C */	beq lbl_80484440
/* 80484418  38 80 00 08 */	li r4, 8
/* 8048441C  38 A0 00 08 */	li r5, 8
/* 80484420  48 00 08 C5 */	bl func_80484CE4
/* 80484424  7C 64 1B 78 */	mr r4, r3
/* 80484428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048442C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80484430  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80484434  7C 05 07 74 */	extsb r5, r0
/* 80484438  4B BB 0D C8 */	b onSwitch__10dSv_info_cFii
/* 8048443C  48 00 00 28 */	b lbl_80484464
lbl_80484440:
/* 80484440  38 80 00 08 */	li r4, 8
/* 80484444  38 A0 00 08 */	li r5, 8
/* 80484448  48 00 08 9D */	bl func_80484CE4
/* 8048444C  7C 64 1B 78 */	mr r4, r3
/* 80484450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80484454  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80484458  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8048445C  7C 05 07 74 */	extsb r5, r0
/* 80484460  4B BB 0E 50 */	b offSwitch__10dSv_info_cFii
lbl_80484464:
/* 80484464  80 1E 05 AC */	lwz r0, 0x5ac(r30)
/* 80484468  2C 00 00 04 */	cmpwi r0, 4
/* 8048446C  40 82 00 54 */	bne lbl_804844C0
/* 80484470  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80484474  7C 03 07 74 */	extsb r3, r0
/* 80484478  4B BA 8B F4 */	b dComIfGp_getReverb__Fi
/* 8048447C  7C 67 1B 78 */	mr r7, r3
/* 80484480  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C5@ha */
/* 80484484  38 03 01 C5 */	addi r0, r3, 0x01C5 /* 0x000801C5@l */
/* 80484488  90 01 00 0C */	stw r0, 0xc(r1)
/* 8048448C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80484490  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80484494  80 63 00 00 */	lwz r3, 0(r3)
/* 80484498  38 81 00 0C */	addi r4, r1, 0xc
/* 8048449C  38 BE 05 38 */	addi r5, r30, 0x538
/* 804844A0  38 C0 00 00 */	li r6, 0
/* 804844A4  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 804844A8  FC 40 08 90 */	fmr f2, f1
/* 804844AC  C0 7F 01 2C */	lfs f3, 0x12c(r31)
/* 804844B0  FC 80 18 90 */	fmr f4, f3
/* 804844B4  39 00 00 00 */	li r8, 0
/* 804844B8  4B E2 74 CC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804844BC  48 00 00 94 */	b lbl_80484550
lbl_804844C0:
/* 804844C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804844C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804844C8  3B A3 4E 00 */	addi r29, r3, 0x4e00
/* 804844CC  7F A3 EB 78 */	mr r3, r29
/* 804844D0  3C 80 80 48 */	lis r4, struct_80484E4C+0x0@ha
/* 804844D4  38 84 4E 4C */	addi r4, r4, struct_80484E4C+0x0@l
/* 804844D8  38 84 00 2A */	addi r4, r4, 0x2a
/* 804844DC  4B EE 44 B8 */	b strcmp
/* 804844E0  2C 03 00 00 */	cmpwi r3, 0
/* 804844E4  41 82 00 20 */	beq lbl_80484504
/* 804844E8  7F A3 EB 78 */	mr r3, r29
/* 804844EC  3C 80 80 48 */	lis r4, struct_80484E4C+0x0@ha
/* 804844F0  38 84 4E 4C */	addi r4, r4, struct_80484E4C+0x0@l
/* 804844F4  38 84 00 31 */	addi r4, r4, 0x31
/* 804844F8  4B EE 44 9C */	b strcmp
/* 804844FC  2C 03 00 00 */	cmpwi r3, 0
/* 80484500  40 82 00 50 */	bne lbl_80484550
lbl_80484504:
/* 80484504  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80484508  7C 03 07 74 */	extsb r3, r0
/* 8048450C  4B BA 8B 60 */	b dComIfGp_getReverb__Fi
/* 80484510  7C 67 1B 78 */	mr r7, r3
/* 80484514  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C5@ha */
/* 80484518  38 03 01 C5 */	addi r0, r3, 0x01C5 /* 0x000801C5@l */
/* 8048451C  90 01 00 08 */	stw r0, 8(r1)
/* 80484520  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80484524  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80484528  80 63 00 00 */	lwz r3, 0(r3)
/* 8048452C  38 81 00 08 */	addi r4, r1, 8
/* 80484530  38 BE 05 38 */	addi r5, r30, 0x538
/* 80484534  38 C0 00 00 */	li r6, 0
/* 80484538  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 8048453C  FC 40 08 90 */	fmr f2, f1
/* 80484540  C0 7F 01 2C */	lfs f3, 0x12c(r31)
/* 80484544  FC 80 18 90 */	fmr f4, f3
/* 80484548  39 00 00 00 */	li r8, 0
/* 8048454C  4B E2 74 38 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80484550:
/* 80484550  7F C3 F3 78 */	mr r3, r30
/* 80484554  4B FF F7 B9 */	bl mode_upper_init__Q211daObjSwpush5Act_cFv
lbl_80484558:
/* 80484558  39 61 00 20 */	addi r11, r1, 0x20
/* 8048455C  4B ED DC CC */	b _restgpr_29
/* 80484560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80484564  7C 08 03 A6 */	mtlr r0
/* 80484568  38 21 00 20 */	addi r1, r1, 0x20
/* 8048456C  4E 80 00 20 */	blr 
