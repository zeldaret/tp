lbl_80CBE138:
/* 80CBE138  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80CBE13C  7C 08 02 A6 */	mflr r0
/* 80CBE140  90 01 01 44 */	stw r0, 0x144(r1)
/* 80CBE144  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 80CBE148  F3 E1 01 38 */	psq_st f31, 312(r1), 0, 0 /* qr0 */
/* 80CBE14C  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 80CBE150  F3 C1 01 28 */	psq_st f30, 296(r1), 0, 0 /* qr0 */
/* 80CBE154  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 80CBE158  F3 A1 01 18 */	psq_st f29, 280(r1), 0, 0 /* qr0 */
/* 80CBE15C  DB 81 01 00 */	stfd f28, 0x100(r1)
/* 80CBE160  F3 81 01 08 */	psq_st f28, 264(r1), 0, 0 /* qr0 */
/* 80CBE164  39 61 01 00 */	addi r11, r1, 0x100
/* 80CBE168  4B 6A 40 5C */	b _savegpr_23
/* 80CBE16C  7C 7D 1B 78 */	mr r29, r3
/* 80CBE170  3C 80 80 CC */	lis r4, lit_3814@ha
/* 80CBE174  3B E4 E7 A4 */	addi r31, r4, lit_3814@l
/* 80CBE178  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CBE17C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CBE180  40 82 00 68 */	bne lbl_80CBE1E8
/* 80CBE184  7F A0 EB 79 */	or. r0, r29, r29
/* 80CBE188  41 82 00 54 */	beq lbl_80CBE1DC
/* 80CBE18C  7C 17 03 78 */	mr r23, r0
/* 80CBE190  4B 35 A9 D4 */	b __ct__10fopAc_ac_cFv
/* 80CBE194  38 77 05 78 */	addi r3, r23, 0x578
/* 80CBE198  3C 80 80 CC */	lis r4, __ct__7rock_ssFv@ha
/* 80CBE19C  38 84 E6 78 */	addi r4, r4, __ct__7rock_ssFv@l
/* 80CBE1A0  3C A0 80 CC */	lis r5, __dt__7rock_ssFv@ha
/* 80CBE1A4  38 A5 E5 A4 */	addi r5, r5, __dt__7rock_ssFv@l
/* 80CBE1A8  38 C0 01 60 */	li r6, 0x160
/* 80CBE1AC  38 E0 00 10 */	li r7, 0x10
/* 80CBE1B0  4B 6A 3B B0 */	b __construct_array
/* 80CBE1B4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CBE1B8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CBE1BC  90 17 1B 94 */	stw r0, 0x1b94(r23)
/* 80CBE1C0  38 77 1B 98 */	addi r3, r23, 0x1b98
/* 80CBE1C4  4B 3C 55 9C */	b __ct__10dCcD_GSttsFv
/* 80CBE1C8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CBE1CC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CBE1D0  90 77 1B 94 */	stw r3, 0x1b94(r23)
/* 80CBE1D4  38 03 00 20 */	addi r0, r3, 0x20
/* 80CBE1D8  90 17 1B 98 */	stw r0, 0x1b98(r23)
lbl_80CBE1DC:
/* 80CBE1DC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80CBE1E0  60 00 00 08 */	ori r0, r0, 8
/* 80CBE1E4  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80CBE1E8:
/* 80CBE1E8  38 7D 05 68 */	addi r3, r29, 0x568
/* 80CBE1EC  3C 80 80 CC */	lis r4, stringBase0@ha
/* 80CBE1F0  38 84 E7 E4 */	addi r4, r4, stringBase0@l
/* 80CBE1F4  4B 36 EC C8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CBE1F8  7C 7C 1B 78 */	mr r28, r3
/* 80CBE1FC  2C 1C 00 04 */	cmpwi r28, 4
/* 80CBE200  40 82 03 68 */	bne lbl_80CBE568
/* 80CBE204  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80CBE208  98 1D 05 70 */	stb r0, 0x570(r29)
/* 80CBE20C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80CBE210  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80CBE214  98 1D 05 71 */	stb r0, 0x571(r29)
/* 80CBE218  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80CBE21C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80CBE220  98 1D 05 72 */	stb r0, 0x572(r29)
/* 80CBE224  88 1D 05 72 */	lbz r0, 0x572(r29)
/* 80CBE228  28 00 00 FF */	cmplwi r0, 0xff
/* 80CBE22C  40 82 00 0C */	bne lbl_80CBE238
/* 80CBE230  38 00 00 00 */	li r0, 0
/* 80CBE234  98 1D 05 72 */	stb r0, 0x572(r29)
lbl_80CBE238:
/* 80CBE238  88 7D 05 70 */	lbz r3, 0x570(r29)
/* 80CBE23C  38 03 00 01 */	addi r0, r3, 1
/* 80CBE240  90 1D 1B 78 */	stw r0, 0x1b78(r29)
/* 80CBE244  80 1D 1B 78 */	lwz r0, 0x1b78(r29)
/* 80CBE248  2C 00 00 10 */	cmpwi r0, 0x10
/* 80CBE24C  40 81 00 0C */	ble lbl_80CBE258
/* 80CBE250  38 00 00 10 */	li r0, 0x10
/* 80CBE254  90 1D 1B 78 */	stw r0, 0x1b78(r29)
lbl_80CBE258:
/* 80CBE258  7F A3 EB 78 */	mr r3, r29
/* 80CBE25C  3C 80 80 CC */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80CBE260  38 84 DE D8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80CBE264  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80CBE268  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80CBE26C  4B 35 C2 44 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CBE270  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CBE274  40 82 00 0C */	bne lbl_80CBE280
/* 80CBE278  38 60 00 05 */	li r3, 5
/* 80CBE27C  48 00 02 F0 */	b lbl_80CBE56C
lbl_80CBE280:
/* 80CBE280  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80CBE284  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80CBE288  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80CBE28C  38 60 00 00 */	li r3, 0
/* 80CBE290  4B 5B 2B CC */	b MtxTrans__FfffUc
/* 80CBE294  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CBE298  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CBE29C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CBE2A0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CBE2A4  38 61 00 74 */	addi r3, r1, 0x74
/* 80CBE2A8  4B 3B 92 D4 */	b __ct__11dBgS_GndChkFv
/* 80CBE2AC  38 61 00 20 */	addi r3, r1, 0x20
/* 80CBE2B0  4B 3B 95 00 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 80CBE2B4  3B 60 00 00 */	li r27, 0
/* 80CBE2B8  38 60 00 10 */	li r3, 0x10
/* 80CBE2BC  38 80 00 7B */	li r4, 0x7b
/* 80CBE2C0  38 A0 00 50 */	li r5, 0x50
/* 80CBE2C4  4B 5A 97 10 */	b cM_initRnd2__Fiii
/* 80CBE2C8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CBE2CC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CBE2D0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80CBE2D4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CBE2D8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80CBE2DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CBE2E0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CBE2E4  EC 01 00 2A */	fadds f0, f1, f0
/* 80CBE2E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CBE2EC  38 61 00 20 */	addi r3, r1, 0x20
/* 80CBE2F0  38 81 00 08 */	addi r4, r1, 8
/* 80CBE2F4  4B 5A 9A 18 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80CBE2F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBE2FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CBE300  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80CBE304  7F C3 F3 78 */	mr r3, r30
/* 80CBE308  38 81 00 20 */	addi r4, r1, 0x20
/* 80CBE30C  4B 3B 61 94 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80CBE310  FF C0 08 90 */	fmr f30, f1
/* 80CBE314  3B 40 00 00 */	li r26, 0
/* 80CBE318  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80CBE31C  3B 03 07 68 */	addi r24, r3, calc_mtx@l
/* 80CBE320  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80CBE324  C3 9F 00 34 */	lfs f28, 0x34(r31)
/* 80CBE328  CB BF 00 38 */	lfd f29, 0x38(r31)
/* 80CBE32C  3F 20 43 30 */	lis r25, 0x4330
/* 80CBE330  48 00 01 74 */	b lbl_80CBE4A4
lbl_80CBE334:
/* 80CBE334  4B 5B 2B E8 */	b MtxPush__Fv
/* 80CBE338  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80CBE33C  4B 5A 97 90 */	b cM_rndF2__Ff
/* 80CBE340  FC 00 08 1E */	fctiwz f0, f1
/* 80CBE344  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80CBE348  80 81 00 CC */	lwz r4, 0xcc(r1)
/* 80CBE34C  80 78 00 00 */	lwz r3, 0(r24)
/* 80CBE350  4B 34 E0 E4 */	b mDoMtx_YrotM__FPA4_fs
/* 80CBE354  38 61 00 14 */	addi r3, r1, 0x14
/* 80CBE358  1C 1A 01 60 */	mulli r0, r26, 0x160
/* 80CBE35C  7E FD 02 14 */	add r23, r29, r0
/* 80CBE360  38 97 05 7C */	addi r4, r23, 0x57c
/* 80CBE364  4B 5B 2B 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 80CBE368  4B 5B 2B F0 */	b MtxPull__Fv
/* 80CBE36C  C0 17 05 7C */	lfs f0, 0x57c(r23)
/* 80CBE370  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CBE374  C0 17 05 80 */	lfs f0, 0x580(r23)
/* 80CBE378  EC 1F 00 2A */	fadds f0, f31, f0
/* 80CBE37C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CBE380  C0 17 05 84 */	lfs f0, 0x584(r23)
/* 80CBE384  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CBE388  38 61 00 74 */	addi r3, r1, 0x74
/* 80CBE38C  38 81 00 08 */	addi r4, r1, 8
/* 80CBE390  4B 5A 99 7C */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80CBE394  7F C3 F3 78 */	mr r3, r30
/* 80CBE398  38 81 00 74 */	addi r4, r1, 0x74
/* 80CBE39C  4B 3B 61 04 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80CBE3A0  D0 37 05 80 */	stfs f1, 0x580(r23)
/* 80CBE3A4  7F A3 EB 78 */	mr r3, r29
/* 80CBE3A8  7F 44 D3 78 */	mr r4, r26
/* 80CBE3AC  4B FF FB D9 */	bl set_pos_check__FP14obj_rock_classi
/* 80CBE3B0  2C 03 00 00 */	cmpwi r3, 0
/* 80CBE3B4  41 82 00 80 */	beq lbl_80CBE434
/* 80CBE3B8  C0 17 05 80 */	lfs f0, 0x580(r23)
/* 80CBE3BC  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80CBE3C0  40 80 00 74 */	bge lbl_80CBE434
/* 80CBE3C4  38 00 00 01 */	li r0, 1
/* 80CBE3C8  98 17 06 D4 */	stb r0, 0x6d4(r23)
/* 80CBE3CC  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80CBE3D0  4B 5A 96 FC */	b cM_rndF2__Ff
/* 80CBE3D4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CBE3D8  EC 00 08 2A */	fadds f0, f0, f1
/* 80CBE3DC  D0 17 05 88 */	stfs f0, 0x588(r23)
/* 80CBE3E0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80CBE3E4  4B 5A 96 E8 */	b cM_rndF2__Ff
/* 80CBE3E8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CBE3EC  EC 00 08 2A */	fadds f0, f0, f1
/* 80CBE3F0  D0 17 05 90 */	stfs f0, 0x590(r23)
/* 80CBE3F4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80CBE3F8  4B 5A 96 D4 */	b cM_rndF2__Ff
/* 80CBE3FC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CBE400  EC 00 08 2A */	fadds f0, f0, f1
/* 80CBE404  D0 17 05 8C */	stfs f0, 0x58c(r23)
/* 80CBE408  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80CBE40C  4B 5A 96 C0 */	b cM_rndF2__Ff
/* 80CBE410  FC 00 08 50 */	fneg f0, f1
/* 80CBE414  D0 17 05 94 */	stfs f0, 0x594(r23)
/* 80CBE418  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80CBE41C  4B 5A 96 B0 */	b cM_rndF2__Ff
/* 80CBE420  FC 00 08 1E */	fctiwz f0, f1
/* 80CBE424  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80CBE428  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80CBE42C  B0 17 05 98 */	sth r0, 0x598(r23)
/* 80CBE430  48 00 00 34 */	b lbl_80CBE464
lbl_80CBE434:
/* 80CBE434  3B 7B 00 01 */	addi r27, r27, 1
/* 80CBE438  2C 1B 27 10 */	cmpwi r27, 0x2710
/* 80CBE43C  3B 5A FF FF */	addi r26, r26, -1
/* 80CBE440  40 81 00 24 */	ble lbl_80CBE464
/* 80CBE444  38 61 00 20 */	addi r3, r1, 0x20
/* 80CBE448  38 80 FF FF */	li r4, -1
/* 80CBE44C  4B 3B 93 FC */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80CBE450  38 61 00 74 */	addi r3, r1, 0x74
/* 80CBE454  38 80 FF FF */	li r4, -1
/* 80CBE458  4B 3B 91 98 */	b __dt__11dBgS_GndChkFv
/* 80CBE45C  38 60 00 05 */	li r3, 5
/* 80CBE460  48 00 01 0C */	b lbl_80CBE56C
lbl_80CBE464:
/* 80CBE464  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80CBE468  4B 5A 96 64 */	b cM_rndF2__Ff
/* 80CBE46C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CBE470  FC 00 08 18 */	frsp f0, f1
/* 80CBE474  EC 00 00 32 */	fmuls f0, f0, f0
/* 80CBE478  EC 3C 00 28 */	fsubs f1, f28, f0
/* 80CBE47C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CBE480  88 1D 05 71 */	lbz r0, 0x571(r29)
/* 80CBE484  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80CBE488  93 21 00 C8 */	stw r25, 0xc8(r1)
/* 80CBE48C  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 80CBE490  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80CBE494  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80CBE498  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CBE49C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CBE4A0  3B 5A 00 01 */	addi r26, r26, 1
lbl_80CBE4A4:
/* 80CBE4A4  80 1D 1B 78 */	lwz r0, 0x1b78(r29)
/* 80CBE4A8  7C 1A 00 00 */	cmpw r26, r0
/* 80CBE4AC  41 80 FE 88 */	blt lbl_80CBE334
/* 80CBE4B0  38 7D 1B 7C */	addi r3, r29, 0x1b7c
/* 80CBE4B4  38 80 00 FF */	li r4, 0xff
/* 80CBE4B8  38 A0 00 00 */	li r5, 0
/* 80CBE4BC  7F A6 EB 78 */	mr r6, r29
/* 80CBE4C0  4B 3C 53 A0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CBE4C4  3B 00 00 00 */	li r24, 0
/* 80CBE4C8  3B 40 00 00 */	li r26, 0
/* 80CBE4CC  3C 60 80 CC */	lis r3, cc_sph_src@ha
/* 80CBE4D0  3B E3 E7 F0 */	addi r31, r3, cc_sph_src@l
/* 80CBE4D4  3B 7D 1B 7C */	addi r27, r29, 0x1b7c
/* 80CBE4D8  48 00 00 20 */	b lbl_80CBE4F8
lbl_80CBE4DC:
/* 80CBE4DC  7E FD D2 14 */	add r23, r29, r26
/* 80CBE4E0  38 77 05 9C */	addi r3, r23, 0x59c
/* 80CBE4E4  7F E4 FB 78 */	mr r4, r31
/* 80CBE4E8  4B 3C 65 4C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80CBE4EC  93 77 05 E0 */	stw r27, 0x5e0(r23)
/* 80CBE4F0  3B 18 00 01 */	addi r24, r24, 1
/* 80CBE4F4  3B 5A 01 60 */	addi r26, r26, 0x160
lbl_80CBE4F8:
/* 80CBE4F8  80 1D 1B 78 */	lwz r0, 0x1b78(r29)
/* 80CBE4FC  7C 18 00 00 */	cmpw r24, r0
/* 80CBE500  41 80 FF DC */	blt lbl_80CBE4DC
/* 80CBE504  7F A3 EB 78 */	mr r3, r29
/* 80CBE508  4B FF F8 19 */	bl daObj_Rock_Execute__FP14obj_rock_class
/* 80CBE50C  3C 60 80 CC */	lis r3, stringBase0@ha
/* 80CBE510  38 63 E7 E4 */	addi r3, r3, stringBase0@l
/* 80CBE514  38 80 00 03 */	li r4, 3
/* 80CBE518  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CBE51C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CBE520  3C A5 00 02 */	addis r5, r5, 2
/* 80CBE524  38 C0 00 80 */	li r6, 0x80
/* 80CBE528  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CBE52C  4B 37 DD C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CBE530  7C 64 1B 78 */	mr r4, r3
/* 80CBE534  7F C3 F3 78 */	mr r3, r30
/* 80CBE538  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80CBE53C  7C 05 07 74 */	extsb r5, r0
/* 80CBE540  38 C0 00 00 */	li r6, 0
/* 80CBE544  4B 36 E5 AC */	b addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 80CBE548  38 00 00 01 */	li r0, 1
/* 80CBE54C  98 1D 1B B9 */	stb r0, 0x1bb9(r29)
/* 80CBE550  38 61 00 20 */	addi r3, r1, 0x20
/* 80CBE554  38 80 FF FF */	li r4, -1
/* 80CBE558  4B 3B 92 F0 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80CBE55C  38 61 00 74 */	addi r3, r1, 0x74
/* 80CBE560  38 80 FF FF */	li r4, -1
/* 80CBE564  4B 3B 90 8C */	b __dt__11dBgS_GndChkFv
lbl_80CBE568:
/* 80CBE568  7F 83 E3 78 */	mr r3, r28
lbl_80CBE56C:
/* 80CBE56C  E3 E1 01 38 */	psq_l f31, 312(r1), 0, 0 /* qr0 */
/* 80CBE570  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 80CBE574  E3 C1 01 28 */	psq_l f30, 296(r1), 0, 0 /* qr0 */
/* 80CBE578  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 80CBE57C  E3 A1 01 18 */	psq_l f29, 280(r1), 0, 0 /* qr0 */
/* 80CBE580  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 80CBE584  E3 81 01 08 */	psq_l f28, 264(r1), 0, 0 /* qr0 */
/* 80CBE588  CB 81 01 00 */	lfd f28, 0x100(r1)
/* 80CBE58C  39 61 01 00 */	addi r11, r1, 0x100
/* 80CBE590  4B 6A 3C 80 */	b _restgpr_23
/* 80CBE594  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80CBE598  7C 08 03 A6 */	mtlr r0
/* 80CBE59C  38 21 01 40 */	addi r1, r1, 0x140
/* 80CBE5A0  4E 80 00 20 */	blr 
