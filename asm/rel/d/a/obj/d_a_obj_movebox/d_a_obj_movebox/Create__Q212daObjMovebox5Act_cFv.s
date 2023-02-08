lbl_8047EE0C:
/* 8047EE0C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8047EE10  7C 08 02 A6 */	mflr r0
/* 8047EE14  90 01 00 54 */	stw r0, 0x54(r1)
/* 8047EE18  39 61 00 50 */	addi r11, r1, 0x50
/* 8047EE1C  4B EE 33 C1 */	bl _savegpr_29
/* 8047EE20  7C 7E 1B 78 */	mr r30, r3
/* 8047EE24  3C 80 80 48 */	lis r4, M_lin5__Q212daObjMovebox5Bgc_c@ha /* 0x80480F28@ha */
/* 8047EE28  3B E4 0F 28 */	addi r31, r4, M_lin5__Q212daObjMovebox5Bgc_c@l /* 0x80480F28@l */
/* 8047EE2C  38 C0 00 00 */	li r6, 0
/* 8047EE30  B0 C3 08 B8 */	sth r6, 0x8b8(r3)
/* 8047EE34  C0 5F 01 C0 */	lfs f2, 0x1c0(r31)
/* 8047EE38  D0 43 08 BC */	stfs f2, 0x8bc(r3)
/* 8047EE3C  D0 43 08 C0 */	stfs f2, 0x8c0(r3)
/* 8047EE40  D0 43 08 C4 */	stfs f2, 0x8c4(r3)
/* 8047EE44  D0 43 08 C8 */	stfs f2, 0x8c8(r3)
/* 8047EE48  D0 43 08 CC */	stfs f2, 0x8cc(r3)
/* 8047EE4C  D0 43 08 D0 */	stfs f2, 0x8d0(r3)
/* 8047EE50  D0 43 08 D4 */	stfs f2, 0x8d4(r3)
/* 8047EE54  C0 3F 01 D0 */	lfs f1, 0x1d0(r31)
/* 8047EE58  80 03 08 AC */	lwz r0, 0x8ac(r3)
/* 8047EE5C  1C A0 00 A0 */	mulli r5, r0, 0xa0
/* 8047EE60  38 9F 02 40 */	addi r4, r31, 0x240
/* 8047EE64  38 05 00 68 */	addi r0, r5, 0x68
/* 8047EE68  7C 04 04 2E */	lfsx f0, r4, r0
/* 8047EE6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8047EE70  D0 03 08 D8 */	stfs f0, 0x8d8(r3)
/* 8047EE74  90 C3 08 DC */	stw r6, 0x8dc(r3)
/* 8047EE78  90 C3 08 E0 */	stw r6, 0x8e0(r3)
/* 8047EE7C  D0 43 08 E4 */	stfs f2, 0x8e4(r3)
/* 8047EE80  38 00 FF FF */	li r0, -1
/* 8047EE84  90 03 08 E8 */	stw r0, 0x8e8(r3)
/* 8047EE88  90 C3 08 EC */	stw r6, 0x8ec(r3)
/* 8047EE8C  48 00 06 81 */	bl clr_moment_cnt__Q212daObjMovebox5Act_cFv
/* 8047EE90  38 60 00 00 */	li r3, 0
/* 8047EE94  B0 7E 08 F8 */	sth r3, 0x8f8(r30)
/* 8047EE98  B0 7E 08 FA */	sth r3, 0x8fa(r30)
/* 8047EE9C  38 00 00 14 */	li r0, 0x14
/* 8047EEA0  B0 1E 08 FC */	sth r0, 0x8fc(r30)
/* 8047EEA4  98 7E 08 FE */	stb r3, 0x8fe(r30)
/* 8047EEA8  3C 60 80 48 */	lis r3, RideCallBack__Q212daObjMovebox5Act_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x8047EBEC@ha */
/* 8047EEAC  38 03 EB EC */	addi r0, r3, RideCallBack__Q212daObjMovebox5Act_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x8047EBEC@l */
/* 8047EEB0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8047EEB4  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 8047EEB8  3C 60 80 48 */	lis r3, PPCallBack__Q212daObjMovebox5Act_cFP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@ha /* 0x8047ED10@ha */
/* 8047EEBC  38 03 ED 10 */	addi r0, r3, PPCallBack__Q212daObjMovebox5Act_cFP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@l /* 0x8047ED10@l */
/* 8047EEC0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8047EEC4  90 03 00 10 */	stw r0, 0x10(r3)
/* 8047EEC8  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 8047EECC  38 80 00 FF */	li r4, 0xff
/* 8047EED0  38 A0 00 FF */	li r5, 0xff
/* 8047EED4  7F C6 F3 78 */	mr r6, r30
/* 8047EED8  4B C0 49 89 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8047EEDC  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 8047EEE0  38 9F 01 FC */	addi r4, r31, 0x1fc
/* 8047EEE4  4B C0 59 D1 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8047EEE8  38 1E 05 B0 */	addi r0, r30, 0x5b0
/* 8047EEEC  90 1E 06 30 */	stw r0, 0x630(r30)
/* 8047EEF0  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8047EEF4  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 8047EEF8  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 8047EEFC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8047EF00  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 8047EF04  C0 03 00 08 */	lfs f0, 8(r3)
/* 8047EF08  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
/* 8047EF0C  80 1E 06 88 */	lwz r0, 0x688(r30)
/* 8047EF10  60 00 00 04 */	ori r0, r0, 4
/* 8047EF14  90 1E 06 88 */	stw r0, 0x688(r30)
/* 8047EF18  80 1E 06 18 */	lwz r0, 0x618(r30)
/* 8047EF1C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8047EF20  90 1E 06 18 */	stw r0, 0x618(r30)
/* 8047EF24  38 1E 05 6C */	addi r0, r30, 0x56c
/* 8047EF28  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8047EF2C  80 1E 08 AC */	lwz r0, 0x8ac(r30)
/* 8047EF30  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 8047EF34  38 BF 02 40 */	addi r5, r31, 0x240
/* 8047EF38  7C A5 02 14 */	add r5, r5, r0
/* 8047EF3C  7F C3 F3 78 */	mr r3, r30
/* 8047EF40  A8 05 00 90 */	lha r0, 0x90(r5)
/* 8047EF44  C8 DF 07 50 */	lfd f6, 0x750(r31)
/* 8047EF48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047EF4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8047EF50  3C 80 43 30 */	lis r4, 0x4330
/* 8047EF54  90 81 00 08 */	stw r4, 8(r1)
/* 8047EF58  C8 01 00 08 */	lfd f0, 8(r1)
/* 8047EF5C  EC 20 30 28 */	fsubs f1, f0, f6
/* 8047EF60  A8 05 00 92 */	lha r0, 0x92(r5)
/* 8047EF64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047EF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047EF6C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8047EF70  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8047EF74  EC 40 30 28 */	fsubs f2, f0, f6
/* 8047EF78  A8 05 00 94 */	lha r0, 0x94(r5)
/* 8047EF7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047EF80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8047EF84  90 81 00 18 */	stw r4, 0x18(r1)
/* 8047EF88  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8047EF8C  EC 60 30 28 */	fsubs f3, f0, f6
/* 8047EF90  A8 05 00 96 */	lha r0, 0x96(r5)
/* 8047EF94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047EF98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047EF9C  90 81 00 20 */	stw r4, 0x20(r1)
/* 8047EFA0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8047EFA4  EC 80 30 28 */	fsubs f4, f0, f6
/* 8047EFA8  A8 05 00 98 */	lha r0, 0x98(r5)
/* 8047EFAC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047EFB0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8047EFB4  90 81 00 28 */	stw r4, 0x28(r1)
/* 8047EFB8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8047EFBC  EC A0 30 28 */	fsubs f5, f0, f6
/* 8047EFC0  A8 05 00 9A */	lha r0, 0x9a(r5)
/* 8047EFC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047EFC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047EFCC  90 81 00 30 */	stw r4, 0x30(r1)
/* 8047EFD0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8047EFD4  EC C0 30 28 */	fsubs f6, f0, f6
/* 8047EFD8  4B B9 B5 71 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8047EFDC  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8047EFE0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8047EFE4  80 1E 08 AC */	lwz r0, 0x8ac(r30)
/* 8047EFE8  1C 80 00 A0 */	mulli r4, r0, 0xa0
/* 8047EFEC  38 7F 02 40 */	addi r3, r31, 0x240
/* 8047EFF0  38 04 00 14 */	addi r0, r4, 0x14
/* 8047EFF4  7C 03 04 2E */	lfsx f0, r3, r0
/* 8047EFF8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8047EFFC  7F C3 F3 78 */	mr r3, r30
/* 8047F000  38 80 00 00 */	li r4, 0
/* 8047F004  4B B9 B6 C9 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8047F008  38 7E 07 28 */	addi r3, r30, 0x728
/* 8047F00C  7F C4 F3 78 */	mr r4, r30
/* 8047F010  4B FF F1 25 */	bl proc_vertical__Q212daObjMovebox5Bgc_cFPQ212daObjMovebox5Act_c
/* 8047F014  80 7E 08 A8 */	lwz r3, 0x8a8(r30)
/* 8047F018  38 00 FF D9 */	li r0, -39
/* 8047F01C  7C 60 00 38 */	and r0, r3, r0
/* 8047F020  90 1E 08 A8 */	stw r0, 0x8a8(r30)
/* 8047F024  38 00 00 01 */	li r0, 1
/* 8047F028  98 1E 09 02 */	stb r0, 0x902(r30)
/* 8047F02C  88 7E 04 BA */	lbz r3, 0x4ba(r30)
/* 8047F030  7C 63 07 74 */	extsb r3, r3
/* 8047F034  4B BA E0 39 */	bl dComIfGp_getReverb__Fi
/* 8047F038  98 7E 08 FF */	stb r3, 0x8ff(r30)
/* 8047F03C  7F C3 F3 78 */	mr r3, r30
/* 8047F040  38 80 00 04 */	li r4, 4
/* 8047F044  38 A0 00 1C */	li r5, 0x1c
/* 8047F048  48 00 1C 91 */	bl func_80480CD8
/* 8047F04C  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 8047F050  3B A0 00 00 */	li r29, 0
/* 8047F054  7F C3 F3 78 */	mr r3, r30
/* 8047F058  4B FF F5 D1 */	bl prm_get_swSave1__Q212daObjMovebox5Act_cCFv
/* 8047F05C  7C 64 1B 78 */	mr r4, r3
/* 8047F060  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047F064  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047F068  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8047F06C  7C 05 07 74 */	extsb r5, r0
/* 8047F070  4B BB 62 F1 */	bl isSwitch__10dSv_info_cCFii
/* 8047F074  2C 03 00 00 */	cmpwi r3, 0
/* 8047F078  41 82 00 08 */	beq lbl_8047F080
/* 8047F07C  3B A0 00 01 */	li r29, 1
lbl_8047F080:
/* 8047F080  A0 1E 08 B0 */	lhz r0, 0x8b0(r30)
/* 8047F084  7C 00 46 70 */	srawi r0, r0, 8
/* 8047F088  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8047F08C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047F090  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047F094  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8047F098  7C 05 07 74 */	extsb r5, r0
/* 8047F09C  4B BB 62 C5 */	bl isSwitch__10dSv_info_cCFii
/* 8047F0A0  2C 03 00 00 */	cmpwi r3, 0
/* 8047F0A4  41 82 00 08 */	beq lbl_8047F0AC
/* 8047F0A8  3B BD 00 02 */	addi r29, r29, 2
lbl_8047F0AC:
/* 8047F0AC  28 1F 00 0F */	cmplwi r31, 0xf
/* 8047F0B0  41 82 00 18 */	beq lbl_8047F0C8
/* 8047F0B4  7C 1F E8 00 */	cmpw r31, r29
/* 8047F0B8  40 82 00 10 */	bne lbl_8047F0C8
/* 8047F0BC  38 00 00 00 */	li r0, 0
/* 8047F0C0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8047F0C4  98 03 00 14 */	stb r0, 0x14(r3)
lbl_8047F0C8:
/* 8047F0C8  7F C3 F3 78 */	mr r3, r30
/* 8047F0CC  4B FF F6 E5 */	bl init_mtx__Q212daObjMovebox5Act_cFv
/* 8047F0D0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8047F0D4  4B BF C8 ED */	bl Move__4dBgWFv
/* 8047F0D8  38 00 00 00 */	li r0, 0
/* 8047F0DC  90 1E 09 04 */	stw r0, 0x904(r30)
/* 8047F0E0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8047F0E4  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 8047F0E8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8047F0EC  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8047F0F0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8047F0F4  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 8047F0F8  7F C3 F3 78 */	mr r3, r30
/* 8047F0FC  48 00 05 39 */	bl mode_wait_init__Q212daObjMovebox5Act_cFv
/* 8047F100  38 60 00 01 */	li r3, 1
/* 8047F104  39 61 00 50 */	addi r11, r1, 0x50
/* 8047F108  4B EE 31 21 */	bl _restgpr_29
/* 8047F10C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8047F110  7C 08 03 A6 */	mtlr r0
/* 8047F114  38 21 00 50 */	addi r1, r1, 0x50
/* 8047F118  4E 80 00 20 */	blr 
