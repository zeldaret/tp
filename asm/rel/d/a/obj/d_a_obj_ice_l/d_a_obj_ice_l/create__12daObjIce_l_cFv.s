lbl_80C200CC:
/* 80C200CC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80C200D0  7C 08 02 A6 */	mflr r0
/* 80C200D4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C200D8  39 61 00 90 */	addi r11, r1, 0x90
/* 80C200DC  4B 74 21 00 */	b _savegpr_29
/* 80C200E0  7C 7E 1B 78 */	mr r30, r3
/* 80C200E4  3C 80 80 C2 */	lis r4, lit_3675@ha
/* 80C200E8  3B E4 07 8C */	addi r31, r4, lit_3675@l
/* 80C200EC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C200F0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C200F4  40 82 00 54 */	bne lbl_80C20148
/* 80C200F8  7F C0 F3 79 */	or. r0, r30, r30
/* 80C200FC  41 82 00 40 */	beq lbl_80C2013C
/* 80C20100  7C 1D 03 78 */	mr r29, r0
/* 80C20104  4B 45 85 20 */	b __ct__16dBgS_MoveBgActorFv
/* 80C20108  3C 60 80 C2 */	lis r3, __vt__12daObjIce_l_c@ha
/* 80C2010C  38 03 08 8C */	addi r0, r3, __vt__12daObjIce_l_c@l
/* 80C20110  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 80C20114  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C20118  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C2011C  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80C20120  38 7D 06 14 */	addi r3, r29, 0x614
/* 80C20124  4B 46 36 3C */	b __ct__10dCcD_GSttsFv
/* 80C20128  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C2012C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C20130  90 7D 06 10 */	stw r3, 0x610(r29)
/* 80C20134  38 03 00 20 */	addi r0, r3, 0x20
/* 80C20138  90 1D 06 14 */	stw r0, 0x614(r29)
lbl_80C2013C:
/* 80C2013C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C20140  60 00 00 08 */	ori r0, r0, 8
/* 80C20144  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C20148:
/* 80C20148  38 7E 06 38 */	addi r3, r30, 0x638
/* 80C2014C  3C 80 80 C2 */	lis r4, l_arcName@ha
/* 80C20150  38 84 08 38 */	addi r4, r4, l_arcName@l
/* 80C20154  80 84 00 00 */	lwz r4, 0(r4)
/* 80C20158  4B 40 CD 64 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C2015C  7C 7D 1B 78 */	mr r29, r3
/* 80C20160  2C 1D 00 04 */	cmpwi r29, 4
/* 80C20164  40 82 00 68 */	bne lbl_80C201CC
/* 80C20168  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C2016C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C20170  3C 63 00 02 */	addis r3, r3, 2
/* 80C20174  3C 80 80 C2 */	lis r4, l_arcName@ha
/* 80C20178  38 84 08 38 */	addi r4, r4, l_arcName@l
/* 80C2017C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C20180  3C A0 80 C2 */	lis r5, stringBase0@ha
/* 80C20184  38 A5 08 1C */	addi r5, r5, stringBase0@l
/* 80C20188  38 A5 00 08 */	addi r5, r5, 8
/* 80C2018C  38 63 C2 F8 */	addi r3, r3, -15624
/* 80C20190  4B 41 C5 28 */	b getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80C20194  7C 65 1B 78 */	mr r5, r3
/* 80C20198  7F C3 F3 78 */	mr r3, r30
/* 80C2019C  3C 80 80 C2 */	lis r4, l_arcName@ha
/* 80C201A0  38 84 08 38 */	addi r4, r4, l_arcName@l
/* 80C201A4  80 84 00 00 */	lwz r4, 0(r4)
/* 80C201A8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C201AC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C201B0  38 E0 14 40 */	li r7, 0x1440
/* 80C201B4  39 00 00 00 */	li r8, 0
/* 80C201B8  4B 45 86 04 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C201BC  7C 7D 1B 78 */	mr r29, r3
/* 80C201C0  2C 1D 00 05 */	cmpwi r29, 5
/* 80C201C4  40 82 00 08 */	bne lbl_80C201CC
/* 80C201C8  48 00 01 2C */	b lbl_80C202F4
lbl_80C201CC:
/* 80C201CC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C201D0  98 1E 05 B1 */	stb r0, 0x5b1(r30)
/* 80C201D4  88 1E 05 B1 */	lbz r0, 0x5b1(r30)
/* 80C201D8  28 00 00 00 */	cmplwi r0, 0
/* 80C201DC  40 82 00 0C */	bne lbl_80C201E8
/* 80C201E0  38 00 00 01 */	li r0, 1
/* 80C201E4  98 1E 05 B0 */	stb r0, 0x5b0(r30)
lbl_80C201E8:
/* 80C201E8  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80C201EC  28 00 00 00 */	cmplwi r0, 0
/* 80C201F0  41 82 00 2C */	beq lbl_80C2021C
/* 80C201F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C201F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C201FC  88 03 00 16 */	lbz r0, 0x16(r3)
/* 80C20200  28 00 00 B3 */	cmplwi r0, 0xb3
/* 80C20204  40 82 00 10 */	bne lbl_80C20214
/* 80C20208  38 00 00 01 */	li r0, 1
/* 80C2020C  98 1E 05 B1 */	stb r0, 0x5b1(r30)
/* 80C20210  48 00 00 0C */	b lbl_80C2021C
lbl_80C20214:
/* 80C20214  38 00 00 FF */	li r0, 0xff
/* 80C20218  98 1E 05 B1 */	stb r0, 0x5b1(r30)
lbl_80C2021C:
/* 80C2021C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C20220  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C20224  28 00 00 FF */	cmplwi r0, 0xff
/* 80C20228  40 82 00 08 */	bne lbl_80C20230
/* 80C2022C  38 00 00 00 */	li r0, 0
lbl_80C20230:
/* 80C20230  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80C20234  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80C20238  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 80C2023C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80C20240  3C 00 43 30 */	lis r0, 0x4330
/* 80C20244  90 01 00 68 */	stw r0, 0x68(r1)
/* 80C20248  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80C2024C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C20250  EC 02 00 2A */	fadds f0, f2, f0
/* 80C20254  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80C20258  D0 5E 05 B8 */	stfs f2, 0x5b8(r30)
/* 80C2025C  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 80C20260  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80C20264  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C20268  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C2026C  EC 21 00 2A */	fadds f1, f1, f0
/* 80C20270  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C20274  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C20278  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C2027C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C20280  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C20284  4B 64 77 08 */	b cM_rndFX__Ff
/* 80C20288  FC 00 08 1E */	fctiwz f0, f1
/* 80C2028C  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80C20290  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C20294  B0 1E 05 E4 */	sth r0, 0x5e4(r30)
/* 80C20298  38 61 00 14 */	addi r3, r1, 0x14
/* 80C2029C  4B 45 75 14 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 80C202A0  38 61 00 14 */	addi r3, r1, 0x14
/* 80C202A4  38 81 00 08 */	addi r4, r1, 8
/* 80C202A8  4B 64 7A 80 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80C202AC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C202B0  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 80C202B4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C202B8  C0 1E 05 B4 */	lfs f0, 0x5b4(r30)
/* 80C202BC  EC 81 00 32 */	fmuls f4, f1, f0
/* 80C202C0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C202C4  D0 1E 05 20 */	stfs f0, 0x520(r30)
/* 80C202C8  FC 20 20 50 */	fneg f1, f4
/* 80C202CC  7F C3 F3 78 */	mr r3, r30
/* 80C202D0  FC 40 08 90 */	fmr f2, f1
/* 80C202D4  FC 60 08 90 */	fmr f3, f1
/* 80C202D8  FC A0 20 90 */	fmr f5, f4
/* 80C202DC  FC C0 20 90 */	fmr f6, f4
/* 80C202E0  4B 3F A2 68 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C202E4  38 61 00 14 */	addi r3, r1, 0x14
/* 80C202E8  38 80 FF FF */	li r4, -1
/* 80C202EC  4B 45 75 5C */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80C202F0  7F A3 EB 78 */	mr r3, r29
lbl_80C202F4:
/* 80C202F4  39 61 00 90 */	addi r11, r1, 0x90
/* 80C202F8  4B 74 1F 30 */	b _restgpr_29
/* 80C202FC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C20300  7C 08 03 A6 */	mtlr r0
/* 80C20304  38 21 00 90 */	addi r1, r1, 0x90
/* 80C20308  4E 80 00 20 */	blr 
