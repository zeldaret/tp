lbl_805324D8:
/* 805324D8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805324DC  7C 08 02 A6 */	mflr r0
/* 805324E0  90 01 00 74 */	stw r0, 0x74(r1)
/* 805324E4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805324E8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805324EC  39 61 00 60 */	addi r11, r1, 0x60
/* 805324F0  4B E2 FC C8 */	b _savegpr_20
/* 805324F4  7C 7F 1B 78 */	mr r31, r3
/* 805324F8  3C 80 80 53 */	lis r4, lit_3679@ha
/* 805324FC  3B A4 61 68 */	addi r29, r4, lit_3679@l
/* 80532500  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80532504  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80532508  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8053250C  4B AE 84 58 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80532510  D0 3F 05 F0 */	stfs f1, 0x5f0(r31)
/* 80532514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80532518  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053251C  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80532520  38 7C 3E C8 */	addi r3, r28, 0x3ec8
/* 80532524  3C 80 80 53 */	lis r4, stringBase0@ha
/* 80532528  38 84 64 38 */	addi r4, r4, stringBase0@l
/* 8053252C  4B E3 64 68 */	b strcmp
/* 80532530  2C 03 00 00 */	cmpwi r3, 0
/* 80532534  40 82 00 78 */	bne lbl_805325AC
/* 80532538  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 8053253C  2C 00 00 05 */	cmpwi r0, 5
/* 80532540  40 82 00 18 */	bne lbl_80532558
/* 80532544  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80532548  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 8053254C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532550  40 81 00 5C */	ble lbl_805325AC
/* 80532554  48 00 0C F4 */	b lbl_80533248
lbl_80532558:
/* 80532558  2C 00 00 01 */	cmpwi r0, 1
/* 8053255C  40 82 00 50 */	bne lbl_805325AC
/* 80532560  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80532564  28 00 00 01 */	cmplwi r0, 1
/* 80532568  40 82 00 18 */	bne lbl_80532580
/* 8053256C  38 00 00 0A */	li r0, 0xa
/* 80532570  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 80532574  38 00 00 00 */	li r0, 0
/* 80532578  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 8053257C  48 00 00 30 */	b lbl_805325AC
lbl_80532580:
/* 80532580  28 00 00 03 */	cmplwi r0, 3
/* 80532584  40 82 00 18 */	bne lbl_8053259C
/* 80532588  38 00 00 04 */	li r0, 4
/* 8053258C  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 80532590  38 00 00 00 */	li r0, 0
/* 80532594  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 80532598  48 00 00 14 */	b lbl_805325AC
lbl_8053259C:
/* 8053259C  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 805325A0  C0 1D 01 C0 */	lfs f0, 0x1c0(r29)
/* 805325A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805325A8  41 81 0C A0 */	bgt lbl_80533248
lbl_805325AC:
/* 805325AC  A8 7F 05 B4 */	lha r3, 0x5b4(r31)
/* 805325B0  38 03 00 01 */	addi r0, r3, 1
/* 805325B4  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 805325B8  38 60 00 00 */	li r3, 0
/* 805325BC  38 00 00 05 */	li r0, 5
/* 805325C0  7C 09 03 A6 */	mtctr r0
lbl_805325C4:
/* 805325C4  38 A3 06 24 */	addi r5, r3, 0x624
/* 805325C8  7C 9F 2A AE */	lhax r4, r31, r5
/* 805325CC  2C 04 00 00 */	cmpwi r4, 0
/* 805325D0  41 82 00 0C */	beq lbl_805325DC
/* 805325D4  38 04 FF FF */	addi r0, r4, -1
/* 805325D8  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_805325DC:
/* 805325DC  38 63 00 02 */	addi r3, r3, 2
/* 805325E0  42 00 FF E4 */	bdnz lbl_805325C4
/* 805325E4  A8 7F 06 30 */	lha r3, 0x630(r31)
/* 805325E8  2C 03 00 00 */	cmpwi r3, 0
/* 805325EC  41 82 00 0C */	beq lbl_805325F8
/* 805325F0  38 03 FF FF */	addi r0, r3, -1
/* 805325F4  B0 1F 06 30 */	sth r0, 0x630(r31)
lbl_805325F8:
/* 805325F8  A8 7F 06 32 */	lha r3, 0x632(r31)
/* 805325FC  2C 03 00 00 */	cmpwi r3, 0
/* 80532600  41 82 00 0C */	beq lbl_8053260C
/* 80532604  38 03 FF FF */	addi r0, r3, -1
/* 80532608  B0 1F 06 32 */	sth r0, 0x632(r31)
lbl_8053260C:
/* 8053260C  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80532610  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
/* 80532614  C0 3F 05 D4 */	lfs f1, 0x5d4(r31)
/* 80532618  C0 1D 01 C4 */	lfs f0, 0x1c4(r29)
/* 8053261C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532620  40 81 00 08 */	ble lbl_80532628
/* 80532624  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
lbl_80532628:
/* 80532628  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 8053262C  2C 00 00 15 */	cmpwi r0, 0x15
/* 80532630  40 82 00 20 */	bne lbl_80532650
/* 80532634  C0 3F 05 D4 */	lfs f1, 0x5d4(r31)
/* 80532638  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 8053263C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532640  4C 40 13 82 */	cror 2, 0, 2
/* 80532644  40 82 00 24 */	bne lbl_80532668
/* 80532648  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
/* 8053264C  48 00 00 1C */	b lbl_80532668
lbl_80532650:
/* 80532650  C0 3F 05 D4 */	lfs f1, 0x5d4(r31)
/* 80532654  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 80532658  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053265C  4C 40 13 82 */	cror 2, 0, 2
/* 80532660  40 82 00 08 */	bne lbl_80532668
/* 80532664  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
lbl_80532668:
/* 80532668  7F E3 FB 78 */	mr r3, r31
/* 8053266C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80532670  4B AE 80 A0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80532674  B0 7F 05 F4 */	sth r3, 0x5f4(r31)
/* 80532678  3B 60 00 00 */	li r27, 0
/* 8053267C  3B 40 00 00 */	li r26, 0
/* 80532680  3B 20 00 00 */	li r25, 0
/* 80532684  3B 00 00 01 */	li r24, 1
/* 80532688  3A E0 00 00 */	li r23, 0
/* 8053268C  3A C0 00 00 */	li r22, 0
/* 80532690  3A A0 00 01 */	li r21, 1
/* 80532694  3A 80 00 00 */	li r20, 0
/* 80532698  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 8053269C  28 00 00 48 */	cmplwi r0, 0x48
/* 805326A0  41 81 01 AC */	bgt lbl_8053284C
/* 805326A4  3C 60 80 53 */	lis r3, lit_7242@ha
/* 805326A8  38 63 68 54 */	addi r3, r3, lit_7242@l
/* 805326AC  54 00 10 3A */	slwi r0, r0, 2
/* 805326B0  7C 03 00 2E */	lwzx r0, r3, r0
/* 805326B4  7C 09 03 A6 */	mtctr r0
/* 805326B8  4E 80 04 20 */	bctr 
lbl_805326BC:
/* 805326BC  7F E3 FB 78 */	mr r3, r31
/* 805326C0  4B FF 94 71 */	bl mf_swim__FP13mg_fish_class
/* 805326C4  3B 60 00 01 */	li r27, 1
/* 805326C8  3B 40 00 01 */	li r26, 1
/* 805326CC  3B 20 00 01 */	li r25, 1
/* 805326D0  3A C0 00 01 */	li r22, 1
/* 805326D4  48 00 01 78 */	b lbl_8053284C
lbl_805326D8:
/* 805326D8  7F E3 FB 78 */	mr r3, r31
/* 805326DC  4B FF A3 C5 */	bl mf_stay__FP13mg_fish_class
/* 805326E0  3B 60 00 01 */	li r27, 1
/* 805326E4  3B 40 00 01 */	li r26, 1
/* 805326E8  3B 20 00 01 */	li r25, 1
/* 805326EC  3A C0 00 01 */	li r22, 1
/* 805326F0  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 805326F4  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 805326F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805326FC  4C 40 13 82 */	cror 2, 0, 2
/* 80532700  40 82 01 4C */	bne lbl_8053284C
/* 80532704  3A A0 00 00 */	li r21, 0
/* 80532708  48 00 01 44 */	b lbl_8053284C
lbl_8053270C:
/* 8053270C  7F E3 FB 78 */	mr r3, r31
/* 80532710  4B FF A6 59 */	bl mf_away__FP13mg_fish_class
/* 80532714  3B 40 00 01 */	li r26, 1
/* 80532718  48 00 01 34 */	b lbl_8053284C
lbl_8053271C:
/* 8053271C  7F E3 FB 78 */	mr r3, r31
/* 80532720  4B FF 9B 11 */	bl mf_swim_p__FP13mg_fish_class
/* 80532724  3B 20 00 01 */	li r25, 1
/* 80532728  3A C0 00 01 */	li r22, 1
/* 8053272C  48 00 01 20 */	b lbl_8053284C
lbl_80532730:
/* 80532730  7F E3 FB 78 */	mr r3, r31
/* 80532734  4B FF 9E 41 */	bl mf_swim_s__FP13mg_fish_class
/* 80532738  3B 60 00 01 */	li r27, 1
/* 8053273C  3B 40 00 01 */	li r26, 1
/* 80532740  3A C0 00 01 */	li r22, 1
/* 80532744  3B 20 00 01 */	li r25, 1
/* 80532748  48 00 01 04 */	b lbl_8053284C
lbl_8053274C:
/* 8053274C  7F E3 FB 78 */	mr r3, r31
/* 80532750  4B FF AC 6D */	bl ri_swim__FP13mg_fish_class
/* 80532754  3B 60 00 01 */	li r27, 1
/* 80532758  3B 40 00 01 */	li r26, 1
/* 8053275C  3B 20 00 01 */	li r25, 1
/* 80532760  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80532764  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 80532768  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053276C  4C 40 13 82 */	cror 2, 0, 2
/* 80532770  40 82 00 DC */	bne lbl_8053284C
/* 80532774  3A A0 00 00 */	li r21, 0
/* 80532778  48 00 00 D4 */	b lbl_8053284C
lbl_8053277C:
/* 8053277C  7F E3 FB 78 */	mr r3, r31
/* 80532780  4B FF F2 0D */	bl mf_aqua__FP13mg_fish_class
/* 80532784  3A A0 00 00 */	li r21, 0
/* 80532788  3A 80 00 01 */	li r20, 1
/* 8053278C  48 00 00 C0 */	b lbl_8053284C
lbl_80532790:
/* 80532790  7F E3 FB 78 */	mr r3, r31
/* 80532794  4B FF F5 41 */	bl ri_aqua__FP13mg_fish_class
/* 80532798  3A A0 00 00 */	li r21, 0
/* 8053279C  3A 80 00 01 */	li r20, 1
/* 805327A0  48 00 00 AC */	b lbl_8053284C
lbl_805327A4:
/* 805327A4  7F E3 FB 78 */	mr r3, r31
/* 805327A8  4B FF FB 39 */	bl mf_aqua_tilt__FP13mg_fish_class
/* 805327AC  3A A0 00 00 */	li r21, 0
/* 805327B0  3A 80 00 01 */	li r20, 1
/* 805327B4  48 00 00 98 */	b lbl_8053284C
lbl_805327B8:
/* 805327B8  7F E3 FB 78 */	mr r3, r31
/* 805327BC  4B FF B6 FD */	bl mf_lure_search__FP13mg_fish_class
/* 805327C0  3B 40 00 01 */	li r26, 1
/* 805327C4  48 00 00 88 */	b lbl_8053284C
lbl_805327C8:
/* 805327C8  7F E3 FB 78 */	mr r3, r31
/* 805327CC  4B FF C2 D5 */	bl mf_bait_search__FP13mg_fish_class
/* 805327D0  3B 40 00 01 */	li r26, 1
/* 805327D4  48 00 00 78 */	b lbl_8053284C
lbl_805327D8:
/* 805327D8  7F E3 FB 78 */	mr r3, r31
/* 805327DC  4B FF C9 45 */	bl mf_hit__FP13mg_fish_class
/* 805327E0  3A E0 00 01 */	li r23, 1
/* 805327E4  48 00 00 68 */	b lbl_8053284C
lbl_805327E8:
/* 805327E8  7F E3 FB 78 */	mr r3, r31
/* 805327EC  4B FF D2 61 */	bl mf_jump__FP13mg_fish_class
/* 805327F0  3B 00 00 00 */	li r24, 0
/* 805327F4  3A E0 00 01 */	li r23, 1
/* 805327F8  48 00 00 54 */	b lbl_8053284C
lbl_805327FC:
/* 805327FC  7F E3 FB 78 */	mr r3, r31
/* 80532800  4B FF DD 5D */	bl mf_catch__FP13mg_fish_class
/* 80532804  3A C0 00 01 */	li r22, 1
/* 80532808  3A A0 00 00 */	li r21, 0
/* 8053280C  3B 00 00 00 */	li r24, 0
/* 80532810  48 00 00 3C */	b lbl_8053284C
lbl_80532814:
/* 80532814  7F E3 FB 78 */	mr r3, r31
/* 80532818  4B FF E1 0D */	bl mf_esa_search__FP13mg_fish_class
/* 8053281C  3B 40 00 01 */	li r26, 1
/* 80532820  3A C0 00 01 */	li r22, 1
/* 80532824  48 00 00 28 */	b lbl_8053284C
lbl_80532828:
/* 80532828  7F E3 FB 78 */	mr r3, r31
/* 8053282C  4B FF E8 71 */	bl mf_esa_hit__FP13mg_fish_class
/* 80532830  3A E0 00 01 */	li r23, 1
/* 80532834  48 00 00 18 */	b lbl_8053284C
lbl_80532838:
/* 80532838  7F E3 FB 78 */	mr r3, r31
/* 8053283C  4B FF EB 9D */	bl mf_esa_catch__FP13mg_fish_class
/* 80532840  7C 76 1B 78 */	mr r22, r3
/* 80532844  3A A0 00 01 */	li r21, 1
/* 80532848  3B 00 00 00 */	li r24, 0
lbl_8053284C:
/* 8053284C  2C 16 00 00 */	cmpwi r22, 0
/* 80532850  41 82 00 14 */	beq lbl_80532864
/* 80532854  80 1F 0B 10 */	lwz r0, 0xb10(r31)
/* 80532858  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8053285C  90 1F 0B 10 */	stw r0, 0xb10(r31)
/* 80532860  48 00 00 10 */	b lbl_80532870
lbl_80532864:
/* 80532864  80 1F 0B 10 */	lwz r0, 0xb10(r31)
/* 80532868  60 00 00 01 */	ori r0, r0, 1
/* 8053286C  90 1F 0B 10 */	stw r0, 0xb10(r31)
lbl_80532870:
/* 80532870  2C 17 00 00 */	cmpwi r23, 0
/* 80532874  41 82 01 34 */	beq lbl_805329A8
/* 80532878  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 8053287C  28 00 00 00 */	cmplwi r0, 0
/* 80532880  40 82 00 70 */	bne lbl_805328F0
/* 80532884  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80532888  C0 1D 01 28 */	lfs f0, 0x128(r29)
/* 8053288C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532890  4C 41 13 82 */	cror 2, 1, 2
/* 80532894  40 82 00 0C */	bne lbl_805328A0
/* 80532898  C0 7D 01 C8 */	lfs f3, 0x1c8(r29)
/* 8053289C  48 00 00 F8 */	b lbl_80532994
lbl_805328A0:
/* 805328A0  C0 1D 01 3C */	lfs f0, 0x13c(r29)
/* 805328A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805328A8  4C 41 13 82 */	cror 2, 1, 2
/* 805328AC  40 82 00 0C */	bne lbl_805328B8
/* 805328B0  C0 7D 01 CC */	lfs f3, 0x1cc(r29)
/* 805328B4  48 00 00 E0 */	b lbl_80532994
lbl_805328B8:
/* 805328B8  C0 1D 01 18 */	lfs f0, 0x118(r29)
/* 805328BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805328C0  4C 41 13 82 */	cror 2, 1, 2
/* 805328C4  40 82 00 0C */	bne lbl_805328D0
/* 805328C8  C0 7D 01 D0 */	lfs f3, 0x1d0(r29)
/* 805328CC  48 00 00 C8 */	b lbl_80532994
lbl_805328D0:
/* 805328D0  C0 1D 01 34 */	lfs f0, 0x134(r29)
/* 805328D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805328D8  4C 41 13 82 */	cror 2, 1, 2
/* 805328DC  40 82 00 0C */	bne lbl_805328E8
/* 805328E0  C0 7D 01 D4 */	lfs f3, 0x1d4(r29)
/* 805328E4  48 00 00 B0 */	b lbl_80532994
lbl_805328E8:
/* 805328E8  C0 7D 01 D8 */	lfs f3, 0x1d8(r29)
/* 805328EC  48 00 00 A8 */	b lbl_80532994
lbl_805328F0:
/* 805328F0  28 00 00 02 */	cmplwi r0, 2
/* 805328F4  40 82 00 70 */	bne lbl_80532964
/* 805328F8  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 805328FC  C0 1D 01 28 */	lfs f0, 0x128(r29)
/* 80532900  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532904  4C 41 13 82 */	cror 2, 1, 2
/* 80532908  40 82 00 0C */	bne lbl_80532914
/* 8053290C  C0 7D 01 CC */	lfs f3, 0x1cc(r29)
/* 80532910  48 00 00 84 */	b lbl_80532994
lbl_80532914:
/* 80532914  C0 1D 01 3C */	lfs f0, 0x13c(r29)
/* 80532918  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053291C  4C 41 13 82 */	cror 2, 1, 2
/* 80532920  40 82 00 0C */	bne lbl_8053292C
/* 80532924  C0 7D 01 D0 */	lfs f3, 0x1d0(r29)
/* 80532928  48 00 00 6C */	b lbl_80532994
lbl_8053292C:
/* 8053292C  C0 1D 01 18 */	lfs f0, 0x118(r29)
/* 80532930  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532934  4C 41 13 82 */	cror 2, 1, 2
/* 80532938  40 82 00 0C */	bne lbl_80532944
/* 8053293C  C0 7D 01 DC */	lfs f3, 0x1dc(r29)
/* 80532940  48 00 00 54 */	b lbl_80532994
lbl_80532944:
/* 80532944  C0 1D 01 34 */	lfs f0, 0x134(r29)
/* 80532948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053294C  4C 41 13 82 */	cror 2, 1, 2
/* 80532950  40 82 00 0C */	bne lbl_8053295C
/* 80532954  C0 7D 01 D4 */	lfs f3, 0x1d4(r29)
/* 80532958  48 00 00 3C */	b lbl_80532994
lbl_8053295C:
/* 8053295C  C0 7D 01 D8 */	lfs f3, 0x1d8(r29)
/* 80532960  48 00 00 34 */	b lbl_80532994
lbl_80532964:
/* 80532964  28 00 00 01 */	cmplwi r0, 1
/* 80532968  40 82 00 28 */	bne lbl_80532990
/* 8053296C  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80532970  C0 1D 01 2C */	lfs f0, 0x12c(r29)
/* 80532974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532978  4C 41 13 82 */	cror 2, 1, 2
/* 8053297C  40 82 00 0C */	bne lbl_80532988
/* 80532980  C0 7D 01 C8 */	lfs f3, 0x1c8(r29)
/* 80532984  48 00 00 10 */	b lbl_80532994
lbl_80532988:
/* 80532988  C0 7D 01 CC */	lfs f3, 0x1cc(r29)
/* 8053298C  48 00 00 08 */	b lbl_80532994
lbl_80532990:
/* 80532990  C0 7D 01 D4 */	lfs f3, 0x1d4(r29)
lbl_80532994:
/* 80532994  38 7F 06 60 */	addi r3, r31, 0x660
/* 80532998  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 8053299C  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805329A0  4B D3 D0 9C */	b cLib_addCalc2__FPffff
/* 805329A4  48 00 00 18 */	b lbl_805329BC
lbl_805329A8:
/* 805329A8  38 7F 06 60 */	addi r3, r31, 0x660
/* 805329AC  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805329B0  FC 40 08 90 */	fmr f2, f1
/* 805329B4  C0 7D 00 C0 */	lfs f3, 0xc0(r29)
/* 805329B8  4B D3 D0 84 */	b cLib_addCalc2__FPffff
lbl_805329BC:
/* 805329BC  2C 1B 00 00 */	cmpwi r27, 0
/* 805329C0  41 82 00 28 */	beq lbl_805329E8
/* 805329C4  7F E3 FB 78 */	mr r3, r31
/* 805329C8  C0 3F 0C 40 */	lfs f1, 0xc40(r31)
/* 805329CC  4B FF 75 9D */	bl pl_check__FP13mg_fish_classf
/* 805329D0  2C 03 00 00 */	cmpwi r3, 0
/* 805329D4  41 82 00 14 */	beq lbl_805329E8
/* 805329D8  38 00 00 02 */	li r0, 2
/* 805329DC  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 805329E0  38 00 FF FF */	li r0, -1
/* 805329E4  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
lbl_805329E8:
/* 805329E8  2C 1A 00 00 */	cmpwi r26, 0
/* 805329EC  41 82 00 6C */	beq lbl_80532A58
/* 805329F0  C0 3F 05 D8 */	lfs f1, 0x5d8(r31)
/* 805329F4  C0 1F 09 68 */	lfs f0, 0x968(r31)
/* 805329F8  EC 41 00 28 */	fsubs f2, f1, f0
/* 805329FC  C0 3D 01 E0 */	lfs f1, 0x1e0(r29)
/* 80532A00  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 80532A04  EC 01 00 32 */	fmuls f0, f1, f0
/* 80532A08  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80532A0C  40 80 00 4C */	bge lbl_80532A58
/* 80532A10  38 00 00 02 */	li r0, 2
/* 80532A14  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 80532A18  38 00 00 01 */	li r0, 1
/* 80532A1C  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 80532A20  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 80532A24  4B D3 4F 30 */	b cM_rndF__Ff
/* 80532A28  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 80532A2C  EC 00 08 2A */	fadds f0, f0, f1
/* 80532A30  FC 00 00 1E */	fctiwz f0, f0
/* 80532A34  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80532A38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80532A3C  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 80532A40  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80532A44  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 80532A48  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80532A4C  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 80532A50  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80532A54  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
lbl_80532A58:
/* 80532A58  2C 19 00 00 */	cmpwi r25, 0
/* 80532A5C  41 82 00 DC */	beq lbl_80532B38
/* 80532A60  A8 7F 06 2E */	lha r3, 0x62e(r31)
/* 80532A64  2C 03 00 00 */	cmpwi r3, 0
/* 80532A68  41 82 00 14 */	beq lbl_80532A7C
/* 80532A6C  C0 3F 05 EC */	lfs f1, 0x5ec(r31)
/* 80532A70  C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 80532A74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532A78  40 81 00 B8 */	ble lbl_80532B30
lbl_80532A7C:
/* 80532A7C  3A E0 00 00 */	li r23, 0
/* 80532A80  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80532A84  28 00 00 05 */	cmplwi r0, 5
/* 80532A88  41 80 00 08 */	blt lbl_80532A90
/* 80532A8C  3A E0 00 01 */	li r23, 1
lbl_80532A90:
/* 80532A90  7F E3 FB 78 */	mr r3, r31
/* 80532A94  7E E4 BB 78 */	mr r4, r23
/* 80532A98  4B FF 79 CD */	bl search_lure__FP13mg_fish_classi
/* 80532A9C  90 7F 06 4C */	stw r3, 0x64c(r31)
/* 80532AA0  80 1F 06 4C */	lwz r0, 0x64c(r31)
/* 80532AA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80532AA8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80532AAC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80532AB0  38 81 00 10 */	addi r4, r1, 0x10
/* 80532AB4  4B AE 6D 44 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80532AB8  28 03 00 00 */	cmplwi r3, 0
/* 80532ABC  41 82 00 2C */	beq lbl_80532AE8
/* 80532AC0  2C 17 00 00 */	cmpwi r23, 0
/* 80532AC4  40 82 00 10 */	bne lbl_80532AD4
/* 80532AC8  38 00 00 32 */	li r0, 0x32
/* 80532ACC  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 80532AD0  48 00 00 0C */	b lbl_80532ADC
lbl_80532AD4:
/* 80532AD4  38 00 00 46 */	li r0, 0x46
/* 80532AD8  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
lbl_80532ADC:
/* 80532ADC  38 00 00 00 */	li r0, 0
/* 80532AE0  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 80532AE4  48 00 00 54 */	b lbl_80532B38
lbl_80532AE8:
/* 80532AE8  2C 17 00 00 */	cmpwi r23, 0
/* 80532AEC  40 82 00 4C */	bne lbl_80532B38
/* 80532AF0  7F E3 FB 78 */	mr r3, r31
/* 80532AF4  4B FF 7D 45 */	bl search_bait__FP13mg_fish_class
/* 80532AF8  90 7F 06 48 */	stw r3, 0x648(r31)
/* 80532AFC  80 1F 06 48 */	lwz r0, 0x648(r31)
/* 80532B00  90 01 00 0C */	stw r0, 0xc(r1)
/* 80532B04  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80532B08  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80532B0C  38 81 00 0C */	addi r4, r1, 0xc
/* 80532B10  4B AE 6C E8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80532B14  28 03 00 00 */	cmplwi r3, 0
/* 80532B18  41 82 00 20 */	beq lbl_80532B38
/* 80532B1C  38 00 00 33 */	li r0, 0x33
/* 80532B20  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 80532B24  38 00 00 00 */	li r0, 0
/* 80532B28  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 80532B2C  48 00 00 0C */	b lbl_80532B38
lbl_80532B30:
/* 80532B30  38 03 FF FF */	addi r0, r3, -1
/* 80532B34  B0 1F 06 2E */	sth r0, 0x62e(r31)
lbl_80532B38:
/* 80532B38  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 80532B3C  2C 00 00 35 */	cmpwi r0, 0x35
/* 80532B40  40 82 00 D8 */	bne lbl_80532C18
/* 80532B44  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80532B48  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80532B4C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80532B50  40 82 00 C8 */	bne lbl_80532C18
/* 80532B54  38 80 1B 58 */	li r4, 0x1b58
/* 80532B58  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80532B5C  C0 1D 01 28 */	lfs f0, 0x128(r29)
/* 80532B60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532B64  4C 41 13 82 */	cror 2, 1, 2
/* 80532B68  40 82 00 0C */	bne lbl_80532B74
/* 80532B6C  38 80 13 88 */	li r4, 0x1388
/* 80532B70  48 00 00 30 */	b lbl_80532BA0
lbl_80532B74:
/* 80532B74  C0 1D 01 18 */	lfs f0, 0x118(r29)
/* 80532B78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532B7C  4C 41 13 82 */	cror 2, 1, 2
/* 80532B80  40 82 00 0C */	bne lbl_80532B8C
/* 80532B84  38 80 17 70 */	li r4, 0x1770
/* 80532B88  48 00 00 18 */	b lbl_80532BA0
lbl_80532B8C:
/* 80532B8C  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80532B90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532B94  4C 41 13 82 */	cror 2, 1, 2
/* 80532B98  40 82 00 08 */	bne lbl_80532BA0
/* 80532B9C  38 80 19 64 */	li r4, 0x1964
lbl_80532BA0:
/* 80532BA0  80 1F 07 2C */	lwz r0, 0x72c(r31)
/* 80532BA4  2C 00 00 04 */	cmpwi r0, 4
/* 80532BA8  41 81 00 38 */	bgt lbl_80532BE0
/* 80532BAC  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 80532BB0  7C 00 21 D6 */	mullw r0, r0, r4
/* 80532BB4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80532BB8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80532BBC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80532BC0  7C 23 04 2E */	lfsx f1, r3, r0
/* 80532BC4  C0 1D 01 E4 */	lfs f0, 0x1e4(r29)
/* 80532BC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80532BCC  FC 00 00 1E */	fctiwz f0, f0
/* 80532BD0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80532BD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80532BD8  B0 1F 07 30 */	sth r0, 0x730(r31)
/* 80532BDC  48 00 00 B8 */	b lbl_80532C94
lbl_80532BE0:
/* 80532BE0  A8 7F 05 B4 */	lha r3, 0x5b4(r31)
/* 80532BE4  38 04 FE 0C */	addi r0, r4, -500
/* 80532BE8  7C 03 01 D6 */	mullw r0, r3, r0
/* 80532BEC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80532BF0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80532BF4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80532BF8  7C 23 04 2E */	lfsx f1, r3, r0
/* 80532BFC  C0 1D 01 E4 */	lfs f0, 0x1e4(r29)
/* 80532C00  EC 00 00 72 */	fmuls f0, f0, f1
/* 80532C04  FC 00 00 1E */	fctiwz f0, f0
/* 80532C08  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80532C0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80532C10  B0 1F 07 30 */	sth r0, 0x730(r31)
/* 80532C14  48 00 00 80 */	b lbl_80532C94
lbl_80532C18:
/* 80532C18  C0 1D 01 E8 */	lfs f0, 0x1e8(r29)
/* 80532C1C  C0 5F 05 D4 */	lfs f2, 0x5d4(r31)
/* 80532C20  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80532C24  C0 1F 06 60 */	lfs f0, 0x660(r31)
/* 80532C28  EC 61 00 32 */	fmuls f3, f1, f0
/* 80532C2C  A8 7F 07 32 */	lha r3, 0x732(r31)
/* 80532C30  C0 1D 01 EC */	lfs f0, 0x1ec(r29)
/* 80532C34  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80532C38  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 80532C3C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80532C40  FC 00 00 1E */	fctiwz f0, f0
/* 80532C44  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80532C48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80532C4C  7C 03 02 14 */	add r0, r3, r0
/* 80532C50  B0 1F 07 32 */	sth r0, 0x732(r31)
/* 80532C54  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80532C58  28 00 00 05 */	cmplwi r0, 5
/* 80532C5C  41 80 00 10 */	blt lbl_80532C6C
/* 80532C60  A8 7F 07 32 */	lha r3, 0x732(r31)
/* 80532C64  38 03 07 D0 */	addi r0, r3, 0x7d0
/* 80532C68  B0 1F 07 32 */	sth r0, 0x732(r31)
lbl_80532C6C:
/* 80532C6C  A8 1F 07 32 */	lha r0, 0x732(r31)
/* 80532C70  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80532C74  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80532C78  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80532C7C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80532C80  EC 03 00 32 */	fmuls f0, f3, f0
/* 80532C84  FC 00 00 1E */	fctiwz f0, f0
/* 80532C88  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80532C8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80532C90  B0 1F 07 30 */	sth r0, 0x730(r31)
lbl_80532C94:
/* 80532C94  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80532C98  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80532C9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80532CA0  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80532CA4  4B AD 97 38 */	b mDoMtx_YrotS__FPA4_fs
/* 80532CA8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80532CAC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80532CB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80532CB4  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80532CB8  4B AD 96 E4 */	b mDoMtx_XrotM__FPA4_fs
/* 80532CBC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80532CC0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80532CC4  80 63 00 00 */	lwz r3, 0(r3)
/* 80532CC8  A8 9F 07 30 */	lha r4, 0x730(r31)
/* 80532CCC  4B AD 97 68 */	b mDoMtx_YrotM__FPA4_fs
/* 80532CD0  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80532CD4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80532CD8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80532CDC  C0 7F 06 60 */	lfs f3, 0x660(r31)
/* 80532CE0  C0 5F 05 BC */	lfs f2, 0x5bc(r31)
/* 80532CE4  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80532CE8  3C 60 80 53 */	lis r3, l_HIO@ha
/* 80532CEC  38 63 6B CC */	addi r3, r3, l_HIO@l
/* 80532CF0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80532CF4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80532CF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80532CFC  EC 23 00 32 */	fmuls f1, f3, f0
/* 80532D00  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80532D04  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80532D08  28 00 00 05 */	cmplwi r0, 5
/* 80532D0C  41 80 00 18 */	blt lbl_80532D24
/* 80532D10  28 00 00 0A */	cmplwi r0, 0xa
/* 80532D14  41 82 00 10 */	beq lbl_80532D24
/* 80532D18  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80532D1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80532D20  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80532D24:
/* 80532D24  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80532D28  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80532D2C  28 00 00 03 */	cmplwi r0, 3
/* 80532D30  40 82 00 0C */	bne lbl_80532D3C
/* 80532D34  C0 3D 01 F0 */	lfs f1, 0x1f0(r29)
/* 80532D38  48 00 00 28 */	b lbl_80532D60
lbl_80532D3C:
/* 80532D3C  28 00 00 01 */	cmplwi r0, 1
/* 80532D40  40 82 00 0C */	bne lbl_80532D4C
/* 80532D44  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80532D48  48 00 00 18 */	b lbl_80532D60
lbl_80532D4C:
/* 80532D4C  28 00 00 02 */	cmplwi r0, 2
/* 80532D50  41 82 00 0C */	beq lbl_80532D5C
/* 80532D54  28 00 00 04 */	cmplwi r0, 4
/* 80532D58  40 82 00 08 */	bne lbl_80532D60
lbl_80532D5C:
/* 80532D5C  C0 3D 00 F4 */	lfs f1, 0xf4(r29)
lbl_80532D60:
/* 80532D60  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80532D64  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80532D68  40 81 00 08 */	ble lbl_80532D70
/* 80532D6C  D0 21 00 1C */	stfs f1, 0x1c(r1)
lbl_80532D70:
/* 80532D70  38 61 00 14 */	addi r3, r1, 0x14
/* 80532D74  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80532D78  4B D3 E1 74 */	b MtxPosition__FP4cXyzP4cXyz
/* 80532D7C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80532D80  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80532D84  7C 65 1B 78 */	mr r5, r3
/* 80532D88  4B E1 43 08 */	b PSVECAdd
/* 80532D8C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80532D90  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80532D94  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80532D98  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80532D9C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80532DA0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80532DA4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80532DA8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80532DAC  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 80532DB0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80532DB4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80532DB8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80532DBC  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80532DC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80532DC4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80532DC8  38 7F 0C 08 */	addi r3, r31, 0xc08
/* 80532DCC  38 81 00 14 */	addi r4, r1, 0x14
/* 80532DD0  4B D3 C4 0C */	b SetC__8cM3dGCylFRC4cXyz
/* 80532DD4  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 80532DD8  2C 00 00 34 */	cmpwi r0, 0x34
/* 80532DDC  41 82 00 0C */	beq lbl_80532DE8
/* 80532DE0  2C 00 00 47 */	cmpwi r0, 0x47
/* 80532DE4  41 80 00 3C */	blt lbl_80532E20
lbl_80532DE8:
/* 80532DE8  38 7F 0C 08 */	addi r3, r31, 0xc08
/* 80532DEC  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 80532DF0  4B D3 C4 08 */	b SetH__8cM3dGCylFf
/* 80532DF4  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 80532DF8  2C 00 00 47 */	cmpwi r0, 0x47
/* 80532DFC  41 80 00 14 */	blt lbl_80532E10
/* 80532E00  38 7F 0C 08 */	addi r3, r31, 0xc08
/* 80532E04  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 80532E08  4B D3 C3 F8 */	b SetR__8cM3dGCylFf
/* 80532E0C  48 00 00 4C */	b lbl_80532E58
lbl_80532E10:
/* 80532E10  38 7F 0C 08 */	addi r3, r31, 0xc08
/* 80532E14  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 80532E18  4B D3 C3 E8 */	b SetR__8cM3dGCylFf
/* 80532E1C  48 00 00 3C */	b lbl_80532E58
lbl_80532E20:
/* 80532E20  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80532E24  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 80532E28  EC 21 00 32 */	fmuls f1, f1, f0
/* 80532E2C  C0 1D 01 0C */	lfs f0, 0x10c(r29)
/* 80532E30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532E34  40 81 00 08 */	ble lbl_80532E3C
/* 80532E38  FC 20 00 90 */	fmr f1, f0
lbl_80532E3C:
/* 80532E3C  38 7F 0C 08 */	addi r3, r31, 0xc08
/* 80532E40  4B D3 C3 C0 */	b SetR__8cM3dGCylFf
/* 80532E44  38 7F 0C 08 */	addi r3, r31, 0xc08
/* 80532E48  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 80532E4C  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 80532E50  EC 21 00 32 */	fmuls f1, f1, f0
/* 80532E54  4B D3 C3 A4 */	b SetH__8cM3dGCylFf
lbl_80532E58:
/* 80532E58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80532E5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80532E60  38 63 23 3C */	addi r3, r3, 0x233c
/* 80532E64  38 9F 0A E4 */	addi r4, r31, 0xae4
/* 80532E68  4B D3 1D 40 */	b Set__4cCcSFP8cCcD_Obj
/* 80532E6C  2C 16 00 00 */	cmpwi r22, 0
/* 80532E70  40 82 00 F4 */	bne lbl_80532F64
/* 80532E74  34 9F 0A A8 */	addic. r4, r31, 0xaa8
/* 80532E78  41 82 00 EC */	beq lbl_80532F64
/* 80532E7C  2C 14 00 00 */	cmpwi r20, 0
/* 80532E80  41 82 00 80 */	beq lbl_80532F00
/* 80532E84  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80532E88  C0 04 00 00 */	lfs f0, 0(r4)
/* 80532E8C  C0 5D 01 F4 */	lfs f2, 0x1f4(r29)
/* 80532E90  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80532E94  EC 01 00 2A */	fadds f0, f1, f0
/* 80532E98  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80532E9C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80532EA0  C0 04 00 08 */	lfs f0, 8(r4)
/* 80532EA4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80532EA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80532EAC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80532EB0  38 C0 00 00 */	li r6, 0
/* 80532EB4  38 60 00 00 */	li r3, 0
/* 80532EB8  48 00 00 38 */	b lbl_80532EF0
lbl_80532EBC:
/* 80532EBC  7C BF 1A 14 */	add r5, r31, r3
/* 80532EC0  C0 25 06 64 */	lfs f1, 0x664(r5)
/* 80532EC4  C0 04 00 00 */	lfs f0, 0(r4)
/* 80532EC8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80532ECC  EC 01 00 2A */	fadds f0, f1, f0
/* 80532ED0  D0 05 06 64 */	stfs f0, 0x664(r5)
/* 80532ED4  C0 25 06 6C */	lfs f1, 0x66c(r5)
/* 80532ED8  C0 04 00 08 */	lfs f0, 8(r4)
/* 80532EDC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80532EE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80532EE4  D0 05 06 6C */	stfs f0, 0x66c(r5)
/* 80532EE8  38 C6 00 01 */	addi r6, r6, 1
/* 80532EEC  38 63 00 0C */	addi r3, r3, 0xc
lbl_80532EF0:
/* 80532EF0  80 1F 07 2C */	lwz r0, 0x72c(r31)
/* 80532EF4  7C 06 00 00 */	cmpw r6, r0
/* 80532EF8  40 81 FF C4 */	ble lbl_80532EBC
/* 80532EFC  48 00 00 68 */	b lbl_80532F64
lbl_80532F00:
/* 80532F00  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 80532F04  2C 00 00 34 */	cmpwi r0, 0x34
/* 80532F08  41 82 00 0C */	beq lbl_80532F14
/* 80532F0C  2C 00 00 47 */	cmpwi r0, 0x47
/* 80532F10  41 80 00 28 */	blt lbl_80532F38
lbl_80532F14:
/* 80532F14  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80532F18  C0 04 00 00 */	lfs f0, 0(r4)
/* 80532F1C  EC 01 00 2A */	fadds f0, f1, f0
/* 80532F20  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80532F24  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80532F28  C0 04 00 08 */	lfs f0, 8(r4)
/* 80532F2C  EC 01 00 2A */	fadds f0, f1, f0
/* 80532F30  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80532F34  48 00 00 30 */	b lbl_80532F64
lbl_80532F38:
/* 80532F38  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80532F3C  C0 5D 00 5C */	lfs f2, 0x5c(r29)
/* 80532F40  C0 04 00 00 */	lfs f0, 0(r4)
/* 80532F44  EC 02 00 32 */	fmuls f0, f2, f0
/* 80532F48  EC 01 00 2A */	fadds f0, f1, f0
/* 80532F4C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80532F50  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80532F54  C0 04 00 08 */	lfs f0, 8(r4)
/* 80532F58  EC 02 00 32 */	fmuls f0, f2, f0
/* 80532F5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80532F60  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80532F64:
/* 80532F64  2C 15 00 00 */	cmpwi r21, 0
/* 80532F68  41 82 00 9C */	beq lbl_80533004
/* 80532F6C  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80532F70  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 80532F74  EF E1 00 32 */	fmuls f31, f1, f0
/* 80532F78  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80532F7C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80532F80  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80532F84  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80532F88  7C 03 04 2E */	lfsx f0, r3, r0
/* 80532F8C  C0 3D 00 4C */	lfs f1, 0x4c(r29)
/* 80532F90  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80532F94  EC 01 00 32 */	fmuls f0, f1, f0
/* 80532F98  FC 00 02 10 */	fabs f0, f0
/* 80532F9C  FC 00 00 18 */	frsp f0, f0
/* 80532FA0  EF FF 00 2A */	fadds f31, f31, f0
/* 80532FA4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80532FA8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80532FAC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80532FB0  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80532FB4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80532FB8  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80532FBC  38 7F 08 D0 */	addi r3, r31, 0x8d0
/* 80532FC0  7F 84 E3 78 */	mr r4, r28
/* 80532FC4  4B B4 3A E8 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80532FC8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80532FCC  EC 00 F8 2A */	fadds f0, f0, f31
/* 80532FD0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80532FD4  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80532FD8  EC 00 F8 2A */	fadds f0, f0, f31
/* 80532FDC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80532FE0  80 1F 08 FC */	lwz r0, 0x8fc(r31)
/* 80532FE4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80532FE8  41 82 00 1C */	beq lbl_80533004
/* 80532FEC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80532FF0  2C 00 08 00 */	cmpwi r0, 0x800
/* 80532FF4  40 81 00 10 */	ble lbl_80533004
/* 80532FF8  38 00 08 00 */	li r0, 0x800
/* 80532FFC  B0 1F 05 CE */	sth r0, 0x5ce(r31)
/* 80533000  B0 1F 04 DC */	sth r0, 0x4dc(r31)
lbl_80533004:
/* 80533004  2C 14 00 00 */	cmpwi r20, 0
/* 80533008  41 82 00 E4 */	beq lbl_805330EC
/* 8053300C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80533010  C0 1D 01 F8 */	lfs f0, 0x1f8(r29)
/* 80533014  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80533018  41 81 00 10 */	bgt lbl_80533028
/* 8053301C  C0 1D 01 FC */	lfs f0, 0x1fc(r29)
/* 80533020  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80533024  40 80 00 0C */	bge lbl_80533030
lbl_80533028:
/* 80533028  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 8053302C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
lbl_80533030:
/* 80533030  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80533034  C0 1D 02 00 */	lfs f0, 0x200(r29)
/* 80533038  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053303C  41 81 00 10 */	bgt lbl_8053304C
/* 80533040  C0 1D 02 04 */	lfs f0, 0x204(r29)
/* 80533044  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80533048  40 80 00 0C */	bge lbl_80533054
lbl_8053304C:
/* 8053304C  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 80533050  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80533054:
/* 80533054  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80533058  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8053305C  C0 1F 05 DC */	lfs f0, 0x5dc(r31)
/* 80533060  EC 01 00 2A */	fadds f0, f1, f0
/* 80533064  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80533068  40 80 00 0C */	bge lbl_80533074
/* 8053306C  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80533070  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_80533074:
/* 80533074  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80533078  80 03 05 80 */	lwz r0, 0x580(r3)
/* 8053307C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80533080  41 82 00 6C */	beq lbl_805330EC
/* 80533084  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80533088  C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 8053308C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80533090  40 80 00 5C */	bge lbl_805330EC
/* 80533094  38 00 00 16 */	li r0, 0x16
/* 80533098  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 8053309C  38 00 00 00 */	li r0, 0
/* 805330A0  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 805330A4  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 805330A8  4B D3 48 AC */	b cM_rndF__Ff
/* 805330AC  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 805330B0  EC 00 08 2A */	fadds f0, f0, f1
/* 805330B4  FC 00 00 1E */	fctiwz f0, f0
/* 805330B8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805330BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805330C0  B0 1F 06 26 */	sth r0, 0x626(r31)
/* 805330C4  38 00 02 55 */	li r0, 0x255
/* 805330C8  B0 01 00 08 */	sth r0, 8(r1)
/* 805330CC  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 805330D0  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 805330D4  38 81 00 08 */	addi r4, r1, 8
/* 805330D8  4B AE 67 20 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805330DC  28 03 00 00 */	cmplwi r3, 0
/* 805330E0  41 82 00 0C */	beq lbl_805330EC
/* 805330E4  38 00 00 14 */	li r0, 0x14
/* 805330E8  98 03 07 B5 */	stb r0, 0x7b5(r3)
lbl_805330EC:
/* 805330EC  2C 18 00 00 */	cmpwi r24, 0
/* 805330F0  41 82 00 30 */	beq lbl_80533120
/* 805330F4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805330F8  C0 3F 05 D8 */	lfs f1, 0x5d8(r31)
/* 805330FC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80533100  40 81 00 20 */	ble lbl_80533120
/* 80533104  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
/* 80533108  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8053310C  2C 00 00 00 */	cmpwi r0, 0
/* 80533110  40 80 00 10 */	bge lbl_80533120
/* 80533114  38 00 00 00 */	li r0, 0
/* 80533118  B0 1F 05 CE */	sth r0, 0x5ce(r31)
/* 8053311C  B0 1F 04 DC */	sth r0, 0x4dc(r31)
lbl_80533120:
/* 80533120  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80533124  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80533128  38 A0 00 02 */	li r5, 2
/* 8053312C  38 C0 10 00 */	li r6, 0x1000
/* 80533130  4B D3 D4 D8 */	b cLib_addCalcAngleS2__FPssss
/* 80533134  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80533138  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 8053313C  38 A0 00 02 */	li r5, 2
/* 80533140  38 C0 10 00 */	li r6, 0x1000
/* 80533144  4B D3 D4 C4 */	b cLib_addCalcAngleS2__FPssss
/* 80533148  38 7F 04 E8 */	addi r3, r31, 0x4e8
/* 8053314C  A8 9F 04 E0 */	lha r4, 0x4e0(r31)
/* 80533150  38 A0 00 10 */	li r5, 0x10
/* 80533154  38 C0 02 00 */	li r6, 0x200
/* 80533158  4B D3 D4 B0 */	b cLib_addCalcAngleS2__FPssss
/* 8053315C  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80533160  28 00 00 03 */	cmplwi r0, 3
/* 80533164  41 82 00 E4 */	beq lbl_80533248
/* 80533168  C0 3D 01 58 */	lfs f1, 0x158(r29)
/* 8053316C  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80533170  EC 81 00 32 */	fmuls f4, f1, f0
/* 80533174  FC 00 08 90 */	fmr f0, f1
/* 80533178  28 00 00 01 */	cmplwi r0, 1
/* 8053317C  40 82 00 0C */	bne lbl_80533188
/* 80533180  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 80533184  48 00 00 18 */	b lbl_8053319C
lbl_80533188:
/* 80533188  28 00 00 02 */	cmplwi r0, 2
/* 8053318C  41 82 00 0C */	beq lbl_80533198
/* 80533190  28 00 00 04 */	cmplwi r0, 4
/* 80533194  40 82 00 08 */	bne lbl_8053319C
lbl_80533198:
/* 80533198  C0 1D 02 08 */	lfs f0, 0x208(r29)
lbl_8053319C:
/* 8053319C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 805331A0  40 81 00 08 */	ble lbl_805331A8
/* 805331A4  FC 80 00 90 */	fmr f4, f0
lbl_805331A8:
/* 805331A8  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 805331AC  1C 00 07 6C */	mulli r0, r0, 0x76c
/* 805331B0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805331B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805331B8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805331BC  7C 43 04 2E */	lfsx f2, r3, r0
/* 805331C0  C0 7F 07 3C */	lfs f3, 0x73c(r31)
/* 805331C4  EC 03 20 28 */	fsubs f0, f3, f4
/* 805331C8  FC 20 00 50 */	fneg f1, f0
/* 805331CC  EC 03 00 B2 */	fmuls f0, f3, f2
/* 805331D0  EC 01 00 2A */	fadds f0, f1, f0
/* 805331D4  FC 00 00 1E */	fctiwz f0, f0
/* 805331D8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805331DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805331E0  B0 1F 07 38 */	sth r0, 0x738(r31)
/* 805331E4  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 805331E8  1C 00 06 A4 */	mulli r0, r0, 0x6a4
/* 805331EC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805331F0  7C 03 04 2E */	lfsx f0, r3, r0
/* 805331F4  C0 5F 07 3C */	lfs f2, 0x73c(r31)
/* 805331F8  EC 22 20 28 */	fsubs f1, f2, f4
/* 805331FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80533200  EC 01 00 2A */	fadds f0, f1, f0
/* 80533204  FC 00 00 1E */	fctiwz f0, f0
/* 80533208  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8053320C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80533210  B0 1F 07 3A */	sth r0, 0x73a(r31)
/* 80533214  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 80533218  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 8053321C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80533220  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80533224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80533228  40 80 00 08 */	bge lbl_80533230
/* 8053322C  FC 20 00 90 */	fmr f1, f0
lbl_80533230:
/* 80533230  C0 1D 02 0C */	lfs f0, 0x20c(r29)
/* 80533234  EC 21 00 32 */	fmuls f1, f1, f0
/* 80533238  38 7F 07 3C */	addi r3, r31, 0x73c
/* 8053323C  C0 5D 00 20 */	lfs f2, 0x20(r29)
/* 80533240  C0 7D 02 10 */	lfs f3, 0x210(r29)
/* 80533244  4B D3 C7 F8 */	b cLib_addCalc2__FPffff
lbl_80533248:
/* 80533248  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8053324C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80533250  39 61 00 60 */	addi r11, r1, 0x60
/* 80533254  4B E2 EF B0 */	b _restgpr_20
/* 80533258  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8053325C  7C 08 03 A6 */	mtlr r0
/* 80533260  38 21 00 70 */	addi r1, r1, 0x70
/* 80533264  4E 80 00 20 */	blr 
