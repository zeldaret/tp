lbl_80542254:
/* 80542254  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80542258  7C 08 02 A6 */	mflr r0
/* 8054225C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80542260  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80542264  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80542268  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8054226C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80542270  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80542274  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80542278  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 8054227C  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80542280  39 61 00 40 */	addi r11, r1, 0x40
/* 80542284  4B E1 FF 50 */	b _savegpr_27
/* 80542288  7C 7D 1B 78 */	mr r29, r3
/* 8054228C  3C 80 80 54 */	lis r4, cNullVec__6Z2Calc@ha
/* 80542290  3B C4 24 E4 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80542294  3C 80 80 54 */	lis r4, lit_3787@ha
/* 80542298  3B E4 24 C0 */	addi r31, r4, lit_3787@l
/* 8054229C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805422A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805422A4  40 82 00 1C */	bne lbl_805422C0
/* 805422A8  28 1D 00 00 */	cmplwi r29, 0
/* 805422AC  41 82 00 08 */	beq lbl_805422B4
/* 805422B0  4B AD 68 B4 */	b __ct__10fopAc_ac_cFv
lbl_805422B4:
/* 805422B4  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 805422B8  60 00 00 08 */	ori r0, r0, 8
/* 805422BC  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_805422C0:
/* 805422C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805422C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805422C8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 805422CC  3C 80 80 54 */	lis r4, stringBase0@ha
/* 805422D0  38 84 24 DC */	addi r4, r4, stringBase0@l
/* 805422D4  4B E2 66 C0 */	b strcmp
/* 805422D8  2C 03 00 00 */	cmpwi r3, 0
/* 805422DC  41 82 00 0C */	beq lbl_805422E8
/* 805422E0  38 60 00 05 */	li r3, 5
/* 805422E4  48 00 01 9C */	b lbl_80542480
lbl_805422E8:
/* 805422E8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805422EC  3B 83 CA 54 */	addi r28, r3, g_env_light@l
/* 805422F0  38 80 00 00 */	li r4, 0
/* 805422F4  88 1C 12 FE */	lbz r0, 0x12fe(r28)
/* 805422F8  28 00 00 02 */	cmplwi r0, 2
/* 805422FC  40 82 00 0C */	bne lbl_80542308
/* 80542300  38 80 00 A0 */	li r4, 0xa0
/* 80542304  48 00 00 10 */	b lbl_80542314
lbl_80542308:
/* 80542308  28 00 00 03 */	cmplwi r0, 3
/* 8054230C  40 82 00 08 */	bne lbl_80542314
/* 80542310  38 80 00 40 */	li r4, 0x40
lbl_80542314:
/* 80542314  2C 04 00 00 */	cmpwi r4, 0
/* 80542318  41 82 00 44 */	beq lbl_8054235C
/* 8054231C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80542320  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80542324  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80542328  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8054232C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80542330  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80542334  38 60 01 16 */	li r3, 0x116
/* 80542338  64 84 FF 01 */	oris r4, r4, 0xff01
/* 8054233C  60 84 0E 00 */	ori r4, r4, 0xe00
/* 80542340  38 A1 00 10 */	addi r5, r1, 0x10
/* 80542344  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80542348  7C 06 07 74 */	extsb r6, r0
/* 8054234C  38 E0 00 00 */	li r7, 0
/* 80542350  39 00 00 00 */	li r8, 0
/* 80542354  39 20 FF FF */	li r9, -1
/* 80542358  4B AD 7A 40 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_8054235C:
/* 8054235C  88 1C 12 FE */	lbz r0, 0x12fe(r28)
/* 80542360  28 00 00 02 */	cmplwi r0, 2
/* 80542364  40 82 00 7C */	bne lbl_805423E0
/* 80542368  3B 80 00 00 */	li r28, 0
/* 8054236C  C3 BF 00 0C */	lfs f29, 0xc(r31)
/* 80542370  C3 DF 00 14 */	lfs f30, 0x14(r31)
/* 80542374  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_80542378:
/* 80542378  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8054237C  4B D2 56 10 */	b cM_rndFX__Ff
/* 80542380  EF 9D 08 2A */	fadds f28, f29, f1
/* 80542384  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80542388  4B D2 56 04 */	b cM_rndFX__Ff
/* 8054238C  EC 1E 08 2A */	fadds f0, f30, f1
/* 80542390  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80542394  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 80542398  D3 81 00 18 */	stfs f28, 0x18(r1)
/* 8054239C  38 61 00 08 */	addi r3, r1, 8
/* 805423A0  38 80 00 00 */	li r4, 0
/* 805423A4  38 A0 00 00 */	li r5, 0
/* 805423A8  38 C0 FF FF */	li r6, -1
/* 805423AC  4B D2 50 48 */	b __ct__5csXyzFsss
/* 805423B0  38 60 02 E2 */	li r3, 0x2e2
/* 805423B4  38 80 00 00 */	li r4, 0
/* 805423B8  38 A1 00 10 */	addi r5, r1, 0x10
/* 805423BC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805423C0  7C 06 07 74 */	extsb r6, r0
/* 805423C4  38 E1 00 08 */	addi r7, r1, 8
/* 805423C8  39 00 00 00 */	li r8, 0
/* 805423CC  39 20 FF FF */	li r9, -1
/* 805423D0  4B AD 79 C8 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 805423D4  3B 9C 00 01 */	addi r28, r28, 1
/* 805423D8  2C 1C 00 04 */	cmpwi r28, 4
/* 805423DC  41 80 FF 9C */	blt lbl_80542378
lbl_805423E0:
/* 805423E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805423E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805423E8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805423EC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 805423F0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 805423F4  A0 84 03 9E */	lhz r4, 0x39e(r4)
/* 805423F8  4B AF 25 C4 */	b isEventBit__11dSv_event_cCFUs
/* 805423FC  2C 03 00 00 */	cmpwi r3, 0
/* 80542400  41 82 00 14 */	beq lbl_80542414
/* 80542404  7F A3 EB 78 */	mr r3, r29
/* 80542408  38 9E 03 F4 */	addi r4, r30, 0x3f4
/* 8054240C  4B FF FD 8D */	bl fish_set__FP10fopAc_ac_cP11fish_data_s
/* 80542410  48 00 00 6C */	b lbl_8054247C
lbl_80542414:
/* 80542414  7F A3 EB 78 */	mr r3, r29
/* 80542418  38 9E 00 20 */	addi r4, r30, 0x20
/* 8054241C  4B FF FD 7D */	bl fish_set__FP10fopAc_ac_cP11fish_data_s
/* 80542420  3B 60 00 00 */	li r27, 0
/* 80542424  3B 80 00 00 */	li r28, 0
/* 80542428  C3 FF 00 18 */	lfs f31, 0x18(r31)
lbl_8054242C:
/* 8054242C  38 9E 08 54 */	addi r4, r30, 0x854
/* 80542430  7C 84 E2 14 */	add r4, r4, r28
/* 80542434  C0 04 00 04 */	lfs f0, 4(r4)
/* 80542438  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8054243C  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 80542440  C0 04 00 08 */	lfs f0, 8(r4)
/* 80542444  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80542448  38 60 01 0F */	li r3, 0x10f
/* 8054244C  88 84 00 00 */	lbz r4, 0(r4)
/* 80542450  38 A1 00 10 */	addi r5, r1, 0x10
/* 80542454  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80542458  7C 06 07 74 */	extsb r6, r0
/* 8054245C  38 E0 00 00 */	li r7, 0
/* 80542460  39 00 00 00 */	li r8, 0
/* 80542464  39 20 FF FF */	li r9, -1
/* 80542468  4B AD 79 30 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8054246C  3B 7B 00 01 */	addi r27, r27, 1
/* 80542470  2C 1B 00 0C */	cmpwi r27, 0xc
/* 80542474  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80542478  41 80 FF B4 */	blt lbl_8054242C
lbl_8054247C:
/* 8054247C  38 60 00 05 */	li r3, 5
lbl_80542480:
/* 80542480  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80542484  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80542488  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8054248C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80542490  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80542494  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80542498  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 8054249C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 805424A0  39 61 00 40 */	addi r11, r1, 0x40
/* 805424A4  4B E1 FD 7C */	b _restgpr_27
/* 805424A8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805424AC  7C 08 03 A6 */	mtlr r0
/* 805424B0  38 21 00 80 */	addi r1, r1, 0x80
/* 805424B4  4E 80 00 20 */	blr 
