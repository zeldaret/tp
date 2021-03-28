lbl_80CFE6D8:
/* 80CFE6D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CFE6DC  7C 08 02 A6 */	mflr r0
/* 80CFE6E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CFE6E4  39 61 00 30 */	addi r11, r1, 0x30
/* 80CFE6E8  4B 66 3A E4 */	b _savegpr_25
/* 80CFE6EC  7C 7D 1B 78 */	mr r29, r3
/* 80CFE6F0  3C 60 80 D0 */	lis r3, M_arcname__Q212daObjSwpush25Act_c@ha
/* 80CFE6F4  3B E3 FB F4 */	addi r31, r3, M_arcname__Q212daObjSwpush25Act_c@l
/* 80CFE6F8  3B C0 00 01 */	li r30, 1
/* 80CFE6FC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80CFE700  4B 30 E6 64 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CFE704  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80CFE708  4B 30 E8 3C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CFE70C  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 80CFE710  4B 30 E7 60 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80CFE714  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFE718  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFE71C  38 9D 05 74 */	addi r4, r29, 0x574
/* 80CFE720  4B 64 7D 90 */	b PSMTXCopy
/* 80CFE724  3C 60 80 D0 */	lis r3, rideCB__Q212daObjSwpush25Act_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80CFE728  38 03 EB 78 */	addi r0, r3, rideCB__Q212daObjSwpush25Act_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80CFE72C  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80CFE730  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80CFE734  80 7D 05 A4 */	lwz r3, 0x5a4(r29)
/* 80CFE738  38 03 00 24 */	addi r0, r3, 0x24
/* 80CFE73C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80CFE740  7F A3 EB 78 */	mr r3, r29
/* 80CFE744  48 00 03 F9 */	bl init_mtx__Q212daObjSwpush25Act_cFv
/* 80CFE748  80 1D 05 C0 */	lwz r0, 0x5c0(r29)
/* 80CFE74C  1C 80 00 38 */	mulli r4, r0, 0x38
/* 80CFE750  38 7F 00 0C */	addi r3, r31, 0xc
/* 80CFE754  38 04 00 08 */	addi r0, r4, 8
/* 80CFE758  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CFE75C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80CFE760  EC 80 00 72 */	fmuls f4, f0, f1
/* 80CFE764  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80CFE768  EC 20 00 72 */	fmuls f1, f0, f1
/* 80CFE76C  7F A3 EB 78 */	mr r3, r29
/* 80CFE770  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80CFE774  FC 60 08 90 */	fmr f3, f1
/* 80CFE778  C0 BF 00 FC */	lfs f5, 0xfc(r31)
/* 80CFE77C  FC C0 20 90 */	fmr f6, f4
/* 80CFE780  4B 31 BD C8 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CFE784  38 00 00 00 */	li r0, 0
/* 80CFE788  98 1D 05 D3 */	stb r0, 0x5d3(r29)
/* 80CFE78C  98 1D 05 D4 */	stb r0, 0x5d4(r29)
/* 80CFE790  98 1D 05 D5 */	stb r0, 0x5d5(r29)
/* 80CFE794  B0 1D 05 D6 */	sth r0, 0x5d6(r29)
/* 80CFE798  98 1D 05 D8 */	stb r0, 0x5d8(r29)
/* 80CFE79C  98 1D 05 D9 */	stb r0, 0x5d9(r29)
/* 80CFE7A0  98 1D 05 DA */	stb r0, 0x5da(r29)
/* 80CFE7A4  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 80CFE7A8  98 1D 05 DE */	stb r0, 0x5de(r29)
/* 80CFE7AC  80 1D 05 C0 */	lwz r0, 0x5c0(r29)
/* 80CFE7B0  1C 80 00 38 */	mulli r4, r0, 0x38
/* 80CFE7B4  38 7F 00 0C */	addi r3, r31, 0xc
/* 80CFE7B8  38 04 00 04 */	addi r0, r4, 4
/* 80CFE7BC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80CFE7C0  54 19 07 7A */	rlwinm r25, r0, 0, 0x1d, 0x1d
/* 80CFE7C4  54 1A E7 FE */	rlwinm r26, r0, 0x1c, 0x1f, 0x1f
/* 80CFE7C8  54 1B DF FE */	rlwinm r27, r0, 0x1b, 0x1f, 0x1f
/* 80CFE7CC  7F A3 EB 78 */	mr r3, r29
/* 80CFE7D0  38 80 00 08 */	li r4, 8
/* 80CFE7D4  38 A0 00 08 */	li r5, 8
/* 80CFE7D8  48 00 13 F9 */	bl func_80CFFBD0
/* 80CFE7DC  7C 64 1B 78 */	mr r4, r3
/* 80CFE7E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFE7E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFE7E8  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80CFE7EC  7C 05 07 74 */	extsb r5, r0
/* 80CFE7F0  4B 33 6B 70 */	b isSwitch__10dSv_info_cCFii
/* 80CFE7F4  30 03 FF FF */	addic r0, r3, -1
/* 80CFE7F8  7C 00 19 10 */	subfe r0, r0, r3
/* 80CFE7FC  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80CFE800  7F A3 EB 78 */	mr r3, r29
/* 80CFE804  4B FF F9 51 */	bl is_switch2__Q212daObjSwpush25Act_cCFv
/* 80CFE808  2C 19 00 00 */	cmpwi r25, 0
/* 80CFE80C  40 82 00 24 */	bne lbl_80CFE830
/* 80CFE810  28 1C 00 00 */	cmplwi r28, 0
/* 80CFE814  40 82 00 0C */	bne lbl_80CFE820
/* 80CFE818  28 1A 00 00 */	cmplwi r26, 0
/* 80CFE81C  41 82 00 14 */	beq lbl_80CFE830
lbl_80CFE820:
/* 80CFE820  28 1C 00 00 */	cmplwi r28, 0
/* 80CFE824  41 82 00 30 */	beq lbl_80CFE854
/* 80CFE828  28 1A 00 00 */	cmplwi r26, 0
/* 80CFE82C  41 82 00 28 */	beq lbl_80CFE854
lbl_80CFE830:
/* 80CFE830  28 1B 00 00 */	cmplwi r27, 0
/* 80CFE834  41 82 00 0C */	beq lbl_80CFE840
/* 80CFE838  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CFE83C  40 82 00 18 */	bne lbl_80CFE854
lbl_80CFE840:
/* 80CFE840  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80CFE844  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 80CFE848  7F A3 EB 78 */	mr r3, r29
/* 80CFE84C  48 00 05 91 */	bl mode_upper_init__Q212daObjSwpush25Act_cFv
/* 80CFE850  48 00 00 14 */	b lbl_80CFE864
lbl_80CFE854:
/* 80CFE854  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80CFE858  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 80CFE85C  7F A3 EB 78 */	mr r3, r29
/* 80CFE860  48 00 09 09 */	bl mode_lower_init__Q212daObjSwpush25Act_cFv
lbl_80CFE864:
/* 80CFE864  7F A3 EB 78 */	mr r3, r29
/* 80CFE868  38 80 00 08 */	li r4, 8
/* 80CFE86C  38 A0 00 00 */	li r5, 0
/* 80CFE870  48 00 13 61 */	bl func_80CFFBD0
/* 80CFE874  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80CFE878  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFE87C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFE880  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 80CFE884  38 79 40 C0 */	addi r3, r25, 0x40c0
/* 80CFE888  7F A4 EB 78 */	mr r4, r29
/* 80CFE88C  4B 34 8E 0C */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80CFE890  B0 7D 05 CE */	sth r3, 0x5ce(r29)
/* 80CFE894  7F 23 CB 78 */	mr r3, r25
/* 80CFE898  80 9D 05 70 */	lwz r4, 0x570(r29)
/* 80CFE89C  7F A5 EB 78 */	mr r5, r29
/* 80CFE8A0  4B 37 61 68 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CFE8A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CFE8A8  41 82 00 08 */	beq lbl_80CFE8B0
/* 80CFE8AC  3B C0 00 00 */	li r30, 0
lbl_80CFE8B0:
/* 80CFE8B0  7F C3 F3 78 */	mr r3, r30
/* 80CFE8B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80CFE8B8  4B 66 39 60 */	b _restgpr_25
/* 80CFE8BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CFE8C0  7C 08 03 A6 */	mtlr r0
/* 80CFE8C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80CFE8C8  4E 80 00 20 */	blr 
