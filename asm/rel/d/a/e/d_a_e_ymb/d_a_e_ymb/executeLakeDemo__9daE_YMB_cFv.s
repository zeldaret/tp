lbl_8081DE84:
/* 8081DE84  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8081DE88  7C 08 02 A6 */	mflr r0
/* 8081DE8C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8081DE90  39 61 00 70 */	addi r11, r1, 0x70
/* 8081DE94  4B B4 43 45 */	bl _savegpr_28
/* 8081DE98  7C 7D 1B 78 */	mr r29, r3
/* 8081DE9C  3C 80 80 82 */	lis r4, lit_3791@ha /* 0x808218AC@ha */
/* 8081DEA0  3B E4 18 AC */	addi r31, r4, lit_3791@l /* 0x808218AC@l */
/* 8081DEA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081DEA8  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081DEAC  88 05 5D B0 */	lbz r0, 0x5db0(r5)
/* 8081DEB0  7C 00 07 74 */	extsb r0, r0
/* 8081DEB4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8081DEB8  7C 85 02 14 */	add r4, r5, r0
/* 8081DEBC  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 8081DEC0  80 03 06 B8 */	lwz r0, 0x6b8(r3)
/* 8081DEC4  2C 00 00 03 */	cmpwi r0, 3
/* 8081DEC8  41 82 03 6C */	beq lbl_8081E234
/* 8081DECC  40 80 00 1C */	bge lbl_8081DEE8
/* 8081DED0  2C 00 00 01 */	cmpwi r0, 1
/* 8081DED4  41 82 01 CC */	beq lbl_8081E0A0
/* 8081DED8  40 80 02 B0 */	bge lbl_8081E188
/* 8081DEDC  2C 00 00 00 */	cmpwi r0, 0
/* 8081DEE0  40 80 00 14 */	bge lbl_8081DEF4
/* 8081DEE4  48 00 05 C0 */	b lbl_8081E4A4
lbl_8081DEE8:
/* 8081DEE8  2C 00 00 05 */	cmpwi r0, 5
/* 8081DEEC  41 82 04 64 */	beq lbl_8081E350
/* 8081DEF0  48 00 05 B4 */	b lbl_8081E4A4
lbl_8081DEF4:
/* 8081DEF4  38 00 00 01 */	li r0, 1
/* 8081DEF8  98 1D 07 10 */	stb r0, 0x710(r29)
/* 8081DEFC  80 1D 08 44 */	lwz r0, 0x844(r29)
/* 8081DF00  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081DF04  90 1D 08 44 */	stw r0, 0x844(r29)
/* 8081DF08  80 1D 09 7C */	lwz r0, 0x97c(r29)
/* 8081DF0C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081DF10  90 1D 09 7C */	stw r0, 0x97c(r29)
/* 8081DF14  80 1D 0A B4 */	lwz r0, 0xab4(r29)
/* 8081DF18  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081DF1C  90 1D 0A B4 */	stw r0, 0xab4(r29)
/* 8081DF20  38 65 07 F0 */	addi r3, r5, 0x7f0
/* 8081DF24  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8081DF28  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8081DF2C  A0 84 00 12 */	lhz r4, 0x12(r4)
/* 8081DF30  4B 81 6A 8D */	bl isEventBit__11dSv_event_cCFUs
/* 8081DF34  2C 03 00 00 */	cmpwi r3, 0
/* 8081DF38  41 82 06 64 */	beq lbl_8081E59C
/* 8081DF3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081DF40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081DF44  3B 83 09 58 */	addi r28, r3, 0x958
/* 8081DF48  7F 83 E3 78 */	mr r3, r28
/* 8081DF4C  38 80 00 11 */	li r4, 0x11
/* 8081DF50  4B 81 69 11 */	bl isSwitch__12dSv_memBit_cCFi
/* 8081DF54  2C 03 00 00 */	cmpwi r3, 0
/* 8081DF58  41 82 00 6C */	beq lbl_8081DFC4
/* 8081DF5C  38 00 00 00 */	li r0, 0
/* 8081DF60  98 1D 07 10 */	stb r0, 0x710(r29)
/* 8081DF64  7F A3 EB 78 */	mr r3, r29
/* 8081DF68  38 80 00 01 */	li r4, 1
/* 8081DF6C  38 A0 00 01 */	li r5, 1
/* 8081DF70  4B FF 8B 0D */	bl setActionMode__9daE_YMB_cFii
/* 8081DF74  38 00 00 01 */	li r0, 1
/* 8081DF78  98 1D 07 64 */	stb r0, 0x764(r29)
/* 8081DF7C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081DF80  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081DF84  80 63 00 00 */	lwz r3, 0(r3)
/* 8081DF88  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8081DF8C  38 80 00 00 */	li r4, 0
/* 8081DF90  4B A9 61 D5 */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 8081DF94  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081DF98  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081DF9C  80 63 00 00 */	lwz r3, 0(r3)
/* 8081DFA0  38 63 04 F4 */	addi r3, r3, 0x4f4
/* 8081DFA4  38 80 00 01 */	li r4, 1
/* 8081DFA8  38 A0 0B B8 */	li r5, 0xbb8
/* 8081DFAC  38 C0 0F A0 */	li r6, 0xfa0
/* 8081DFB0  38 E0 17 70 */	li r7, 0x1770
/* 8081DFB4  4B AA 19 CD */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 8081DFB8  38 00 00 01 */	li r0, 1
/* 8081DFBC  98 1D 07 65 */	stb r0, 0x765(r29)
/* 8081DFC0  48 00 05 DC */	b lbl_8081E59C
lbl_8081DFC4:
/* 8081DFC4  7F 83 E3 78 */	mr r3, r28
/* 8081DFC8  38 80 00 10 */	li r4, 0x10
/* 8081DFCC  4B 81 68 95 */	bl isSwitch__12dSv_memBit_cCFi
/* 8081DFD0  2C 03 00 00 */	cmpwi r3, 0
/* 8081DFD4  41 82 00 5C */	beq lbl_8081E030
/* 8081DFD8  38 00 00 00 */	li r0, 0
/* 8081DFDC  98 1D 07 10 */	stb r0, 0x710(r29)
/* 8081DFE0  7F A3 EB 78 */	mr r3, r29
/* 8081DFE4  38 80 00 01 */	li r4, 1
/* 8081DFE8  38 A0 00 01 */	li r5, 1
/* 8081DFEC  4B FF 8A 91 */	bl setActionMode__9daE_YMB_cFii
/* 8081DFF0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081DFF4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081DFF8  80 63 00 00 */	lwz r3, 0(r3)
/* 8081DFFC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8081E000  38 80 00 00 */	li r4, 0
/* 8081E004  4B A9 61 61 */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 8081E008  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081E00C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081E010  80 63 00 00 */	lwz r3, 0(r3)
/* 8081E014  38 63 04 F4 */	addi r3, r3, 0x4f4
/* 8081E018  38 80 00 01 */	li r4, 1
/* 8081E01C  38 A0 0B B8 */	li r5, 0xbb8
/* 8081E020  38 C0 0F A0 */	li r6, 0xfa0
/* 8081E024  38 E0 17 70 */	li r7, 0x1770
/* 8081E028  4B AA 19 59 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 8081E02C  48 00 05 70 */	b lbl_8081E59C
lbl_8081E030:
/* 8081E030  7F 83 E3 78 */	mr r3, r28
/* 8081E034  38 80 00 0F */	li r4, 0xf
/* 8081E038  4B 81 68 29 */	bl isSwitch__12dSv_memBit_cCFi
/* 8081E03C  2C 03 00 00 */	cmpwi r3, 0
/* 8081E040  41 82 00 38 */	beq lbl_8081E078
/* 8081E044  38 00 00 00 */	li r0, 0
/* 8081E048  98 1D 07 10 */	stb r0, 0x710(r29)
/* 8081E04C  7F A3 EB 78 */	mr r3, r29
/* 8081E050  38 80 00 0B */	li r4, 0xb
/* 8081E054  38 A0 00 00 */	li r5, 0
/* 8081E058  4B FF 8A 25 */	bl setActionMode__9daE_YMB_cFii
/* 8081E05C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081E060  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081E064  80 63 00 00 */	lwz r3, 0(r3)
/* 8081E068  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8081E06C  38 80 00 01 */	li r4, 1
/* 8081E070  4B A9 60 F5 */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 8081E074  48 00 05 28 */	b lbl_8081E59C
lbl_8081E078:
/* 8081E078  38 00 00 00 */	li r0, 0
/* 8081E07C  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 8081E080  38 00 00 01 */	li r0, 1
/* 8081E084  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081E088  98 1D 07 15 */	stb r0, 0x715(r29)
/* 8081E08C  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 8081E090  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 8081E094  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081E098  D0 1D 06 C4 */	stfs f0, 0x6c4(r29)
/* 8081E09C  48 00 04 08 */	b lbl_8081E4A4
lbl_8081E0A0:
/* 8081E0A0  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 8081E0A4  28 00 00 02 */	cmplwi r0, 2
/* 8081E0A8  41 82 00 28 */	beq lbl_8081E0D0
/* 8081E0AC  38 80 00 02 */	li r4, 2
/* 8081E0B0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8081E0B4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8081E0B8  38 C0 00 00 */	li r6, 0
/* 8081E0BC  4B 7F D8 4D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8081E0C0  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 8081E0C4  60 00 00 02 */	ori r0, r0, 2
/* 8081E0C8  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 8081E0CC  48 00 04 D0 */	b lbl_8081E59C
lbl_8081E0D0:
/* 8081E0D0  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081E0D4  4B 94 33 FD */	bl Stop__9dCamera_cFv
/* 8081E0D8  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081E0DC  38 80 00 03 */	li r4, 3
/* 8081E0E0  4B 94 4F 2D */	bl SetTrimSize__9dCamera_cFl
/* 8081E0E4  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 8081E0E8  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 8081E0EC  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 8081E0F0  D0 1D 07 38 */	stfs f0, 0x738(r29)
/* 8081E0F4  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 8081E0F8  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 8081E0FC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8081E100  D0 1D 07 58 */	stfs f0, 0x758(r29)
/* 8081E104  38 00 70 00 */	li r0, 0x7000
/* 8081E108  B0 1D 07 60 */	sth r0, 0x760(r29)
/* 8081E10C  38 00 FF D0 */	li r0, -48
/* 8081E110  B0 1D 07 62 */	sth r0, 0x762(r29)
/* 8081E114  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081E118  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8081E11C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8081E120  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8081E124  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8081E128  38 7D 07 28 */	addi r3, r29, 0x728
/* 8081E12C  38 9D 07 34 */	addi r4, r29, 0x734
/* 8081E130  A8 BD 07 60 */	lha r5, 0x760(r29)
/* 8081E134  38 C1 00 48 */	addi r6, r1, 0x48
/* 8081E138  4B A5 2C 89 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8081E13C  38 00 00 02 */	li r0, 2
/* 8081E140  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081E144  38 00 7F FF */	li r0, 0x7fff
/* 8081E148  B0 1D 06 E4 */	sth r0, 0x6e4(r29)
/* 8081E14C  38 00 00 00 */	li r0, 0
/* 8081E150  98 1D 07 10 */	stb r0, 0x710(r29)
/* 8081E154  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081E158  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081E15C  38 63 09 58 */	addi r3, r3, 0x958
/* 8081E160  38 80 00 0F */	li r4, 0xf
/* 8081E164  4B 81 66 AD */	bl onSwitch__12dSv_memBit_cFi
/* 8081E168  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081E16C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081E170  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8081E174  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8081E178  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8081E17C  A0 84 00 EE */	lhz r4, 0xee(r4)
/* 8081E180  4B 81 68 0D */	bl onEventBit__11dSv_event_cFUs
/* 8081E184  48 00 03 20 */	b lbl_8081E4A4
lbl_8081E188:
/* 8081E188  38 65 4E C8 */	addi r3, r5, 0x4ec8
/* 8081E18C  7F A4 EB 78 */	mr r4, r29
/* 8081E190  3C A0 80 82 */	lis r5, DemoSkipCallBack__9daE_YMB_cFPvi@ha /* 0x8081DDE0@ha */
/* 8081E194  38 A5 DD E0 */	addi r5, r5, DemoSkipCallBack__9daE_YMB_cFPvi@l /* 0x8081DDE0@l */
/* 8081E198  38 C0 00 00 */	li r6, 0
/* 8081E19C  4B 82 47 79 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8081E1A0  A8 7D 07 60 */	lha r3, 0x760(r29)
/* 8081E1A4  A8 1D 07 62 */	lha r0, 0x762(r29)
/* 8081E1A8  7C 03 02 14 */	add r0, r3, r0
/* 8081E1AC  B0 1D 07 60 */	sth r0, 0x760(r29)
/* 8081E1B0  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 8081E1B4  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 8081E1B8  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 8081E1BC  D0 1D 07 38 */	stfs f0, 0x738(r29)
/* 8081E1C0  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 8081E1C4  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 8081E1C8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081E1CC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8081E1D0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8081E1D4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8081E1D8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8081E1DC  38 7D 07 28 */	addi r3, r29, 0x728
/* 8081E1E0  38 9D 07 34 */	addi r4, r29, 0x734
/* 8081E1E4  A8 BD 07 60 */	lha r5, 0x760(r29)
/* 8081E1E8  38 C1 00 48 */	addi r6, r1, 0x48
/* 8081E1EC  4B A5 2B D5 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8081E1F0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8081E1F4  D0 1D 07 58 */	stfs f0, 0x758(r29)
/* 8081E1F8  A8 1D 07 60 */	lha r0, 0x760(r29)
/* 8081E1FC  2C 00 68 00 */	cmpwi r0, 0x6800
/* 8081E200  40 80 00 14 */	bge lbl_8081E214
/* 8081E204  38 7D 07 5C */	addi r3, r29, 0x75c
/* 8081E208  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8081E20C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8081E210  4B A5 25 31 */	bl cLib_chaseF__FPfff
lbl_8081E214:
/* 8081E214  A8 1D 07 60 */	lha r0, 0x760(r29)
/* 8081E218  2C 00 60 00 */	cmpwi r0, 0x6000
/* 8081E21C  40 80 02 88 */	bge lbl_8081E4A4
/* 8081E220  38 00 00 03 */	li r0, 3
/* 8081E224  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081E228  38 00 00 5A */	li r0, 0x5a
/* 8081E22C  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 8081E230  48 00 02 74 */	b lbl_8081E4A4
lbl_8081E234:
/* 8081E234  38 65 4E C8 */	addi r3, r5, 0x4ec8
/* 8081E238  7F A4 EB 78 */	mr r4, r29
/* 8081E23C  3C A0 80 82 */	lis r5, DemoSkipCallBack__9daE_YMB_cFPvi@ha /* 0x8081DDE0@ha */
/* 8081E240  38 A5 DD E0 */	addi r5, r5, DemoSkipCallBack__9daE_YMB_cFPvi@l /* 0x8081DDE0@l */
/* 8081E244  38 C0 00 00 */	li r6, 0
/* 8081E248  4B 82 46 CD */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8081E24C  38 7D 07 5C */	addi r3, r29, 0x75c
/* 8081E250  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8081E254  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8081E258  4B A5 24 E9 */	bl cLib_chaseF__FPfff
/* 8081E25C  38 7D 07 62 */	addi r3, r29, 0x762
/* 8081E260  38 80 00 00 */	li r4, 0
/* 8081E264  38 A0 00 10 */	li r5, 0x10
/* 8081E268  4B A5 29 29 */	bl cLib_chaseAngleS__FPsss
/* 8081E26C  A8 7D 07 60 */	lha r3, 0x760(r29)
/* 8081E270  A8 1D 07 62 */	lha r0, 0x762(r29)
/* 8081E274  7C 03 02 14 */	add r0, r3, r0
/* 8081E278  B0 1D 07 60 */	sth r0, 0x760(r29)
/* 8081E27C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081E280  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8081E284  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8081E288  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8081E28C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8081E290  38 7D 07 28 */	addi r3, r29, 0x728
/* 8081E294  38 9D 07 34 */	addi r4, r29, 0x734
/* 8081E298  A8 BD 07 60 */	lha r5, 0x760(r29)
/* 8081E29C  38 C1 00 48 */	addi r6, r1, 0x48
/* 8081E2A0  4B A5 2B 21 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8081E2A4  38 7D 07 34 */	addi r3, r29, 0x734
/* 8081E2A8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8081E2AC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8081E2B0  4B A5 24 FD */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8081E2B4  38 7D 07 28 */	addi r3, r29, 0x728
/* 8081E2B8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8081E2BC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8081E2C0  4B A5 24 ED */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8081E2C4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8081E2C8  D0 1D 07 58 */	stfs f0, 0x758(r29)
/* 8081E2CC  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 8081E2D0  2C 00 00 00 */	cmpwi r0, 0
/* 8081E2D4  40 82 01 D0 */	bne lbl_8081E4A4
/* 8081E2D8  38 00 00 00 */	li r0, 0
/* 8081E2DC  B0 1D 06 E4 */	sth r0, 0x6e4(r29)
/* 8081E2E0  7F A3 EB 78 */	mr r3, r29
/* 8081E2E4  4B FF FB 31 */	bl calcLakeDemoPlayerPos__9daE_YMB_cFv
/* 8081E2E8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8081E2EC  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 8081E2F0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8081E2F4  D0 1D 07 38 */	stfs f0, 0x738(r29)
/* 8081E2F8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8081E2FC  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 8081E300  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081E304  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8081E308  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 8081E30C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8081E310  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8081E314  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8081E318  38 7D 07 28 */	addi r3, r29, 0x728
/* 8081E31C  38 9D 06 9C */	addi r4, r29, 0x69c
/* 8081E320  38 A0 60 00 */	li r5, 0x6000
/* 8081E324  38 C1 00 48 */	addi r6, r1, 0x48
/* 8081E328  4B A5 2A 99 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8081E32C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8081E330  D0 1D 07 58 */	stfs f0, 0x758(r29)
/* 8081E334  38 00 00 05 */	li r0, 5
/* 8081E338  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081E33C  38 00 00 46 */	li r0, 0x46
/* 8081E340  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 8081E344  38 00 00 AA */	li r0, 0xaa
/* 8081E348  90 1D 07 00 */	stw r0, 0x700(r29)
/* 8081E34C  48 00 01 58 */	b lbl_8081E4A4
lbl_8081E350:
/* 8081E350  3B 85 4E C8 */	addi r28, r5, 0x4ec8
/* 8081E354  7F 83 E3 78 */	mr r3, r28
/* 8081E358  7F A4 EB 78 */	mr r4, r29
/* 8081E35C  3C A0 80 82 */	lis r5, DemoSkipCallBack__9daE_YMB_cFPvi@ha /* 0x8081DDE0@ha */
/* 8081E360  38 A5 DD E0 */	addi r5, r5, DemoSkipCallBack__9daE_YMB_cFPvi@l /* 0x8081DDE0@l */
/* 8081E364  38 C0 00 00 */	li r6, 0
/* 8081E368  4B 82 45 AD */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8081E36C  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 8081E370  2C 00 00 00 */	cmpwi r0, 0
/* 8081E374  41 82 00 94 */	beq lbl_8081E408
/* 8081E378  C0 1D 07 34 */	lfs f0, 0x734(r29)
/* 8081E37C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8081E380  C0 1D 07 38 */	lfs f0, 0x738(r29)
/* 8081E384  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8081E388  C0 1D 07 3C */	lfs f0, 0x73c(r29)
/* 8081E38C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8081E390  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8081E394  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 8081E398  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8081E39C  D0 1D 07 38 */	stfs f0, 0x738(r29)
/* 8081E3A0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8081E3A4  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 8081E3A8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081E3AC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8081E3B0  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 8081E3B4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8081E3B8  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 8081E3BC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8081E3C0  38 7D 07 28 */	addi r3, r29, 0x728
/* 8081E3C4  38 9D 06 9C */	addi r4, r29, 0x69c
/* 8081E3C8  38 A0 60 00 */	li r5, 0x6000
/* 8081E3CC  38 C1 00 48 */	addi r6, r1, 0x48
/* 8081E3D0  4B A5 29 F1 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8081E3D4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8081E3D8  D0 1D 07 58 */	stfs f0, 0x758(r29)
/* 8081E3DC  38 61 00 30 */	addi r3, r1, 0x30
/* 8081E3E0  38 9D 07 34 */	addi r4, r29, 0x734
/* 8081E3E4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8081E3E8  4B A4 87 4D */	bl __mi__4cXyzCFRC3Vec
/* 8081E3EC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8081E3F0  D0 1D 07 40 */	stfs f0, 0x740(r29)
/* 8081E3F4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8081E3F8  D0 1D 07 44 */	stfs f0, 0x744(r29)
/* 8081E3FC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8081E400  D0 1D 07 48 */	stfs f0, 0x748(r29)
/* 8081E404  48 00 00 4C */	b lbl_8081E450
lbl_8081E408:
/* 8081E408  38 00 00 01 */	li r0, 1
/* 8081E40C  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 8081E410  38 7D 07 34 */	addi r3, r29, 0x734
/* 8081E414  38 9D 07 40 */	addi r4, r29, 0x740
/* 8081E418  7C 65 1B 78 */	mr r5, r3
/* 8081E41C  4B B2 8C 75 */	bl PSVECAdd
/* 8081E420  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081E424  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8081E428  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8081E42C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8081E430  38 7D 07 40 */	addi r3, r29, 0x740
/* 8081E434  38 81 00 24 */	addi r4, r1, 0x24
/* 8081E438  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8081E43C  4B A5 23 71 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8081E440  38 7D 07 5C */	addi r3, r29, 0x75c
/* 8081E444  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081E448  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 8081E44C  4B A5 22 F5 */	bl cLib_chaseF__FPfff
lbl_8081E450:
/* 8081E450  80 1D 07 00 */	lwz r0, 0x700(r29)
/* 8081E454  2C 00 00 00 */	cmpwi r0, 0
/* 8081E458  40 82 00 4C */	bne lbl_8081E4A4
/* 8081E45C  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081E460  4B 94 30 4D */	bl Start__9dCamera_cFv
/* 8081E464  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081E468  38 80 00 00 */	li r4, 0
/* 8081E46C  4B 94 4B A1 */	bl SetTrimSize__9dCamera_cFl
/* 8081E470  7F 83 E3 78 */	mr r3, r28
/* 8081E474  4B 82 3F F5 */	bl reset__14dEvt_control_cFv
/* 8081E478  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081E47C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081E480  80 63 00 00 */	lwz r3, 0(r3)
/* 8081E484  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8081E488  38 80 00 01 */	li r4, 1
/* 8081E48C  4B A9 5C D9 */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 8081E490  7F A3 EB 78 */	mr r3, r29
/* 8081E494  38 80 00 0B */	li r4, 0xb
/* 8081E498  38 A0 00 00 */	li r5, 0
/* 8081E49C  4B FF 85 E1 */	bl setActionMode__9daE_YMB_cFii
/* 8081E4A0  48 00 00 FC */	b lbl_8081E59C
lbl_8081E4A4:
/* 8081E4A4  C0 1D 07 34 */	lfs f0, 0x734(r29)
/* 8081E4A8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8081E4AC  C0 1D 07 38 */	lfs f0, 0x738(r29)
/* 8081E4B0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8081E4B4  C0 1D 07 3C */	lfs f0, 0x73c(r29)
/* 8081E4B8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8081E4BC  C0 1D 07 28 */	lfs f0, 0x728(r29)
/* 8081E4C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8081E4C4  C0 1D 07 2C */	lfs f0, 0x72c(r29)
/* 8081E4C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8081E4CC  C0 1D 07 30 */	lfs f0, 0x730(r29)
/* 8081E4D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8081E4D4  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081E4D8  38 81 00 18 */	addi r4, r1, 0x18
/* 8081E4DC  38 A1 00 0C */	addi r5, r1, 0xc
/* 8081E4E0  C0 3D 07 58 */	lfs f1, 0x758(r29)
/* 8081E4E4  38 C0 00 00 */	li r6, 0
/* 8081E4E8  4B 96 25 F9 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 8081E4EC  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 8081E4F0  2C 00 00 00 */	cmpwi r0, 0
/* 8081E4F4  40 82 00 A8 */	bne lbl_8081E59C
/* 8081E4F8  C0 3D 07 5C */	lfs f1, 0x75c(r29)
/* 8081E4FC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8081E500  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081E504  4C 41 13 82 */	cror 2, 1, 2
/* 8081E508  40 82 00 38 */	bne lbl_8081E540
/* 8081E50C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C1@ha */
/* 8081E510  38 03 02 C1 */	addi r0, r3, 0x02C1 /* 0x000702C1@l */
/* 8081E514  90 01 00 08 */	stw r0, 8(r1)
/* 8081E518  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081E51C  38 81 00 08 */	addi r4, r1, 8
/* 8081E520  38 A0 00 00 */	li r5, 0
/* 8081E524  38 C0 FF FF */	li r6, -1
/* 8081E528  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081E52C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081E530  7D 89 03 A6 */	mtctr r12
/* 8081E534  4E 80 04 21 */	bctrl 
/* 8081E538  7F A3 EB 78 */	mr r3, r29
/* 8081E53C  4B FF 93 21 */	bl setWaterEffect2__9daE_YMB_cFv
lbl_8081E540:
/* 8081E540  7F A3 EB 78 */	mr r3, r29
/* 8081E544  4B FF 90 29 */	bl setElecEffect2__9daE_YMB_cFv
/* 8081E548  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8081E54C  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 8081E550  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8081E554  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 8081E558  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8081E55C  D0 1D 06 B0 */	stfs f0, 0x6b0(r29)
/* 8081E560  38 00 FD 00 */	li r0, -768
/* 8081E564  B0 1D 06 E8 */	sth r0, 0x6e8(r29)
/* 8081E568  A8 7D 06 E4 */	lha r3, 0x6e4(r29)
/* 8081E56C  A8 1D 06 E8 */	lha r0, 0x6e8(r29)
/* 8081E570  7C 03 02 14 */	add r0, r3, r0
/* 8081E574  B0 1D 06 E4 */	sth r0, 0x6e4(r29)
/* 8081E578  7F A3 EB 78 */	mr r3, r29
/* 8081E57C  4B FF F8 99 */	bl calcLakeDemoPlayerPos__9daE_YMB_cFv
/* 8081E580  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081E584  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8081E588  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8081E58C  38 7D 06 A8 */	addi r3, r29, 0x6a8
/* 8081E590  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8081E594  4B A5 26 71 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8081E598  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
lbl_8081E59C:
/* 8081E59C  39 61 00 70 */	addi r11, r1, 0x70
/* 8081E5A0  4B B4 3C 85 */	bl _restgpr_28
/* 8081E5A4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8081E5A8  7C 08 03 A6 */	mtlr r0
/* 8081E5AC  38 21 00 70 */	addi r1, r1, 0x70
/* 8081E5B0  4E 80 00 20 */	blr 
