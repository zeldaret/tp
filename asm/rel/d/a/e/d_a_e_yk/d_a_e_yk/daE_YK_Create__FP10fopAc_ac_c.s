lbl_808071F4:
/* 808071F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 808071F8  7C 08 02 A6 */	mflr r0
/* 808071FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80807200  39 61 00 30 */	addi r11, r1, 0x30
/* 80807204  4B B5 AF D5 */	bl _savegpr_28
/* 80807208  7C 7E 1B 78 */	mr r30, r3
/* 8080720C  3C 80 80 80 */	lis r4, lit_3941@ha /* 0x80807C9C@ha */
/* 80807210  3B E4 7C 9C */	addi r31, r4, lit_3941@l /* 0x80807C9C@l */
/* 80807214  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80807218  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8080721C  40 82 00 E8 */	bne lbl_80807304
/* 80807220  7F C0 F3 79 */	or. r0, r30, r30
/* 80807224  41 82 00 D4 */	beq lbl_808072F8
/* 80807228  7C 1D 03 78 */	mr r29, r0
/* 8080722C  4B 81 19 39 */	bl __ct__10fopAc_ac_cFv
/* 80807230  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80807234  4B AB 9D 31 */	bl __ct__15Z2CreatureEnemyFv
/* 80807238  38 7D 06 C8 */	addi r3, r29, 0x6c8
/* 8080723C  4B 86 EC 71 */	bl __ct__12dBgS_AcchCirFv
/* 80807240  3B 9D 07 08 */	addi r28, r29, 0x708
/* 80807244  7F 83 E3 78 */	mr r3, r28
/* 80807248  4B 86 EE 59 */	bl __ct__9dBgS_AcchFv
/* 8080724C  3C 60 80 80 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80807EBC@ha */
/* 80807250  38 63 7E BC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80807EBC@l */
/* 80807254  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80807258  38 03 00 0C */	addi r0, r3, 0xc
/* 8080725C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80807260  38 03 00 18 */	addi r0, r3, 0x18
/* 80807264  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80807268  38 7C 00 14 */	addi r3, r28, 0x14
/* 8080726C  4B 87 1B FD */	bl SetObj__16dBgS_PolyPassChkFv
/* 80807270  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80807274  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80807278  90 1D 08 F8 */	stw r0, 0x8f8(r29)
/* 8080727C  38 7D 08 FC */	addi r3, r29, 0x8fc
/* 80807280  4B 87 C4 E1 */	bl __ct__10dCcD_GSttsFv
/* 80807284  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80807288  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8080728C  90 7D 08 F8 */	stw r3, 0x8f8(r29)
/* 80807290  38 03 00 20 */	addi r0, r3, 0x20
/* 80807294  90 1D 08 FC */	stw r0, 0x8fc(r29)
/* 80807298  3B 9D 09 1C */	addi r28, r29, 0x91c
/* 8080729C  7F 83 E3 78 */	mr r3, r28
/* 808072A0  4B 87 C7 89 */	bl __ct__12dCcD_GObjInfFv
/* 808072A4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 808072A8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 808072AC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 808072B0  3C 60 80 80 */	lis r3, __vt__8cM3dGAab@ha /* 0x80807EB0@ha */
/* 808072B4  38 03 7E B0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80807EB0@l */
/* 808072B8  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 808072BC  3C 60 80 80 */	lis r3, __vt__8cM3dGSph@ha /* 0x80807EA4@ha */
/* 808072C0  38 03 7E A4 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80807EA4@l */
/* 808072C4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 808072C8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 808072CC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 808072D0  90 7C 01 20 */	stw r3, 0x120(r28)
/* 808072D4  38 03 00 58 */	addi r0, r3, 0x58
/* 808072D8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 808072DC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 808072E0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 808072E4  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 808072E8  38 03 00 2C */	addi r0, r3, 0x2c
/* 808072EC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 808072F0  38 03 00 84 */	addi r0, r3, 0x84
/* 808072F4  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_808072F8:
/* 808072F8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 808072FC  60 00 00 08 */	ori r0, r0, 8
/* 80807300  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80807304:
/* 80807304  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80807308  3C 80 80 80 */	lis r4, d_a_e_yk__stringBase0@ha /* 0x80807D64@ha */
/* 8080730C  38 84 7D 64 */	addi r4, r4, d_a_e_yk__stringBase0@l /* 0x80807D64@l */
/* 80807310  4B 82 5B AD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80807314  7C 7D 1B 78 */	mr r29, r3
/* 80807318  2C 1D 00 04 */	cmpwi r29, 4
/* 8080731C  40 82 02 94 */	bne lbl_808075B0
/* 80807320  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80807324  54 04 46 3E */	srwi r4, r0, 0x18
/* 80807328  2C 04 00 FF */	cmpwi r4, 0xff
/* 8080732C  41 82 00 28 */	beq lbl_80807354
/* 80807330  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80807334  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80807338  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8080733C  7C 05 07 74 */	extsb r5, r0
/* 80807340  4B 82 E0 21 */	bl isSwitch__10dSv_info_cCFii
/* 80807344  2C 03 00 00 */	cmpwi r3, 0
/* 80807348  41 82 00 0C */	beq lbl_80807354
/* 8080734C  38 60 00 05 */	li r3, 5
/* 80807350  48 00 02 64 */	b lbl_808075B4
lbl_80807354:
/* 80807354  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80807358  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 8080735C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80807360  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80807364  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 80807368  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8080736C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80807370  98 1E 05 B7 */	stb r0, 0x5b7(r30)
/* 80807374  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80807378  28 00 00 FF */	cmplwi r0, 0xff
/* 8080737C  40 82 00 0C */	bne lbl_80807388
/* 80807380  38 00 00 00 */	li r0, 0
/* 80807384  98 1E 05 B4 */	stb r0, 0x5b4(r30)
lbl_80807388:
/* 80807388  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 8080738C  28 00 00 0F */	cmplwi r0, 0xf
/* 80807390  40 82 00 0C */	bne lbl_8080739C
/* 80807394  38 00 00 0A */	li r0, 0xa
/* 80807398  98 1E 05 B5 */	stb r0, 0x5b5(r30)
lbl_8080739C:
/* 8080739C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 808073A0  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 808073A4  C8 3F 00 C0 */	lfd f1, 0xc0(r31)
/* 808073A8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 808073AC  3C 00 43 30 */	lis r0, 0x4330
/* 808073B0  90 01 00 18 */	stw r0, 0x18(r1)
/* 808073B4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 808073B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 808073BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 808073C0  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 808073C4  38 00 01 E4 */	li r0, 0x1e4
/* 808073C8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 808073CC  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 808073D0  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 808073D4  38 81 00 10 */	addi r4, r1, 0x10
/* 808073D8  4B 81 24 21 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 808073DC  28 03 00 00 */	cmplwi r3, 0
/* 808073E0  41 82 00 0C */	beq lbl_808073EC
/* 808073E4  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 808073E8  D0 1E 06 88 */	stfs f0, 0x688(r30)
lbl_808073EC:
/* 808073EC  7F C3 F3 78 */	mr r3, r30
/* 808073F0  3C 80 80 80 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x808070FC@ha */
/* 808073F4  38 84 70 FC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x808070FC@l */
/* 808073F8  38 A0 17 40 */	li r5, 0x1740
/* 808073FC  4B 81 30 B5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80807400  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80807404  40 82 00 0C */	bne lbl_80807410
/* 80807408  38 60 00 05 */	li r3, 5
/* 8080740C  48 00 01 A8 */	b lbl_808075B4
lbl_80807410:
/* 80807410  88 7E 05 B7 */	lbz r3, 0x5b7(r30)
/* 80807414  28 03 00 FF */	cmplwi r3, 0xff
/* 80807418  41 82 00 48 */	beq lbl_80807460
/* 8080741C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80807420  7C 04 07 74 */	extsb r4, r0
/* 80807424  4B 84 A3 C9 */	bl dPath_GetRoomPath__Fii
/* 80807428  90 7E 05 BC */	stw r3, 0x5bc(r30)
/* 8080742C  80 1E 05 BC */	lwz r0, 0x5bc(r30)
/* 80807430  28 00 00 00 */	cmplwi r0, 0
/* 80807434  40 82 00 0C */	bne lbl_80807440
/* 80807438  38 60 00 05 */	li r3, 5
/* 8080743C  48 00 01 78 */	b lbl_808075B4
lbl_80807440:
/* 80807440  88 7E 05 B7 */	lbz r3, 0x5b7(r30)
/* 80807444  38 03 00 01 */	addi r0, r3, 1
/* 80807448  98 1E 05 B8 */	stb r0, 0x5b8(r30)
/* 8080744C  38 00 00 01 */	li r0, 1
/* 80807450  98 1E 05 BA */	stb r0, 0x5ba(r30)
/* 80807454  38 00 00 06 */	li r0, 6
/* 80807458  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8080745C  48 00 00 18 */	b lbl_80807474
lbl_80807460:
/* 80807460  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80807464  28 00 00 01 */	cmplwi r0, 1
/* 80807468  40 82 00 0C */	bne lbl_80807474
/* 8080746C  38 00 00 05 */	li r0, 5
/* 80807470  B0 1E 06 6E */	sth r0, 0x66e(r30)
lbl_80807474:
/* 80807474  3C 60 80 80 */	lis r3, data_80807EF8@ha /* 0x80807EF8@ha */
/* 80807478  8C 03 7E F8 */	lbzu r0, data_80807EF8@l(r3)  /* 0x80807EF8@l */
/* 8080747C  28 00 00 00 */	cmplwi r0, 0
/* 80807480  40 82 00 20 */	bne lbl_808074A0
/* 80807484  38 00 00 01 */	li r0, 1
/* 80807488  98 1E 0A 8C */	stb r0, 0xa8c(r30)
/* 8080748C  98 03 00 00 */	stb r0, 0(r3)
/* 80807490  38 00 FF FF */	li r0, -1
/* 80807494  3C 60 80 80 */	lis r3, l_HIO@ha /* 0x80807F08@ha */
/* 80807498  38 63 7F 08 */	addi r3, r3, l_HIO@l /* 0x80807F08@l */
/* 8080749C  98 03 00 04 */	stb r0, 4(r3)
lbl_808074A0:
/* 808074A0  38 00 00 04 */	li r0, 4
/* 808074A4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 808074A8  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 808074AC  80 63 00 04 */	lwz r3, 4(r3)
/* 808074B0  38 03 00 24 */	addi r0, r3, 0x24
/* 808074B4  90 1E 05 04 */	stw r0, 0x504(r30)
/* 808074B8  7F C3 F3 78 */	mr r3, r30
/* 808074BC  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 808074C0  FC 40 08 90 */	fmr f2, f1
/* 808074C4  FC 60 08 90 */	fmr f3, f1
/* 808074C8  4B 81 30 61 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 808074CC  7F C3 F3 78 */	mr r3, r30
/* 808074D0  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 808074D4  FC 40 08 90 */	fmr f2, f1
/* 808074D8  FC 60 08 90 */	fmr f3, f1
/* 808074DC  4B 81 30 5D */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 808074E0  38 00 00 01 */	li r0, 1
/* 808074E4  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 808074E8  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 808074EC  38 7E 08 E0 */	addi r3, r30, 0x8e0
/* 808074F0  38 80 00 1E */	li r4, 0x1e
/* 808074F4  38 A0 00 00 */	li r5, 0
/* 808074F8  7F C6 F3 78 */	mr r6, r30
/* 808074FC  4B 87 C3 65 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80807500  38 7E 09 1C */	addi r3, r30, 0x91c
/* 80807504  3C 80 80 80 */	lis r4, cc_sph_src@ha /* 0x80807DF0@ha */
/* 80807508  38 84 7D F0 */	addi r4, r4, cc_sph_src@l /* 0x80807DF0@l */
/* 8080750C  4B 87 D5 29 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80807510  38 1E 08 E0 */	addi r0, r30, 0x8e0
/* 80807514  90 1E 09 60 */	stw r0, 0x960(r30)
/* 80807518  38 00 00 00 */	li r0, 0
/* 8080751C  90 01 00 08 */	stw r0, 8(r1)
/* 80807520  38 7E 07 08 */	addi r3, r30, 0x708
/* 80807524  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80807528  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 8080752C  7F C6 F3 78 */	mr r6, r30
/* 80807530  38 E0 00 01 */	li r7, 1
/* 80807534  39 1E 06 C8 */	addi r8, r30, 0x6c8
/* 80807538  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 8080753C  39 40 00 00 */	li r10, 0
/* 80807540  4B 86 ED 09 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80807544  38 7E 06 C8 */	addi r3, r30, 0x6c8
/* 80807548  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8080754C  FC 40 08 90 */	fmr f2, f1
/* 80807550  4B 86 EA 09 */	bl SetWall__12dBgS_AcchCirFff
/* 80807554  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80807558  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8080755C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80807560  38 C0 00 03 */	li r6, 3
/* 80807564  38 E0 00 01 */	li r7, 1
/* 80807568  4B AB 9B 2D */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8080756C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80807570  3C 80 80 80 */	lis r4, d_a_e_yk__stringBase0@ha /* 0x80807D64@ha */
/* 80807574  38 84 7D 64 */	addi r4, r4, d_a_e_yk__stringBase0@l /* 0x80807D64@l */
/* 80807578  38 84 00 05 */	addi r4, r4, 5
/* 8080757C  4B AB A6 15 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80807580  38 1E 05 C4 */	addi r0, r30, 0x5c4
/* 80807584  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80807588  38 00 00 01 */	li r0, 1
/* 8080758C  98 1E 0A 72 */	stb r0, 0xa72(r30)
/* 80807590  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80807594  4B A6 03 C1 */	bl cM_rndF__Ff
/* 80807598  FC 00 08 1E */	fctiwz f0, f1
/* 8080759C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 808075A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 808075A4  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 808075A8  7F C3 F3 78 */	mr r3, r30
/* 808075AC  4B FF F5 CD */	bl daE_YK_Execute__FP10e_yk_class
lbl_808075B0:
/* 808075B0  7F A3 EB 78 */	mr r3, r29
lbl_808075B4:
/* 808075B4  39 61 00 30 */	addi r11, r1, 0x30
/* 808075B8  4B B5 AC 6D */	bl _restgpr_28
/* 808075BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 808075C0  7C 08 03 A6 */	mtlr r0
/* 808075C4  38 21 00 30 */	addi r1, r1, 0x30
/* 808075C8  4E 80 00 20 */	blr 
