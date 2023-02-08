lbl_8013ED44:
/* 8013ED44  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8013ED48  7C 08 02 A6 */	mflr r0
/* 8013ED4C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013ED50  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8013ED54  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8013ED58  39 61 00 30 */	addi r11, r1, 0x30
/* 8013ED5C  48 22 34 81 */	bl _savegpr_29
/* 8013ED60  7C 7E 1B 78 */	mr r30, r3
/* 8013ED64  3B E0 00 01 */	li r31, 1
/* 8013ED68  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 8013ED6C  54 04 02 D7 */	rlwinm. r4, r0, 0, 0xb, 0xb
/* 8013ED70  41 82 00 3C */	beq lbl_8013EDAC
/* 8013ED74  80 7E 27 F4 */	lwz r3, 0x27f4(r30)
/* 8013ED78  28 03 00 00 */	cmplwi r3, 0
/* 8013ED7C  41 82 00 30 */	beq lbl_8013EDAC
/* 8013ED80  A8 03 00 08 */	lha r0, 8(r3)
/* 8013ED84  2C 00 00 53 */	cmpwi r0, 0x53
/* 8013ED88  40 82 00 24 */	bne lbl_8013EDAC
/* 8013ED8C  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8013ED90  2C 00 00 00 */	cmpwi r0, 0
/* 8013ED94  41 82 00 14 */	beq lbl_8013EDA8
/* 8013ED98  2C 00 00 02 */	cmpwi r0, 2
/* 8013ED9C  41 82 00 0C */	beq lbl_8013EDA8
/* 8013EDA0  2C 00 00 03 */	cmpwi r0, 3
/* 8013EDA4  40 82 00 08 */	bne lbl_8013EDAC
lbl_8013EDA8:
/* 8013EDA8  3B E0 00 00 */	li r31, 0
lbl_8013EDAC:
/* 8013EDAC  28 04 00 00 */	cmplwi r4, 0
/* 8013EDB0  40 82 00 08 */	bne lbl_8013EDB8
/* 8013EDB4  3B E0 00 00 */	li r31, 0
lbl_8013EDB8:
/* 8013EDB8  2C 1F 00 00 */	cmpwi r31, 0
/* 8013EDBC  41 82 00 3C */	beq lbl_8013EDF8
/* 8013EDC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013EDC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013EDC8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8013EDCC  7F C4 F3 78 */	mr r4, r30
/* 8013EDD0  38 A0 00 00 */	li r5, 0
/* 8013EDD4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8013EDD8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8013EDDC  4B F0 43 91 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 8013EDE0  2C 03 00 00 */	cmpwi r3, 0
/* 8013EDE4  40 82 00 0C */	bne lbl_8013EDF0
/* 8013EDE8  38 60 00 00 */	li r3, 0
/* 8013EDEC  48 00 03 E4 */	b lbl_8013F1D0
lbl_8013EDF0:
/* 8013EDF0  38 00 00 05 */	li r0, 5
/* 8013EDF4  B0 1E 06 04 */	sth r0, 0x604(r30)
lbl_8013EDF8:
/* 8013EDF8  7F C3 F3 78 */	mr r3, r30
/* 8013EDFC  38 80 01 32 */	li r4, 0x132
/* 8013EE00  4B F8 31 6D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013EE04  B3 FE 30 14 */	sth r31, 0x3014(r30)
/* 8013EE08  80 7E 27 F4 */	lwz r3, 0x27f4(r30)
/* 8013EE0C  28 03 00 00 */	cmplwi r3, 0
/* 8013EE10  41 82 00 10 */	beq lbl_8013EE20
/* 8013EE14  A8 03 00 08 */	lha r0, 8(r3)
/* 8013EE18  B0 1E 30 0A */	sth r0, 0x300a(r30)
/* 8013EE1C  48 00 00 0C */	b lbl_8013EE28
lbl_8013EE20:
/* 8013EE20  38 00 00 FD */	li r0, 0xfd
/* 8013EE24  B0 1E 30 0A */	sth r0, 0x300a(r30)
lbl_8013EE28:
/* 8013EE28  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 8013EE2C  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8013EE30  41 82 00 20 */	beq lbl_8013EE50
/* 8013EE34  A8 1E 30 0A */	lha r0, 0x300a(r30)
/* 8013EE38  2C 00 00 A9 */	cmpwi r0, 0xa9
/* 8013EE3C  41 82 00 14 */	beq lbl_8013EE50
/* 8013EE40  2C 00 00 90 */	cmpwi r0, 0x90
/* 8013EE44  41 82 00 0C */	beq lbl_8013EE50
/* 8013EE48  83 FE 27 F4 */	lwz r31, 0x27f4(r30)
/* 8013EE4C  48 00 00 08 */	b lbl_8013EE54
lbl_8013EE50:
/* 8013EE50  3B E0 00 00 */	li r31, 0
lbl_8013EE54:
/* 8013EE54  38 00 00 00 */	li r0, 0
/* 8013EE58  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 8013EE5C  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 8013EE60  28 1F 00 00 */	cmplwi r31, 0
/* 8013EE64  41 82 00 F0 */	beq lbl_8013EF54
/* 8013EE68  A8 1F 00 08 */	lha r0, 8(r31)
/* 8013EE6C  2C 00 00 53 */	cmpwi r0, 0x53
/* 8013EE70  40 82 00 30 */	bne lbl_8013EEA0
/* 8013EE74  88 1F 05 68 */	lbz r0, 0x568(r31)
/* 8013EE78  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8013EE7C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8013EE80  54 00 A6 3E */	rlwinm r0, r0, 0x14, 0x18, 0x1f
/* 8013EE84  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 8013EE88  38 7E 28 0C */	addi r3, r30, 0x280c
/* 8013EE8C  7F E4 FB 78 */	mr r4, r31
/* 8013EE90  48 01 FE 29 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8013EE94  38 00 00 01 */	li r0, 1
/* 8013EE98  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 8013EE9C  48 00 00 14 */	b lbl_8013EEB0
lbl_8013EEA0:
/* 8013EEA0  38 7E 28 0C */	addi r3, r30, 0x280c
/* 8013EEA4  48 01 FE 59 */	bl clearData__16daPy_actorKeep_cFv
/* 8013EEA8  38 00 00 03 */	li r0, 3
/* 8013EEAC  B0 1E 30 0C */	sth r0, 0x300c(r30)
lbl_8013EEB0:
/* 8013EEB0  7F C3 F3 78 */	mr r3, r30
/* 8013EEB4  7F E4 FB 78 */	mr r4, r31
/* 8013EEB8  4B ED B8 59 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8013EEBC  7C 7D 1B 78 */	mr r29, r3
/* 8013EEC0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8013EEC4  7C 00 E8 50 */	subf r0, r0, r29
/* 8013EEC8  7C 03 07 34 */	extsh r3, r0
/* 8013EECC  48 22 62 05 */	bl abs
/* 8013EED0  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8013EED4  40 81 00 10 */	ble lbl_8013EEE4
/* 8013EED8  3C 7D 00 01 */	addis r3, r29, 1
/* 8013EEDC  38 03 80 00 */	addi r0, r3, -32768
/* 8013EEE0  7C 1D 07 34 */	extsh r29, r0
lbl_8013EEE4:
/* 8013EEE4  B3 BE 04 E6 */	sth r29, 0x4e6(r30)
/* 8013EEE8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8013EEEC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8013EEF0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8013EEF4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013EEF8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8013EEFC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8013EF00  7C 03 04 2E */	lfsx f0, r3, r0
/* 8013EF04  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8013EF08  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 8013EF0C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8013EF10  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013EF14  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8013EF18  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8013EF1C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013EF20  7C 63 02 14 */	add r3, r3, r0
/* 8013EF24  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013EF28  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8013EF2C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8013EF30  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013EF34  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8013EF38  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8013EF3C  D0 1E 37 C8 */	stfs f0, 0x37c8(r30)
/* 8013EF40  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8013EF44  D0 1E 37 CC */	stfs f0, 0x37cc(r30)
/* 8013EF48  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8013EF4C  D0 1E 37 D0 */	stfs f0, 0x37d0(r30)
/* 8013EF50  48 00 00 A8 */	b lbl_8013EFF8
lbl_8013EF54:
/* 8013EF54  38 00 00 04 */	li r0, 4
/* 8013EF58  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8013EF5C  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 8013EF60  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8013EF64  41 82 00 44 */	beq lbl_8013EFA8
/* 8013EF68  A8 1E 30 0A */	lha r0, 0x300a(r30)
/* 8013EF6C  2C 00 00 90 */	cmpwi r0, 0x90
/* 8013EF70  40 82 00 14 */	bne lbl_8013EF84
/* 8013EF74  38 00 00 01 */	li r0, 1
/* 8013EF78  80 7E 27 F4 */	lwz r3, 0x27f4(r30)
/* 8013EF7C  98 03 09 3C */	stb r0, 0x93c(r3)
/* 8013EF80  48 00 00 18 */	b lbl_8013EF98
lbl_8013EF84:
/* 8013EF84  2C 00 00 A9 */	cmpwi r0, 0xa9
/* 8013EF88  40 82 00 10 */	bne lbl_8013EF98
/* 8013EF8C  38 00 00 01 */	li r0, 1
/* 8013EF90  80 7E 27 F4 */	lwz r3, 0x27f4(r30)
/* 8013EF94  98 03 09 41 */	stb r0, 0x941(r3)
lbl_8013EF98:
/* 8013EF98  38 7E 28 0C */	addi r3, r30, 0x280c
/* 8013EF9C  80 9E 27 F4 */	lwz r4, 0x27f4(r30)
/* 8013EFA0  48 01 FD 19 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8013EFA4  48 00 00 0C */	b lbl_8013EFB0
lbl_8013EFA8:
/* 8013EFA8  38 7E 28 0C */	addi r3, r30, 0x280c
/* 8013EFAC  48 01 FD 51 */	bl clearData__16daPy_actorKeep_cFv
lbl_8013EFB0:
/* 8013EFB0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8013EFB4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8013EFB8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8013EFBC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013EFC0  7C 64 02 14 */	add r3, r4, r0
/* 8013EFC4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013EFC8  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8013EFCC  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 8013EFD0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8013EFD4  EC 81 00 2A */	fadds f4, f1, f0
/* 8013EFD8  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 8013EFDC  7C 04 04 2E */	lfsx f0, r4, r0
/* 8013EFE0  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8013EFE4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8013EFE8  EC 01 00 2A */	fadds f0, f1, f0
/* 8013EFEC  D0 1E 37 C8 */	stfs f0, 0x37c8(r30)
/* 8013EFF0  D0 7E 37 CC */	stfs f3, 0x37cc(r30)
/* 8013EFF4  D0 9E 37 D0 */	stfs f4, 0x37d0(r30)
lbl_8013EFF8:
/* 8013EFF8  A8 7E 30 0C */	lha r3, 0x300c(r30)
/* 8013EFFC  7C 60 07 35 */	extsh. r0, r3
/* 8013F000  41 82 00 14 */	beq lbl_8013F014
/* 8013F004  2C 03 00 02 */	cmpwi r3, 2
/* 8013F008  41 82 00 0C */	beq lbl_8013F014
/* 8013F00C  2C 03 00 03 */	cmpwi r3, 3
/* 8013F010  40 82 00 14 */	bne lbl_8013F024
lbl_8013F014:
/* 8013F014  3B A0 00 3B */	li r29, 0x3b
/* 8013F018  C0 02 95 6C */	lfs f0, lit_24591(r2)
/* 8013F01C  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 8013F020  48 00 00 3C */	b lbl_8013F05C
lbl_8013F024:
/* 8013F024  2C 03 00 01 */	cmpwi r3, 1
/* 8013F028  40 82 00 20 */	bne lbl_8013F048
/* 8013F02C  3B A0 00 21 */	li r29, 0x21
/* 8013F030  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 8013F034  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 8013F038  48 04 26 09 */	bl dCam_getBody__Fv
/* 8013F03C  38 80 00 03 */	li r4, 3
/* 8013F040  48 02 3F E9 */	bl SetTrimTypeForce__9dCamera_cFl
/* 8013F044  48 00 00 18 */	b lbl_8013F05C
lbl_8013F048:
/* 8013F048  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlChain_c0@ha /* 0x8038F858@ha */
/* 8013F04C  38 63 F8 58 */	addi r3, r3, m__21daAlinkHIO_wlChain_c0@l /* 0x8038F858@l */
/* 8013F050  AB A3 00 14 */	lha r29, 0x14(r3)
/* 8013F054  C0 02 97 D4 */	lfs f0, lit_53012(r2)
/* 8013F058  D0 1E 34 78 */	stfs f0, 0x3478(r30)
lbl_8013F05C:
/* 8013F05C  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 8013F060  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8013F064  41 82 00 0C */	beq lbl_8013F070
/* 8013F068  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 8013F06C  48 00 00 0C */	b lbl_8013F078
lbl_8013F070:
/* 8013F070  C0 42 93 C4 */	lfs f2, lit_10194(r2)
/* 8013F074  3B A0 00 3B */	li r29, 0x3b
lbl_8013F078:
/* 8013F078  7F C3 F3 78 */	mr r3, r30
/* 8013F07C  38 80 00 68 */	li r4, 0x68
/* 8013F080  3C A0 80 39 */	lis r5, m__21daAlinkHIO_wlChain_c0@ha /* 0x8038F858@ha */
/* 8013F084  38 C5 F8 58 */	addi r6, r5, m__21daAlinkHIO_wlChain_c0@l /* 0x8038F858@l */
/* 8013F088  C0 26 00 18 */	lfs f1, 0x18(r6)
/* 8013F08C  7F A5 EB 78 */	mr r5, r29
/* 8013F090  C0 66 00 20 */	lfs f3, 0x20(r6)
/* 8013F094  4B FE A6 71 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 8013F098  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013F09C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8013F0A0  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 8013F0A4  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)  /* 0x8042561C@l */
/* 8013F0A8  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 8013F0AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013F0B0  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 8013F0B4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013F0B8  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 8013F0BC  38 00 00 00 */	li r0, 0
/* 8013F0C0  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 8013F0C4  C0 5E 37 D0 */	lfs f2, 0x37d0(r30)
/* 8013F0C8  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 8013F0CC  C0 1E 37 CC */	lfs f0, 0x37cc(r30)
/* 8013F0D0  EC 21 00 2A */	fadds f1, f1, f0
/* 8013F0D4  C0 1E 37 C8 */	lfs f0, 0x37c8(r30)
/* 8013F0D8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8013F0DC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8013F0E0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8013F0E4  38 7E 1D 08 */	addi r3, r30, 0x1d08
/* 8013F0E8  38 81 00 08 */	addi r4, r1, 8
/* 8013F0EC  48 12 8C 3D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8013F0F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013F0F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013F0F8  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8013F0FC  7F E3 FB 78 */	mr r3, r31
/* 8013F100  38 9E 1D 08 */	addi r4, r30, 0x1d08
/* 8013F104  4B F3 53 9D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8013F108  FF E0 08 90 */	fmr f31, f1
/* 8013F10C  C0 1E 37 CC */	lfs f0, 0x37cc(r30)
/* 8013F110  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8013F114  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 8013F118  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013F11C  40 80 00 18 */	bge lbl_8013F134
/* 8013F120  38 7E 1E 2C */	addi r3, r30, 0x1e2c
/* 8013F124  38 9E 1D 1C */	addi r4, r30, 0x1d1c
/* 8013F128  48 12 90 21 */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 8013F12C  D3 FE 37 CC */	stfs f31, 0x37cc(r30)
/* 8013F130  48 00 00 10 */	b lbl_8013F140
lbl_8013F134:
/* 8013F134  38 7E 1E 2C */	addi r3, r30, 0x1e2c
/* 8013F138  38 9E 1A 60 */	addi r4, r30, 0x1a60
/* 8013F13C  48 12 90 0D */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
lbl_8013F140:
/* 8013F140  C0 1E 37 C8 */	lfs f0, 0x37c8(r30)
/* 8013F144  D0 1E 37 D4 */	stfs f0, 0x37d4(r30)
/* 8013F148  C0 1E 37 CC */	lfs f0, 0x37cc(r30)
/* 8013F14C  D0 1E 37 D8 */	stfs f0, 0x37d8(r30)
/* 8013F150  C0 1E 37 D0 */	lfs f0, 0x37d0(r30)
/* 8013F154  D0 1E 37 DC */	stfs f0, 0x37dc(r30)
/* 8013F158  38 7E 37 C8 */	addi r3, r30, 0x37c8
/* 8013F15C  4B ED EC 29 */	bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 8013F160  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013F164  41 82 00 4C */	beq lbl_8013F1B0
/* 8013F168  7F E3 FB 78 */	mr r3, r31
/* 8013F16C  3C 80 80 3F */	lis r4, mWaterCheck__11fopAcM_wt_c@ha /* 0x803F1D80@ha */
/* 8013F170  38 84 1D 80 */	addi r4, r4, mWaterCheck__11fopAcM_wt_c@l /* 0x803F1D80@l */
/* 8013F174  4B F3 5C DD */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8013F178  2C 03 00 06 */	cmpwi r3, 6
/* 8013F17C  41 82 00 34 */	beq lbl_8013F1B0
/* 8013F180  C0 2D 87 58 */	lfs f1, mWaterY__11fopAcM_wt_c(r13)
/* 8013F184  C0 1E 37 CC */	lfs f0, 0x37cc(r30)
/* 8013F188  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013F18C  40 81 00 24 */	ble lbl_8013F1B0
/* 8013F190  D0 3E 37 D8 */	stfs f1, 0x37d8(r30)
/* 8013F194  38 00 00 07 */	li r0, 7
/* 8013F198  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 8013F19C  38 7E 1E 2C */	addi r3, r30, 0x1e2c
/* 8013F1A0  3C 80 80 3F */	lis r4, mWaterCheck__11fopAcM_wt_c@ha /* 0x803F1D80@ha */
/* 8013F1A4  38 84 1D 80 */	addi r4, r4, mWaterCheck__11fopAcM_wt_c@l /* 0x803F1D80@l */
/* 8013F1A8  48 12 8F A1 */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 8013F1AC  48 00 00 14 */	b lbl_8013F1C0
lbl_8013F1B0:
/* 8013F1B0  7F E3 FB 78 */	mr r3, r31
/* 8013F1B4  38 9E 1E 2C */	addi r4, r30, 0x1e2c
/* 8013F1B8  4B F3 5C 99 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8013F1BC  90 7E 31 98 */	stw r3, 0x3198(r30)
lbl_8013F1C0:
/* 8013F1C0  38 00 00 00 */	li r0, 0
/* 8013F1C4  90 1E 32 CC */	stw r0, 0x32cc(r30)
/* 8013F1C8  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 8013F1CC  38 60 00 01 */	li r3, 1
lbl_8013F1D0:
/* 8013F1D0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8013F1D4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8013F1D8  39 61 00 30 */	addi r11, r1, 0x30
/* 8013F1DC  48 22 30 4D */	bl _restgpr_29
/* 8013F1E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8013F1E4  7C 08 03 A6 */	mtlr r0
/* 8013F1E8  38 21 00 40 */	addi r1, r1, 0x40
/* 8013F1EC  4E 80 00 20 */	blr 
