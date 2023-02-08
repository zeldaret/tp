lbl_80462FE0:
/* 80462FE0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80462FE4  7C 08 02 A6 */	mflr r0
/* 80462FE8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80462FEC  39 61 00 70 */	addi r11, r1, 0x70
/* 80462FF0  4B EF F1 E1 */	bl _savegpr_26
/* 80462FF4  7C 7F 1B 78 */	mr r31, r3
/* 80462FF8  3C 60 80 46 */	lis r3, lit_4018@ha /* 0x80466820@ha */
/* 80462FFC  3B C3 68 20 */	addi r30, r3, lit_4018@l /* 0x80466820@l */
/* 80463000  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80463004  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80463008  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 8046300C  3B BC 40 C0 */	addi r29, r28, 0x40c0
/* 80463010  7F A3 EB 78 */	mr r3, r29
/* 80463014  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463018  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 8046301C  38 84 01 59 */	addi r4, r4, 0x159
/* 80463020  38 A0 00 00 */	li r5, 0
/* 80463024  38 C0 00 00 */	li r6, 0
/* 80463028  4B BE 4A F5 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8046302C  90 7F 06 CC */	stw r3, 0x6cc(r31)
/* 80463030  7F E3 FB 78 */	mr r3, r31
/* 80463034  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80463038  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8046303C  7D 89 03 A6 */	mtctr r12
/* 80463040  4E 80 04 21 */	bctrl 
/* 80463044  7C 7B 1B 78 */	mr r27, r3
/* 80463048  7F A3 EB 78 */	mr r3, r29
/* 8046304C  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463050  4B BE 4C FD */	bl getIsAddvance__16dEvent_manager_cFi
/* 80463054  2C 03 00 00 */	cmpwi r3, 0
/* 80463058  41 82 05 00 */	beq lbl_80463558
/* 8046305C  28 1B 00 1C */	cmplwi r27, 0x1c
/* 80463060  41 81 04 F8 */	bgt lbl_80463558
/* 80463064  3C 60 80 46 */	lis r3, lit_5341@ha /* 0x804670B0@ha */
/* 80463068  38 63 70 B0 */	addi r3, r3, lit_5341@l /* 0x804670B0@l */
/* 8046306C  57 60 10 3A */	slwi r0, r27, 2
/* 80463070  7C 03 00 2E */	lwzx r0, r3, r0
/* 80463074  7C 09 03 A6 */	mtctr r0
/* 80463078  4E 80 04 20 */	bctr 
lbl_8046307C:
/* 8046307C  7F A3 EB 78 */	mr r3, r29
/* 80463080  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463084  3C A0 80 46 */	lis r5, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463088  38 A5 68 D8 */	addi r5, r5, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 8046308C  38 A5 01 66 */	addi r5, r5, 0x166
/* 80463090  38 C0 00 03 */	li r6, 3
/* 80463094  4B BE 50 59 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80463098  28 03 00 00 */	cmplwi r3, 0
/* 8046309C  40 82 00 10 */	bne lbl_804630AC
/* 804630A0  38 00 00 01 */	li r0, 1
/* 804630A4  98 1F 05 DD */	stb r0, 0x5dd(r31)
/* 804630A8  48 00 04 B0 */	b lbl_80463558
lbl_804630AC:
/* 804630AC  80 03 00 00 */	lwz r0, 0(r3)
/* 804630B0  98 1F 05 DD */	stb r0, 0x5dd(r31)
/* 804630B4  48 00 04 A4 */	b lbl_80463558
lbl_804630B8:
/* 804630B8  7F E3 FB 78 */	mr r3, r31
/* 804630BC  38 80 00 00 */	li r4, 0
/* 804630C0  4B FF EE 05 */	bl openInit__10daDoor20_cFi
/* 804630C4  48 00 04 94 */	b lbl_80463558
lbl_804630C8:
/* 804630C8  7F E3 FB 78 */	mr r3, r31
/* 804630CC  38 80 00 00 */	li r4, 0
/* 804630D0  4B FF F6 69 */	bl closeInit__10daDoor20_cFi
/* 804630D4  48 00 04 84 */	b lbl_80463558
lbl_804630D8:
/* 804630D8  7F E3 FB 78 */	mr r3, r31
/* 804630DC  48 00 28 85 */	bl setGoal__10daDoor20_cFv
/* 804630E0  48 00 04 78 */	b lbl_80463558
lbl_804630E4:
/* 804630E4  88 1F 06 73 */	lbz r0, 0x673(r31)
/* 804630E8  28 00 00 01 */	cmplwi r0, 1
/* 804630EC  40 82 00 30 */	bne lbl_8046311C
/* 804630F0  80 1F 05 EC */	lwz r0, 0x5ec(r31)
/* 804630F4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804630F8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 804630FC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80463100  38 81 00 4C */	addi r4, r1, 0x4c
/* 80463104  4B BB 66 F5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80463108  28 03 00 00 */	cmplwi r3, 0
/* 8046310C  41 82 00 38 */	beq lbl_80463144
/* 80463110  38 00 00 02 */	li r0, 2
/* 80463114  98 03 09 45 */	stb r0, 0x945(r3)
/* 80463118  48 00 00 2C */	b lbl_80463144
lbl_8046311C:
/* 8046311C  80 1F 05 EC */	lwz r0, 0x5ec(r31)
/* 80463120  90 01 00 48 */	stw r0, 0x48(r1)
/* 80463124  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80463128  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8046312C  38 81 00 48 */	addi r4, r1, 0x48
/* 80463130  4B BB 66 C9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80463134  28 03 00 00 */	cmplwi r3, 0
/* 80463138  41 82 00 0C */	beq lbl_80463144
/* 8046313C  38 00 00 01 */	li r0, 1
/* 80463140  98 03 2C A4 */	stb r0, 0x2ca4(r3)
lbl_80463144:
/* 80463144  7F E3 FB 78 */	mr r3, r31
/* 80463148  4B BD 70 89 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 8046314C  54 7A 06 3E */	clrlwi r26, r3, 0x18
/* 80463150  2C 1A 00 FF */	cmpwi r26, 0xff
/* 80463154  41 82 04 04 */	beq lbl_80463558
/* 80463158  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046315C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80463160  7F 44 D3 78 */	mr r4, r26
/* 80463164  38 A0 FF FF */	li r5, -1
/* 80463168  4B BD 21 F9 */	bl isSwitch__10dSv_info_cCFii
/* 8046316C  2C 03 00 00 */	cmpwi r3, 0
/* 80463170  40 82 03 E8 */	bne lbl_80463558
/* 80463174  7F E3 FB 78 */	mr r3, r31
/* 80463178  4B BD 70 29 */	bl getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 8046317C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80463180  28 00 00 02 */	cmplwi r0, 2
/* 80463184  41 82 00 18 */	beq lbl_8046319C
/* 80463188  7F E3 FB 78 */	mr r3, r31
/* 8046318C  4B BD 70 21 */	bl getBackOption__13door_param2_cFP10fopAc_ac_c
/* 80463190  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80463194  28 00 00 02 */	cmplwi r0, 2
/* 80463198  40 82 03 C0 */	bne lbl_80463558
lbl_8046319C:
/* 8046319C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804631A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804631A4  7F 44 D3 78 */	mr r4, r26
/* 804631A8  38 A0 FF FF */	li r5, -1
/* 804631AC  4B BD 20 55 */	bl onSwitch__10dSv_info_cFii
/* 804631B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804631B4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804631B8  A8 64 5D C8 */	lha r3, 0x5dc8(r4)
/* 804631BC  38 03 FF FF */	addi r0, r3, -1
/* 804631C0  B0 04 5D C8 */	sth r0, 0x5dc8(r4)
/* 804631C4  88 1F 06 73 */	lbz r0, 0x673(r31)
/* 804631C8  28 00 00 01 */	cmplwi r0, 1
/* 804631CC  40 82 00 54 */	bne lbl_80463220
/* 804631D0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804631D4  7C 03 07 74 */	extsb r3, r0
/* 804631D8  4B BC 9E 95 */	bl dComIfGp_getReverb__Fi
/* 804631DC  7C 67 1B 78 */	mr r7, r3
/* 804631E0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801E0@ha */
/* 804631E4  38 03 01 E0 */	addi r0, r3, 0x01E0 /* 0x000801E0@l */
/* 804631E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804631EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804631F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804631F4  80 63 00 00 */	lwz r3, 0(r3)
/* 804631F8  38 81 00 14 */	addi r4, r1, 0x14
/* 804631FC  38 BF 05 38 */	addi r5, r31, 0x538
/* 80463200  38 C0 00 00 */	li r6, 0
/* 80463204  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80463208  FC 40 08 90 */	fmr f2, f1
/* 8046320C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80463210  FC 80 18 90 */	fmr f4, f3
/* 80463214  39 00 00 00 */	li r8, 0
/* 80463218  4B E4 87 6D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8046321C  48 00 03 3C */	b lbl_80463558
lbl_80463220:
/* 80463220  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80463224  7C 03 07 74 */	extsb r3, r0
/* 80463228  4B BC 9E 45 */	bl dComIfGp_getReverb__Fi
/* 8046322C  7C 67 1B 78 */	mr r7, r3
/* 80463230  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B6@ha */
/* 80463234  38 03 00 B6 */	addi r0, r3, 0x00B6 /* 0x000800B6@l */
/* 80463238  90 01 00 10 */	stw r0, 0x10(r1)
/* 8046323C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80463240  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80463244  80 63 00 00 */	lwz r3, 0(r3)
/* 80463248  38 81 00 10 */	addi r4, r1, 0x10
/* 8046324C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80463250  38 C0 00 00 */	li r6, 0
/* 80463254  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80463258  FC 40 08 90 */	fmr f2, f1
/* 8046325C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80463260  FC 80 18 90 */	fmr f4, f3
/* 80463264  39 00 00 00 */	li r8, 0
/* 80463268  4B E4 87 1D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8046326C  48 00 02 EC */	b lbl_80463558
lbl_80463270:
/* 80463270  7F E3 FB 78 */	mr r3, r31
/* 80463274  48 00 2C 19 */	bl setStop__10daDoor20_cFv
/* 80463278  88 1F 06 D8 */	lbz r0, 0x6d8(r31)
/* 8046327C  28 00 00 00 */	cmplwi r0, 0
/* 80463280  41 82 02 D8 */	beq lbl_80463558
/* 80463284  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 80463288  7F E4 FB 78 */	mr r4, r31
/* 8046328C  48 00 2F 25 */	bl closeInit__12dDoor_stop_cFP10daDoor20_c
/* 80463290  48 00 02 C8 */	b lbl_80463558
lbl_80463294:
/* 80463294  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 80463298  7F E4 FB 78 */	mr r4, r31
/* 8046329C  48 00 30 B1 */	bl openInit__12dDoor_stop_cFP10daDoor20_c
/* 804632A0  48 00 02 B8 */	b lbl_80463558
lbl_804632A4:
/* 804632A4  38 00 00 05 */	li r0, 5
/* 804632A8  B0 1F 06 DC */	sth r0, 0x6dc(r31)
/* 804632AC  48 00 02 AC */	b lbl_80463558
lbl_804632B0:
/* 804632B0  38 00 00 05 */	li r0, 5
/* 804632B4  B0 1F 06 DC */	sth r0, 0x6dc(r31)
/* 804632B8  7F E3 FB 78 */	mr r3, r31
/* 804632BC  4B FF E7 89 */	bl setAngle__10daDoor20_cFv
/* 804632C0  48 00 02 98 */	b lbl_80463558
lbl_804632C4:
/* 804632C4  7F E3 FB 78 */	mr r3, r31
/* 804632C8  4B FF D8 CD */	bl getAlwaysArcName__10daDoor20_cFv
/* 804632CC  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 804632D0  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 804632D4  38 84 01 6C */	addi r4, r4, 0x16c
/* 804632D8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804632DC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804632E0  3C A5 00 02 */	addis r5, r5, 2
/* 804632E4  38 C0 00 80 */	li r6, 0x80
/* 804632E8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804632EC  4B BD 90 91 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804632F0  7C 7A 1B 78 */	mr r26, r3
/* 804632F4  38 7F 05 84 */	addi r3, r31, 0x584
/* 804632F8  7F 44 D3 78 */	mr r4, r26
/* 804632FC  38 A0 00 01 */	li r5, 1
/* 80463300  38 C0 00 00 */	li r6, 0
/* 80463304  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80463308  38 E0 00 00 */	li r7, 0
/* 8046330C  39 00 FF FF */	li r8, -1
/* 80463310  39 20 00 01 */	li r9, 1
/* 80463314  4B BA A4 C9 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80463318  2C 03 00 00 */	cmpwi r3, 0
/* 8046331C  41 82 00 28 */	beq lbl_80463344
/* 80463320  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80463324  7F 44 D3 78 */	mr r4, r26
/* 80463328  38 A0 00 01 */	li r5, 1
/* 8046332C  38 C0 00 00 */	li r6, 0
/* 80463330  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80463334  38 E0 00 00 */	li r7, 0
/* 80463338  39 00 FF FF */	li r8, -1
/* 8046333C  39 20 00 01 */	li r9, 1
/* 80463340  4B BA A4 9D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
lbl_80463344:
/* 80463344  38 00 00 00 */	li r0, 0
/* 80463348  98 1F 06 7C */	stb r0, 0x67c(r31)
/* 8046334C  7F E3 FB 78 */	mr r3, r31
/* 80463350  4B FF F5 D9 */	bl openInit2__10daDoor20_cFv
/* 80463354  48 00 02 04 */	b lbl_80463558
lbl_80463358:
/* 80463358  7F E3 FB 78 */	mr r3, r31
/* 8046335C  4B FF D8 39 */	bl getAlwaysArcName__10daDoor20_cFv
/* 80463360  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463364  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463368  38 84 00 A7 */	addi r4, r4, 0xa7
/* 8046336C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80463370  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80463374  3C A5 00 02 */	addis r5, r5, 2
/* 80463378  38 C0 00 80 */	li r6, 0x80
/* 8046337C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80463380  4B BD 8F FD */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80463384  7C 7A 1B 78 */	mr r26, r3
/* 80463388  38 7F 05 84 */	addi r3, r31, 0x584
/* 8046338C  7F 44 D3 78 */	mr r4, r26
/* 80463390  38 A0 00 01 */	li r5, 1
/* 80463394  38 C0 00 00 */	li r6, 0
/* 80463398  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8046339C  38 E0 00 00 */	li r7, 0
/* 804633A0  39 00 FF FF */	li r8, -1
/* 804633A4  39 20 00 01 */	li r9, 1
/* 804633A8  4B BA A4 35 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804633AC  2C 03 00 00 */	cmpwi r3, 0
/* 804633B0  41 82 00 28 */	beq lbl_804633D8
/* 804633B4  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 804633B8  7F 44 D3 78 */	mr r4, r26
/* 804633BC  38 A0 00 01 */	li r5, 1
/* 804633C0  38 C0 00 00 */	li r6, 0
/* 804633C4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804633C8  38 E0 00 00 */	li r7, 0
/* 804633CC  39 00 FF FF */	li r8, -1
/* 804633D0  39 20 00 01 */	li r9, 1
/* 804633D4  4B BA A4 09 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
lbl_804633D8:
/* 804633D8  38 00 00 00 */	li r0, 0
/* 804633DC  98 1F 06 7C */	stb r0, 0x67c(r31)
/* 804633E0  7F E3 FB 78 */	mr r3, r31
/* 804633E4  4B FF F5 45 */	bl openInit2__10daDoor20_cFv
/* 804633E8  48 00 01 70 */	b lbl_80463558
lbl_804633EC:
/* 804633EC  7F E3 FB 78 */	mr r3, r31
/* 804633F0  4B BD 6E 05 */	bl isMsgDoor__13door_param2_cFP10fopAc_ac_c
/* 804633F4  2C 03 00 00 */	cmpwi r3, 0
/* 804633F8  41 82 01 60 */	beq lbl_80463558
/* 804633FC  7F E3 FB 78 */	mr r3, r31
/* 80463400  4B BD 6E 19 */	bl getMsgNo__13door_param2_cFP10fopAc_ac_c
/* 80463404  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 80463408  3C 05 00 00 */	addis r0, r5, 0
/* 8046340C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80463410  41 82 01 48 */	beq lbl_80463558
/* 80463414  38 7F 06 24 */	addi r3, r31, 0x624
/* 80463418  7F E4 FB 78 */	mr r4, r31
/* 8046341C  38 C0 00 00 */	li r6, 0
/* 80463420  38 E0 00 00 */	li r7, 0
/* 80463424  4B DE 6B 6D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80463428  48 00 01 30 */	b lbl_80463558
lbl_8046342C:
/* 8046342C  88 1F 06 73 */	lbz r0, 0x673(r31)
/* 80463430  28 00 00 01 */	cmplwi r0, 1
/* 80463434  40 82 01 24 */	bne lbl_80463558
/* 80463438  80 1F 05 EC */	lwz r0, 0x5ec(r31)
/* 8046343C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80463440  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80463444  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80463448  38 81 00 44 */	addi r4, r1, 0x44
/* 8046344C  4B BB 63 AD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80463450  28 03 00 00 */	cmplwi r3, 0
/* 80463454  41 82 01 04 */	beq lbl_80463558
/* 80463458  38 00 00 01 */	li r0, 1
/* 8046345C  98 03 09 45 */	stb r0, 0x945(r3)
/* 80463460  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080023@ha */
/* 80463464  38 03 00 23 */	addi r0, r3, 0x0023 /* 0x00080023@l */
/* 80463468  90 01 00 40 */	stw r0, 0x40(r1)
/* 8046346C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80463470  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80463474  80 63 00 00 */	lwz r3, 0(r3)
/* 80463478  38 81 00 40 */	addi r4, r1, 0x40
/* 8046347C  38 BF 05 E0 */	addi r5, r31, 0x5e0
/* 80463480  38 C0 00 00 */	li r6, 0
/* 80463484  38 E0 00 00 */	li r7, 0
/* 80463488  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8046348C  FC 40 08 90 */	fmr f2, f1
/* 80463490  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80463494  FC 80 18 90 */	fmr f4, f3
/* 80463498  39 00 00 00 */	li r8, 0
/* 8046349C  4B E4 84 E9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804634A0  48 00 00 B8 */	b lbl_80463558
lbl_804634A4:
/* 804634A4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804634A8  7C 03 07 74 */	extsb r3, r0
/* 804634AC  4B BC 9B C1 */	bl dComIfGp_getReverb__Fi
/* 804634B0  7C 67 1B 78 */	mr r7, r3
/* 804634B4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021B@ha */
/* 804634B8  38 03 02 1B */	addi r0, r3, 0x021B /* 0x0008021B@l */
/* 804634BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804634C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804634C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804634C8  80 63 00 00 */	lwz r3, 0(r3)
/* 804634CC  38 81 00 0C */	addi r4, r1, 0xc
/* 804634D0  38 BF 05 38 */	addi r5, r31, 0x538
/* 804634D4  38 C0 00 00 */	li r6, 0
/* 804634D8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804634DC  FC 40 08 90 */	fmr f2, f1
/* 804634E0  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 804634E4  FC 80 18 90 */	fmr f4, f3
/* 804634E8  39 00 00 00 */	li r8, 0
/* 804634EC  4B E4 84 99 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804634F0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804634F4  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 804634F8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804634FC  48 00 00 5C */	b lbl_80463558
lbl_80463500:
/* 80463500  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80463504  7C 03 07 74 */	extsb r3, r0
/* 80463508  4B BC 9B 65 */	bl dComIfGp_getReverb__Fi
/* 8046350C  7C 67 1B 78 */	mr r7, r3
/* 80463510  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021C@ha */
/* 80463514  38 03 02 1C */	addi r0, r3, 0x021C /* 0x0008021C@l */
/* 80463518  90 01 00 08 */	stw r0, 8(r1)
/* 8046351C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80463520  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80463524  80 63 00 00 */	lwz r3, 0(r3)
/* 80463528  38 81 00 08 */	addi r4, r1, 8
/* 8046352C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80463530  38 C0 00 00 */	li r6, 0
/* 80463534  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80463538  FC 40 08 90 */	fmr f2, f1
/* 8046353C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80463540  FC 80 18 90 */	fmr f4, f3
/* 80463544  39 00 00 00 */	li r8, 0
/* 80463548  4B E4 84 3D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8046354C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80463550  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80463554  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_80463558:
/* 80463558  28 1B 00 1C */	cmplwi r27, 0x1c
/* 8046355C  41 81 08 AC */	bgt lbl_80463E08
/* 80463560  3C 60 80 46 */	lis r3, lit_5342@ha /* 0x8046703C@ha */
/* 80463564  38 63 70 3C */	addi r3, r3, lit_5342@l /* 0x8046703C@l */
/* 80463568  57 60 10 3A */	slwi r0, r27, 2
/* 8046356C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80463570  7C 09 03 A6 */	mtctr r0
/* 80463574  4E 80 04 20 */	bctr 
lbl_80463578:
/* 80463578  38 7F 05 DD */	addi r3, r31, 0x5dd
/* 8046357C  48 00 32 71 */	bl func_804667EC
/* 80463580  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80463584  40 82 08 90 */	bne lbl_80463E14
/* 80463588  7F A3 EB 78 */	mr r3, r29
/* 8046358C  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463590  4B BE 4B ED */	bl cutEnd__16dEvent_manager_cFi
/* 80463594  48 00 08 80 */	b lbl_80463E14
lbl_80463598:
/* 80463598  A0 1F 06 8E */	lhz r0, 0x68e(r31)
/* 8046359C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804635A0  41 82 00 34 */	beq lbl_804635D4
/* 804635A4  7F E3 FB 78 */	mr r3, r31
/* 804635A8  38 80 00 00 */	li r4, 0
/* 804635AC  4B FF E9 B5 */	bl openProc__10daDoor20_cFi
/* 804635B0  2C 03 00 00 */	cmpwi r3, 0
/* 804635B4  41 82 08 60 */	beq lbl_80463E14
/* 804635B8  7F E3 FB 78 */	mr r3, r31
/* 804635BC  38 80 00 00 */	li r4, 0
/* 804635C0  4B FF ED 69 */	bl openEnd__10daDoor20_cFi
/* 804635C4  7F A3 EB 78 */	mr r3, r29
/* 804635C8  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 804635CC  4B BE 4B B1 */	bl cutEnd__16dEvent_manager_cFi
/* 804635D0  48 00 08 44 */	b lbl_80463E14
lbl_804635D4:
/* 804635D4  7F A3 EB 78 */	mr r3, r29
/* 804635D8  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 804635DC  4B BE 4B A1 */	bl cutEnd__16dEvent_manager_cFi
/* 804635E0  48 00 08 34 */	b lbl_80463E14
lbl_804635E4:
/* 804635E4  A0 1F 06 8E */	lhz r0, 0x68e(r31)
/* 804635E8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804635EC  41 82 00 34 */	beq lbl_80463620
/* 804635F0  7F E3 FB 78 */	mr r3, r31
/* 804635F4  38 80 00 00 */	li r4, 0
/* 804635F8  4B FF F1 CD */	bl closeProc__10daDoor20_cFi
/* 804635FC  2C 03 00 00 */	cmpwi r3, 0
/* 80463600  41 82 08 14 */	beq lbl_80463E14
/* 80463604  7F E3 FB 78 */	mr r3, r31
/* 80463608  38 80 00 00 */	li r4, 0
/* 8046360C  4B FF F2 5D */	bl closeEnd__10daDoor20_cFi
/* 80463610  7F A3 EB 78 */	mr r3, r29
/* 80463614  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463618  4B BE 4B 65 */	bl cutEnd__16dEvent_manager_cFi
/* 8046361C  48 00 07 F8 */	b lbl_80463E14
lbl_80463620:
/* 80463620  7F A3 EB 78 */	mr r3, r29
/* 80463624  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463628  4B BE 4B 55 */	bl cutEnd__16dEvent_manager_cFi
/* 8046362C  48 00 07 E8 */	b lbl_80463E14
lbl_80463630:
/* 80463630  88 1F 06 73 */	lbz r0, 0x673(r31)
/* 80463634  28 00 00 01 */	cmplwi r0, 1
/* 80463638  40 82 00 54 */	bne lbl_8046368C
/* 8046363C  80 1F 05 EC */	lwz r0, 0x5ec(r31)
/* 80463640  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80463644  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80463648  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8046364C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80463650  4B BB 61 A9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80463654  28 03 00 00 */	cmplwi r3, 0
/* 80463658  41 82 00 10 */	beq lbl_80463668
/* 8046365C  88 03 09 45 */	lbz r0, 0x945(r3)
/* 80463660  2C 00 00 03 */	cmpwi r0, 3
/* 80463664  41 82 00 10 */	beq lbl_80463674
lbl_80463668:
/* 80463668  88 1F 05 F0 */	lbz r0, 0x5f0(r31)
/* 8046366C  28 00 00 00 */	cmplwi r0, 0
/* 80463670  40 82 07 A4 */	bne lbl_80463E14
lbl_80463674:
/* 80463674  38 00 00 00 */	li r0, 0
/* 80463678  98 1F 05 F0 */	stb r0, 0x5f0(r31)
/* 8046367C  7F A3 EB 78 */	mr r3, r29
/* 80463680  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463684  4B BE 4A F9 */	bl cutEnd__16dEvent_manager_cFi
/* 80463688  48 00 07 8C */	b lbl_80463E14
lbl_8046368C:
/* 8046368C  28 00 00 00 */	cmplwi r0, 0
/* 80463690  40 82 07 84 */	bne lbl_80463E14
/* 80463694  80 1F 05 EC */	lwz r0, 0x5ec(r31)
/* 80463698  90 01 00 38 */	stw r0, 0x38(r1)
/* 8046369C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 804636A0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 804636A4  38 81 00 38 */	addi r4, r1, 0x38
/* 804636A8  4B BB 61 51 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 804636AC  28 03 00 00 */	cmplwi r3, 0
/* 804636B0  41 82 00 10 */	beq lbl_804636C0
/* 804636B4  88 03 2C A4 */	lbz r0, 0x2ca4(r3)
/* 804636B8  28 00 00 03 */	cmplwi r0, 3
/* 804636BC  41 82 00 10 */	beq lbl_804636CC
lbl_804636C0:
/* 804636C0  88 1F 05 F0 */	lbz r0, 0x5f0(r31)
/* 804636C4  28 00 00 00 */	cmplwi r0, 0
/* 804636C8  40 82 07 4C */	bne lbl_80463E14
lbl_804636CC:
/* 804636CC  38 00 00 00 */	li r0, 0
/* 804636D0  98 1F 05 F0 */	stb r0, 0x5f0(r31)
/* 804636D4  7F A3 EB 78 */	mr r3, r29
/* 804636D8  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 804636DC  4B BE 4A A1 */	bl cutEnd__16dEvent_manager_cFi
/* 804636E0  48 00 07 34 */	b lbl_80463E14
lbl_804636E4:
/* 804636E4  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 804636E8  7F E4 FB 78 */	mr r4, r31
/* 804636EC  48 00 2B D5 */	bl closeProc__12dDoor_stop_cFP10daDoor20_c
/* 804636F0  2C 03 00 00 */	cmpwi r3, 0
/* 804636F4  41 82 00 10 */	beq lbl_80463704
/* 804636F8  7F A3 EB 78 */	mr r3, r29
/* 804636FC  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463700  4B BE 4A 7D */	bl cutEnd__16dEvent_manager_cFi
lbl_80463704:
/* 80463704  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 80463708  7F E4 FB 78 */	mr r4, r31
/* 8046370C  48 00 29 E9 */	bl calcMtx__12dDoor_stop_cFP10daDoor20_c
/* 80463710  48 00 07 04 */	b lbl_80463E14
lbl_80463714:
/* 80463714  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 80463718  7F E4 FB 78 */	mr r4, r31
/* 8046371C  48 00 2D 3D */	bl openProc__12dDoor_stop_cFP10daDoor20_c
/* 80463720  2C 03 00 00 */	cmpwi r3, 0
/* 80463724  41 82 00 10 */	beq lbl_80463734
/* 80463728  7F A3 EB 78 */	mr r3, r29
/* 8046372C  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463730  4B BE 4A 4D */	bl cutEnd__16dEvent_manager_cFi
lbl_80463734:
/* 80463734  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 80463738  7F E4 FB 78 */	mr r4, r31
/* 8046373C  48 00 29 B9 */	bl calcMtx__12dDoor_stop_cFP10daDoor20_c
/* 80463740  48 00 06 D4 */	b lbl_80463E14
lbl_80463744:
/* 80463744  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80463748  4B C1 82 79 */	bl Move__4dBgWFv
/* 8046374C  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80463750  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 80463754  98 1F 05 C8 */	stb r0, 0x5c8(r31)
/* 80463758  7F A3 EB 78 */	mr r3, r29
/* 8046375C  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463760  4B BE 4A 1D */	bl cutEnd__16dEvent_manager_cFi
/* 80463764  48 00 06 B0 */	b lbl_80463E14
lbl_80463768:
/* 80463768  7F E3 FB 78 */	mr r3, r31
/* 8046376C  4B FF E0 21 */	bl adjustmentAngle__10daDoor20_cFv
/* 80463770  2C 03 00 00 */	cmpwi r3, 0
/* 80463774  41 82 06 A0 */	beq lbl_80463E14
/* 80463778  7F A3 EB 78 */	mr r3, r29
/* 8046377C  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463780  4B BE 49 FD */	bl cutEnd__16dEvent_manager_cFi
/* 80463784  48 00 06 90 */	b lbl_80463E14
lbl_80463788:
/* 80463788  7F E3 FB 78 */	mr r3, r31
/* 8046378C  4B FF E0 E9 */	bl adjustmentProc__10daDoor20_cFv
/* 80463790  2C 03 00 00 */	cmpwi r3, 0
/* 80463794  41 82 06 80 */	beq lbl_80463E14
/* 80463798  7F A3 EB 78 */	mr r3, r29
/* 8046379C  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 804637A0  4B BE 49 DD */	bl cutEnd__16dEvent_manager_cFi
/* 804637A4  48 00 06 70 */	b lbl_80463E14
lbl_804637A8:
/* 804637A8  88 1F 05 F1 */	lbz r0, 0x5f1(r31)
/* 804637AC  28 00 00 00 */	cmplwi r0, 0
/* 804637B0  40 82 00 18 */	bne lbl_804637C8
/* 804637B4  38 7F 05 84 */	addi r3, r31, 0x584
/* 804637B8  4B BA 9C 71 */	bl play__14mDoExt_baseAnmFv
/* 804637BC  7C 7B 1B 78 */	mr r27, r3
/* 804637C0  C0 3F 05 94 */	lfs f1, 0x594(r31)
/* 804637C4  48 00 00 14 */	b lbl_804637D8
lbl_804637C8:
/* 804637C8  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 804637CC  4B BA 9C 5D */	bl play__14mDoExt_baseAnmFv
/* 804637D0  7C 7B 1B 78 */	mr r27, r3
/* 804637D4  C0 3F 05 B0 */	lfs f1, 0x5b0(r31)
lbl_804637D8:
/* 804637D8  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 804637DC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804637E0  40 82 01 00 */	bne lbl_804638E0
/* 804637E4  3B 5C 3E C8 */	addi r26, r28, 0x3ec8
/* 804637E8  7F 43 D3 78 */	mr r3, r26
/* 804637EC  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 804637F0  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 804637F4  38 84 01 77 */	addi r4, r4, 0x177
/* 804637F8  4B F0 51 9D */	bl strcmp
/* 804637FC  2C 03 00 00 */	cmpwi r3, 0
/* 80463800  40 82 00 48 */	bne lbl_80463848
/* 80463804  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008018B@ha */
/* 80463808  38 03 01 8B */	addi r0, r3, 0x018B /* 0x0008018B@l */
/* 8046380C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80463810  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80463814  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80463818  80 63 00 00 */	lwz r3, 0(r3)
/* 8046381C  38 81 00 34 */	addi r4, r1, 0x34
/* 80463820  38 BF 05 E0 */	addi r5, r31, 0x5e0
/* 80463824  38 C0 00 00 */	li r6, 0
/* 80463828  38 E0 00 00 */	li r7, 0
/* 8046382C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80463830  FC 40 08 90 */	fmr f2, f1
/* 80463834  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80463838  FC 80 18 90 */	fmr f4, f3
/* 8046383C  39 00 00 00 */	li r8, 0
/* 80463840  4B E4 81 45 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80463844  48 00 01 A0 */	b lbl_804639E4
lbl_80463848:
/* 80463848  7F 43 D3 78 */	mr r3, r26
/* 8046384C  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463850  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463854  38 84 01 7E */	addi r4, r4, 0x17e
/* 80463858  4B F0 51 3D */	bl strcmp
/* 8046385C  2C 03 00 00 */	cmpwi r3, 0
/* 80463860  41 82 00 3C */	beq lbl_8046389C
/* 80463864  7F 43 D3 78 */	mr r3, r26
/* 80463868  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 8046386C  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463870  38 84 01 85 */	addi r4, r4, 0x185
/* 80463874  4B F0 51 21 */	bl strcmp
/* 80463878  2C 03 00 00 */	cmpwi r3, 0
/* 8046387C  41 82 00 20 */	beq lbl_8046389C
/* 80463880  7F 43 D3 78 */	mr r3, r26
/* 80463884  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463888  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 8046388C  38 84 01 52 */	addi r4, r4, 0x152
/* 80463890  4B F0 51 05 */	bl strcmp
/* 80463894  2C 03 00 00 */	cmpwi r3, 0
/* 80463898  40 82 01 4C */	bne lbl_804639E4
lbl_8046389C:
/* 8046389C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801FF@ha */
/* 804638A0  38 03 01 FF */	addi r0, r3, 0x01FF /* 0x000801FF@l */
/* 804638A4  90 01 00 30 */	stw r0, 0x30(r1)
/* 804638A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804638AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804638B0  80 63 00 00 */	lwz r3, 0(r3)
/* 804638B4  38 81 00 30 */	addi r4, r1, 0x30
/* 804638B8  38 BF 05 E0 */	addi r5, r31, 0x5e0
/* 804638BC  38 C0 00 00 */	li r6, 0
/* 804638C0  38 E0 00 00 */	li r7, 0
/* 804638C4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804638C8  FC 40 08 90 */	fmr f2, f1
/* 804638CC  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 804638D0  FC 80 18 90 */	fmr f4, f3
/* 804638D4  39 00 00 00 */	li r8, 0
/* 804638D8  4B E4 80 AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804638DC  48 00 01 08 */	b lbl_804639E4
lbl_804638E0:
/* 804638E0  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 804638E4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804638E8  40 82 00 FC */	bne lbl_804639E4
/* 804638EC  3B 5C 3E C8 */	addi r26, r28, 0x3ec8
/* 804638F0  7F 43 D3 78 */	mr r3, r26
/* 804638F4  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 804638F8  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 804638FC  38 84 01 7E */	addi r4, r4, 0x17e
/* 80463900  4B F0 50 95 */	bl strcmp
/* 80463904  2C 03 00 00 */	cmpwi r3, 0
/* 80463908  41 82 00 3C */	beq lbl_80463944
/* 8046390C  7F 43 D3 78 */	mr r3, r26
/* 80463910  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463914  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463918  38 84 01 85 */	addi r4, r4, 0x185
/* 8046391C  4B F0 50 79 */	bl strcmp
/* 80463920  2C 03 00 00 */	cmpwi r3, 0
/* 80463924  41 82 00 20 */	beq lbl_80463944
/* 80463928  7F 43 D3 78 */	mr r3, r26
/* 8046392C  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463930  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463934  38 84 01 52 */	addi r4, r4, 0x152
/* 80463938  4B F0 50 5D */	bl strcmp
/* 8046393C  2C 03 00 00 */	cmpwi r3, 0
/* 80463940  40 82 00 48 */	bne lbl_80463988
lbl_80463944:
/* 80463944  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080200@ha */
/* 80463948  38 03 02 00 */	addi r0, r3, 0x0200 /* 0x00080200@l */
/* 8046394C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80463950  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80463954  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80463958  80 63 00 00 */	lwz r3, 0(r3)
/* 8046395C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80463960  38 A0 00 00 */	li r5, 0
/* 80463964  38 C0 00 00 */	li r6, 0
/* 80463968  38 E0 00 00 */	li r7, 0
/* 8046396C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80463970  FC 40 08 90 */	fmr f2, f1
/* 80463974  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80463978  FC 80 18 90 */	fmr f4, f3
/* 8046397C  39 00 00 00 */	li r8, 0
/* 80463980  4B E4 80 05 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80463984  48 00 00 60 */	b lbl_804639E4
lbl_80463988:
/* 80463988  7F 43 D3 78 */	mr r3, r26
/* 8046398C  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463990  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463994  38 84 01 77 */	addi r4, r4, 0x177
/* 80463998  4B F0 4F FD */	bl strcmp
/* 8046399C  2C 03 00 00 */	cmpwi r3, 0
/* 804639A0  40 82 00 44 */	bne lbl_804639E4
/* 804639A4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008018C@ha */
/* 804639A8  38 03 01 8C */	addi r0, r3, 0x018C /* 0x0008018C@l */
/* 804639AC  90 01 00 28 */	stw r0, 0x28(r1)
/* 804639B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804639B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804639B8  80 63 00 00 */	lwz r3, 0(r3)
/* 804639BC  38 81 00 28 */	addi r4, r1, 0x28
/* 804639C0  38 BF 05 E0 */	addi r5, r31, 0x5e0
/* 804639C4  38 C0 00 00 */	li r6, 0
/* 804639C8  38 E0 00 00 */	li r7, 0
/* 804639CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804639D0  FC 40 08 90 */	fmr f2, f1
/* 804639D4  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 804639D8  FC 80 18 90 */	fmr f4, f3
/* 804639DC  39 00 00 00 */	li r8, 0
/* 804639E0  4B E4 7F A5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804639E4:
/* 804639E4  7F A3 EB 78 */	mr r3, r29
/* 804639E8  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 804639EC  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 804639F0  38 84 01 8D */	addi r4, r4, 0x18d
/* 804639F4  38 A0 00 00 */	li r5, 0
/* 804639F8  38 C0 00 00 */	li r6, 0
/* 804639FC  4B BE 41 21 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80463A00  90 7F 06 78 */	stw r3, 0x678(r31)
/* 80463A04  88 1F 06 7C */	lbz r0, 0x67c(r31)
/* 80463A08  28 00 00 00 */	cmplwi r0, 0
/* 80463A0C  40 82 00 18 */	bne lbl_80463A24
/* 80463A10  7F A3 EB 78 */	mr r3, r29
/* 80463A14  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 80463A18  4B BE 43 35 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80463A1C  2C 03 00 00 */	cmpwi r3, 0
/* 80463A20  41 82 00 18 */	beq lbl_80463A38
lbl_80463A24:
/* 80463A24  88 1F 06 7F */	lbz r0, 0x67f(r31)
/* 80463A28  98 1F 06 74 */	stb r0, 0x674(r31)
/* 80463A2C  38 00 00 01 */	li r0, 1
/* 80463A30  98 1F 06 7C */	stb r0, 0x67c(r31)
/* 80463A34  48 00 00 0C */	b lbl_80463A40
lbl_80463A38:
/* 80463A38  88 1F 06 7E */	lbz r0, 0x67e(r31)
/* 80463A3C  98 1F 06 74 */	stb r0, 0x674(r31)
lbl_80463A40:
/* 80463A40  2C 1B 00 00 */	cmpwi r27, 0
/* 80463A44  41 82 03 D0 */	beq lbl_80463E14
/* 80463A48  7F E3 FB 78 */	mr r3, r31
/* 80463A4C  4B FF EF D1 */	bl closeEnd2__10daDoor20_cFv
/* 80463A50  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80463A54  4B E0 47 81 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80463A58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80463A5C  40 82 00 14 */	bne lbl_80463A70
/* 80463A60  7F 83 E3 78 */	mr r3, r28
/* 80463A64  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 80463A68  7F E5 FB 78 */	mr r5, r31
/* 80463A6C  4B C1 0F 9D */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80463A70:
/* 80463A70  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80463A74  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80463A78  7F A3 EB 78 */	mr r3, r29
/* 80463A7C  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463A80  4B BE 46 FD */	bl cutEnd__16dEvent_manager_cFi
/* 80463A84  48 00 03 90 */	b lbl_80463E14
lbl_80463A88:
/* 80463A88  88 1F 05 F1 */	lbz r0, 0x5f1(r31)
/* 80463A8C  28 00 00 00 */	cmplwi r0, 0
/* 80463A90  40 82 00 18 */	bne lbl_80463AA8
/* 80463A94  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80463A98  4B BA 99 91 */	bl play__14mDoExt_baseAnmFv
/* 80463A9C  7C 7B 1B 78 */	mr r27, r3
/* 80463AA0  C0 3F 05 B0 */	lfs f1, 0x5b0(r31)
/* 80463AA4  48 00 00 14 */	b lbl_80463AB8
lbl_80463AA8:
/* 80463AA8  38 7F 05 84 */	addi r3, r31, 0x584
/* 80463AAC  4B BA 99 7D */	bl play__14mDoExt_baseAnmFv
/* 80463AB0  7C 7B 1B 78 */	mr r27, r3
/* 80463AB4  C0 3F 05 94 */	lfs f1, 0x594(r31)
lbl_80463AB8:
/* 80463AB8  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80463ABC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80463AC0  40 82 01 00 */	bne lbl_80463BC0
/* 80463AC4  3B 5C 3E C8 */	addi r26, r28, 0x3ec8
/* 80463AC8  7F 43 D3 78 */	mr r3, r26
/* 80463ACC  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463AD0  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463AD4  38 84 01 77 */	addi r4, r4, 0x177
/* 80463AD8  4B F0 4E BD */	bl strcmp
/* 80463ADC  2C 03 00 00 */	cmpwi r3, 0
/* 80463AE0  40 82 00 48 */	bne lbl_80463B28
/* 80463AE4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008018B@ha */
/* 80463AE8  38 03 01 8B */	addi r0, r3, 0x018B /* 0x0008018B@l */
/* 80463AEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80463AF0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80463AF4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80463AF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80463AFC  38 81 00 24 */	addi r4, r1, 0x24
/* 80463B00  38 BF 05 E0 */	addi r5, r31, 0x5e0
/* 80463B04  38 C0 00 00 */	li r6, 0
/* 80463B08  38 E0 00 00 */	li r7, 0
/* 80463B0C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80463B10  FC 40 08 90 */	fmr f2, f1
/* 80463B14  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80463B18  FC 80 18 90 */	fmr f4, f3
/* 80463B1C  39 00 00 00 */	li r8, 0
/* 80463B20  4B E4 7E 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80463B24  48 00 01 A0 */	b lbl_80463CC4
lbl_80463B28:
/* 80463B28  7F 43 D3 78 */	mr r3, r26
/* 80463B2C  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463B30  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463B34  38 84 01 7E */	addi r4, r4, 0x17e
/* 80463B38  4B F0 4E 5D */	bl strcmp
/* 80463B3C  2C 03 00 00 */	cmpwi r3, 0
/* 80463B40  41 82 00 3C */	beq lbl_80463B7C
/* 80463B44  7F 43 D3 78 */	mr r3, r26
/* 80463B48  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463B4C  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463B50  38 84 01 85 */	addi r4, r4, 0x185
/* 80463B54  4B F0 4E 41 */	bl strcmp
/* 80463B58  2C 03 00 00 */	cmpwi r3, 0
/* 80463B5C  41 82 00 20 */	beq lbl_80463B7C
/* 80463B60  7F 43 D3 78 */	mr r3, r26
/* 80463B64  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463B68  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463B6C  38 84 01 52 */	addi r4, r4, 0x152
/* 80463B70  4B F0 4E 25 */	bl strcmp
/* 80463B74  2C 03 00 00 */	cmpwi r3, 0
/* 80463B78  40 82 01 4C */	bne lbl_80463CC4
lbl_80463B7C:
/* 80463B7C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801FF@ha */
/* 80463B80  38 03 01 FF */	addi r0, r3, 0x01FF /* 0x000801FF@l */
/* 80463B84  90 01 00 20 */	stw r0, 0x20(r1)
/* 80463B88  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80463B8C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80463B90  80 63 00 00 */	lwz r3, 0(r3)
/* 80463B94  38 81 00 20 */	addi r4, r1, 0x20
/* 80463B98  38 BF 05 E0 */	addi r5, r31, 0x5e0
/* 80463B9C  38 C0 00 00 */	li r6, 0
/* 80463BA0  38 E0 00 00 */	li r7, 0
/* 80463BA4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80463BA8  FC 40 08 90 */	fmr f2, f1
/* 80463BAC  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80463BB0  FC 80 18 90 */	fmr f4, f3
/* 80463BB4  39 00 00 00 */	li r8, 0
/* 80463BB8  4B E4 7D CD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80463BBC  48 00 01 08 */	b lbl_80463CC4
lbl_80463BC0:
/* 80463BC0  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80463BC4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80463BC8  40 82 00 FC */	bne lbl_80463CC4
/* 80463BCC  3B 5C 3E C8 */	addi r26, r28, 0x3ec8
/* 80463BD0  7F 43 D3 78 */	mr r3, r26
/* 80463BD4  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463BD8  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463BDC  38 84 01 7E */	addi r4, r4, 0x17e
/* 80463BE0  4B F0 4D B5 */	bl strcmp
/* 80463BE4  2C 03 00 00 */	cmpwi r3, 0
/* 80463BE8  41 82 00 3C */	beq lbl_80463C24
/* 80463BEC  7F 43 D3 78 */	mr r3, r26
/* 80463BF0  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463BF4  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463BF8  38 84 01 85 */	addi r4, r4, 0x185
/* 80463BFC  4B F0 4D 99 */	bl strcmp
/* 80463C00  2C 03 00 00 */	cmpwi r3, 0
/* 80463C04  41 82 00 20 */	beq lbl_80463C24
/* 80463C08  7F 43 D3 78 */	mr r3, r26
/* 80463C0C  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463C10  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463C14  38 84 01 52 */	addi r4, r4, 0x152
/* 80463C18  4B F0 4D 7D */	bl strcmp
/* 80463C1C  2C 03 00 00 */	cmpwi r3, 0
/* 80463C20  40 82 00 48 */	bne lbl_80463C68
lbl_80463C24:
/* 80463C24  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080200@ha */
/* 80463C28  38 03 02 00 */	addi r0, r3, 0x0200 /* 0x00080200@l */
/* 80463C2C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80463C30  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80463C34  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80463C38  80 63 00 00 */	lwz r3, 0(r3)
/* 80463C3C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80463C40  38 A0 00 00 */	li r5, 0
/* 80463C44  38 C0 00 00 */	li r6, 0
/* 80463C48  38 E0 00 00 */	li r7, 0
/* 80463C4C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80463C50  FC 40 08 90 */	fmr f2, f1
/* 80463C54  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80463C58  FC 80 18 90 */	fmr f4, f3
/* 80463C5C  39 00 00 00 */	li r8, 0
/* 80463C60  4B E4 7D 25 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80463C64  48 00 00 60 */	b lbl_80463CC4
lbl_80463C68:
/* 80463C68  7F 43 D3 78 */	mr r3, r26
/* 80463C6C  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463C70  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463C74  38 84 01 77 */	addi r4, r4, 0x177
/* 80463C78  4B F0 4D 1D */	bl strcmp
/* 80463C7C  2C 03 00 00 */	cmpwi r3, 0
/* 80463C80  40 82 00 44 */	bne lbl_80463CC4
/* 80463C84  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008018C@ha */
/* 80463C88  38 03 01 8C */	addi r0, r3, 0x018C /* 0x0008018C@l */
/* 80463C8C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80463C90  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80463C94  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80463C98  80 63 00 00 */	lwz r3, 0(r3)
/* 80463C9C  38 81 00 18 */	addi r4, r1, 0x18
/* 80463CA0  38 BF 05 E0 */	addi r5, r31, 0x5e0
/* 80463CA4  38 C0 00 00 */	li r6, 0
/* 80463CA8  38 E0 00 00 */	li r7, 0
/* 80463CAC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80463CB0  FC 40 08 90 */	fmr f2, f1
/* 80463CB4  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80463CB8  FC 80 18 90 */	fmr f4, f3
/* 80463CBC  39 00 00 00 */	li r8, 0
/* 80463CC0  4B E4 7C C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80463CC4:
/* 80463CC4  7F A3 EB 78 */	mr r3, r29
/* 80463CC8  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80463CCC  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80463CD0  38 84 01 8D */	addi r4, r4, 0x18d
/* 80463CD4  38 A0 00 00 */	li r5, 0
/* 80463CD8  38 C0 00 00 */	li r6, 0
/* 80463CDC  4B BE 3E 41 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80463CE0  90 7F 06 78 */	stw r3, 0x678(r31)
/* 80463CE4  88 1F 06 7C */	lbz r0, 0x67c(r31)
/* 80463CE8  28 00 00 00 */	cmplwi r0, 0
/* 80463CEC  40 82 00 18 */	bne lbl_80463D04
/* 80463CF0  7F A3 EB 78 */	mr r3, r29
/* 80463CF4  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 80463CF8  4B BE 40 55 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80463CFC  2C 03 00 00 */	cmpwi r3, 0
/* 80463D00  41 82 00 18 */	beq lbl_80463D18
lbl_80463D04:
/* 80463D04  88 1F 06 7F */	lbz r0, 0x67f(r31)
/* 80463D08  98 1F 06 74 */	stb r0, 0x674(r31)
/* 80463D0C  38 00 00 01 */	li r0, 1
/* 80463D10  98 1F 06 7C */	stb r0, 0x67c(r31)
/* 80463D14  48 00 00 0C */	b lbl_80463D20
lbl_80463D18:
/* 80463D18  88 1F 06 7E */	lbz r0, 0x67e(r31)
/* 80463D1C  98 1F 06 74 */	stb r0, 0x674(r31)
lbl_80463D20:
/* 80463D20  2C 1B 00 00 */	cmpwi r27, 0
/* 80463D24  41 82 00 F0 */	beq lbl_80463E14
/* 80463D28  7F E3 FB 78 */	mr r3, r31
/* 80463D2C  4B FF EC F1 */	bl closeEnd2__10daDoor20_cFv
/* 80463D30  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80463D34  4B E0 44 A1 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80463D38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80463D3C  40 82 00 14 */	bne lbl_80463D50
/* 80463D40  7F 83 E3 78 */	mr r3, r28
/* 80463D44  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 80463D48  7F E5 FB 78 */	mr r5, r31
/* 80463D4C  4B C1 0C BD */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80463D50:
/* 80463D50  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80463D54  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80463D58  7F A3 EB 78 */	mr r3, r29
/* 80463D5C  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463D60  4B BE 44 1D */	bl cutEnd__16dEvent_manager_cFi
/* 80463D64  48 00 00 B0 */	b lbl_80463E14
lbl_80463D68:
/* 80463D68  7F A3 EB 78 */	mr r3, r29
/* 80463D6C  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463D70  4B BE 44 0D */	bl cutEnd__16dEvent_manager_cFi
/* 80463D74  48 00 00 A0 */	b lbl_80463E14
lbl_80463D78:
/* 80463D78  7F E3 FB 78 */	mr r3, r31
/* 80463D7C  4B BD 64 9D */	bl getMsgNo__13door_param2_cFP10fopAc_ac_c
/* 80463D80  54 7A 04 3E */	clrlwi r26, r3, 0x10
/* 80463D84  7F E3 FB 78 */	mr r3, r31
/* 80463D88  4B BD 64 6D */	bl isMsgDoor__13door_param2_cFP10fopAc_ac_c
/* 80463D8C  2C 03 00 00 */	cmpwi r3, 0
/* 80463D90  41 82 00 48 */	beq lbl_80463DD8
/* 80463D94  3C 1A 00 00 */	addis r0, r26, 0
/* 80463D98  28 00 FF FF */	cmplwi r0, 0xffff
/* 80463D9C  41 82 00 3C */	beq lbl_80463DD8
/* 80463DA0  A0 1C 40 6C */	lhz r0, 0x406c(r28)
/* 80463DA4  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 80463DA8  B0 1C 40 6C */	sth r0, 0x406c(r28)
/* 80463DAC  38 7F 06 24 */	addi r3, r31, 0x624
/* 80463DB0  7F E4 FB 78 */	mr r4, r31
/* 80463DB4  38 A0 00 00 */	li r5, 0
/* 80463DB8  38 C0 00 00 */	li r6, 0
/* 80463DBC  4B DE 65 1D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80463DC0  2C 03 00 00 */	cmpwi r3, 0
/* 80463DC4  41 82 00 50 */	beq lbl_80463E14
/* 80463DC8  7F A3 EB 78 */	mr r3, r29
/* 80463DCC  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463DD0  4B BE 43 AD */	bl cutEnd__16dEvent_manager_cFi
/* 80463DD4  48 00 00 40 */	b lbl_80463E14
lbl_80463DD8:
/* 80463DD8  7F A3 EB 78 */	mr r3, r29
/* 80463DDC  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463DE0  4B BE 43 9D */	bl cutEnd__16dEvent_manager_cFi
/* 80463DE4  48 00 00 30 */	b lbl_80463E14
lbl_80463DE8:
/* 80463DE8  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80463DEC  4B BA 96 3D */	bl play__14mDoExt_baseAnmFv
/* 80463DF0  2C 03 00 00 */	cmpwi r3, 0
/* 80463DF4  41 82 00 20 */	beq lbl_80463E14
/* 80463DF8  7F A3 EB 78 */	mr r3, r29
/* 80463DFC  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463E00  4B BE 43 7D */	bl cutEnd__16dEvent_manager_cFi
/* 80463E04  48 00 00 10 */	b lbl_80463E14
lbl_80463E08:
/* 80463E08  7F A3 EB 78 */	mr r3, r29
/* 80463E0C  80 9F 06 CC */	lwz r4, 0x6cc(r31)
/* 80463E10  4B BE 43 6D */	bl cutEnd__16dEvent_manager_cFi
lbl_80463E14:
/* 80463E14  38 60 00 00 */	li r3, 0
/* 80463E18  39 61 00 70 */	addi r11, r1, 0x70
/* 80463E1C  4B EF E4 01 */	bl _restgpr_26
/* 80463E20  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80463E24  7C 08 03 A6 */	mtlr r0
/* 80463E28  38 21 00 70 */	addi r1, r1, 0x70
/* 80463E2C  4E 80 00 20 */	blr 
