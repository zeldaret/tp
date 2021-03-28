lbl_80D07FD8:
/* 80D07FD8  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80D07FDC  7C 08 02 A6 */	mflr r0
/* 80D07FE0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80D07FE4  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80D07FE8  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80D07FEC  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80D07FF0  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80D07FF4  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80D07FF8  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 80D07FFC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80D08000  4B 65 A1 C4 */	b _savegpr_23
/* 80D08004  7C 7D 1B 78 */	mr r29, r3
/* 80D08008  3C 80 80 D1 */	lis r4, lit_3867@ha
/* 80D0800C  3B E4 85 C0 */	addi r31, r4, lit_3867@l
/* 80D08010  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D08014  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D08018  40 82 00 68 */	bne lbl_80D08080
/* 80D0801C  7F A0 EB 79 */	or. r0, r29, r29
/* 80D08020  41 82 00 54 */	beq lbl_80D08074
/* 80D08024  7C 17 03 78 */	mr r23, r0
/* 80D08028  4B 31 0B 3C */	b __ct__10fopAc_ac_cFv
/* 80D0802C  38 77 05 7C */	addi r3, r23, 0x57c
/* 80D08030  3C 80 80 D1 */	lis r4, __ct__5tg_ssFv@ha
/* 80D08034  38 84 84 94 */	addi r4, r4, __ct__5tg_ssFv@l
/* 80D08038  3C A0 80 D1 */	lis r5, __dt__5tg_ssFv@ha
/* 80D0803C  38 A5 83 C0 */	addi r5, r5, __dt__5tg_ssFv@l
/* 80D08040  38 C0 01 60 */	li r6, 0x160
/* 80D08044  38 E0 00 10 */	li r7, 0x10
/* 80D08048  4B 65 9D 18 */	b __construct_array
/* 80D0804C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D08050  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D08054  90 17 1B 98 */	stw r0, 0x1b98(r23)
/* 80D08058  38 77 1B 9C */	addi r3, r23, 0x1b9c
/* 80D0805C  4B 37 B7 04 */	b __ct__10dCcD_GSttsFv
/* 80D08060  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D08064  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D08068  90 77 1B 98 */	stw r3, 0x1b98(r23)
/* 80D0806C  38 03 00 20 */	addi r0, r3, 0x20
/* 80D08070  90 17 1B 9C */	stw r0, 0x1b9c(r23)
lbl_80D08074:
/* 80D08074  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80D08078  60 00 00 08 */	ori r0, r0, 8
/* 80D0807C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80D08080:
/* 80D08080  38 7D 05 68 */	addi r3, r29, 0x568
/* 80D08084  3C 80 80 D1 */	lis r4, stringBase0@ha
/* 80D08088  38 84 86 20 */	addi r4, r4, stringBase0@l
/* 80D0808C  4B 32 4E 30 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D08090  7C 7C 1B 78 */	mr r28, r3
/* 80D08094  2C 1C 00 04 */	cmpwi r28, 4
/* 80D08098  40 82 02 F4 */	bne lbl_80D0838C
/* 80D0809C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D080A0  98 1D 05 70 */	stb r0, 0x570(r29)
/* 80D080A4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D080A8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D080AC  98 1D 05 71 */	stb r0, 0x571(r29)
/* 80D080B0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D080B4  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D080B8  98 1D 05 72 */	stb r0, 0x572(r29)
/* 80D080BC  88 1D 05 72 */	lbz r0, 0x572(r29)
/* 80D080C0  28 00 00 FF */	cmplwi r0, 0xff
/* 80D080C4  40 82 00 0C */	bne lbl_80D080D0
/* 80D080C8  38 00 00 00 */	li r0, 0
/* 80D080CC  98 1D 05 72 */	stb r0, 0x572(r29)
lbl_80D080D0:
/* 80D080D0  88 7D 05 70 */	lbz r3, 0x570(r29)
/* 80D080D4  38 03 00 01 */	addi r0, r3, 1
/* 80D080D8  90 1D 1B 7C */	stw r0, 0x1b7c(r29)
/* 80D080DC  80 1D 1B 7C */	lwz r0, 0x1b7c(r29)
/* 80D080E0  2C 00 00 10 */	cmpwi r0, 0x10
/* 80D080E4  40 81 00 0C */	ble lbl_80D080F0
/* 80D080E8  38 00 00 10 */	li r0, 0x10
/* 80D080EC  90 1D 1B 7C */	stw r0, 0x1b7c(r29)
lbl_80D080F0:
/* 80D080F0  7F A3 EB 78 */	mr r3, r29
/* 80D080F4  3C 80 80 D0 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80D080F8  38 84 7D 78 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80D080FC  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80D08100  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80D08104  4B 31 23 AC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D08108  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0810C  40 82 00 0C */	bne lbl_80D08118
/* 80D08110  38 60 00 05 */	li r3, 5
/* 80D08114  48 00 02 7C */	b lbl_80D08390
lbl_80D08118:
/* 80D08118  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80D0811C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80D08120  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80D08124  38 60 00 00 */	li r3, 0
/* 80D08128  4B 56 8D 34 */	b MtxTrans__FfffUc
/* 80D0812C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80D08130  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D08134  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D08138  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D0813C  38 61 00 20 */	addi r3, r1, 0x20
/* 80D08140  4B 36 F4 3C */	b __ct__11dBgS_GndChkFv
/* 80D08144  3B 60 00 00 */	li r27, 0
/* 80D08148  38 60 00 0D */	li r3, 0xd
/* 80D0814C  38 80 00 7B */	li r4, 0x7b
/* 80D08150  38 A0 00 21 */	li r5, 0x21
/* 80D08154  4B 55 F8 80 */	b cM_initRnd2__Fiii
/* 80D08158  3B 40 00 00 */	li r26, 0
/* 80D0815C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D08160  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D08164  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80D08168  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80D0816C  3B 03 07 68 */	addi r24, r3, calc_mtx@l
/* 80D08170  C3 BF 00 40 */	lfs f29, 0x40(r31)
/* 80D08174  C3 DF 00 4C */	lfs f30, 0x4c(r31)
/* 80D08178  CB FF 00 58 */	lfd f31, 0x58(r31)
/* 80D0817C  3F 20 43 30 */	lis r25, 0x4330
/* 80D08180  48 00 01 3C */	b lbl_80D082BC
lbl_80D08184:
/* 80D08184  4B 56 8D 98 */	b MtxPush__Fv
/* 80D08188  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80D0818C  4B 55 F9 40 */	b cM_rndF2__Ff
/* 80D08190  FC 00 08 1E */	fctiwz f0, f1
/* 80D08194  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80D08198  80 81 00 7C */	lwz r4, 0x7c(r1)
/* 80D0819C  80 78 00 00 */	lwz r3, 0(r24)
/* 80D081A0  4B 30 42 94 */	b mDoMtx_YrotM__FPA4_fs
/* 80D081A4  38 61 00 14 */	addi r3, r1, 0x14
/* 80D081A8  1C 1A 01 60 */	mulli r0, r26, 0x160
/* 80D081AC  7E FD 02 14 */	add r23, r29, r0
/* 80D081B0  38 97 05 80 */	addi r4, r23, 0x580
/* 80D081B4  4B 56 8D 38 */	b MtxPosition__FP4cXyzP4cXyz
/* 80D081B8  4B 56 8D A0 */	b MtxPull__Fv
/* 80D081BC  C0 17 05 80 */	lfs f0, 0x580(r23)
/* 80D081C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D081C4  C0 17 05 84 */	lfs f0, 0x584(r23)
/* 80D081C8  EC 1D 00 2A */	fadds f0, f29, f0
/* 80D081CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D081D0  C0 17 05 88 */	lfs f0, 0x588(r23)
/* 80D081D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D081D8  38 61 00 20 */	addi r3, r1, 0x20
/* 80D081DC  38 81 00 08 */	addi r4, r1, 8
/* 80D081E0  4B 55 FB 2C */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80D081E4  7F C3 F3 78 */	mr r3, r30
/* 80D081E8  38 81 00 20 */	addi r4, r1, 0x20
/* 80D081EC  4B 36 C2 B4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80D081F0  D0 37 05 84 */	stfs f1, 0x584(r23)
/* 80D081F4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80D081F8  4B 55 F8 D4 */	b cM_rndF2__Ff
/* 80D081FC  FC 00 08 1E */	fctiwz f0, f1
/* 80D08200  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80D08204  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80D08208  B0 17 05 98 */	sth r0, 0x598(r23)
/* 80D0820C  7F A3 EB 78 */	mr r3, r29
/* 80D08210  7F 44 D3 78 */	mr r4, r26
/* 80D08214  4B FF FC 11 */	bl set_pos_check__FP16obj_tatigi_classi
/* 80D08218  2C 03 00 00 */	cmpwi r3, 0
/* 80D0821C  41 82 00 3C */	beq lbl_80D08258
/* 80D08220  38 00 00 01 */	li r0, 1
/* 80D08224  98 17 06 D8 */	stb r0, 0x6d8(r23)
/* 80D08228  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80D0822C  4B 55 F8 A0 */	b cM_rndF2__Ff
/* 80D08230  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80D08234  EC 00 08 2A */	fadds f0, f0, f1
/* 80D08238  D0 17 05 94 */	stfs f0, 0x594(r23)
/* 80D0823C  D0 17 05 8C */	stfs f0, 0x58c(r23)
/* 80D08240  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80D08244  4B 55 F8 88 */	b cM_rndF2__Ff
/* 80D08248  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80D0824C  EC 00 08 2A */	fadds f0, f0, f1
/* 80D08250  D0 17 05 90 */	stfs f0, 0x590(r23)
/* 80D08254  48 00 00 28 */	b lbl_80D0827C
lbl_80D08258:
/* 80D08258  3B 7B 00 01 */	addi r27, r27, 1
/* 80D0825C  2C 1B 27 10 */	cmpwi r27, 0x2710
/* 80D08260  3B 5A FF FF */	addi r26, r26, -1
/* 80D08264  40 81 00 18 */	ble lbl_80D0827C
/* 80D08268  38 61 00 20 */	addi r3, r1, 0x20
/* 80D0826C  38 80 FF FF */	li r4, -1
/* 80D08270  4B 36 F3 80 */	b __dt__11dBgS_GndChkFv
/* 80D08274  38 60 00 05 */	li r3, 5
/* 80D08278  48 00 01 18 */	b lbl_80D08390
lbl_80D0827C:
/* 80D0827C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80D08280  4B 55 F8 4C */	b cM_rndF2__Ff
/* 80D08284  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D08288  FC 00 08 18 */	frsp f0, f1
/* 80D0828C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D08290  EC 3E 00 28 */	fsubs f1, f30, f0
/* 80D08294  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D08298  88 1D 05 71 */	lbz r0, 0x571(r29)
/* 80D0829C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80D082A0  93 21 00 80 */	stw r25, 0x80(r1)
/* 80D082A4  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80D082A8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80D082AC  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80D082B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D082B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D082B8  3B 5A 00 01 */	addi r26, r26, 1
lbl_80D082BC:
/* 80D082BC  80 1D 1B 7C */	lwz r0, 0x1b7c(r29)
/* 80D082C0  7C 1A 00 00 */	cmpw r26, r0
/* 80D082C4  41 80 FE C0 */	blt lbl_80D08184
/* 80D082C8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D082CC  4B 55 F6 88 */	b cM_rndF__Ff
/* 80D082D0  FC 00 08 1E */	fctiwz f0, f1
/* 80D082D4  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80D082D8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80D082DC  B0 1D 05 74 */	sth r0, 0x574(r29)
/* 80D082E0  38 7D 1B 80 */	addi r3, r29, 0x1b80
/* 80D082E4  38 80 00 FF */	li r4, 0xff
/* 80D082E8  38 A0 00 00 */	li r5, 0
/* 80D082EC  7F A6 EB 78 */	mr r6, r29
/* 80D082F0  4B 37 B5 70 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D082F4  3B 00 00 00 */	li r24, 0
/* 80D082F8  3B 40 00 00 */	li r26, 0
/* 80D082FC  3C 60 80 D1 */	lis r3, cc_cyl_src@ha
/* 80D08300  3B E3 86 28 */	addi r31, r3, cc_cyl_src@l
/* 80D08304  3B 7D 1B 80 */	addi r27, r29, 0x1b80
/* 80D08308  48 00 00 20 */	b lbl_80D08328
lbl_80D0830C:
/* 80D0830C  7E FD D2 14 */	add r23, r29, r26
/* 80D08310  38 77 05 9C */	addi r3, r23, 0x59c
/* 80D08314  7F E4 FB 78 */	mr r4, r31
/* 80D08318  4B 37 C5 9C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D0831C  93 77 05 E0 */	stw r27, 0x5e0(r23)
/* 80D08320  3B 18 00 01 */	addi r24, r24, 1
/* 80D08324  3B 5A 01 60 */	addi r26, r26, 0x160
lbl_80D08328:
/* 80D08328  80 1D 1B 7C */	lwz r0, 0x1b7c(r29)
/* 80D0832C  7C 18 00 00 */	cmpw r24, r0
/* 80D08330  41 80 FF DC */	blt lbl_80D0830C
/* 80D08334  7F A3 EB 78 */	mr r3, r29
/* 80D08338  4B FF F7 29 */	bl daObj_Tatigi_Execute__FP16obj_tatigi_class
/* 80D0833C  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D08340  38 63 86 20 */	addi r3, r3, stringBase0@l
/* 80D08344  38 80 00 03 */	li r4, 3
/* 80D08348  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D0834C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D08350  3C A5 00 02 */	addis r5, r5, 2
/* 80D08354  38 C0 00 80 */	li r6, 0x80
/* 80D08358  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D0835C  4B 33 3F 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D08360  7C 64 1B 78 */	mr r4, r3
/* 80D08364  7F C3 F3 78 */	mr r3, r30
/* 80D08368  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D0836C  7C 05 07 74 */	extsb r5, r0
/* 80D08370  38 C0 00 00 */	li r6, 0
/* 80D08374  4B 32 47 7C */	b addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 80D08378  38 00 00 01 */	li r0, 1
/* 80D0837C  98 1D 1B BD */	stb r0, 0x1bbd(r29)
/* 80D08380  38 61 00 20 */	addi r3, r1, 0x20
/* 80D08384  38 80 FF FF */	li r4, -1
/* 80D08388  4B 36 F2 68 */	b __dt__11dBgS_GndChkFv
lbl_80D0838C:
/* 80D0838C  7F 83 E3 78 */	mr r3, r28
lbl_80D08390:
/* 80D08390  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80D08394  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80D08398  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80D0839C  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80D083A0  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 80D083A4  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80D083A8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80D083AC  4B 65 9E 64 */	b _restgpr_23
/* 80D083B0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80D083B4  7C 08 03 A6 */	mtlr r0
/* 80D083B8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80D083BC  4E 80 00 20 */	blr 
