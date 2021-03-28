lbl_80AAAC64:
/* 80AAAC64  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AAAC68  7C 08 02 A6 */	mflr r0
/* 80AAAC6C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AAAC70  39 61 00 50 */	addi r11, r1, 0x50
/* 80AAAC74  4B 8B 75 50 */	b _savegpr_23
/* 80AAAC78  7C 7F 1B 78 */	mr r31, r3
/* 80AAAC7C  7C 9A 23 78 */	mr r26, r4
/* 80AAAC80  3C 60 80 AB */	lis r3, m__18daNpc_Post_Param_c@ha
/* 80AAAC84  3B C3 D1 EC */	addi r30, r3, m__18daNpc_Post_Param_c@l
/* 80AAAC88  3B 80 00 00 */	li r28, 0
/* 80AAAC8C  3B 60 FF FF */	li r27, -1
/* 80AAAC90  3B 00 00 00 */	li r24, 0
/* 80AAAC94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAAC98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AAAC9C  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 80AAACA0  3B B9 40 C0 */	addi r29, r25, 0x40c0
/* 80AAACA4  7F A3 EB 78 */	mr r3, r29
/* 80AAACA8  3C A0 80 AB */	lis r5, struct_80AAD34C+0x0@ha
/* 80AAACAC  38 A5 D3 4C */	addi r5, r5, struct_80AAD34C+0x0@l
/* 80AAACB0  38 A5 00 54 */	addi r5, r5, 0x54
/* 80AAACB4  38 C0 00 03 */	li r6, 3
/* 80AAACB8  4B 59 D4 34 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AAACBC  28 03 00 00 */	cmplwi r3, 0
/* 80AAACC0  41 82 00 08 */	beq lbl_80AAACC8
/* 80AAACC4  83 63 00 00 */	lwz r27, 0(r3)
lbl_80AAACC8:
/* 80AAACC8  7F A3 EB 78 */	mr r3, r29
/* 80AAACCC  7F 44 D3 78 */	mr r4, r26
/* 80AAACD0  3C A0 80 AB */	lis r5, struct_80AAD34C+0x0@ha
/* 80AAACD4  38 A5 D3 4C */	addi r5, r5, struct_80AAD34C+0x0@l
/* 80AAACD8  38 A5 00 58 */	addi r5, r5, 0x58
/* 80AAACDC  38 C0 00 03 */	li r6, 3
/* 80AAACE0  4B 59 D4 0C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AAACE4  28 03 00 00 */	cmplwi r3, 0
/* 80AAACE8  41 82 00 08 */	beq lbl_80AAACF0
/* 80AAACEC  83 03 00 00 */	lwz r24, 0(r3)
lbl_80AAACF0:
/* 80AAACF0  7F A3 EB 78 */	mr r3, r29
/* 80AAACF4  7F 44 D3 78 */	mr r4, r26
/* 80AAACF8  4B 59 D0 54 */	b getIsAddvance__16dEvent_manager_cFi
/* 80AAACFC  2C 03 00 00 */	cmpwi r3, 0
/* 80AAAD00  41 82 06 14 */	beq lbl_80AAB314
/* 80AAAD04  28 1B 00 0C */	cmplwi r27, 0xc
/* 80AAAD08  41 81 06 0C */	bgt lbl_80AAB314
/* 80AAAD0C  3C 60 80 AB */	lis r3, lit_5415@ha
/* 80AAAD10  38 63 D9 E8 */	addi r3, r3, lit_5415@l
/* 80AAAD14  57 60 10 3A */	slwi r0, r27, 2
/* 80AAAD18  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AAAD1C  7C 09 03 A6 */	mtctr r0
/* 80AAAD20  4E 80 04 20 */	bctr 
lbl_80AAAD24:
/* 80AAAD24  C0 1F 0F F0 */	lfs f0, 0xff0(r31)
/* 80AAAD28  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AAAD2C  C0 3F 0F F4 */	lfs f1, 0xff4(r31)
/* 80AAAD30  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AAAD34  C0 1F 0F F8 */	lfs f0, 0xff8(r31)
/* 80AAAD38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AAAD3C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80AAAD40  EC 01 00 2A */	fadds f0, f1, f0
/* 80AAAD44  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AAAD48  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AAAD4C  38 81 00 10 */	addi r4, r1, 0x10
/* 80AAAD50  4B 7B CF D8 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80AAAD54  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80AAAD58  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80AAAD5C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80AAAD60  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80AAAD64  7F 23 CB 78 */	mr r3, r25
/* 80AAAD68  38 9F 09 30 */	addi r4, r31, 0x930
/* 80AAAD6C  4B 5C 97 34 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80AAAD70  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AAAD74  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80AAAD78  FC 20 08 18 */	frsp f1, f1
/* 80AAAD7C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80AAAD80  41 82 00 08 */	beq lbl_80AAAD88
/* 80AAAD84  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
lbl_80AAAD88:
/* 80AAAD88  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AAAD8C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80AAAD90  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AAAD94  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80AAAD98  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AAAD9C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80AAADA0  7F E3 FB 78 */	mr r3, r31
/* 80AAADA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AAADA8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AAADAC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AAADB0  4B 56 F9 60 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AAADB4  7C 64 1B 78 */	mr r4, r3
/* 80AAADB8  7F E3 FB 78 */	mr r3, r31
/* 80AAADBC  4B 69 FC 5C */	b setAngle__8daNpcT_cFs
/* 80AAADC0  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80AAADC4  60 00 00 04 */	ori r0, r0, 4
/* 80AAADC8  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80AAADCC  93 1F 0D C4 */	stw r24, 0xdc4(r31)
/* 80AAADD0  48 00 05 44 */	b lbl_80AAB314
lbl_80AAADD4:
/* 80AAADD4  2C 1B 00 02 */	cmpwi r27, 2
/* 80AAADD8  40 82 00 0C */	bne lbl_80AAADE4
/* 80AAADDC  38 00 00 00 */	li r0, 0
/* 80AAADE0  98 1F 0E 25 */	stb r0, 0xe25(r31)
lbl_80AAADE4:
/* 80AAADE4  93 1F 0D C4 */	stw r24, 0xdc4(r31)
/* 80AAADE8  48 00 05 2C */	b lbl_80AAB314
lbl_80AAADEC:
/* 80AAADEC  83 3F 0B 5C */	lwz r25, 0xb5c(r31)
/* 80AAADF0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AAADF4  4B 69 AA A4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAADF8  93 3F 0B 5C */	stw r25, 0xb5c(r31)
/* 80AAADFC  38 00 00 0A */	li r0, 0xa
/* 80AAAE00  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AAAE04  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AAAE08  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80AAAE0C  83 3F 0B 80 */	lwz r25, 0xb80(r31)
/* 80AAAE10  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AAAE14  4B 69 AA 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAAE18  93 3F 0B 80 */	stw r25, 0xb80(r31)
/* 80AAAE1C  38 00 00 08 */	li r0, 8
/* 80AAAE20  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AAAE24  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AAAE28  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AAAE2C  38 00 00 00 */	li r0, 0
/* 80AAAE30  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 80AAAE34  93 1F 0D C4 */	stw r24, 0xdc4(r31)
/* 80AAAE38  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80AAAE3C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80AAAE40  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80AAAE44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80AAAE48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80AAAE4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80AAAE50  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80AAAE54  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100009E@ha */
/* 80AAAE58  38 84 00 9E */	addi r4, r4, 0x009E /* 0x0100009E@l */
/* 80AAAE5C  4B 80 46 40 */	b subBgmStart__8Z2SeqMgrFUl
/* 80AAAE60  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80AAAE64  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80AAAE68  80 63 00 00 */	lwz r3, 0(r3)
/* 80AAAE6C  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80AAAE70  D0 03 04 44 */	stfs f0, 0x444(r3)
/* 80AAAE74  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AAAE78  D0 03 04 48 */	stfs f0, 0x448(r3)
/* 80AAAE7C  38 00 00 00 */	li r0, 0
/* 80AAAE80  90 03 04 50 */	stw r0, 0x450(r3)
/* 80AAAE84  D0 03 04 4C */	stfs f0, 0x44c(r3)
/* 80AAAE88  48 00 04 8C */	b lbl_80AAB314
lbl_80AAAE8C:
/* 80AAAE8C  83 1F 0B 5C */	lwz r24, 0xb5c(r31)
/* 80AAAE90  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AAAE94  4B 69 AA 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAAE98  93 1F 0B 5C */	stw r24, 0xb5c(r31)
/* 80AAAE9C  38 00 00 0A */	li r0, 0xa
/* 80AAAEA0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AAAEA4  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AAAEA8  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80AAAEAC  83 1F 0B 80 */	lwz r24, 0xb80(r31)
/* 80AAAEB0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AAAEB4  4B 69 A9 E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAAEB8  93 1F 0B 80 */	stw r24, 0xb80(r31)
/* 80AAAEBC  38 00 00 08 */	li r0, 8
/* 80AAAEC0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AAAEC4  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AAAEC8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AAAECC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AAAED0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AAAED4  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 80AAAED8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AAAEDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAAEE0  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 80AAAEE4  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 80AAAEE8  7F E4 FB 78 */	mr r4, r31
/* 80AAAEEC  4B 56 F8 24 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AAAEF0  7C 64 1B 78 */	mr r4, r3
/* 80AAAEF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AAAEF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AAAEFC  4B 56 14 E0 */	b mDoMtx_YrotS__FPA4_fs
/* 80AAAF00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AAAF04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AAAF08  38 81 00 10 */	addi r4, r1, 0x10
/* 80AAAF0C  7C 85 23 78 */	mr r5, r4
/* 80AAAF10  4B 89 BE 5C */	b PSMTXMultVec
/* 80AAAF14  38 61 00 10 */	addi r3, r1, 0x10
/* 80AAAF18  80 98 5D AC */	lwz r4, 0x5dac(r24)
/* 80AAAF1C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80AAAF20  7C 65 1B 78 */	mr r5, r3
/* 80AAAF24  4B 89 C1 6C */	b PSVECAdd
/* 80AAAF28  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80AAAF2C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80AAAF30  EC 01 00 2A */	fadds f0, f1, f0
/* 80AAAF34  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AAAF38  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AAAF3C  38 81 00 10 */	addi r4, r1, 0x10
/* 80AAAF40  4B 7B CD E8 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80AAAF44  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80AAAF48  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80AAAF4C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80AAAF50  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80AAAF54  7F 23 CB 78 */	mr r3, r25
/* 80AAAF58  38 9F 09 30 */	addi r4, r31, 0x930
/* 80AAAF5C  4B 5C 95 44 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80AAAF60  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AAAF64  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80AAAF68  FC 20 08 18 */	frsp f1, f1
/* 80AAAF6C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80AAAF70  41 82 00 0C */	beq lbl_80AAAF7C
/* 80AAAF74  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
/* 80AAAF78  48 00 00 40 */	b lbl_80AAAFB8
lbl_80AAAF7C:
/* 80AAAF7C  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 80AAAF80  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80AAAF84  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80AAAF88  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 80AAAF8C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80AAAF90  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80AAAF94  7D 89 03 A6 */	mtctr r12
/* 80AAAF98  4E 80 04 21 */	bctrl 
/* 80AAAF9C  28 03 00 00 */	cmplwi r3, 0
/* 80AAAFA0  41 82 00 18 */	beq lbl_80AAAFB8
/* 80AAAFA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAAFA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AAAFAC  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 80AAAFB0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80AAAFB4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_80AAAFB8:
/* 80AAAFB8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AAAFBC  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80AAAFC0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AAAFC4  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80AAAFC8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AAAFCC  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80AAAFD0  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AAAFD4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AAAFD8  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80AAAFDC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80AAAFE0  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80AAAFE4  48 00 03 30 */	b lbl_80AAB314
lbl_80AAAFE8:
/* 80AAAFE8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AAAFEC  2C 00 00 0E */	cmpwi r0, 0xe
/* 80AAAFF0  41 82 00 24 */	beq lbl_80AAB014
/* 80AAAFF4  83 1F 0B 5C */	lwz r24, 0xb5c(r31)
/* 80AAAFF8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AAAFFC  4B 69 A8 9C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAB000  93 1F 0B 5C */	stw r24, 0xb5c(r31)
/* 80AAB004  38 00 00 0E */	li r0, 0xe
/* 80AAB008  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AAB00C  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80AAB010  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AAB014:
/* 80AAB014  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AAB018  2C 00 00 00 */	cmpwi r0, 0
/* 80AAB01C  41 82 00 24 */	beq lbl_80AAB040
/* 80AAB020  83 1F 0B 80 */	lwz r24, 0xb80(r31)
/* 80AAB024  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AAB028  4B 69 A8 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAB02C  93 1F 0B 80 */	stw r24, 0xb80(r31)
/* 80AAB030  38 00 00 00 */	li r0, 0
/* 80AAB034  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AAB038  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80AAB03C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AAB040:
/* 80AAB040  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AAB044  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AAB048  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80AAB04C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80AAB050  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80AAB054  7F E3 FB 78 */	mr r3, r31
/* 80AAB058  38 80 00 14 */	li r4, 0x14
/* 80AAB05C  38 A0 00 00 */	li r5, 0
/* 80AAB060  4B 6A 0B 90 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AAB064  48 00 02 B0 */	b lbl_80AAB314
lbl_80AAB068:
/* 80AAB068  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AAB06C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80AAB070  28 04 00 FF */	cmplwi r4, 0xff
/* 80AAB074  41 82 00 18 */	beq lbl_80AAB08C
/* 80AAB078  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAB07C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AAB080  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80AAB084  7C 05 07 74 */	extsb r5, r0
/* 80AAB088  4B 58 A1 78 */	b onSwitch__10dSv_info_cFii
lbl_80AAB08C:
/* 80AAB08C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AAB090  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80AAB094  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AAB098  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80AAB09C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AAB0A0  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80AAB0A4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80AAB0A8  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 80AAB0AC  48 00 02 68 */	b lbl_80AAB314
lbl_80AAB0B0:
/* 80AAB0B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAB0B4  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 80AAB0B8  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 80AAB0BC  7F E4 FB 78 */	mr r4, r31
/* 80AAB0C0  4B 56 F6 50 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AAB0C4  B0 61 00 0A */	sth r3, 0xa(r1)
/* 80AAB0C8  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 80AAB0CC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80AAB0D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AAB0D4  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80AAB0D8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AAB0DC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80AAB0E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AAB0E4  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80AAB0E8  EC 01 00 2A */	fadds f0, f1, f0
/* 80AAB0EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AAB0F0  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AAB0F4  38 81 00 10 */	addi r4, r1, 0x10
/* 80AAB0F8  4B 7B CC 30 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80AAB0FC  7F 23 CB 78 */	mr r3, r25
/* 80AAB100  38 9F 09 30 */	addi r4, r31, 0x930
/* 80AAB104  4B 5C 93 9C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80AAB108  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AAB10C  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 80AAB110  38 81 00 10 */	addi r4, r1, 0x10
/* 80AAB114  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 80AAB118  38 C0 00 00 */	li r6, 0
/* 80AAB11C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80AAB120  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80AAB124  7D 89 03 A6 */	mtctr r12
/* 80AAB128  4E 80 04 21 */	bctrl 
/* 80AAB12C  48 00 01 E8 */	b lbl_80AAB314
lbl_80AAB130:
/* 80AAB130  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AAB134  38 80 00 00 */	li r4, 0
/* 80AAB138  38 A0 00 13 */	li r5, 0x13
/* 80AAB13C  38 C0 00 00 */	li r6, 0
/* 80AAB140  38 E0 00 00 */	li r7, 0
/* 80AAB144  4B 79 EE 4C */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80AAB148  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80AAB14C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80AAB150  80 63 00 00 */	lwz r3, 0(r3)
/* 80AAB154  C0 03 04 44 */	lfs f0, 0x444(r3)
/* 80AAB158  38 00 00 5A */	li r0, 0x5a
/* 80AAB15C  90 03 04 50 */	stw r0, 0x450(r3)
/* 80AAB160  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 80AAB164  EC 43 00 28 */	fsubs f2, f3, f0
/* 80AAB168  80 03 04 50 */	lwz r0, 0x450(r3)
/* 80AAB16C  C8 3E 01 50 */	lfd f1, 0x150(r30)
/* 80AAB170  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AAB174  3C 00 43 30 */	lis r0, 0x4330
/* 80AAB178  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AAB17C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80AAB180  EC 00 08 28 */	fsubs f0, f0, f1
/* 80AAB184  EC 02 00 24 */	fdivs f0, f2, f0
/* 80AAB188  D0 03 04 48 */	stfs f0, 0x448(r3)
/* 80AAB18C  D0 63 04 4C */	stfs f3, 0x44c(r3)
/* 80AAB190  48 00 01 84 */	b lbl_80AAB314
lbl_80AAB194:
/* 80AAB194  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AAB198  2C 00 00 0A */	cmpwi r0, 0xa
/* 80AAB19C  41 82 00 24 */	beq lbl_80AAB1C0
/* 80AAB1A0  83 3F 0B 5C */	lwz r25, 0xb5c(r31)
/* 80AAB1A4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AAB1A8  4B 69 A6 F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAB1AC  93 3F 0B 5C */	stw r25, 0xb5c(r31)
/* 80AAB1B0  38 00 00 0A */	li r0, 0xa
/* 80AAB1B4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AAB1B8  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80AAB1BC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AAB1C0:
/* 80AAB1C0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AAB1C4  2C 00 00 08 */	cmpwi r0, 8
/* 80AAB1C8  41 82 00 24 */	beq lbl_80AAB1EC
/* 80AAB1CC  83 3F 0B 80 */	lwz r25, 0xb80(r31)
/* 80AAB1D0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AAB1D4  4B 69 A6 C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAB1D8  93 3F 0B 80 */	stw r25, 0xb80(r31)
/* 80AAB1DC  38 00 00 08 */	li r0, 8
/* 80AAB1E0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AAB1E4  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80AAB1E8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AAB1EC:
/* 80AAB1EC  93 1F 0D C4 */	stw r24, 0xdc4(r31)
/* 80AAB1F0  48 00 01 24 */	b lbl_80AAB314
lbl_80AAB1F4:
/* 80AAB1F4  82 FF 0B 5C */	lwz r23, 0xb5c(r31)
/* 80AAB1F8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AAB1FC  4B 69 A6 9C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAB200  92 FF 0B 5C */	stw r23, 0xb5c(r31)
/* 80AAB204  38 00 00 0E */	li r0, 0xe
/* 80AAB208  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AAB20C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AAB210  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80AAB214  82 FF 0B 80 */	lwz r23, 0xb80(r31)
/* 80AAB218  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AAB21C  4B 69 A6 7C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAB220  92 FF 0B 80 */	stw r23, 0xb80(r31)
/* 80AAB224  38 00 00 00 */	li r0, 0
/* 80AAB228  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AAB22C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AAB230  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AAB234  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AAB238  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80AAB23C  28 04 00 FF */	cmplwi r4, 0xff
/* 80AAB240  41 82 00 18 */	beq lbl_80AAB258
/* 80AAB244  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAB248  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AAB24C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80AAB250  7C 05 07 74 */	extsb r5, r0
/* 80AAB254  4B 58 9F AC */	b onSwitch__10dSv_info_cFii
lbl_80AAB258:
/* 80AAB258  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AAB25C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AAB260  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80AAB264  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80AAB268  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80AAB26C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80AAB270  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AAB274  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80AAB278  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AAB27C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80AAB280  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AAB284  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80AAB288  EC 01 00 2A */	fadds f0, f1, f0
/* 80AAB28C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AAB290  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AAB294  38 81 00 10 */	addi r4, r1, 0x10
/* 80AAB298  4B 7B CA 90 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80AAB29C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80AAB2A0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80AAB2A4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80AAB2A8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80AAB2AC  7F 23 CB 78 */	mr r3, r25
/* 80AAB2B0  38 9F 09 30 */	addi r4, r31, 0x930
/* 80AAB2B4  4B 5C 91 EC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80AAB2B8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AAB2BC  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80AAB2C0  FC 20 08 18 */	frsp f1, f1
/* 80AAB2C4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80AAB2C8  41 82 00 08 */	beq lbl_80AAB2D0
/* 80AAB2CC  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
lbl_80AAB2D0:
/* 80AAB2D0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AAB2D4  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80AAB2D8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AAB2DC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80AAB2E0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AAB2E4  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80AAB2E8  7F E3 FB 78 */	mr r3, r31
/* 80AAB2EC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AAB2F0  4B 69 F7 28 */	b setAngle__8daNpcT_cFs
/* 80AAB2F4  38 00 00 01 */	li r0, 1
/* 80AAB2F8  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 80AAB2FC  93 1F 0D C4 */	stw r24, 0xdc4(r31)
/* 80AAB300  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80AAB304  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80AAB308  80 63 00 00 */	lwz r3, 0(r3)
/* 80AAB30C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80AAB310  4B 80 45 74 */	b subBgmStop__8Z2SeqMgrFv
lbl_80AAB314:
/* 80AAB314  28 1B 00 0C */	cmplwi r27, 0xc
/* 80AAB318  41 81 02 E8 */	bgt lbl_80AAB600
/* 80AAB31C  3C 60 80 AB */	lis r3, lit_5418@ha
/* 80AAB320  38 63 D9 B4 */	addi r3, r3, lit_5418@l
/* 80AAB324  57 60 10 3A */	slwi r0, r27, 2
/* 80AAB328  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AAB32C  7C 09 03 A6 */	mtctr r0
/* 80AAB330  4E 80 04 20 */	bctr 
lbl_80AAB334:
/* 80AAB334  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AAB338  2C 00 00 01 */	cmpwi r0, 1
/* 80AAB33C  41 82 00 28 */	beq lbl_80AAB364
/* 80AAB340  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AAB344  4B 69 A3 B8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AAB348  38 00 00 00 */	li r0, 0
/* 80AAB34C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AAB350  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AAB354  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AAB358  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AAB35C  38 00 00 01 */	li r0, 1
/* 80AAB360  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AAB364:
/* 80AAB364  38 00 00 00 */	li r0, 0
/* 80AAB368  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AAB36C  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80AAB370  48 00 1B A1 */	bl func_80AACF10
/* 80AAB374  2C 03 00 00 */	cmpwi r3, 0
/* 80AAB378  40 82 02 88 */	bne lbl_80AAB600
/* 80AAB37C  3B 80 00 01 */	li r28, 1
/* 80AAB380  48 00 02 80 */	b lbl_80AAB600
lbl_80AAB384:
/* 80AAB384  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80AAB388  48 00 1B 89 */	bl func_80AACF10
/* 80AAB38C  2C 03 00 00 */	cmpwi r3, 0
/* 80AAB390  40 82 00 08 */	bne lbl_80AAB398
/* 80AAB394  3B 80 00 01 */	li r28, 1
lbl_80AAB398:
/* 80AAB398  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80AAB39C  60 00 00 02 */	ori r0, r0, 2
/* 80AAB3A0  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80AAB3A4  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80AAB3A8  60 00 00 04 */	ori r0, r0, 4
/* 80AAB3AC  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80AAB3B0  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AAB3B4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80AAB3B8  48 00 02 48 */	b lbl_80AAB600
lbl_80AAB3BC:
/* 80AAB3BC  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80AAB3C0  48 00 1B 51 */	bl func_80AACF10
/* 80AAB3C4  2C 03 00 00 */	cmpwi r3, 0
/* 80AAB3C8  41 82 00 38 */	beq lbl_80AAB400
/* 80AAB3CC  38 7E 00 00 */	addi r3, r30, 0
/* 80AAB3D0  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80AAB3D4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AAB3D8  7F E3 FB 78 */	mr r3, r31
/* 80AAB3DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AAB3E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AAB3E4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AAB3E8  4B 56 F5 7C */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AAB3EC  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80AAB3F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AAB3F4  40 80 02 0C */	bge lbl_80AAB600
/* 80AAB3F8  3B 80 00 01 */	li r28, 1
/* 80AAB3FC  48 00 02 04 */	b lbl_80AAB600
lbl_80AAB400:
/* 80AAB400  3B 80 00 01 */	li r28, 1
/* 80AAB404  48 00 01 FC */	b lbl_80AAB600
lbl_80AAB408:
/* 80AAB408  7F A3 EB 78 */	mr r3, r29
/* 80AAB40C  7F 44 D3 78 */	mr r4, r26
/* 80AAB410  4B 59 C9 3C */	b getIsAddvance__16dEvent_manager_cFi
/* 80AAB414  2C 03 00 00 */	cmpwi r3, 0
/* 80AAB418  40 82 01 E8 */	bne lbl_80AAB600
/* 80AAB41C  38 7E 00 00 */	addi r3, r30, 0
/* 80AAB420  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80AAB424  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AAB428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAB42C  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 80AAB430  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 80AAB434  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80AAB438  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80AAB43C  7D 89 03 A6 */	mtctr r12
/* 80AAB440  4E 80 04 21 */	bctrl 
/* 80AAB444  28 03 00 00 */	cmplwi r3, 0
/* 80AAB448  41 82 00 24 */	beq lbl_80AAB46C
/* 80AAB44C  7F E3 FB 78 */	mr r3, r31
/* 80AAB450  80 98 5D AC */	lwz r4, 0x5dac(r24)
/* 80AAB454  4B 56 F5 10 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AAB458  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 80AAB45C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AAB460  40 80 01 A0 */	bge lbl_80AAB600
/* 80AAB464  3B 80 00 01 */	li r28, 1
/* 80AAB468  48 00 01 98 */	b lbl_80AAB600
lbl_80AAB46C:
/* 80AAB46C  7F E3 FB 78 */	mr r3, r31
/* 80AAB470  80 98 5D AC */	lwz r4, 0x5dac(r24)
/* 80AAB474  4B 56 F4 F0 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AAB478  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80AAB47C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AAB480  40 80 01 80 */	bge lbl_80AAB600
/* 80AAB484  3B 80 00 01 */	li r28, 1
/* 80AAB488  48 00 01 78 */	b lbl_80AAB600
lbl_80AAB48C:
/* 80AAB48C  7F E3 FB 78 */	mr r3, r31
/* 80AAB490  38 80 00 00 */	li r4, 0
/* 80AAB494  38 A0 00 00 */	li r5, 0
/* 80AAB498  38 C0 00 00 */	li r6, 0
/* 80AAB49C  38 E0 00 00 */	li r7, 0
/* 80AAB4A0  4B 6A 07 D8 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AAB4A4  2C 03 00 00 */	cmpwi r3, 0
/* 80AAB4A8  41 82 01 58 */	beq lbl_80AAB600
/* 80AAB4AC  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80AAB4B0  28 00 00 01 */	cmplwi r0, 1
/* 80AAB4B4  40 82 01 4C */	bne lbl_80AAB600
/* 80AAB4B8  3B 80 00 01 */	li r28, 1
/* 80AAB4BC  48 00 01 44 */	b lbl_80AAB600
lbl_80AAB4C0:
/* 80AAB4C0  3B 80 00 01 */	li r28, 1
/* 80AAB4C4  48 00 01 3C */	b lbl_80AAB600
lbl_80AAB4C8:
/* 80AAB4C8  38 7E 00 00 */	addi r3, r30, 0
/* 80AAB4CC  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80AAB4D0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AAB4D4  3B 80 00 01 */	li r28, 1
/* 80AAB4D8  48 00 01 28 */	b lbl_80AAB600
lbl_80AAB4DC:
/* 80AAB4DC  38 00 00 00 */	li r0, 0
/* 80AAB4E0  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AAB4E4  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AAB4E8  38 80 00 00 */	li r4, 0
/* 80AAB4EC  38 A0 00 00 */	li r5, 0
/* 80AAB4F0  38 C0 00 00 */	li r6, 0
/* 80AAB4F4  4B 79 ED E4 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80AAB4F8  2C 03 00 00 */	cmpwi r3, 0
/* 80AAB4FC  41 82 01 04 */	beq lbl_80AAB600
/* 80AAB500  3B 80 00 01 */	li r28, 1
/* 80AAB504  48 00 00 FC */	b lbl_80AAB600
lbl_80AAB508:
/* 80AAB508  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AAB50C  2C 00 00 00 */	cmpwi r0, 0
/* 80AAB510  41 82 00 24 */	beq lbl_80AAB534
/* 80AAB514  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AAB518  4B 69 A1 E4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AAB51C  38 00 00 00 */	li r0, 0
/* 80AAB520  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AAB524  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AAB528  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AAB52C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AAB530  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AAB534:
/* 80AAB534  38 00 00 00 */	li r0, 0
/* 80AAB538  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AAB53C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80AAB540  38 9F 0F F0 */	addi r4, r31, 0xff0
/* 80AAB544  4B 7C 56 C0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80AAB548  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80AAB54C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80AAB550  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80AAB554  38 A0 00 04 */	li r5, 4
/* 80AAB558  38 C0 08 00 */	li r6, 0x800
/* 80AAB55C  4B 7C 50 AC */	b cLib_addCalcAngleS2__FPssss
/* 80AAB560  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80AAB564  B0 1F 0D 7A */	sth r0, 0xd7a(r31)
/* 80AAB568  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80AAB56C  38 9E 00 00 */	addi r4, r30, 0
/* 80AAB570  C0 24 00 8C */	lfs f1, 0x8c(r4)
/* 80AAB574  C0 5E 01 4C */	lfs f2, 0x14c(r30)
/* 80AAB578  4B 7C 51 C8 */	b cLib_chaseF__FPfff
/* 80AAB57C  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80AAB580  48 00 19 91 */	bl func_80AACF10
/* 80AAB584  2C 03 00 00 */	cmpwi r3, 0
/* 80AAB588  40 82 00 78 */	bne lbl_80AAB600
/* 80AAB58C  3B 80 00 01 */	li r28, 1
/* 80AAB590  48 00 00 70 */	b lbl_80AAB600
lbl_80AAB594:
/* 80AAB594  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80AAB598  48 00 19 79 */	bl func_80AACF10
/* 80AAB59C  2C 03 00 00 */	cmpwi r3, 0
/* 80AAB5A0  40 82 00 60 */	bne lbl_80AAB600
/* 80AAB5A4  3B 80 00 01 */	li r28, 1
/* 80AAB5A8  48 00 00 58 */	b lbl_80AAB600
lbl_80AAB5AC:
/* 80AAB5AC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80AAB5B0  38 9F 0F F0 */	addi r4, r31, 0xff0
/* 80AAB5B4  4B 7C 56 50 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80AAB5B8  B0 61 00 0A */	sth r3, 0xa(r1)
/* 80AAB5BC  7C 64 07 34 */	extsh r4, r3
/* 80AAB5C0  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AAB5C4  7C 04 00 00 */	cmpw r4, r0
/* 80AAB5C8  41 82 00 2C */	beq lbl_80AAB5F4
/* 80AAB5CC  7F E3 FB 78 */	mr r3, r31
/* 80AAB5D0  38 A0 00 0E */	li r5, 0xe
/* 80AAB5D4  38 C0 00 0A */	li r6, 0xa
/* 80AAB5D8  38 E0 00 0F */	li r7, 0xf
/* 80AAB5DC  39 00 00 00 */	li r8, 0
/* 80AAB5E0  4B 6A 00 68 */	b step__8daNpcT_cFsiiii
/* 80AAB5E4  2C 03 00 00 */	cmpwi r3, 0
/* 80AAB5E8  41 82 00 18 */	beq lbl_80AAB600
/* 80AAB5EC  3B 80 00 01 */	li r28, 1
/* 80AAB5F0  48 00 00 10 */	b lbl_80AAB600
lbl_80AAB5F4:
/* 80AAB5F4  3B 80 00 01 */	li r28, 1
/* 80AAB5F8  48 00 00 08 */	b lbl_80AAB600
lbl_80AAB5FC:
/* 80AAB5FC  3B 80 00 01 */	li r28, 1
lbl_80AAB600:
/* 80AAB600  7F 83 E3 78 */	mr r3, r28
/* 80AAB604  39 61 00 50 */	addi r11, r1, 0x50
/* 80AAB608  4B 8B 6C 08 */	b _restgpr_23
/* 80AAB60C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80AAB610  7C 08 03 A6 */	mtlr r0
/* 80AAB614  38 21 00 50 */	addi r1, r1, 0x50
/* 80AAB618  4E 80 00 20 */	blr 
