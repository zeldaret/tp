lbl_80BB846C:
/* 80BB846C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BB8470  7C 08 02 A6 */	mflr r0
/* 80BB8474  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BB8478  39 61 00 30 */	addi r11, r1, 0x30
/* 80BB847C  4B 7A 9D 51 */	bl _savegpr_25
/* 80BB8480  7C 7E 1B 78 */	mr r30, r3
/* 80BB8484  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BB8488  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BB848C  40 82 00 74 */	bne lbl_80BB8500
/* 80BB8490  7F C0 F3 79 */	or. r0, r30, r30
/* 80BB8494  41 82 00 60 */	beq lbl_80BB84F4
/* 80BB8498  7C 19 03 78 */	mr r25, r0
/* 80BB849C  4B 4C 01 89 */	bl __ct__16dBgS_MoveBgActorFv
/* 80BB84A0  3C 60 80 BC */	lis r3, __vt__12daBmWindow_c@ha /* 0x80BB9938@ha */
/* 80BB84A4  38 03 99 38 */	addi r0, r3, __vt__12daBmWindow_c@l /* 0x80BB9938@l */
/* 80BB84A8  90 19 05 9C */	stw r0, 0x59c(r25)
/* 80BB84AC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BB84B0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BB84B4  90 19 05 C8 */	stw r0, 0x5c8(r25)
/* 80BB84B8  38 79 05 CC */	addi r3, r25, 0x5cc
/* 80BB84BC  4B 4C B2 A5 */	bl __ct__10dCcD_GSttsFv
/* 80BB84C0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BB84C4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BB84C8  90 79 05 C8 */	stw r3, 0x5c8(r25)
/* 80BB84CC  38 03 00 20 */	addi r0, r3, 0x20
/* 80BB84D0  90 19 05 CC */	stw r0, 0x5cc(r25)
/* 80BB84D4  38 79 05 EC */	addi r3, r25, 0x5ec
/* 80BB84D8  3C 80 80 BC */	lis r4, __ct__8dCcD_CylFv@ha /* 0x80BB8768@ha */
/* 80BB84DC  38 84 87 68 */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x80BB8768@l */
/* 80BB84E0  3C A0 80 BC */	lis r5, __dt__8dCcD_CylFv@ha /* 0x80BB869C@ha */
/* 80BB84E4  38 A5 86 9C */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x80BB869C@l */
/* 80BB84E8  38 C0 01 3C */	li r6, 0x13c
/* 80BB84EC  38 E0 00 07 */	li r7, 7
/* 80BB84F0  4B 7A 98 71 */	bl __construct_array
lbl_80BB84F4:
/* 80BB84F4  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BB84F8  60 00 00 08 */	ori r0, r0, 8
/* 80BB84FC  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BB8500:
/* 80BB8500  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB8504  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB8508  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BB850C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BB8510  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BB8514  7C 05 07 74 */	extsb r5, r0
/* 80BB8518  4B 47 CE 49 */	bl isSwitch__10dSv_info_cCFii
/* 80BB851C  2C 03 00 00 */	cmpwi r3, 0
/* 80BB8520  41 82 00 0C */	beq lbl_80BB852C
/* 80BB8524  38 60 00 05 */	li r3, 5
/* 80BB8528  48 00 01 5C */	b lbl_80BB8684
lbl_80BB852C:
/* 80BB852C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80BB8530  3C 80 80 BC */	lis r4, d_a_obj_bmWindow__stringBase0@ha /* 0x80BB9800@ha */
/* 80BB8534  38 84 98 00 */	addi r4, r4, d_a_obj_bmWindow__stringBase0@l /* 0x80BB9800@l */
/* 80BB8538  4B 47 49 85 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BB853C  7C 7F 1B 78 */	mr r31, r3
/* 80BB8540  2C 1F 00 04 */	cmpwi r31, 4
/* 80BB8544  40 82 01 3C */	bne lbl_80BB8680
/* 80BB8548  7F C3 F3 78 */	mr r3, r30
/* 80BB854C  3C 80 80 BC */	lis r4, d_a_obj_bmWindow__stringBase0@ha /* 0x80BB9800@ha */
/* 80BB8550  38 84 98 00 */	addi r4, r4, d_a_obj_bmWindow__stringBase0@l /* 0x80BB9800@l */
/* 80BB8554  38 A0 00 07 */	li r5, 7
/* 80BB8558  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80BB855C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80BB8560  38 E0 1D 20 */	li r7, 0x1d20
/* 80BB8564  39 00 00 00 */	li r8, 0
/* 80BB8568  4B 4C 02 55 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BB856C  2C 03 00 05 */	cmpwi r3, 5
/* 80BB8570  40 82 00 0C */	bne lbl_80BB857C
/* 80BB8574  38 60 00 05 */	li r3, 5
/* 80BB8578  48 00 01 0C */	b lbl_80BB8684
lbl_80BB857C:
/* 80BB857C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BB8580  38 03 00 24 */	addi r0, r3, 0x24
/* 80BB8584  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BB8588  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BB858C  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB8590  7F C3 F3 78 */	mr r3, r30
/* 80BB8594  4B 46 1F E5 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BB8598  38 00 00 00 */	li r0, 0
/* 80BB859C  B0 1E 0E 98 */	sth r0, 0xe98(r30)
/* 80BB85A0  B0 1E 0E 9A */	sth r0, 0xe9a(r30)
/* 80BB85A4  B0 1E 0E 9C */	sth r0, 0xe9c(r30)
/* 80BB85A8  3C 60 80 BC */	lis r3, lit_3769@ha /* 0x80BB97C0@ha */
/* 80BB85AC  C0 03 97 C0 */	lfs f0, lit_3769@l(r3)  /* 0x80BB97C0@l */
/* 80BB85B0  D0 1E 0E A0 */	stfs f0, 0xea0(r30)
/* 80BB85B4  D0 1E 0E B8 */	stfs f0, 0xeb8(r30)
/* 80BB85B8  D0 1E 0E BC */	stfs f0, 0xebc(r30)
/* 80BB85BC  D0 1E 0E C0 */	stfs f0, 0xec0(r30)
/* 80BB85C0  D0 1E 0E CC */	stfs f0, 0xecc(r30)
/* 80BB85C4  D0 1E 0E A8 */	stfs f0, 0xea8(r30)
/* 80BB85C8  D0 1E 0E A4 */	stfs f0, 0xea4(r30)
/* 80BB85CC  D0 1E 0E AC */	stfs f0, 0xeac(r30)
/* 80BB85D0  D0 1E 0E B0 */	stfs f0, 0xeb0(r30)
/* 80BB85D4  D0 1E 0E B4 */	stfs f0, 0xeb4(r30)
/* 80BB85D8  D0 1E 0E C4 */	stfs f0, 0xec4(r30)
/* 80BB85DC  D0 1E 0E C8 */	stfs f0, 0xec8(r30)
/* 80BB85E0  D0 1E 0E D0 */	stfs f0, 0xed0(r30)
/* 80BB85E4  D0 1E 0E D4 */	stfs f0, 0xed4(r30)
/* 80BB85E8  D0 1E 0E D8 */	stfs f0, 0xed8(r30)
/* 80BB85EC  90 1E 0E 94 */	stw r0, 0xe94(r30)
/* 80BB85F0  98 1E 0E 91 */	stb r0, 0xe91(r30)
/* 80BB85F4  B0 1E 0E DC */	sth r0, 0xedc(r30)
/* 80BB85F8  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80BB85FC  38 80 00 FF */	li r4, 0xff
/* 80BB8600  38 A0 00 01 */	li r5, 1
/* 80BB8604  7F C6 F3 78 */	mr r6, r30
/* 80BB8608  4B 4C B2 59 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BB860C  3B 20 00 00 */	li r25, 0
/* 80BB8610  3B A0 00 00 */	li r29, 0
/* 80BB8614  3C 60 80 BC */	lis r3, mCcDCyl__12daBmWindow_c@ha /* 0x80BB982C@ha */
/* 80BB8618  3B 63 98 2C */	addi r27, r3, mCcDCyl__12daBmWindow_c@l /* 0x80BB982C@l */
/* 80BB861C  3B 9E 05 B0 */	addi r28, r30, 0x5b0
lbl_80BB8620:
/* 80BB8620  7F 5E EA 14 */	add r26, r30, r29
/* 80BB8624  38 7A 05 EC */	addi r3, r26, 0x5ec
/* 80BB8628  7F 64 DB 78 */	mr r4, r27
/* 80BB862C  4B 4C C2 89 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BB8630  93 9A 06 30 */	stw r28, 0x630(r26)
/* 80BB8634  3B 39 00 01 */	addi r25, r25, 1
/* 80BB8638  2C 19 00 07 */	cmpwi r25, 7
/* 80BB863C  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80BB8640  41 80 FF E0 */	blt lbl_80BB8620
/* 80BB8644  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BB8648  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BB864C  98 1E 0E 90 */	stb r0, 0xe90(r30)
/* 80BB8650  88 1E 0E 90 */	lbz r0, 0xe90(r30)
/* 80BB8654  28 00 00 01 */	cmplwi r0, 1
/* 80BB8658  41 82 00 10 */	beq lbl_80BB8668
/* 80BB865C  7F C3 F3 78 */	mr r3, r30
/* 80BB8660  48 00 04 DD */	bl init_modeWait__12daBmWindow_cFv
/* 80BB8664  48 00 00 0C */	b lbl_80BB8670
lbl_80BB8668:
/* 80BB8668  7F C3 F3 78 */	mr r3, r30
/* 80BB866C  48 00 0B C1 */	bl init_modeBreakEff__12daBmWindow_cFv
lbl_80BB8670:
/* 80BB8670  38 00 00 00 */	li r0, 0
/* 80BB8674  98 1E 0E DE */	stb r0, 0xede(r30)
/* 80BB8678  7F C3 F3 78 */	mr r3, r30
/* 80BB867C  4B FF FC D5 */	bl setBaseMtx__12daBmWindow_cFv
lbl_80BB8680:
/* 80BB8680  7F E3 FB 78 */	mr r3, r31
lbl_80BB8684:
/* 80BB8684  39 61 00 30 */	addi r11, r1, 0x30
/* 80BB8688  4B 7A 9B 91 */	bl _restgpr_25
/* 80BB868C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BB8690  7C 08 03 A6 */	mtlr r0
/* 80BB8694  38 21 00 30 */	addi r1, r1, 0x30
/* 80BB8698  4E 80 00 20 */	blr 
