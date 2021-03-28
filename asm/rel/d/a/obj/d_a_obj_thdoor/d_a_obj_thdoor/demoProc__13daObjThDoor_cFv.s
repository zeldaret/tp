lbl_80D0DE34:
/* 80D0DE34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D0DE38  7C 08 02 A6 */	mflr r0
/* 80D0DE3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D0DE40  39 61 00 30 */	addi r11, r1, 0x30
/* 80D0DE44  4B 65 43 90 */	b _savegpr_27
/* 80D0DE48  7C 7B 1B 78 */	mr r27, r3
/* 80D0DE4C  3C 60 80 D1 */	lis r3, lit_3663@ha
/* 80D0DE50  3B A3 E5 F8 */	addi r29, r3, lit_3663@l
/* 80D0DE54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0DE58  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80D0DE5C  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80D0DE60  7F 83 E3 78 */	mr r3, r28
/* 80D0DE64  80 9B 05 B0 */	lwz r4, 0x5b0(r27)
/* 80D0DE68  3C A0 80 D1 */	lis r5, action_table@ha
/* 80D0DE6C  38 A5 E7 28 */	addi r5, r5, action_table@l
/* 80D0DE70  38 C0 00 03 */	li r6, 3
/* 80D0DE74  38 E0 00 00 */	li r7, 0
/* 80D0DE78  39 00 00 00 */	li r8, 0
/* 80D0DE7C  4B 33 9F 94 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80D0DE80  7C 7F 1B 78 */	mr r31, r3
/* 80D0DE84  7F 83 E3 78 */	mr r3, r28
/* 80D0DE88  80 9B 05 B0 */	lwz r4, 0x5b0(r27)
/* 80D0DE8C  4B 33 9E C0 */	b getIsAddvance__16dEvent_manager_cFi
/* 80D0DE90  2C 03 00 00 */	cmpwi r3, 0
/* 80D0DE94  41 82 00 E0 */	beq lbl_80D0DF74
/* 80D0DE98  2C 1F 00 01 */	cmpwi r31, 1
/* 80D0DE9C  41 82 00 5C */	beq lbl_80D0DEF8
/* 80D0DEA0  40 80 00 10 */	bge lbl_80D0DEB0
/* 80D0DEA4  2C 1F 00 00 */	cmpwi r31, 0
/* 80D0DEA8  40 80 00 14 */	bge lbl_80D0DEBC
/* 80D0DEAC  48 00 00 C8 */	b lbl_80D0DF74
lbl_80D0DEB0:
/* 80D0DEB0  2C 1F 00 03 */	cmpwi r31, 3
/* 80D0DEB4  40 80 00 C0 */	bge lbl_80D0DF74
/* 80D0DEB8  48 00 00 60 */	b lbl_80D0DF18
lbl_80D0DEBC:
/* 80D0DEBC  7F 83 E3 78 */	mr r3, r28
/* 80D0DEC0  80 9B 05 B0 */	lwz r4, 0x5b0(r27)
/* 80D0DEC4  3C A0 80 D1 */	lis r5, struct_80D0E620+0x0@ha
/* 80D0DEC8  38 A5 E6 20 */	addi r5, r5, struct_80D0E620+0x0@l
/* 80D0DECC  38 A5 00 2F */	addi r5, r5, 0x2f
/* 80D0DED0  38 C0 00 03 */	li r6, 3
/* 80D0DED4  4B 33 A2 18 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80D0DED8  28 03 00 00 */	cmplwi r3, 0
/* 80D0DEDC  40 82 00 10 */	bne lbl_80D0DEEC
/* 80D0DEE0  38 00 00 01 */	li r0, 1
/* 80D0DEE4  98 1B 05 B4 */	stb r0, 0x5b4(r27)
/* 80D0DEE8  48 00 00 8C */	b lbl_80D0DF74
lbl_80D0DEEC:
/* 80D0DEEC  80 03 00 00 */	lwz r0, 0(r3)
/* 80D0DEF0  98 1B 05 B4 */	stb r0, 0x5b4(r27)
/* 80D0DEF4  48 00 00 80 */	b lbl_80D0DF74
lbl_80D0DEF8:
/* 80D0DEF8  38 7B 05 BC */	addi r3, r27, 0x5bc
/* 80D0DEFC  7F 64 DB 78 */	mr r4, r27
/* 80D0DF00  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80D0DF04  54 05 C4 3E */	rlwinm r5, r0, 0x18, 0x10, 0x1f
/* 80D0DF08  38 C0 00 00 */	li r6, 0
/* 80D0DF0C  38 E0 00 00 */	li r7, 0
/* 80D0DF10  4B 53 C0 80 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D0DF14  48 00 00 60 */	b lbl_80D0DF74
lbl_80D0DF18:
/* 80D0DF18  38 00 00 00 */	li r0, 0
/* 80D0DF1C  B0 1B 05 B8 */	sth r0, 0x5b8(r27)
/* 80D0DF20  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80D0DF24  7C 03 07 74 */	extsb r3, r0
/* 80D0DF28  4B 31 F1 44 */	b dComIfGp_getReverb__Fi
/* 80D0DF2C  7C 67 1B 78 */	mr r7, r3
/* 80D0DF30  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080269@ha */
/* 80D0DF34  38 03 02 69 */	addi r0, r3, 0x0269 /* 0x00080269@l */
/* 80D0DF38  90 01 00 08 */	stw r0, 8(r1)
/* 80D0DF3C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D0DF40  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D0DF44  80 63 00 00 */	lwz r3, 0(r3)
/* 80D0DF48  38 81 00 08 */	addi r4, r1, 8
/* 80D0DF4C  38 BB 05 38 */	addi r5, r27, 0x538
/* 80D0DF50  38 C0 00 00 */	li r6, 0
/* 80D0DF54  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80D0DF58  FC 40 08 90 */	fmr f2, f1
/* 80D0DF5C  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 80D0DF60  FC 80 18 90 */	fmr f4, f3
/* 80D0DF64  39 00 00 00 */	li r8, 0
/* 80D0DF68  4B 59 DA 1C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D0DF6C  38 00 00 01 */	li r0, 1
/* 80D0DF70  98 1B 05 B5 */	stb r0, 0x5b5(r27)
lbl_80D0DF74:
/* 80D0DF74  2C 1F 00 01 */	cmpwi r31, 1
/* 80D0DF78  41 82 00 40 */	beq lbl_80D0DFB8
/* 80D0DF7C  40 80 00 10 */	bge lbl_80D0DF8C
/* 80D0DF80  2C 1F 00 00 */	cmpwi r31, 0
/* 80D0DF84  40 80 00 14 */	bge lbl_80D0DF98
/* 80D0DF88  48 00 00 BC */	b lbl_80D0E044
lbl_80D0DF8C:
/* 80D0DF8C  2C 1F 00 03 */	cmpwi r31, 3
/* 80D0DF90  40 80 00 B4 */	bge lbl_80D0E044
/* 80D0DF94  48 00 00 50 */	b lbl_80D0DFE4
lbl_80D0DF98:
/* 80D0DF98  38 7B 05 B4 */	addi r3, r27, 0x5b4
/* 80D0DF9C  48 00 06 39 */	bl func_80D0E5D4
/* 80D0DFA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0DFA4  40 82 00 AC */	bne lbl_80D0E050
/* 80D0DFA8  7F 83 E3 78 */	mr r3, r28
/* 80D0DFAC  80 9B 05 B0 */	lwz r4, 0x5b0(r27)
/* 80D0DFB0  4B 33 A1 CC */	b cutEnd__16dEvent_manager_cFi
/* 80D0DFB4  48 00 00 9C */	b lbl_80D0E050
lbl_80D0DFB8:
/* 80D0DFB8  38 7B 05 BC */	addi r3, r27, 0x5bc
/* 80D0DFBC  7F 64 DB 78 */	mr r4, r27
/* 80D0DFC0  38 A0 00 00 */	li r5, 0
/* 80D0DFC4  38 C0 00 00 */	li r6, 0
/* 80D0DFC8  4B 53 C3 10 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80D0DFCC  2C 03 00 00 */	cmpwi r3, 0
/* 80D0DFD0  41 82 00 80 */	beq lbl_80D0E050
/* 80D0DFD4  7F 83 E3 78 */	mr r3, r28
/* 80D0DFD8  80 9B 05 B0 */	lwz r4, 0x5b0(r27)
/* 80D0DFDC  4B 33 A1 A0 */	b cutEnd__16dEvent_manager_cFi
/* 80D0DFE0  48 00 00 70 */	b lbl_80D0E050
lbl_80D0DFE4:
/* 80D0DFE4  38 7B 05 B8 */	addi r3, r27, 0x5b8
/* 80D0DFE8  38 80 06 A4 */	li r4, 0x6a4
/* 80D0DFEC  38 A0 01 90 */	li r5, 0x190
/* 80D0DFF0  4B 56 26 E0 */	b cLib_chaseS__FPsss
/* 80D0DFF4  38 7B 06 08 */	addi r3, r27, 0x608
/* 80D0DFF8  38 80 00 00 */	li r4, 0
/* 80D0DFFC  A8 BB 05 B8 */	lha r5, 0x5b8(r27)
/* 80D0E000  4B 56 26 D0 */	b cLib_chaseS__FPsss
/* 80D0E004  2C 03 00 00 */	cmpwi r3, 0
/* 80D0E008  41 82 00 48 */	beq lbl_80D0E050
/* 80D0E00C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80D0E010  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D0E014  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80D0E018  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D0E01C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D0E020  38 7E 5B D4 */	addi r3, r30, 0x5bd4
/* 80D0E024  38 80 00 04 */	li r4, 4
/* 80D0E028  38 A0 00 1F */	li r5, 0x1f
/* 80D0E02C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80D0E030  4B 36 19 F4 */	b StartShock__12dVibration_cFii4cXyz
/* 80D0E034  7F 83 E3 78 */	mr r3, r28
/* 80D0E038  80 9B 05 B0 */	lwz r4, 0x5b0(r27)
/* 80D0E03C  4B 33 A1 40 */	b cutEnd__16dEvent_manager_cFi
/* 80D0E040  48 00 00 10 */	b lbl_80D0E050
lbl_80D0E044:
/* 80D0E044  7F 83 E3 78 */	mr r3, r28
/* 80D0E048  80 9B 05 B0 */	lwz r4, 0x5b0(r27)
/* 80D0E04C  4B 33 A1 30 */	b cutEnd__16dEvent_manager_cFi
lbl_80D0E050:
/* 80D0E050  38 60 00 00 */	li r3, 0
/* 80D0E054  39 61 00 30 */	addi r11, r1, 0x30
/* 80D0E058  4B 65 41 C8 */	b _restgpr_27
/* 80D0E05C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D0E060  7C 08 03 A6 */	mtlr r0
/* 80D0E064  38 21 00 30 */	addi r1, r1, 0x30
/* 80D0E068  4E 80 00 20 */	blr 
