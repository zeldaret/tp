lbl_80476FA8:
/* 80476FA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80476FAC  7C 08 02 A6 */	mflr r0
/* 80476FB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80476FB4  39 61 00 40 */	addi r11, r1, 0x40
/* 80476FB8  4B EE B2 1C */	b _savegpr_27
/* 80476FBC  7C 7C 1B 78 */	mr r28, r3
/* 80476FC0  3C 60 80 48 */	lis r3, l_cyl_info@ha
/* 80476FC4  3B E3 99 0C */	addi r31, r3, l_cyl_info@l
/* 80476FC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80476FCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80476FD0  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80476FD4  3B A0 00 00 */	li r29, 0
/* 80476FD8  38 7C 07 C8 */	addi r3, r28, 0x7c8
/* 80476FDC  4B C0 D2 E4 */	b ChkAtHit__12dCcD_GObjInfFv
/* 80476FE0  28 03 00 00 */	cmplwi r3, 0
/* 80476FE4  41 82 00 0C */	beq lbl_80476FF0
/* 80476FE8  3B A0 00 01 */	li r29, 1
/* 80476FEC  48 00 01 74 */	b lbl_80477160
lbl_80476FF0:
/* 80476FF0  38 7C 07 C8 */	addi r3, r28, 0x7c8
/* 80476FF4  4B C0 D4 6C */	b ChkTgHit__12dCcD_GObjInfFv
/* 80476FF8  28 03 00 00 */	cmplwi r3, 0
/* 80476FFC  41 82 01 64 */	beq lbl_80477160
/* 80477000  38 7C 07 C8 */	addi r3, r28, 0x7c8
/* 80477004  4B C0 D4 F4 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80477008  7C 7B 1B 79 */	or. r27, r3, r3
/* 8047700C  41 82 01 54 */	beq lbl_80477160
/* 80477010  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 80477014  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80477018  40 82 00 10 */	bne lbl_80477028
/* 8047701C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80477020  40 82 00 08 */	bne lbl_80477028
/* 80477024  3B A0 00 01 */	li r29, 1
lbl_80477028:
/* 80477028  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8047702C  41 82 00 5C */	beq lbl_80477088
/* 80477030  88 1C 0D 75 */	lbz r0, 0xd75(r28)
/* 80477034  28 00 00 00 */	cmplwi r0, 0
/* 80477038  41 82 00 50 */	beq lbl_80477088
/* 8047703C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80477040  7C 03 07 74 */	extsb r3, r0
/* 80477044  4B BB 60 28 */	b dComIfGp_getReverb__Fi
/* 80477048  7C 67 1B 78 */	mr r7, r3
/* 8047704C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C0@ha */
/* 80477050  38 03 00 C0 */	addi r0, r3, 0x00C0 /* 0x000800C0@l */
/* 80477054  90 01 00 0C */	stw r0, 0xc(r1)
/* 80477058  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8047705C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80477060  80 63 00 00 */	lwz r3, 0(r3)
/* 80477064  38 81 00 0C */	addi r4, r1, 0xc
/* 80477068  38 BC 05 38 */	addi r5, r28, 0x538
/* 8047706C  38 C0 00 00 */	li r6, 0
/* 80477070  C0 3F 0A C0 */	lfs f1, 0xac0(r31)
/* 80477074  FC 40 08 90 */	fmr f2, f1
/* 80477078  C0 7F 0B 00 */	lfs f3, 0xb00(r31)
/* 8047707C  FC 80 18 90 */	fmr f4, f3
/* 80477080  39 00 00 00 */	li r8, 0
/* 80477084  4B E3 49 00 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80477088:
/* 80477088  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8047708C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80477090  41 82 00 D0 */	beq lbl_80477160
/* 80477094  88 1C 0D B0 */	lbz r0, 0xdb0(r28)
/* 80477098  28 00 00 00 */	cmplwi r0, 0
/* 8047709C  41 82 00 18 */	beq lbl_804770B4
/* 804770A0  38 00 00 10 */	li r0, 0x10
/* 804770A4  98 1C 0D 7A */	stb r0, 0xd7a(r28)
/* 804770A8  88 1C 04 9A */	lbz r0, 0x49a(r28)
/* 804770AC  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 804770B0  98 1C 04 9A */	stb r0, 0x49a(r28)
lbl_804770B4:
/* 804770B4  38 00 00 00 */	li r0, 0
/* 804770B8  98 1C 0D B0 */	stb r0, 0xdb0(r28)
/* 804770BC  88 1C 0C F1 */	lbz r0, 0xcf1(r28)
/* 804770C0  28 00 00 00 */	cmplwi r0, 0
/* 804770C4  41 82 00 0C */	beq lbl_804770D0
/* 804770C8  28 00 00 01 */	cmplwi r0, 1
/* 804770CC  40 82 00 48 */	bne lbl_80477114
lbl_804770D0:
/* 804770D0  38 61 00 10 */	addi r3, r1, 0x10
/* 804770D4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804770D8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804770DC  4B DE FA 58 */	b __mi__4cXyzCFRC3Vec
/* 804770E0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804770E4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804770E8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804770EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804770F0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 804770F4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 804770F8  C0 1F 0B 2C */	lfs f0, 0xb2c(r31)
/* 804770FC  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80477100  4B DF 05 74 */	b cM_atan2s__Fff
/* 80477104  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 80477108  7F 83 E3 78 */	mr r3, r28
/* 8047710C  38 80 00 00 */	li r4, 0
/* 80477110  4B FF C6 09 */	bl mode_init_walk__12daObjCarry_cFUc
lbl_80477114:
/* 80477114  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80477118  7C 03 07 74 */	extsb r3, r0
/* 8047711C  4B BB 5F 50 */	b dComIfGp_getReverb__Fi
/* 80477120  7C 67 1B 78 */	mr r7, r3
/* 80477124  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C0@ha */
/* 80477128  38 03 00 C0 */	addi r0, r3, 0x00C0 /* 0x000800C0@l */
/* 8047712C  90 01 00 08 */	stw r0, 8(r1)
/* 80477130  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80477134  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80477138  80 63 00 00 */	lwz r3, 0(r3)
/* 8047713C  38 81 00 08 */	addi r4, r1, 8
/* 80477140  38 BC 05 38 */	addi r5, r28, 0x538
/* 80477144  38 C0 00 00 */	li r6, 0
/* 80477148  C0 3F 0A C0 */	lfs f1, 0xac0(r31)
/* 8047714C  FC 40 08 90 */	fmr f2, f1
/* 80477150  C0 7F 0B 00 */	lfs f3, 0xb00(r31)
/* 80477154  FC 80 18 90 */	fmr f4, f3
/* 80477158  39 00 00 00 */	li r8, 0
/* 8047715C  4B E3 48 28 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80477160:
/* 80477160  88 1C 0D 75 */	lbz r0, 0xd75(r28)
/* 80477164  28 00 00 00 */	cmplwi r0, 0
/* 80477168  41 82 00 08 */	beq lbl_80477170
/* 8047716C  3B A0 00 00 */	li r29, 0
lbl_80477170:
/* 80477170  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80477174  41 82 00 20 */	beq lbl_80477194
/* 80477178  7F 83 E3 78 */	mr r3, r28
/* 8047717C  38 80 00 01 */	li r4, 1
/* 80477180  38 A0 00 01 */	li r5, 1
/* 80477184  38 C0 00 01 */	li r6, 1
/* 80477188  4B FF F7 B9 */	bl obj_break__12daObjCarry_cFbbb
/* 8047718C  7F 83 E3 78 */	mr r3, r28
/* 80477190  4B BA 2A EC */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80477194:
/* 80477194  7F A3 EB 78 */	mr r3, r29
/* 80477198  39 61 00 40 */	addi r11, r1, 0x40
/* 8047719C  4B EE B0 84 */	b _restgpr_27
/* 804771A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804771A4  7C 08 03 A6 */	mtlr r0
/* 804771A8  38 21 00 40 */	addi r1, r1, 0x40
/* 804771AC  4E 80 00 20 */	blr 
