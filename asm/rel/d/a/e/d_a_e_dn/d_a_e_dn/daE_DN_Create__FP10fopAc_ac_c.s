lbl_804EDAEC:
/* 804EDAEC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804EDAF0  7C 08 02 A6 */	mflr r0
/* 804EDAF4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804EDAF8  39 61 00 40 */	addi r11, r1, 0x40
/* 804EDAFC  4B E7 46 C8 */	b _savegpr_23
/* 804EDB00  7C 7C 1B 78 */	mr r28, r3
/* 804EDB04  3C 80 80 4F */	lis r4, lit_1109@ha
/* 804EDB08  3B A4 EE F0 */	addi r29, r4, lit_1109@l
/* 804EDB0C  3C 80 80 4F */	lis r4, cNullVec__6Z2Calc@ha
/* 804EDB10  3B C4 EA 40 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 804EDB14  3C 80 80 4F */	lis r4, lit_3789@ha
/* 804EDB18  3B E4 E8 AC */	addi r31, r4, lit_3789@l
/* 804EDB1C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804EDB20  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804EDB24  40 82 00 1C */	bne lbl_804EDB40
/* 804EDB28  28 1C 00 00 */	cmplwi r28, 0
/* 804EDB2C  41 82 00 08 */	beq lbl_804EDB34
/* 804EDB30  48 00 03 29 */	bl __ct__10e_dn_classFv
lbl_804EDB34:
/* 804EDB34  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 804EDB38  60 00 00 08 */	ori r0, r0, 8
/* 804EDB3C  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_804EDB40:
/* 804EDB40  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 804EDB44  3C 80 80 4F */	lis r4, stringBase0@ha
/* 804EDB48  38 84 EA 34 */	addi r4, r4, stringBase0@l
/* 804EDB4C  4B B3 F3 70 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 804EDB50  7C 7B 1B 78 */	mr r27, r3
/* 804EDB54  2C 1B 00 04 */	cmpwi r27, 4
/* 804EDB58  40 82 02 E4 */	bne lbl_804EDE3C
/* 804EDB5C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804EDB60  54 04 46 3E */	srwi r4, r0, 0x18
/* 804EDB64  2C 04 00 FF */	cmpwi r4, 0xff
/* 804EDB68  41 82 00 28 */	beq lbl_804EDB90
/* 804EDB6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804EDB70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804EDB74  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 804EDB78  7C 05 07 74 */	extsb r5, r0
/* 804EDB7C  4B B4 77 E4 */	b isSwitch__10dSv_info_cCFii
/* 804EDB80  2C 03 00 00 */	cmpwi r3, 0
/* 804EDB84  41 82 00 0C */	beq lbl_804EDB90
/* 804EDB88  38 60 00 05 */	li r3, 5
/* 804EDB8C  48 00 02 B4 */	b lbl_804EDE40
lbl_804EDB90:
/* 804EDB90  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804EDB94  98 1C 05 B6 */	stb r0, 0x5b6(r28)
/* 804EDB98  38 00 00 01 */	li r0, 1
/* 804EDB9C  98 1C 05 B9 */	stb r0, 0x5b9(r28)
/* 804EDBA0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804EDBA4  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 804EDBA8  98 1C 05 B7 */	stb r0, 0x5b7(r28)
/* 804EDBAC  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804EDBB0  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 804EDBB4  98 1C 05 B8 */	stb r0, 0x5b8(r28)
/* 804EDBB8  A8 1C 04 B8 */	lha r0, 0x4b8(r28)
/* 804EDBBC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 804EDBC0  41 82 00 0C */	beq lbl_804EDBCC
/* 804EDBC4  2C 00 00 FF */	cmpwi r0, 0xff
/* 804EDBC8  40 82 00 10 */	bne lbl_804EDBD8
lbl_804EDBCC:
/* 804EDBCC  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 804EDBD0  D0 1C 06 D8 */	stfs f0, 0x6d8(r28)
/* 804EDBD4  48 00 00 2C */	b lbl_804EDC00
lbl_804EDBD8:
/* 804EDBD8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804EDBDC  C8 3F 00 90 */	lfd f1, 0x90(r31)
/* 804EDBE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804EDBE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EDBE8  3C 00 43 30 */	lis r0, 0x4330
/* 804EDBEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804EDBF0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804EDBF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 804EDBF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EDBFC  D0 1C 06 D8 */	stfs f0, 0x6d8(r28)
lbl_804EDC00:
/* 804EDC00  38 00 00 00 */	li r0, 0
/* 804EDC04  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 804EDC08  B0 1C 04 E0 */	sth r0, 0x4e0(r28)
/* 804EDC0C  B0 1C 04 B8 */	sth r0, 0x4b8(r28)
/* 804EDC10  7F 83 E3 78 */	mr r3, r28
/* 804EDC14  3C 80 80 4F */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 804EDC18  38 84 D8 AC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 804EDC1C  38 A0 3B F0 */	li r5, 0x3bf0
/* 804EDC20  4B B2 C8 90 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804EDC24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804EDC28  40 82 00 0C */	bne lbl_804EDC34
/* 804EDC2C  38 60 00 05 */	li r3, 5
/* 804EDC30  48 00 02 10 */	b lbl_804EDE40
lbl_804EDC34:
/* 804EDC34  88 1D 00 3D */	lbz r0, 0x3d(r29)
/* 804EDC38  28 00 00 00 */	cmplwi r0, 0
/* 804EDC3C  40 82 00 1C */	bne lbl_804EDC58
/* 804EDC40  38 00 00 01 */	li r0, 1
/* 804EDC44  98 1C 10 D9 */	stb r0, 0x10d9(r28)
/* 804EDC48  98 1D 00 3D */	stb r0, 0x3d(r29)
/* 804EDC4C  38 00 FF FF */	li r0, -1
/* 804EDC50  38 7D 00 4C */	addi r3, r29, 0x4c
/* 804EDC54  98 03 00 04 */	stb r0, 4(r3)
lbl_804EDC58:
/* 804EDC58  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 804EDC5C  60 00 01 00 */	ori r0, r0, 0x100
/* 804EDC60  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 804EDC64  38 00 00 04 */	li r0, 4
/* 804EDC68  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 804EDC6C  80 7C 05 DC */	lwz r3, 0x5dc(r28)
/* 804EDC70  80 63 00 04 */	lwz r3, 4(r3)
/* 804EDC74  38 03 00 24 */	addi r0, r3, 0x24
/* 804EDC78  90 1C 05 04 */	stw r0, 0x504(r28)
/* 804EDC7C  7F 83 E3 78 */	mr r3, r28
/* 804EDC80  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 804EDC84  FC 40 08 90 */	fmr f2, f1
/* 804EDC88  FC 60 08 90 */	fmr f3, f1
/* 804EDC8C  4B B2 C8 9C */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 804EDC90  7F 83 E3 78 */	mr r3, r28
/* 804EDC94  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804EDC98  FC 40 08 90 */	fmr f2, f1
/* 804EDC9C  FC 60 08 90 */	fmr f3, f1
/* 804EDCA0  4B B2 C8 98 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 804EDCA4  38 00 00 00 */	li r0, 0
/* 804EDCA8  90 01 00 08 */	stw r0, 8(r1)
/* 804EDCAC  38 7C 08 84 */	addi r3, r28, 0x884
/* 804EDCB0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804EDCB4  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 804EDCB8  7F 86 E3 78 */	mr r6, r28
/* 804EDCBC  38 E0 00 01 */	li r7, 1
/* 804EDCC0  39 1C 08 44 */	addi r8, r28, 0x844
/* 804EDCC4  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 804EDCC8  39 40 00 00 */	li r10, 0
/* 804EDCCC  4B B8 85 7C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 804EDCD0  38 7C 08 44 */	addi r3, r28, 0x844
/* 804EDCD4  C0 3F 01 60 */	lfs f1, 0x160(r31)
/* 804EDCD8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804EDCDC  4B B8 82 7C */	b SetWall__12dBgS_AcchCirFff
/* 804EDCE0  88 1C 05 B7 */	lbz r0, 0x5b7(r28)
/* 804EDCE4  28 00 00 01 */	cmplwi r0, 1
/* 804EDCE8  40 82 00 14 */	bne lbl_804EDCFC
/* 804EDCEC  38 00 00 64 */	li r0, 0x64
/* 804EDCF0  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 804EDCF4  B0 1C 05 60 */	sth r0, 0x560(r28)
/* 804EDCF8  48 00 00 10 */	b lbl_804EDD08
lbl_804EDCFC:
/* 804EDCFC  38 00 00 64 */	li r0, 0x64
/* 804EDD00  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 804EDD04  B0 1C 05 60 */	sth r0, 0x560(r28)
lbl_804EDD08:
/* 804EDD08  38 7C 0A 60 */	addi r3, r28, 0xa60
/* 804EDD0C  38 80 00 C8 */	li r4, 0xc8
/* 804EDD10  38 A0 00 00 */	li r5, 0
/* 804EDD14  7F 86 E3 78 */	mr r6, r28
/* 804EDD18  4B B9 5B 48 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804EDD1C  3A E0 00 00 */	li r23, 0
/* 804EDD20  3B 40 00 00 */	li r26, 0
/* 804EDD24  3B 3C 0A 60 */	addi r25, r28, 0xa60
lbl_804EDD28:
/* 804EDD28  7F 1C D2 14 */	add r24, r28, r26
/* 804EDD2C  38 78 0A 9C */	addi r3, r24, 0xa9c
/* 804EDD30  38 9E 02 F8 */	addi r4, r30, 0x2f8
/* 804EDD34  4B B9 6D 00 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 804EDD38  93 38 0A E0 */	stw r25, 0xae0(r24)
/* 804EDD3C  3A F7 00 01 */	addi r23, r23, 1
/* 804EDD40  2C 17 00 02 */	cmpwi r23, 2
/* 804EDD44  3B 5A 01 38 */	addi r26, r26, 0x138
/* 804EDD48  40 81 FF E0 */	ble lbl_804EDD28
/* 804EDD4C  38 7C 0E 44 */	addi r3, r28, 0xe44
/* 804EDD50  38 9E 03 38 */	addi r4, r30, 0x338
/* 804EDD54  4B B9 6C E0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 804EDD58  38 1C 0A 60 */	addi r0, r28, 0xa60
/* 804EDD5C  90 1C 0E 88 */	stw r0, 0xe88(r28)
/* 804EDD60  38 7C 0F 7C */	addi r3, r28, 0xf7c
/* 804EDD64  38 9E 03 78 */	addi r4, r30, 0x378
/* 804EDD68  4B B9 6C CC */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 804EDD6C  38 1C 0A 60 */	addi r0, r28, 0xa60
/* 804EDD70  90 1C 0F C0 */	stw r0, 0xfc0(r28)
/* 804EDD74  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 804EDD78  4B D7 9B DC */	b cM_rndF__Ff
/* 804EDD7C  FC 00 08 1E */	fctiwz f0, f1
/* 804EDD80  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804EDD84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EDD88  54 00 04 2E */	rlwinm r0, r0, 0, 0x10, 0x17
/* 804EDD8C  B0 1C 06 CC */	sth r0, 0x6cc(r28)
/* 804EDD90  88 1C 05 B6 */	lbz r0, 0x5b6(r28)
/* 804EDD94  28 00 00 00 */	cmplwi r0, 0
/* 804EDD98  40 82 00 0C */	bne lbl_804EDDA4
/* 804EDD9C  38 00 00 09 */	li r0, 9
/* 804EDDA0  B0 1C 06 CE */	sth r0, 0x6ce(r28)
lbl_804EDDA4:
/* 804EDDA4  88 1C 05 B6 */	lbz r0, 0x5b6(r28)
/* 804EDDA8  28 00 00 0D */	cmplwi r0, 0xd
/* 804EDDAC  41 82 00 1C */	beq lbl_804EDDC8
/* 804EDDB0  28 00 00 0E */	cmplwi r0, 0xe
/* 804EDDB4  41 82 00 14 */	beq lbl_804EDDC8
/* 804EDDB8  28 00 00 0F */	cmplwi r0, 0xf
/* 804EDDBC  41 82 00 0C */	beq lbl_804EDDC8
/* 804EDDC0  28 00 00 10 */	cmplwi r0, 0x10
/* 804EDDC4  40 82 00 30 */	bne lbl_804EDDF4
lbl_804EDDC8:
/* 804EDDC8  38 00 00 01 */	li r0, 1
/* 804EDDCC  98 1C 10 D8 */	stb r0, 0x10d8(r28)
/* 804EDDD0  38 00 00 3C */	li r0, 0x3c
/* 804EDDD4  B0 1C 06 CE */	sth r0, 0x6ce(r28)
/* 804EDDD8  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 804EDDDC  60 00 40 00 */	ori r0, r0, 0x4000
/* 804EDDE0  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 804EDDE4  38 7C 08 44 */	addi r3, r28, 0x844
/* 804EDDE8  C0 3F 01 60 */	lfs f1, 0x160(r31)
/* 804EDDEC  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 804EDDF0  4B B8 81 68 */	b SetWall__12dBgS_AcchCirFff
lbl_804EDDF4:
/* 804EDDF4  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 804EDDF8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804EDDFC  38 BC 05 38 */	addi r5, r28, 0x538
/* 804EDE00  38 C0 00 03 */	li r6, 3
/* 804EDE04  38 E0 00 01 */	li r7, 1
/* 804EDE08  4B DD 32 8C */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 804EDE0C  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 804EDE10  3C 80 80 4F */	lis r4, stringBase0@ha
/* 804EDE14  38 84 EA 34 */	addi r4, r4, stringBase0@l
/* 804EDE18  4B DD 3D 78 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 804EDE1C  38 1C 05 E8 */	addi r0, r28, 0x5e8
/* 804EDE20  90 1C 10 BC */	stw r0, 0x10bc(r28)
/* 804EDE24  38 00 00 01 */	li r0, 1
/* 804EDE28  90 1D 00 A4 */	stw r0, 0xa4(r29)
/* 804EDE2C  7F 83 E3 78 */	mr r3, r28
/* 804EDE30  4B FF ED 21 */	bl daE_DN_Execute__FP10e_dn_class
/* 804EDE34  38 00 00 00 */	li r0, 0
/* 804EDE38  90 1D 00 A4 */	stw r0, 0xa4(r29)
lbl_804EDE3C:
/* 804EDE3C  7F 63 DB 78 */	mr r3, r27
lbl_804EDE40:
/* 804EDE40  39 61 00 40 */	addi r11, r1, 0x40
/* 804EDE44  4B E7 43 CC */	b _restgpr_23
/* 804EDE48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804EDE4C  7C 08 03 A6 */	mtlr r0
/* 804EDE50  38 21 00 40 */	addi r1, r1, 0x40
/* 804EDE54  4E 80 00 20 */	blr 
