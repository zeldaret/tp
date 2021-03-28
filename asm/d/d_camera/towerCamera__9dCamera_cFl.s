lbl_80176E00:
/* 80176E00  94 21 FA 70 */	stwu r1, -0x590(r1)
/* 80176E04  7C 08 02 A6 */	mflr r0
/* 80176E08  90 01 05 94 */	stw r0, 0x594(r1)
/* 80176E0C  DB E1 05 80 */	stfd f31, 0x580(r1)
/* 80176E10  F3 E1 05 88 */	psq_st f31, 1416(r1), 0, 0 /* qr0 */
/* 80176E14  DB C1 05 70 */	stfd f30, 0x570(r1)
/* 80176E18  F3 C1 05 78 */	psq_st f30, 1400(r1), 0, 0 /* qr0 */
/* 80176E1C  DB A1 05 60 */	stfd f29, 0x560(r1)
/* 80176E20  F3 A1 05 68 */	psq_st f29, 1384(r1), 0, 0 /* qr0 */
/* 80176E24  DB 81 05 50 */	stfd f28, 0x550(r1)
/* 80176E28  F3 81 05 58 */	psq_st f28, 1368(r1), 0, 0 /* qr0 */
/* 80176E2C  DB 61 05 40 */	stfd f27, 0x540(r1)
/* 80176E30  F3 61 05 48 */	psq_st f27, 1352(r1), 0, 0 /* qr0 */
/* 80176E34  DB 41 05 30 */	stfd f26, 0x530(r1)
/* 80176E38  F3 41 05 38 */	psq_st f26, 1336(r1), 0, 0 /* qr0 */
/* 80176E3C  DB 21 05 20 */	stfd f25, 0x520(r1)
/* 80176E40  F3 21 05 28 */	psq_st f25, 1320(r1), 0, 0 /* qr0 */
/* 80176E44  DB 01 05 10 */	stfd f24, 0x510(r1)
/* 80176E48  F3 01 05 18 */	psq_st f24, 1304(r1), 0, 0 /* qr0 */
/* 80176E4C  DA E1 05 00 */	stfd f23, 0x500(r1)
/* 80176E50  F2 E1 05 08 */	psq_st f23, 1288(r1), 0, 0 /* qr0 */
/* 80176E54  DA C1 04 F0 */	stfd f22, 0x4f0(r1)
/* 80176E58  F2 C1 04 F8 */	psq_st f22, 1272(r1), 0, 0 /* qr0 */
/* 80176E5C  DA A1 04 E0 */	stfd f21, 0x4e0(r1)
/* 80176E60  F2 A1 04 E8 */	psq_st f21, 1256(r1), 0, 0 /* qr0 */
/* 80176E64  DA 81 04 D0 */	stfd f20, 0x4d0(r1)
/* 80176E68  F2 81 04 D8 */	psq_st f20, 1240(r1), 0, 0 /* qr0 */
/* 80176E6C  DA 61 04 C0 */	stfd f19, 0x4c0(r1)
/* 80176E70  F2 61 04 C8 */	psq_st f19, 1224(r1), 0, 0 /* qr0 */
/* 80176E74  DA 41 04 B0 */	stfd f18, 0x4b0(r1)
/* 80176E78  F2 41 04 B8 */	psq_st f18, 1208(r1), 0, 0 /* qr0 */
/* 80176E7C  DA 21 04 A0 */	stfd f17, 0x4a0(r1)
/* 80176E80  F2 21 04 A8 */	psq_st f17, 1192(r1), 0, 0 /* qr0 */
/* 80176E84  DA 01 04 90 */	stfd f16, 0x490(r1)
/* 80176E88  F2 01 04 98 */	psq_st f16, 1176(r1), 0, 0 /* qr0 */
/* 80176E8C  D9 E1 04 80 */	stfd f15, 0x480(r1)
/* 80176E90  F1 E1 04 88 */	psq_st f15, 1160(r1), 0, 0 /* qr0 */
/* 80176E94  D9 C1 04 70 */	stfd f14, 0x470(r1)
/* 80176E98  F1 C1 04 78 */	psq_st f14, 1144(r1), 0, 0 /* qr0 */
/* 80176E9C  39 61 04 70 */	addi r11, r1, 0x470
/* 80176EA0  48 1E B3 21 */	bl _savegpr_22
/* 80176EA4  7C 78 1B 78 */	mr r24, r3
/* 80176EA8  7C 99 23 78 */	mr r25, r4
/* 80176EAC  38 61 00 FC */	addi r3, r1, 0xfc
/* 80176EB0  C0 38 0A 30 */	lfs f1, 0xa30(r24)
/* 80176EB4  48 0F A1 15 */	bl __ct__7cSAngleFf
/* 80176EB8  38 61 01 4C */	addi r3, r1, 0x14c
/* 80176EBC  38 81 00 FC */	addi r4, r1, 0xfc
/* 80176EC0  48 0F A0 A9 */	bl __ct__7cSAngleFRC7cSAngle
/* 80176EC4  38 61 00 FC */	addi r3, r1, 0xfc
/* 80176EC8  38 80 FF FF */	li r4, -1
/* 80176ECC  4B EB 96 45 */	bl __dt__7cSAngleFv
/* 80176ED0  38 61 01 48 */	addi r3, r1, 0x148
/* 80176ED4  C0 22 9D 54 */	lfs f1, lit_9406(r2)
/* 80176ED8  48 0F A0 F1 */	bl __ct__7cSAngleFf
/* 80176EDC  38 61 01 44 */	addi r3, r1, 0x144
/* 80176EE0  C0 22 9D 98 */	lfs f1, lit_10561(r2)
/* 80176EE4  48 0F A0 E5 */	bl __ct__7cSAngleFf
/* 80176EE8  38 61 01 40 */	addi r3, r1, 0x140
/* 80176EEC  C0 22 9C B8 */	lfs f1, lit_5662(r2)
/* 80176EF0  48 0F A0 D9 */	bl __ct__7cSAngleFf
/* 80176EF4  38 78 0A EC */	addi r3, r24, 0xaec
/* 80176EF8  7F 24 CB 78 */	mr r4, r25
/* 80176EFC  38 A0 00 00 */	li r5, 0
/* 80176F00  48 00 BD D1 */	bl Val__11dCamParam_cFli
/* 80176F04  FF 40 08 90 */	fmr f26, f1
/* 80176F08  38 78 0A EC */	addi r3, r24, 0xaec
/* 80176F0C  7F 24 CB 78 */	mr r4, r25
/* 80176F10  38 A0 00 02 */	li r5, 2
/* 80176F14  48 00 BD BD */	bl Val__11dCamParam_cFli
/* 80176F18  FF 00 08 90 */	fmr f24, f1
/* 80176F1C  38 78 0A EC */	addi r3, r24, 0xaec
/* 80176F20  7F 24 CB 78 */	mr r4, r25
/* 80176F24  38 A0 00 01 */	li r5, 1
/* 80176F28  48 00 BD A9 */	bl Val__11dCamParam_cFli
/* 80176F2C  D8 21 04 20 */	stfd f1, 0x420(r1)
/* 80176F30  38 78 0A EC */	addi r3, r24, 0xaec
/* 80176F34  7F 24 CB 78 */	mr r4, r25
/* 80176F38  38 A0 00 05 */	li r5, 5
/* 80176F3C  48 00 BD 95 */	bl Val__11dCamParam_cFli
/* 80176F40  D8 21 04 28 */	stfd f1, 0x428(r1)
/* 80176F44  38 78 0A EC */	addi r3, r24, 0xaec
/* 80176F48  7F 24 CB 78 */	mr r4, r25
/* 80176F4C  38 A0 00 06 */	li r5, 6
/* 80176F50  48 00 BD 81 */	bl Val__11dCamParam_cFli
/* 80176F54  FE E0 08 90 */	fmr f23, f1
/* 80176F58  38 78 0A EC */	addi r3, r24, 0xaec
/* 80176F5C  7F 24 CB 78 */	mr r4, r25
/* 80176F60  38 A0 00 03 */	li r5, 3
/* 80176F64  48 00 BD 6D */	bl Val__11dCamParam_cFli
/* 80176F68  FE C0 08 90 */	fmr f22, f1
/* 80176F6C  38 78 0A EC */	addi r3, r24, 0xaec
/* 80176F70  7F 24 CB 78 */	mr r4, r25
/* 80176F74  38 A0 00 1A */	li r5, 0x1a
/* 80176F78  48 00 BD 59 */	bl Val__11dCamParam_cFli
/* 80176F7C  D0 21 04 18 */	stfs f1, 0x418(r1)
/* 80176F80  38 78 0A EC */	addi r3, r24, 0xaec
/* 80176F84  7F 24 CB 78 */	mr r4, r25
/* 80176F88  38 A0 00 07 */	li r5, 7
/* 80176F8C  48 00 BD 45 */	bl Val__11dCamParam_cFli
/* 80176F90  FE A0 08 90 */	fmr f21, f1
/* 80176F94  38 78 0A EC */	addi r3, r24, 0xaec
/* 80176F98  7F 24 CB 78 */	mr r4, r25
/* 80176F9C  38 A0 00 08 */	li r5, 8
/* 80176FA0  48 00 BD 31 */	bl Val__11dCamParam_cFli
/* 80176FA4  FE 80 08 90 */	fmr f20, f1
/* 80176FA8  38 78 0A EC */	addi r3, r24, 0xaec
/* 80176FAC  7F 24 CB 78 */	mr r4, r25
/* 80176FB0  38 A0 00 0A */	li r5, 0xa
/* 80176FB4  48 00 BD 1D */	bl Val__11dCamParam_cFli
/* 80176FB8  FF 60 08 90 */	fmr f27, f1
/* 80176FBC  38 78 0A EC */	addi r3, r24, 0xaec
/* 80176FC0  7F 24 CB 78 */	mr r4, r25
/* 80176FC4  38 A0 00 0B */	li r5, 0xb
/* 80176FC8  48 00 BD 09 */	bl Val__11dCamParam_cFli
/* 80176FCC  FF 80 08 90 */	fmr f28, f1
/* 80176FD0  38 78 0A EC */	addi r3, r24, 0xaec
/* 80176FD4  7F 24 CB 78 */	mr r4, r25
/* 80176FD8  38 A0 00 0C */	li r5, 0xc
/* 80176FDC  48 00 BC F5 */	bl Val__11dCamParam_cFli
/* 80176FE0  FE 60 08 90 */	fmr f19, f1
/* 80176FE4  38 78 0A EC */	addi r3, r24, 0xaec
/* 80176FE8  7F 24 CB 78 */	mr r4, r25
/* 80176FEC  38 A0 00 0D */	li r5, 0xd
/* 80176FF0  48 00 BC E1 */	bl Val__11dCamParam_cFli
/* 80176FF4  FE 40 08 90 */	fmr f18, f1
/* 80176FF8  38 78 0A EC */	addi r3, r24, 0xaec
/* 80176FFC  7F 24 CB 78 */	mr r4, r25
/* 80177000  38 A0 00 10 */	li r5, 0x10
/* 80177004  48 00 BC CD */	bl Val__11dCamParam_cFli
/* 80177008  D8 21 04 30 */	stfd f1, 0x430(r1)
/* 8017700C  38 78 0A EC */	addi r3, r24, 0xaec
/* 80177010  7F 24 CB 78 */	mr r4, r25
/* 80177014  38 A0 00 11 */	li r5, 0x11
/* 80177018  48 00 BC B9 */	bl Val__11dCamParam_cFli
/* 8017701C  FE 20 08 90 */	fmr f17, f1
/* 80177020  38 78 0A EC */	addi r3, r24, 0xaec
/* 80177024  7F 24 CB 78 */	mr r4, r25
/* 80177028  38 A0 00 12 */	li r5, 0x12
/* 8017702C  48 00 BC A5 */	bl Val__11dCamParam_cFli
/* 80177030  FE 00 08 90 */	fmr f16, f1
/* 80177034  38 78 0A EC */	addi r3, r24, 0xaec
/* 80177038  7F 24 CB 78 */	mr r4, r25
/* 8017703C  38 A0 00 14 */	li r5, 0x14
/* 80177040  48 00 BC 91 */	bl Val__11dCamParam_cFli
/* 80177044  FD E0 08 90 */	fmr f15, f1
/* 80177048  38 78 0A EC */	addi r3, r24, 0xaec
/* 8017704C  7F 24 CB 78 */	mr r4, r25
/* 80177050  38 A0 00 15 */	li r5, 0x15
/* 80177054  48 00 BC 7D */	bl Val__11dCamParam_cFli
/* 80177058  D8 21 04 38 */	stfd f1, 0x438(r1)
/* 8017705C  38 78 0A EC */	addi r3, r24, 0xaec
/* 80177060  7F 24 CB 78 */	mr r4, r25
/* 80177064  38 A0 00 17 */	li r5, 0x17
/* 80177068  48 00 BC 69 */	bl Val__11dCamParam_cFli
/* 8017706C  38 61 01 3C */	addi r3, r1, 0x13c
/* 80177070  48 0F 9F 59 */	bl __ct__7cSAngleFf
/* 80177074  38 78 0A EC */	addi r3, r24, 0xaec
/* 80177078  7F 24 CB 78 */	mr r4, r25
/* 8017707C  38 A0 00 18 */	li r5, 0x18
/* 80177080  48 00 BC 51 */	bl Val__11dCamParam_cFli
/* 80177084  38 61 01 38 */	addi r3, r1, 0x138
/* 80177088  48 0F 9F 41 */	bl __ct__7cSAngleFf
/* 8017708C  38 78 0A EC */	addi r3, r24, 0xaec
/* 80177090  7F 24 CB 78 */	mr r4, r25
/* 80177094  38 A0 00 16 */	li r5, 0x16
/* 80177098  48 00 BC 39 */	bl Val__11dCamParam_cFli
/* 8017709C  FF A0 08 90 */	fmr f29, f1
/* 801770A0  38 78 0A EC */	addi r3, r24, 0xaec
/* 801770A4  7F 24 CB 78 */	mr r4, r25
/* 801770A8  38 A0 00 1B */	li r5, 0x1b
/* 801770AC  48 00 BC 25 */	bl Val__11dCamParam_cFli
/* 801770B0  FF C0 08 90 */	fmr f30, f1
/* 801770B4  38 78 0A EC */	addi r3, r24, 0xaec
/* 801770B8  7F 24 CB 78 */	mr r4, r25
/* 801770BC  38 A0 00 04 */	li r5, 4
/* 801770C0  48 00 BC 11 */	bl Val__11dCamParam_cFli
/* 801770C4  FF 20 08 90 */	fmr f25, f1
/* 801770C8  38 78 0A EC */	addi r3, r24, 0xaec
/* 801770CC  7F 24 CB 78 */	mr r4, r25
/* 801770D0  38 A0 00 09 */	li r5, 9
/* 801770D4  48 00 BB FD */	bl Val__11dCamParam_cFli
/* 801770D8  FF E0 08 90 */	fmr f31, f1
/* 801770DC  38 78 0A EC */	addi r3, r24, 0xaec
/* 801770E0  7F 24 CB 78 */	mr r4, r25
/* 801770E4  38 A0 00 0E */	li r5, 0xe
/* 801770E8  48 00 BB E9 */	bl Val__11dCamParam_cFli
/* 801770EC  FD C0 08 90 */	fmr f14, f1
/* 801770F0  38 78 0A EC */	addi r3, r24, 0xaec
/* 801770F4  7F 24 CB 78 */	mr r4, r25
/* 801770F8  38 A0 00 13 */	li r5, 0x13
/* 801770FC  48 00 BB D5 */	bl Val__11dCamParam_cFli
/* 80177100  80 18 09 40 */	lwz r0, 0x940(r24)
/* 80177104  2C 00 00 01 */	cmpwi r0, 1
/* 80177108  40 82 00 28 */	bne lbl_80177130
/* 8017710C  FE A0 F8 90 */	fmr f21, f31
/* 80177110  C0 02 9D 6C */	lfs f0, lit_10550(r2)
/* 80177114  EE 80 07 F2 */	fmuls f20, f0, f31
/* 80177118  FE C0 C8 90 */	fmr f22, f25
/* 8017711C  FF 00 C8 90 */	fmr f24, f25
/* 80177120  FE 40 70 90 */	fmr f18, f14
/* 80177124  FE 60 70 90 */	fmr f19, f14
/* 80177128  FE 00 08 90 */	fmr f16, f1
/* 8017712C  FE 20 80 90 */	fmr f17, f16
lbl_80177130:
/* 80177130  83 58 01 80 */	lwz r26, 0x180(r24)
/* 80177134  48 00 B8 69 */	bl dComIfGp_getAttention__Fv
/* 80177138  80 18 01 74 */	lwz r0, 0x174(r24)
/* 8017713C  28 00 00 00 */	cmplwi r0, 0
/* 80177140  40 82 00 5C */	bne lbl_8017719C
/* 80177144  C0 18 07 C4 */	lfs f0, 0x7c4(r24)
/* 80177148  D0 18 04 3C */	stfs f0, 0x43c(r24)
/* 8017714C  C0 18 07 C8 */	lfs f0, 0x7c8(r24)
/* 80177150  D0 18 04 40 */	stfs f0, 0x440(r24)
/* 80177154  C0 18 07 CC */	lfs f0, 0x7cc(r24)
/* 80177158  D0 18 04 44 */	stfs f0, 0x444(r24)
/* 8017715C  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80177160  A8 98 07 D2 */	lha r4, 0x7d2(r24)
/* 80177164  48 0F 9E 35 */	bl __ct__7cSAngleFs
/* 80177168  38 78 04 48 */	addi r3, r24, 0x448
/* 8017716C  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80177170  48 00 BB 39 */	bl __as__7cSAngleFRC7cSAngle
/* 80177174  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80177178  38 80 FF FF */	li r4, -1
/* 8017717C  4B EB 93 95 */	bl __dt__7cSAngleFv
/* 80177180  A8 A1 01 3C */	lha r5, 0x13c(r1)
/* 80177184  A8 0D 8C 10 */	lha r0, _90__7cSAngle(r13)
/* 80177188  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 8017718C  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 80177190  7C 05 00 10 */	subfc r0, r5, r0
/* 80177194  7C 04 19 14 */	adde r0, r4, r3
/* 80177198  90 18 04 4C */	stw r0, 0x44c(r24)
lbl_8017719C:
/* 8017719C  80 18 07 D8 */	lwz r0, 0x7d8(r24)
/* 801771A0  2C 00 00 FF */	cmpwi r0, 0xff
/* 801771A4  40 82 00 90 */	bne lbl_80177234
/* 801771A8  80 98 06 84 */	lwz r4, 0x684(r24)
/* 801771AC  3C 60 80 43 */	lis r3, data_8042C8F8@ha
/* 801771B0  80 03 C8 F8 */	lwz r0, data_8042C8F8@l(r3)
/* 801771B4  1C 00 00 44 */	mulli r0, r0, 0x44
/* 801771B8  7C 64 02 14 */	add r3, r4, r0
/* 801771BC  80 18 01 90 */	lwz r0, 0x190(r24)
/* 801771C0  1C 00 00 16 */	mulli r0, r0, 0x16
/* 801771C4  7C 63 02 14 */	add r3, r3, r0
/* 801771C8  80 18 01 A4 */	lwz r0, 0x1a4(r24)
/* 801771CC  54 00 08 3C */	slwi r0, r0, 1
/* 801771D0  7C 63 02 14 */	add r3, r3, r0
/* 801771D4  A8 83 00 18 */	lha r4, 0x18(r3)
/* 801771D8  7F 03 C3 78 */	mr r3, r24
/* 801771DC  4B FF 15 69 */	bl chaseCamera__9dCamera_cFl
/* 801771E0  7C 78 1B 78 */	mr r24, r3
/* 801771E4  38 61 01 38 */	addi r3, r1, 0x138
/* 801771E8  38 80 FF FF */	li r4, -1
/* 801771EC  4B EB 93 25 */	bl __dt__7cSAngleFv
/* 801771F0  38 61 01 3C */	addi r3, r1, 0x13c
/* 801771F4  38 80 FF FF */	li r4, -1
/* 801771F8  4B EB 93 19 */	bl __dt__7cSAngleFv
/* 801771FC  38 61 01 40 */	addi r3, r1, 0x140
/* 80177200  38 80 FF FF */	li r4, -1
/* 80177204  4B EB 93 0D */	bl __dt__7cSAngleFv
/* 80177208  38 61 01 44 */	addi r3, r1, 0x144
/* 8017720C  38 80 FF FF */	li r4, -1
/* 80177210  4B EB 93 01 */	bl __dt__7cSAngleFv
/* 80177214  38 61 01 48 */	addi r3, r1, 0x148
/* 80177218  38 80 FF FF */	li r4, -1
/* 8017721C  4B EB 92 F5 */	bl __dt__7cSAngleFv
/* 80177220  38 61 01 4C */	addi r3, r1, 0x14c
/* 80177224  38 80 FF FF */	li r4, -1
/* 80177228  4B EB 92 E9 */	bl __dt__7cSAngleFv
/* 8017722C  7F 03 C3 78 */	mr r3, r24
/* 80177230  48 00 1B 78 */	b lbl_80178DA8
lbl_80177234:
/* 80177234  80 78 01 7C */	lwz r3, 0x17c(r24)
/* 80177238  3C 80 08 10 */	lis r4, 0x810
/* 8017723C  4B FF 51 2D */	bl func_8016C368
/* 80177240  28 03 00 00 */	cmplwi r3, 0
/* 80177244  41 82 00 5C */	beq lbl_801772A0
/* 80177248  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8017724C  C0 22 9E A4 */	lfs f1, lit_13132(r2)
/* 80177250  48 0F 9D 79 */	bl __ct__7cSAngleFf
/* 80177254  A8 01 01 44 */	lha r0, 0x144(r1)
/* 80177258  A8 81 00 F4 */	lha r4, 0xf4(r1)
/* 8017725C  7C 80 02 78 */	xor r0, r4, r0
/* 80177260  7C 03 0E 70 */	srawi r3, r0, 1
/* 80177264  7C 00 20 38 */	and r0, r0, r4
/* 80177268  7C 00 18 50 */	subf r0, r0, r3
/* 8017726C  54 1B 0F FE */	srwi r27, r0, 0x1f
/* 80177270  38 61 00 F4 */	addi r3, r1, 0xf4
/* 80177274  38 80 FF FF */	li r4, -1
/* 80177278  4B EB 92 99 */	bl __dt__7cSAngleFv
/* 8017727C  28 1B 00 00 */	cmplwi r27, 0
/* 80177280  41 82 00 10 */	beq lbl_80177290
/* 80177284  38 61 01 44 */	addi r3, r1, 0x144
/* 80177288  C0 22 9E A4 */	lfs f1, lit_13132(r2)
/* 8017728C  48 0F 9D 81 */	bl Val__7cSAngleFf
lbl_80177290:
/* 80177290  C0 02 9D F0 */	lfs f0, lit_11167(r2)
/* 80177294  FC 18 00 40 */	fcmpo cr0, f24, f0
/* 80177298  40 80 00 08 */	bge lbl_801772A0
/* 8017729C  FF 00 00 90 */	fmr f24, f0
lbl_801772A0:
/* 801772A0  38 61 03 20 */	addi r3, r1, 0x320
/* 801772A4  7F 04 C3 78 */	mr r4, r24
/* 801772A8  80 B8 01 80 */	lwz r5, 0x180(r24)
/* 801772AC  4B F2 04 71 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801772B0  38 61 03 14 */	addi r3, r1, 0x314
/* 801772B4  38 81 03 20 */	addi r4, r1, 0x320
/* 801772B8  38 B8 04 3C */	addi r5, r24, 0x43c
/* 801772BC  48 0E F8 79 */	bl __mi__4cXyzCFRC3Vec
/* 801772C0  38 61 01 74 */	addi r3, r1, 0x174
/* 801772C4  38 81 03 14 */	addi r4, r1, 0x314
/* 801772C8  48 0F A5 B9 */	bl __ct__7cSGlobeFRC4cXyz
/* 801772CC  38 61 03 14 */	addi r3, r1, 0x314
/* 801772D0  38 80 FF FF */	li r4, -1
/* 801772D4  4B E9 1E B1 */	bl __dt__4cXyzFv
/* 801772D8  38 61 03 20 */	addi r3, r1, 0x320
/* 801772DC  38 80 FF FF */	li r4, -1
/* 801772E0  4B E9 1E A5 */	bl __dt__4cXyzFv
/* 801772E4  38 61 00 F0 */	addi r3, r1, 0xf0
/* 801772E8  7F 04 C3 78 */	mr r4, r24
/* 801772EC  80 B8 01 80 */	lwz r5, 0x180(r24)
/* 801772F0  4B F2 04 49 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 801772F4  38 61 01 34 */	addi r3, r1, 0x134
/* 801772F8  38 81 00 F0 */	addi r4, r1, 0xf0
/* 801772FC  48 0F 9C 6D */	bl __ct__7cSAngleFRC7cSAngle
/* 80177300  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80177304  38 80 FF FF */	li r4, -1
/* 80177308  4B EB 92 09 */	bl __dt__7cSAngleFv
/* 8017730C  38 61 00 EC */	addi r3, r1, 0xec
/* 80177310  3B 81 01 7A */	addi r28, r1, 0x17a
/* 80177314  7F 84 E3 78 */	mr r4, r28
/* 80177318  3B 78 00 62 */	addi r27, r24, 0x62
/* 8017731C  7F 65 DB 78 */	mr r5, r27
/* 80177320  48 0F 9E 85 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80177324  A8 81 00 EC */	lha r4, 0xec(r1)
/* 80177328  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8017732C  7C 80 02 78 */	xor r0, r4, r0
/* 80177330  7C 03 0E 70 */	srawi r3, r0, 1
/* 80177334  7C 00 20 38 */	and r0, r0, r4
/* 80177338  7C 00 18 50 */	subf r0, r0, r3
/* 8017733C  54 1F 0F FE */	srwi r31, r0, 0x1f
/* 80177340  38 61 00 EC */	addi r3, r1, 0xec
/* 80177344  38 80 FF FF */	li r4, -1
/* 80177348  4B EB 91 C9 */	bl __dt__7cSAngleFv
/* 8017734C  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80177350  7F 84 E3 78 */	mr r4, r28
/* 80177354  38 A1 01 34 */	addi r5, r1, 0x134
/* 80177358  48 0F 9E 4D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017735C  A8 81 00 E8 */	lha r4, 0xe8(r1)
/* 80177360  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80177364  7C 80 02 78 */	xor r0, r4, r0
/* 80177368  7C 03 0E 70 */	srawi r3, r0, 1
/* 8017736C  7C 00 20 38 */	and r0, r0, r4
/* 80177370  7C 00 18 50 */	subf r0, r0, r3
/* 80177374  54 1E 0F FE */	srwi r30, r0, 0x1f
/* 80177378  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8017737C  38 80 FF FF */	li r4, -1
/* 80177380  4B EB 91 91 */	bl __dt__7cSAngleFv
/* 80177384  80 18 01 74 */	lwz r0, 0x174(r24)
/* 80177388  28 00 00 00 */	cmplwi r0, 0
/* 8017738C  40 82 01 AC */	bne lbl_80177538
/* 80177390  3C 60 54 4F */	lis r3, 0x544F /* 0x544F5752@ha */
/* 80177394  38 03 57 52 */	addi r0, r3, 0x5752 /* 0x544F5752@l */
/* 80177398  90 18 03 E8 */	stw r0, 0x3e8(r24)
/* 8017739C  38 61 03 08 */	addi r3, r1, 0x308
/* 801773A0  38 98 00 70 */	addi r4, r24, 0x70
/* 801773A4  38 B8 00 64 */	addi r5, r24, 0x64
/* 801773A8  48 0E F7 8D */	bl __mi__4cXyzCFRC3Vec
/* 801773AC  38 78 00 5C */	addi r3, r24, 0x5c
/* 801773B0  38 81 03 08 */	addi r4, r1, 0x308
/* 801773B4  48 0F A6 BD */	bl Val__7cSGlobeFRC4cXyz
/* 801773B8  38 61 03 08 */	addi r3, r1, 0x308
/* 801773BC  38 80 FF FF */	li r4, -1
/* 801773C0  4B E9 1D C5 */	bl __dt__4cXyzFv
/* 801773C4  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 801773C8  D0 18 04 00 */	stfs f0, 0x400(r24)
/* 801773CC  C0 18 00 28 */	lfs f0, 0x28(r24)
/* 801773D0  D0 18 04 08 */	stfs f0, 0x408(r24)
/* 801773D4  D0 18 04 04 */	stfs f0, 0x404(r24)
/* 801773D8  38 00 00 00 */	li r0, 0
/* 801773DC  90 18 03 FC */	stw r0, 0x3fc(r24)
/* 801773E0  90 18 03 F8 */	stw r0, 0x3f8(r24)
/* 801773E4  38 78 00 2C */	addi r3, r24, 0x2c
/* 801773E8  48 0F 9C 49 */	bl Degree__7cSAngleCFv
/* 801773EC  D0 38 04 28 */	stfs f1, 0x428(r24)
/* 801773F0  D0 38 04 0C */	stfs f1, 0x40c(r24)
/* 801773F4  38 78 04 30 */	addi r3, r24, 0x430
/* 801773F8  38 98 00 64 */	addi r4, r24, 0x64
/* 801773FC  4B F2 03 DD */	bl __as__4cXyzFRC4cXyz
/* 80177400  C0 02 9C E0 */	lfs f0, lit_6180(r2)
/* 80177404  D0 18 04 60 */	stfs f0, 0x460(r24)
/* 80177408  D0 18 04 5C */	stfs f0, 0x45c(r24)
/* 8017740C  D0 18 04 64 */	stfs f0, 0x464(r24)
/* 80177410  C0 02 9D 24 */	lfs f0, lit_8530(r2)
/* 80177414  D0 18 04 58 */	stfs f0, 0x458(r24)
/* 80177418  D2 F8 04 68 */	stfs f23, 0x468(r24)
/* 8017741C  C8 01 04 28 */	lfd f0, 0x428(r1)
/* 80177420  D0 18 04 6C */	stfs f0, 0x46c(r24)
/* 80177424  38 60 00 00 */	li r3, 0
/* 80177428  90 78 04 20 */	stw r3, 0x420(r24)
/* 8017742C  38 00 00 01 */	li r0, 1
/* 80177430  98 18 04 53 */	stb r0, 0x453(r24)
/* 80177434  C0 18 00 58 */	lfs f0, 0x58(r24)
/* 80177438  D0 18 04 14 */	stfs f0, 0x414(r24)
/* 8017743C  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80177440  D0 18 04 24 */	stfs f0, 0x424(r24)
/* 80177444  D0 18 04 2C */	stfs f0, 0x42c(r24)
/* 80177448  98 78 04 52 */	stb r3, 0x452(r24)
/* 8017744C  38 78 0A EC */	addi r3, r24, 0xaec
/* 80177450  7F 24 CB 78 */	mr r4, r25
/* 80177454  38 A0 01 00 */	li r5, 0x100
/* 80177458  48 00 B8 35 */	bl Flag__11dCamParam_cFlUs
/* 8017745C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80177460  41 82 00 3C */	beq lbl_8017749C
/* 80177464  7F 63 DB 78 */	mr r3, r27
/* 80177468  48 0F 9C 81 */	bl Inv__7cSAngleCFv
/* 8017746C  7C 60 1B 78 */	mr r0, r3
/* 80177470  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80177474  7F 84 E3 78 */	mr r4, r28
/* 80177478  7C 05 07 34 */	extsh r5, r0
/* 8017747C  48 0F 9D AD */	bl __mi__7cSAngleCFs
/* 80177480  38 61 01 30 */	addi r3, r1, 0x130
/* 80177484  38 81 00 E4 */	addi r4, r1, 0xe4
/* 80177488  48 0F 9B 71 */	bl Val__7cSAngleFRC7cSAngle
/* 8017748C  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80177490  38 80 FF FF */	li r4, -1
/* 80177494  4B EB 90 7D */	bl __dt__7cSAngleFv
/* 80177498  48 00 00 48 */	b lbl_801774E0
lbl_8017749C:
/* 8017749C  38 61 00 E0 */	addi r3, r1, 0xe0
/* 801774A0  7F 04 C3 78 */	mr r4, r24
/* 801774A4  80 B8 01 80 */	lwz r5, 0x180(r24)
/* 801774A8  4B F2 02 91 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 801774AC  38 61 00 DC */	addi r3, r1, 0xdc
/* 801774B0  7F 84 E3 78 */	mr r4, r28
/* 801774B4  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 801774B8  48 0F 9C ED */	bl __mi__7cSAngleCFRC7cSAngle
/* 801774BC  38 61 01 30 */	addi r3, r1, 0x130
/* 801774C0  38 81 00 DC */	addi r4, r1, 0xdc
/* 801774C4  48 0F 9B 35 */	bl Val__7cSAngleFRC7cSAngle
/* 801774C8  38 61 00 DC */	addi r3, r1, 0xdc
/* 801774CC  38 80 FF FF */	li r4, -1
/* 801774D0  4B EB 90 41 */	bl __dt__7cSAngleFv
/* 801774D4  38 61 00 E0 */	addi r3, r1, 0xe0
/* 801774D8  38 80 FF FF */	li r4, -1
/* 801774DC  4B EB 90 35 */	bl __dt__7cSAngleFv
lbl_801774E0:
/* 801774E0  A8 61 01 30 */	lha r3, 0x130(r1)
/* 801774E4  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 801774E8  7C 03 00 00 */	cmpw r3, r0
/* 801774EC  40 81 00 10 */	ble lbl_801774FC
/* 801774F0  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 801774F4  D0 18 04 2C */	stfs f0, 0x42c(r24)
/* 801774F8  48 00 00 0C */	b lbl_80177504
lbl_801774FC:
/* 801774FC  C0 02 9E 9C */	lfs f0, lit_12868(r2)
/* 80177500  D0 18 04 2C */	stfs f0, 0x42c(r24)
lbl_80177504:
/* 80177504  38 00 00 00 */	li r0, 0
/* 80177508  98 18 04 50 */	stb r0, 0x450(r24)
/* 8017750C  38 78 04 10 */	addi r3, r24, 0x410
/* 80177510  7F 64 DB 78 */	mr r4, r27
/* 80177514  48 00 B7 95 */	bl __as__7cSAngleFRC7cSAngle
/* 80177518  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017751C  D0 18 04 18 */	stfs f0, 0x418(r24)
/* 80177520  D0 18 04 1C */	stfs f0, 0x41c(r24)
/* 80177524  38 00 00 00 */	li r0, 0
/* 80177528  98 18 04 54 */	stb r0, 0x454(r24)
/* 8017752C  38 61 01 30 */	addi r3, r1, 0x130
/* 80177530  38 80 FF FF */	li r4, -1
/* 80177534  4B EB 8F DD */	bl __dt__7cSAngleFv
lbl_80177538:
/* 80177538  C0 18 00 5C */	lfs f0, 0x5c(r24)
/* 8017753C  EC 00 A0 28 */	fsubs f0, f0, f20
/* 80177540  EF 35 A0 28 */	fsubs f25, f21, f20
/* 80177544  EC 20 C8 24 */	fdivs f1, f0, f25
/* 80177548  C0 42 9C A0 */	lfs f2, lit_5656(r2)
/* 8017754C  C0 62 9C A8 */	lfs f3, lit_5658(r2)
/* 80177550  4B FE 84 DD */	bl func_8015FA2C
/* 80177554  FF E0 08 90 */	fmr f31, f1
/* 80177558  38 78 0A EC */	addi r3, r24, 0xaec
/* 8017755C  7F 24 CB 78 */	mr r4, r25
/* 80177560  38 A0 04 00 */	li r5, 0x400
/* 80177564  48 00 B7 29 */	bl Flag__11dCamParam_cFlUs
/* 80177568  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8017756C  41 82 00 4C */	beq lbl_801775B8
/* 80177570  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80177574  38 98 04 48 */	addi r4, r24, 0x448
/* 80177578  7F 85 E3 78 */	mr r5, r28
/* 8017757C  48 0F 9C 29 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80177580  38 61 01 2C */	addi r3, r1, 0x12c
/* 80177584  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80177588  48 0F 99 E1 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017758C  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80177590  38 80 FF FF */	li r4, -1
/* 80177594  4B EB 8F 7D */	bl __dt__7cSAngleFv
/* 80177598  38 61 01 2C */	addi r3, r1, 0x12c
/* 8017759C  48 0F 9B 5D */	bl Sin__7cSAngleCFv
/* 801775A0  EC 1A 00 72 */	fmuls f0, f26, f1
/* 801775A4  D0 18 04 18 */	stfs f0, 0x418(r24)
/* 801775A8  38 61 01 2C */	addi r3, r1, 0x12c
/* 801775AC  38 80 FF FF */	li r4, -1
/* 801775B0  4B EB 8F 61 */	bl __dt__7cSAngleFv
/* 801775B4  48 00 00 B0 */	b lbl_80177664
lbl_801775B8:
/* 801775B8  7F 03 C3 78 */	mr r3, r24
/* 801775BC  3C 80 00 10 */	lis r4, 0x10
/* 801775C0  48 00 B3 C1 */	bl chkFlag__9dCamera_cFUl
/* 801775C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801775C8  41 82 00 84 */	beq lbl_8017764C
/* 801775CC  80 78 01 7C */	lwz r3, 0x17c(r24)
/* 801775D0  3C 80 00 0A */	lis r4, 0x000A /* 0x000A50C0@ha */
/* 801775D4  38 84 50 C0 */	addi r4, r4, 0x50C0 /* 0x000A50C0@l */
/* 801775D8  4B FF 4D 91 */	bl func_8016C368
/* 801775DC  28 03 00 00 */	cmplwi r3, 0
/* 801775E0  41 82 00 6C */	beq lbl_8017764C
/* 801775E4  C0 38 01 BC */	lfs f1, 0x1bc(r24)
/* 801775E8  C0 02 9D 9C */	lfs f0, lit_10562(r2)
/* 801775EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801775F0  40 80 00 0C */	bge lbl_801775FC
/* 801775F4  38 00 00 01 */	li r0, 1
/* 801775F8  98 18 04 54 */	stb r0, 0x454(r24)
lbl_801775FC:
/* 801775FC  C0 38 01 BC */	lfs f1, 0x1bc(r24)
/* 80177600  C0 02 9D 14 */	lfs f0, lit_8023(r2)
/* 80177604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80177608  40 81 00 0C */	ble lbl_80177614
/* 8017760C  38 00 00 00 */	li r0, 0
/* 80177610  98 18 04 54 */	stb r0, 0x454(r24)
lbl_80177614:
/* 80177614  C0 78 04 18 */	lfs f3, 0x418(r24)
/* 80177618  C0 42 9D A0 */	lfs f2, lit_10563(r2)
/* 8017761C  88 18 04 54 */	lbz r0, 0x454(r24)
/* 80177620  28 00 00 00 */	cmplwi r0, 0
/* 80177624  41 82 00 0C */	beq lbl_80177630
/* 80177628  C0 22 9D A4 */	lfs f1, lit_10564(r2)
/* 8017762C  48 00 00 08 */	b lbl_80177634
lbl_80177630:
/* 80177630  C0 22 9D A8 */	lfs f1, lit_10565(r2)
lbl_80177634:
/* 80177634  C0 18 04 18 */	lfs f0, 0x418(r24)
/* 80177638  EC 01 00 28 */	fsubs f0, f1, f0
/* 8017763C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80177640  EC 03 00 2A */	fadds f0, f3, f0
/* 80177644  D0 18 04 18 */	stfs f0, 0x418(r24)
/* 80177648  48 00 00 1C */	b lbl_80177664
lbl_8017764C:
/* 8017764C  C0 58 04 18 */	lfs f2, 0x418(r24)
/* 80177650  C0 22 9D AC */	lfs f1, lit_10566(r2)
/* 80177654  EC 1A 10 28 */	fsubs f0, f26, f2
/* 80177658  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017765C  EC 02 00 2A */	fadds f0, f2, f0
/* 80177660  D0 18 04 18 */	stfs f0, 0x418(r24)
lbl_80177664:
/* 80177664  C0 18 04 18 */	lfs f0, 0x418(r24)
/* 80177668  D0 01 03 80 */	stfs f0, 0x380(r1)
/* 8017766C  88 18 04 50 */	lbz r0, 0x450(r24)
/* 80177670  28 00 00 00 */	cmplwi r0, 0
/* 80177674  40 82 00 24 */	bne lbl_80177698
/* 80177678  EC 18 B0 28 */	fsubs f0, f24, f22
/* 8017767C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80177680  EC 16 00 2A */	fadds f0, f22, f0
/* 80177684  D0 01 03 84 */	stfs f0, 0x384(r1)
/* 80177688  C8 01 04 20 */	lfd f0, 0x420(r1)
/* 8017768C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80177690  D0 01 03 88 */	stfs f0, 0x388(r1)
/* 80177694  48 00 00 14 */	b lbl_801776A8
lbl_80177698:
/* 80177698  C0 02 9D 68 */	lfs f0, lit_9788(r2)
/* 8017769C  D0 01 03 84 */	stfs f0, 0x384(r1)
/* 801776A0  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 801776A4  D0 01 03 88 */	stfs f0, 0x388(r1)
lbl_801776A8:
/* 801776A8  3A E0 00 00 */	li r23, 0
/* 801776AC  80 0D 8A A0 */	lwz r0, data_80451020(r13)
/* 801776B0  2C 00 00 69 */	cmpwi r0, 0x69
/* 801776B4  40 82 00 24 */	bne lbl_801776D8
/* 801776B8  7F 43 D3 78 */	mr r3, r26
/* 801776BC  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 801776C0  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 801776C4  7D 89 03 A6 */	mtctr r12
/* 801776C8  4E 80 04 21 */	bctrl 
/* 801776CC  28 03 00 00 */	cmplwi r3, 0
/* 801776D0  41 82 00 08 */	beq lbl_801776D8
/* 801776D4  3A E0 00 01 */	li r23, 1
lbl_801776D8:
/* 801776D8  3A C0 00 00 */	li r22, 0
/* 801776DC  80 0D 8A A0 */	lwz r0, data_80451020(r13)
/* 801776E0  2C 00 00 65 */	cmpwi r0, 0x65
/* 801776E4  40 82 00 14 */	bne lbl_801776F8
/* 801776E8  48 00 B3 6D */	bl dComIfGp_evmng_cameraPlay__Fv
/* 801776EC  2C 03 00 00 */	cmpwi r3, 0
/* 801776F0  41 82 00 08 */	beq lbl_801776F8
/* 801776F4  3A C0 00 01 */	li r22, 1
lbl_801776F8:
/* 801776F8  3B A0 00 00 */	li r29, 0
/* 801776FC  80 0D 8A A0 */	lwz r0, data_80451020(r13)
/* 80177700  2C 00 00 6B */	cmpwi r0, 0x6b
/* 80177704  40 82 00 1C */	bne lbl_80177720
/* 80177708  80 78 01 7C */	lwz r3, 0x17c(r24)
/* 8017770C  3C 80 00 01 */	lis r4, 1
/* 80177710  4B FF 4C 21 */	bl func_8016C330
/* 80177714  28 03 00 00 */	cmplwi r3, 0
/* 80177718  41 82 00 08 */	beq lbl_80177720
/* 8017771C  3B A0 00 01 */	li r29, 1
lbl_80177720:
/* 80177720  80 18 01 74 */	lwz r0, 0x174(r24)
/* 80177724  28 00 00 00 */	cmplwi r0, 0
/* 80177728  40 82 01 F4 */	bne lbl_8017791C
/* 8017772C  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80177730  41 82 00 10 */	beq lbl_80177740
/* 80177734  38 00 00 19 */	li r0, 0x19
/* 80177738  90 18 03 EC */	stw r0, 0x3ec(r24)
/* 8017773C  48 00 01 A8 */	b lbl_801778E4
lbl_80177740:
/* 80177740  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80177744  41 82 00 10 */	beq lbl_80177754
/* 80177748  38 00 00 05 */	li r0, 5
/* 8017774C  90 18 03 EC */	stw r0, 0x3ec(r24)
/* 80177750  48 00 01 94 */	b lbl_801778E4
lbl_80177754:
/* 80177754  48 00 B3 01 */	bl dComIfGp_evmng_cameraPlay__Fv
/* 80177758  2C 03 00 00 */	cmpwi r3, 0
/* 8017775C  41 82 00 3C */	beq lbl_80177798
/* 80177760  7F 03 C3 78 */	mr r3, r24
/* 80177764  38 81 01 50 */	addi r4, r1, 0x150
/* 80177768  3C A0 80 39 */	lis r5, d_d_camera__stringBase0@ha
/* 8017776C  38 A5 3F 68 */	addi r5, r5, d_d_camera__stringBase0@l
/* 80177770  38 A5 01 A0 */	addi r5, r5, 0x1a0
/* 80177774  38 C0 00 14 */	li r6, 0x14
/* 80177778  4B F1 19 15 */	bl getEvIntData__9dCamera_cFPiPci
/* 8017777C  80 61 01 50 */	lwz r3, 0x150(r1)
/* 80177780  2C 03 00 00 */	cmpwi r3, 0
/* 80177784  38 00 00 01 */	li r0, 1
/* 80177788  41 82 00 08 */	beq lbl_80177790
/* 8017778C  7C 60 1B 78 */	mr r0, r3
lbl_80177790:
/* 80177790  90 18 03 EC */	stw r0, 0x3ec(r24)
/* 80177794  48 00 01 50 */	b lbl_801778E4
lbl_80177798:
/* 80177798  7F 03 C3 78 */	mr r3, r24
/* 8017779C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 801777A0  38 84 80 00 */	addi r4, r4, 0x8000 /* 0x00008000@l */
/* 801777A4  48 00 B1 DD */	bl chkFlag__9dCamera_cFUl
/* 801777A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801777AC  40 82 00 10 */	bne lbl_801777BC
/* 801777B0  80 18 01 A4 */	lwz r0, 0x1a4(r24)
/* 801777B4  2C 00 00 01 */	cmpwi r0, 1
/* 801777B8  40 82 00 14 */	bne lbl_801777CC
lbl_801777BC:
/* 801777BC  38 00 00 01 */	li r0, 1
/* 801777C0  98 18 01 58 */	stb r0, 0x158(r24)
/* 801777C4  90 18 03 EC */	stw r0, 0x3ec(r24)
/* 801777C8  48 00 01 1C */	b lbl_801778E4
lbl_801777CC:
/* 801777CC  38 61 02 FC */	addi r3, r1, 0x2fc
/* 801777D0  7F 04 C3 78 */	mr r4, r24
/* 801777D4  80 B8 01 80 */	lwz r5, 0x180(r24)
/* 801777D8  38 C1 03 80 */	addi r6, r1, 0x380
/* 801777DC  4B FE D5 91 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 801777E0  38 61 03 74 */	addi r3, r1, 0x374
/* 801777E4  38 81 02 FC */	addi r4, r1, 0x2fc
/* 801777E8  4B F2 00 0D */	bl __ct__4cXyzFRC4cXyz
/* 801777EC  38 61 02 FC */	addi r3, r1, 0x2fc
/* 801777F0  38 80 FF FF */	li r4, -1
/* 801777F4  4B E9 19 91 */	bl __dt__4cXyzFv
/* 801777F8  38 61 02 F0 */	addi r3, r1, 0x2f0
/* 801777FC  38 98 00 3C */	addi r4, r24, 0x3c
/* 80177800  38 A1 03 74 */	addi r5, r1, 0x374
/* 80177804  48 0E F3 31 */	bl __mi__4cXyzCFRC3Vec
/* 80177808  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 8017780C  38 81 02 F0 */	addi r4, r1, 0x2f0
/* 80177810  4B F1 FF E5 */	bl __ct__4cXyzFRC4cXyz
/* 80177814  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 80177818  4B F1 6F 79 */	bl abs__4cXyzCFv
/* 8017781C  ED C1 A8 28 */	fsubs f14, f1, f21
/* 80177820  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 80177824  38 80 FF FF */	li r4, -1
/* 80177828  4B E9 19 5D */	bl __dt__4cXyzFv
/* 8017782C  38 61 02 F0 */	addi r3, r1, 0x2f0
/* 80177830  38 80 FF FF */	li r4, -1
/* 80177834  4B E9 19 51 */	bl __dt__4cXyzFv
/* 80177838  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 8017783C  38 98 00 30 */	addi r4, r24, 0x30
/* 80177840  38 A1 03 74 */	addi r5, r1, 0x374
/* 80177844  48 0E F2 F1 */	bl __mi__4cXyzCFRC3Vec
/* 80177848  38 61 02 CC */	addi r3, r1, 0x2cc
/* 8017784C  38 81 02 D8 */	addi r4, r1, 0x2d8
/* 80177850  4B F1 FF A5 */	bl __ct__4cXyzFRC4cXyz
/* 80177854  38 61 02 CC */	addi r3, r1, 0x2cc
/* 80177858  4B F1 6F 39 */	bl abs__4cXyzCFv
/* 8017785C  EE C1 A8 28 */	fsubs f22, f1, f21
/* 80177860  38 61 02 CC */	addi r3, r1, 0x2cc
/* 80177864  38 80 FF FF */	li r4, -1
/* 80177868  4B E9 19 1D */	bl __dt__4cXyzFv
/* 8017786C  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 80177870  38 80 FF FF */	li r4, -1
/* 80177874  4B E9 19 11 */	bl __dt__4cXyzFv
/* 80177878  FC 0E B0 40 */	fcmpo cr0, f14, f22
/* 8017787C  40 81 00 0C */	ble lbl_80177888
/* 80177880  FC 20 70 90 */	fmr f1, f14
/* 80177884  48 00 00 08 */	b lbl_8017788C
lbl_80177888:
/* 80177888  FC 20 B0 90 */	fmr f1, f22
lbl_8017788C:
/* 8017788C  48 00 B1 B1 */	bl fabsf__3stdFf
/* 80177890  FD C0 08 90 */	fmr f14, f1
/* 80177894  7F 03 C3 78 */	mr r3, r24
/* 80177898  80 98 01 80 */	lwz r4, 0x180(r24)
/* 8017789C  4B FE D4 91 */	bl heightOf__9dCamera_cFP10fopAc_ac_c
/* 801778A0  C0 02 9C E4 */	lfs f0, lit_6629(r2)
/* 801778A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801778A8  40 80 00 08 */	bge lbl_801778B0
/* 801778AC  48 00 00 08 */	b lbl_801778B4
lbl_801778B0:
/* 801778B0  FC 00 08 90 */	fmr f0, f1
lbl_801778B4:
/* 801778B4  EC 2E 00 24 */	fdivs f1, f14, f0
/* 801778B8  48 00 B1 6D */	bl JMAFastSqrt__Ff
/* 801778BC  C0 02 9D B8 */	lfs f0, lit_10569(r2)
/* 801778C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 801778C4  FC 00 00 1E */	fctiwz f0, f0
/* 801778C8  D8 01 04 10 */	stfd f0, 0x410(r1)
/* 801778CC  80 61 04 14 */	lwz r3, 0x414(r1)
/* 801778D0  38 03 00 01 */	addi r0, r3, 1
/* 801778D4  90 18 03 EC */	stw r0, 0x3ec(r24)
/* 801778D8  38 61 03 74 */	addi r3, r1, 0x374
/* 801778DC  38 80 FF FF */	li r4, -1
/* 801778E0  4B E9 18 A5 */	bl __dt__4cXyzFv
lbl_801778E4:
/* 801778E4  80 78 03 EC */	lwz r3, 0x3ec(r24)
/* 801778E8  38 03 00 01 */	addi r0, r3, 1
/* 801778EC  7C 03 01 D6 */	mullw r0, r3, r0
/* 801778F0  7C 00 0E 70 */	srawi r0, r0, 1
/* 801778F4  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 801778F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801778FC  90 01 04 14 */	stw r0, 0x414(r1)
/* 80177900  3C 00 43 30 */	lis r0, 0x4330
/* 80177904  90 01 04 10 */	stw r0, 0x410(r1)
/* 80177908  C8 01 04 10 */	lfd f0, 0x410(r1)
/* 8017790C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80177910  D0 18 03 F0 */	stfs f0, 0x3f0(r24)
/* 80177914  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80177918  D0 18 03 F4 */	stfs f0, 0x3f4(r24)
lbl_8017791C:
/* 8017791C  38 61 01 6C */	addi r3, r1, 0x16c
/* 80177920  38 81 03 80 */	addi r4, r1, 0x380
/* 80177924  48 0F 9F 5D */	bl __ct__7cSGlobeFRC4cXyz
/* 80177928  38 78 0A EC */	addi r3, r24, 0xaec
/* 8017792C  7F 24 CB 78 */	mr r4, r25
/* 80177930  38 A0 10 00 */	li r5, 0x1000
/* 80177934  48 00 B3 59 */	bl Flag__11dCamParam_cFlUs
/* 80177938  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8017793C  41 82 00 4C */	beq lbl_80177988
/* 80177940  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80177944  7F 04 C3 78 */	mr r4, r24
/* 80177948  80 B8 01 80 */	lwz r5, 0x180(r24)
/* 8017794C  4B F1 FD ED */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80177950  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80177954  38 81 01 72 */	addi r4, r1, 0x172
/* 80177958  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 8017795C  48 0F 98 19 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80177960  38 61 01 6C */	addi r3, r1, 0x16c
/* 80177964  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80177968  4B F1 6F 2D */	bl U__7cSGlobeFRC7cSAngle
/* 8017796C  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80177970  38 80 FF FF */	li r4, -1
/* 80177974  4B EB 8B 9D */	bl __dt__7cSAngleFv
/* 80177978  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8017797C  38 80 FF FF */	li r4, -1
/* 80177980  4B EB 8B 91 */	bl __dt__7cSAngleFv
/* 80177984  48 00 00 2C */	b lbl_801779B0
lbl_80177988:
/* 80177988  38 61 00 CC */	addi r3, r1, 0xcc
/* 8017798C  38 81 01 72 */	addi r4, r1, 0x172
/* 80177990  7F 85 E3 78 */	mr r5, r28
/* 80177994  48 0F 97 E1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80177998  38 61 01 6C */	addi r3, r1, 0x16c
/* 8017799C  38 81 00 CC */	addi r4, r1, 0xcc
/* 801779A0  4B F1 6E F5 */	bl U__7cSGlobeFRC7cSAngle
/* 801779A4  38 61 00 CC */	addi r3, r1, 0xcc
/* 801779A8  38 80 FF FF */	li r4, -1
/* 801779AC  4B EB 8B 65 */	bl __dt__7cSAngleFv
lbl_801779B0:
/* 801779B0  38 78 0A EC */	addi r3, r24, 0xaec
/* 801779B4  7F 24 CB 78 */	mr r4, r25
/* 801779B8  38 A0 08 00 */	li r5, 0x800
/* 801779BC  48 00 B2 D1 */	bl Flag__11dCamParam_cFlUs
/* 801779C0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 801779C4  41 82 01 10 */	beq lbl_80177AD4
/* 801779C8  80 18 01 84 */	lwz r0, 0x184(r24)
/* 801779CC  28 00 00 00 */	cmplwi r0, 0
/* 801779D0  41 82 01 04 */	beq lbl_80177AD4
/* 801779D4  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 801779D8  7F 04 C3 78 */	mr r4, r24
/* 801779DC  80 B8 01 80 */	lwz r5, 0x180(r24)
/* 801779E0  4B F1 FD 3D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801779E4  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 801779E8  38 81 01 6C */	addi r4, r1, 0x16c
/* 801779EC  48 0F A0 C9 */	bl Xyz__7cSGlobeCFv
/* 801779F0  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 801779F4  38 81 02 C0 */	addi r4, r1, 0x2c0
/* 801779F8  38 A1 02 B4 */	addi r5, r1, 0x2b4
/* 801779FC  48 0E F0 E9 */	bl __pl__4cXyzCFRC3Vec
/* 80177A00  38 61 02 9C */	addi r3, r1, 0x29c
/* 80177A04  7F 04 C3 78 */	mr r4, r24
/* 80177A08  80 B8 01 84 */	lwz r5, 0x184(r24)
/* 80177A0C  4B F1 FD 11 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80177A10  38 61 02 90 */	addi r3, r1, 0x290
/* 80177A14  7F 04 C3 78 */	mr r4, r24
/* 80177A18  80 B8 01 80 */	lwz r5, 0x180(r24)
/* 80177A1C  4B F1 FD 01 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80177A20  38 61 02 84 */	addi r3, r1, 0x284
/* 80177A24  38 81 02 9C */	addi r4, r1, 0x29c
/* 80177A28  38 A1 02 90 */	addi r5, r1, 0x290
/* 80177A2C  48 0E F1 09 */	bl __mi__4cXyzCFRC3Vec
/* 80177A30  38 61 02 78 */	addi r3, r1, 0x278
/* 80177A34  38 81 02 84 */	addi r4, r1, 0x284
/* 80177A38  C0 21 04 18 */	lfs f1, 0x418(r1)
/* 80177A3C  48 0E F1 49 */	bl __ml__4cXyzCFf
/* 80177A40  38 61 02 6C */	addi r3, r1, 0x26c
/* 80177A44  38 81 02 A8 */	addi r4, r1, 0x2a8
/* 80177A48  38 A1 02 78 */	addi r5, r1, 0x278
/* 80177A4C  48 0E F0 99 */	bl __pl__4cXyzCFRC3Vec
/* 80177A50  38 61 03 68 */	addi r3, r1, 0x368
/* 80177A54  38 81 02 6C */	addi r4, r1, 0x26c
/* 80177A58  4B F1 FD 81 */	bl __as__4cXyzFRC4cXyz
/* 80177A5C  38 61 02 6C */	addi r3, r1, 0x26c
/* 80177A60  38 80 FF FF */	li r4, -1
/* 80177A64  4B E9 17 21 */	bl __dt__4cXyzFv
/* 80177A68  38 61 02 78 */	addi r3, r1, 0x278
/* 80177A6C  38 80 FF FF */	li r4, -1
/* 80177A70  4B E9 17 15 */	bl __dt__4cXyzFv
/* 80177A74  38 61 02 84 */	addi r3, r1, 0x284
/* 80177A78  38 80 FF FF */	li r4, -1
/* 80177A7C  4B E9 17 09 */	bl __dt__4cXyzFv
/* 80177A80  38 61 02 90 */	addi r3, r1, 0x290
/* 80177A84  38 80 FF FF */	li r4, -1
/* 80177A88  4B E9 16 FD */	bl __dt__4cXyzFv
/* 80177A8C  38 61 02 9C */	addi r3, r1, 0x29c
/* 80177A90  38 80 FF FF */	li r4, -1
/* 80177A94  4B E9 16 F1 */	bl __dt__4cXyzFv
/* 80177A98  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 80177A9C  38 80 FF FF */	li r4, -1
/* 80177AA0  4B E9 16 E5 */	bl __dt__4cXyzFv
/* 80177AA4  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 80177AA8  38 80 FF FF */	li r4, -1
/* 80177AAC  4B E9 16 D9 */	bl __dt__4cXyzFv
/* 80177AB0  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 80177AB4  38 80 FF FF */	li r4, -1
/* 80177AB8  4B E9 16 CD */	bl __dt__4cXyzFv
/* 80177ABC  80 18 01 84 */	lwz r0, 0x184(r24)
/* 80177AC0  90 18 01 88 */	stw r0, 0x188(r24)
/* 80177AC4  7F 03 C3 78 */	mr r3, r24
/* 80177AC8  38 80 20 00 */	li r4, 0x2000
/* 80177ACC  4B F1 FC AD */	bl setFlag__9dCamera_cFUl
/* 80177AD0  48 00 00 60 */	b lbl_80177B30
lbl_80177AD4:
/* 80177AD4  38 61 02 60 */	addi r3, r1, 0x260
/* 80177AD8  7F 04 C3 78 */	mr r4, r24
/* 80177ADC  80 B8 01 80 */	lwz r5, 0x180(r24)
/* 80177AE0  4B F1 FC 3D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80177AE4  38 61 02 54 */	addi r3, r1, 0x254
/* 80177AE8  38 81 01 6C */	addi r4, r1, 0x16c
/* 80177AEC  48 0F 9F C9 */	bl Xyz__7cSGlobeCFv
/* 80177AF0  38 61 02 48 */	addi r3, r1, 0x248
/* 80177AF4  38 81 02 60 */	addi r4, r1, 0x260
/* 80177AF8  38 A1 02 54 */	addi r5, r1, 0x254
/* 80177AFC  48 0E EF E9 */	bl __pl__4cXyzCFRC3Vec
/* 80177B00  38 61 03 68 */	addi r3, r1, 0x368
/* 80177B04  38 81 02 48 */	addi r4, r1, 0x248
/* 80177B08  4B F1 FC D1 */	bl __as__4cXyzFRC4cXyz
/* 80177B0C  38 61 02 48 */	addi r3, r1, 0x248
/* 80177B10  38 80 FF FF */	li r4, -1
/* 80177B14  4B E9 16 71 */	bl __dt__4cXyzFv
/* 80177B18  38 61 02 54 */	addi r3, r1, 0x254
/* 80177B1C  38 80 FF FF */	li r4, -1
/* 80177B20  4B E9 16 65 */	bl __dt__4cXyzFv
/* 80177B24  38 61 02 60 */	addi r3, r1, 0x260
/* 80177B28  38 80 FF FF */	li r4, -1
/* 80177B2C  4B E9 16 59 */	bl __dt__4cXyzFv
lbl_80177B30:
/* 80177B30  88 18 01 58 */	lbz r0, 0x158(r24)
/* 80177B34  28 00 00 00 */	cmplwi r0, 0
/* 80177B38  40 82 04 28 */	bne lbl_80177F60
/* 80177B3C  88 18 03 8D */	lbz r0, 0x38d(r24)
/* 80177B40  28 00 00 00 */	cmplwi r0, 0
/* 80177B44  41 82 00 28 */	beq lbl_80177B6C
/* 80177B48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80177B4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80177B50  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80177B54  38 98 03 40 */	addi r4, r24, 0x340
/* 80177B58  38 A0 00 01 */	li r5, 1
/* 80177B5C  38 D8 04 30 */	addi r6, r24, 0x430
/* 80177B60  38 E0 00 00 */	li r7, 0
/* 80177B64  39 00 00 00 */	li r8, 0
/* 80177B68  4B EF DD F5 */	bl MoveBgMatrixCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
lbl_80177B6C:
/* 80177B6C  80 78 01 74 */	lwz r3, 0x174(r24)
/* 80177B70  80 18 03 EC */	lwz r0, 0x3ec(r24)
/* 80177B74  7C 03 00 50 */	subf r0, r3, r0
/* 80177B78  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 80177B7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80177B80  90 01 04 14 */	stw r0, 0x414(r1)
/* 80177B84  3C 00 43 30 */	lis r0, 0x4330
/* 80177B88  90 01 04 10 */	stw r0, 0x410(r1)
/* 80177B8C  C8 01 04 10 */	lfd f0, 0x410(r1)
/* 80177B90  EC 00 08 28 */	fsubs f0, f0, f1
/* 80177B94  D0 18 03 F4 */	stfs f0, 0x3f4(r24)
/* 80177B98  C0 38 03 F4 */	lfs f1, 0x3f4(r24)
/* 80177B9C  C0 18 03 F0 */	lfs f0, 0x3f0(r24)
/* 80177BA0  ED E1 00 24 */	fdivs f15, f1, f0
/* 80177BA4  38 61 02 3C */	addi r3, r1, 0x23c
/* 80177BA8  38 81 03 68 */	addi r4, r1, 0x368
/* 80177BAC  38 B8 04 30 */	addi r5, r24, 0x430
/* 80177BB0  48 0E EF 85 */	bl __mi__4cXyzCFRC3Vec
/* 80177BB4  38 61 02 30 */	addi r3, r1, 0x230
/* 80177BB8  38 81 02 3C */	addi r4, r1, 0x23c
/* 80177BBC  FC 20 78 90 */	fmr f1, f15
/* 80177BC0  48 0E EF C5 */	bl __ml__4cXyzCFf
/* 80177BC4  38 78 04 30 */	addi r3, r24, 0x430
/* 80177BC8  38 81 02 30 */	addi r4, r1, 0x230
/* 80177BCC  4B F1 6D 39 */	bl __apl__4cXyzFRC3Vec
/* 80177BD0  38 61 02 30 */	addi r3, r1, 0x230
/* 80177BD4  38 80 FF FF */	li r4, -1
/* 80177BD8  4B E9 15 AD */	bl __dt__4cXyzFv
/* 80177BDC  38 61 02 3C */	addi r3, r1, 0x23c
/* 80177BE0  38 80 FF FF */	li r4, -1
/* 80177BE4  4B E9 15 A1 */	bl __dt__4cXyzFv
/* 80177BE8  38 61 02 24 */	addi r3, r1, 0x224
/* 80177BEC  38 98 04 30 */	addi r4, r24, 0x430
/* 80177BF0  38 B8 00 64 */	addi r5, r24, 0x64
/* 80177BF4  48 0E EF 41 */	bl __mi__4cXyzCFRC3Vec
/* 80177BF8  38 61 02 18 */	addi r3, r1, 0x218
/* 80177BFC  38 81 02 24 */	addi r4, r1, 0x224
/* 80177C00  FC 20 B8 90 */	fmr f1, f23
/* 80177C04  48 0E EF 81 */	bl __ml__4cXyzCFf
/* 80177C08  38 78 00 64 */	addi r3, r24, 0x64
/* 80177C0C  38 81 02 18 */	addi r4, r1, 0x218
/* 80177C10  4B F1 6C F5 */	bl __apl__4cXyzFRC3Vec
/* 80177C14  38 61 02 18 */	addi r3, r1, 0x218
/* 80177C18  38 80 FF FF */	li r4, -1
/* 80177C1C  4B E9 15 69 */	bl __dt__4cXyzFv
/* 80177C20  38 61 02 24 */	addi r3, r1, 0x224
/* 80177C24  38 80 FF FF */	li r4, -1
/* 80177C28  4B E9 15 5D */	bl __dt__4cXyzFv
/* 80177C2C  38 61 02 0C */	addi r3, r1, 0x20c
/* 80177C30  7F 04 C3 78 */	mr r4, r24
/* 80177C34  80 B8 01 80 */	lwz r5, 0x180(r24)
/* 80177C38  4B F1 FA E5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80177C3C  38 61 03 5C */	addi r3, r1, 0x35c
/* 80177C40  38 81 02 0C */	addi r4, r1, 0x20c
/* 80177C44  4B F1 FB 95 */	bl __as__4cXyzFRC4cXyz
/* 80177C48  38 61 02 0C */	addi r3, r1, 0x20c
/* 80177C4C  38 80 FF FF */	li r4, -1
/* 80177C50  4B E9 15 35 */	bl __dt__4cXyzFv
/* 80177C54  C0 21 03 60 */	lfs f1, 0x360(r1)
/* 80177C58  C0 02 9D CC */	lfs f0, lit_10574(r2)
/* 80177C5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80177C60  D0 01 03 60 */	stfs f0, 0x360(r1)
/* 80177C64  38 61 03 A0 */	addi r3, r1, 0x3a0
/* 80177C68  4B F0 01 3D */	bl __ct__14dBgS_CamLinChkFv
/* 80177C6C  7F 03 C3 78 */	mr r3, r24
/* 80177C70  38 81 03 5C */	addi r4, r1, 0x35c
/* 80177C74  38 B8 00 64 */	addi r5, r24, 0x64
/* 80177C78  38 C1 03 A0 */	addi r6, r1, 0x3a0
/* 80177C7C  38 E0 40 B7 */	li r7, 0x40b7
/* 80177C80  4B FE DC 41 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 80177C84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80177C88  41 82 00 50 */	beq lbl_80177CD8
/* 80177C8C  38 61 03 8C */	addi r3, r1, 0x38c
/* 80177C90  4B FC 95 61 */	bl __ct__8cM3dGPlaFv
/* 80177C94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80177C98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80177C9C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80177CA0  38 81 03 B4 */	addi r4, r1, 0x3b4
/* 80177CA4  38 A1 03 8C */	addi r5, r1, 0x38c
/* 80177CA8  4B EF CA 9D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80177CAC  38 61 03 A0 */	addi r3, r1, 0x3a0
/* 80177CB0  48 00 AD 41 */	bl GetCross__11cBgS_LinChkFv
/* 80177CB4  7C 64 1B 78 */	mr r4, r3
/* 80177CB8  38 78 00 64 */	addi r3, r24, 0x64
/* 80177CBC  4B F1 FB 1D */	bl __as__4cXyzFRC4cXyz
/* 80177CC0  38 78 00 64 */	addi r3, r24, 0x64
/* 80177CC4  38 81 03 8C */	addi r4, r1, 0x38c
/* 80177CC8  4B F1 6C 3D */	bl __apl__4cXyzFRC3Vec
/* 80177CCC  38 61 03 8C */	addi r3, r1, 0x38c
/* 80177CD0  38 80 FF FF */	li r4, -1
/* 80177CD4  4B EA 5E BD */	bl __dt__8cM3dGPlaFv
lbl_80177CD8:
/* 80177CD8  C0 38 00 5C */	lfs f1, 0x5c(r24)
/* 80177CDC  FC 40 A0 90 */	fmr f2, f20
/* 80177CE0  FC 60 A8 90 */	fmr f3, f21
/* 80177CE4  4B FE 7D 49 */	bl func_8015FA2C
/* 80177CE8  FD C0 08 90 */	fmr f14, f1
/* 80177CEC  38 61 01 28 */	addi r3, r1, 0x128
/* 80177CF0  3A D8 00 60 */	addi r22, r24, 0x60
/* 80177CF4  7E C4 B3 78 */	mr r4, r22
/* 80177CF8  48 00 AF B1 */	bl __as__7cSAngleFRC7cSAngle
/* 80177CFC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80177D00  41 82 00 28 */	beq lbl_80177D28
/* 80177D04  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80177D08  FC 20 98 90 */	fmr f1, f19
/* 80177D0C  48 0F 92 BD */	bl __ct__7cSAngleFf
/* 80177D10  38 61 01 28 */	addi r3, r1, 0x128
/* 80177D14  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80177D18  48 00 AF 91 */	bl __as__7cSAngleFRC7cSAngle
/* 80177D1C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80177D20  38 80 FF FF */	li r4, -1
/* 80177D24  4B EB 87 ED */	bl __dt__7cSAngleFv
lbl_80177D28:
/* 80177D28  A8 61 01 28 */	lha r3, 0x128(r1)
/* 80177D2C  A8 01 01 44 */	lha r0, 0x144(r1)
/* 80177D30  7C 03 00 00 */	cmpw r3, r0
/* 80177D34  40 80 00 10 */	bge lbl_80177D44
/* 80177D38  38 61 01 28 */	addi r3, r1, 0x128
/* 80177D3C  38 81 01 44 */	addi r4, r1, 0x144
/* 80177D40  48 00 AF 69 */	bl __as__7cSAngleFRC7cSAngle
lbl_80177D44:
/* 80177D44  A8 61 01 28 */	lha r3, 0x128(r1)
/* 80177D48  A8 01 01 40 */	lha r0, 0x140(r1)
/* 80177D4C  7C 03 00 00 */	cmpw r3, r0
/* 80177D50  40 81 00 10 */	ble lbl_80177D60
/* 80177D54  38 61 01 28 */	addi r3, r1, 0x128
/* 80177D58  38 81 01 40 */	addi r4, r1, 0x140
/* 80177D5C  48 00 AF 4D */	bl __as__7cSAngleFRC7cSAngle
lbl_80177D60:
/* 80177D60  38 78 00 8C */	addi r3, r24, 0x8c
/* 80177D64  48 0F 93 85 */	bl Inv__7cSAngleCFv
/* 80177D68  7C 64 1B 78 */	mr r4, r3
/* 80177D6C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80177D70  48 0F 92 29 */	bl __ct__7cSAngleFs
/* 80177D74  38 61 01 64 */	addi r3, r1, 0x164
/* 80177D78  FC 20 70 90 */	fmr f1, f14
/* 80177D7C  38 81 01 28 */	addi r4, r1, 0x128
/* 80177D80  38 A1 00 C4 */	addi r5, r1, 0xc4
/* 80177D84  48 0F 9A CD */	bl __ct__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 80177D88  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80177D8C  38 80 FF FF */	li r4, -1
/* 80177D90  4B EB 87 81 */	bl __dt__7cSAngleFv
/* 80177D94  C0 38 00 5C */	lfs f1, 0x5c(r24)
/* 80177D98  C0 01 01 64 */	lfs f0, 0x164(r1)
/* 80177D9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80177DA0  EC 0F 00 32 */	fmuls f0, f15, f0
/* 80177DA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80177DA8  D0 18 00 5C */	stfs f0, 0x5c(r24)
/* 80177DAC  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80177DB0  38 81 01 68 */	addi r4, r1, 0x168
/* 80177DB4  7E C5 B3 78 */	mr r5, r22
/* 80177DB8  48 0F 93 ED */	bl __mi__7cSAngleCFRC7cSAngle
/* 80177DBC  38 61 00 BC */	addi r3, r1, 0xbc
/* 80177DC0  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80177DC4  FC 20 78 90 */	fmr f1, f15
/* 80177DC8  48 0F 94 9D */	bl __ml__7cSAngleCFf
/* 80177DCC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80177DD0  7E C4 B3 78 */	mr r4, r22
/* 80177DD4  38 A1 00 BC */	addi r5, r1, 0xbc
/* 80177DD8  48 0F 93 9D */	bl __pl__7cSAngleCFRC7cSAngle
/* 80177DDC  38 78 00 5C */	addi r3, r24, 0x5c
/* 80177DE0  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80177DE4  4B F1 7C 75 */	bl V__7cSGlobeFRC7cSAngle
/* 80177DE8  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80177DEC  38 80 FF FF */	li r4, -1
/* 80177DF0  4B EB 87 21 */	bl __dt__7cSAngleFv
/* 80177DF4  38 61 00 BC */	addi r3, r1, 0xbc
/* 80177DF8  38 80 FF FF */	li r4, -1
/* 80177DFC  4B EB 87 15 */	bl __dt__7cSAngleFv
/* 80177E00  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80177E04  38 80 FF FF */	li r4, -1
/* 80177E08  4B EB 87 09 */	bl __dt__7cSAngleFv
/* 80177E0C  38 61 02 00 */	addi r3, r1, 0x200
/* 80177E10  38 98 00 5C */	addi r4, r24, 0x5c
/* 80177E14  48 0F 9C A1 */	bl Xyz__7cSGlobeCFv
/* 80177E18  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 80177E1C  38 98 00 64 */	addi r4, r24, 0x64
/* 80177E20  38 A1 02 00 */	addi r5, r1, 0x200
/* 80177E24  48 0E EC C1 */	bl __pl__4cXyzCFRC3Vec
/* 80177E28  38 78 00 70 */	addi r3, r24, 0x70
/* 80177E2C  38 81 01 F4 */	addi r4, r1, 0x1f4
/* 80177E30  4B F1 F9 A9 */	bl __as__4cXyzFRC4cXyz
/* 80177E34  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 80177E38  38 80 FF FF */	li r4, -1
/* 80177E3C  4B E9 13 49 */	bl __dt__4cXyzFv
/* 80177E40  38 61 02 00 */	addi r3, r1, 0x200
/* 80177E44  38 80 FF FF */	li r4, -1
/* 80177E48  4B E9 13 3D */	bl __dt__4cXyzFv
/* 80177E4C  80 98 01 74 */	lwz r4, 0x174(r24)
/* 80177E50  80 78 03 EC */	lwz r3, 0x3ec(r24)
/* 80177E54  38 03 FF FF */	addi r0, r3, -1
/* 80177E58  7C 04 00 40 */	cmplw r4, r0
/* 80177E5C  41 80 00 0C */	blt lbl_80177E68
/* 80177E60  38 00 00 01 */	li r0, 1
/* 80177E64  98 18 01 58 */	stb r0, 0x158(r24)
lbl_80177E68:
/* 80177E68  7E C3 B3 78 */	mr r3, r22
/* 80177E6C  48 0F 91 C5 */	bl Degree__7cSAngleCFv
/* 80177E70  D0 38 04 0C */	stfs f1, 0x40c(r24)
/* 80177E74  C0 18 00 5C */	lfs f0, 0x5c(r24)
/* 80177E78  D0 18 04 08 */	stfs f0, 0x408(r24)
/* 80177E7C  D0 18 04 04 */	stfs f0, 0x404(r24)
/* 80177E80  C0 38 00 80 */	lfs f1, 0x80(r24)
/* 80177E84  EC 11 08 28 */	fsubs f0, f17, f1
/* 80177E88  EC 0F 00 32 */	fmuls f0, f15, f0
/* 80177E8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80177E90  D0 18 00 80 */	stfs f0, 0x80(r24)
/* 80177E94  C0 38 03 F0 */	lfs f1, 0x3f0(r24)
/* 80177E98  C0 18 03 F4 */	lfs f0, 0x3f4(r24)
/* 80177E9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80177EA0  D0 18 03 F0 */	stfs f0, 0x3f0(r24)
/* 80177EA4  38 61 01 64 */	addi r3, r1, 0x164
/* 80177EA8  38 80 FF FF */	li r4, -1
/* 80177EAC  4B EF 97 D1 */	bl __dt__7cSGlobeFv
/* 80177EB0  38 61 01 28 */	addi r3, r1, 0x128
/* 80177EB4  38 80 FF FF */	li r4, -1
/* 80177EB8  4B EB 86 59 */	bl __dt__7cSAngleFv
/* 80177EBC  38 61 03 A0 */	addi r3, r1, 0x3a0
/* 80177EC0  38 80 FF FF */	li r4, -1
/* 80177EC4  4B EF FF 3D */	bl __dt__14dBgS_CamLinChkFv
/* 80177EC8  38 61 03 5C */	addi r3, r1, 0x35c
/* 80177ECC  38 80 FF FF */	li r4, -1
/* 80177ED0  4B E9 12 B5 */	bl __dt__4cXyzFv
/* 80177ED4  38 61 01 6C */	addi r3, r1, 0x16c
/* 80177ED8  38 80 FF FF */	li r4, -1
/* 80177EDC  4B EF 97 A1 */	bl __dt__7cSGlobeFv
/* 80177EE0  38 61 03 68 */	addi r3, r1, 0x368
/* 80177EE4  38 80 FF FF */	li r4, -1
/* 80177EE8  4B E9 12 9D */	bl __dt__4cXyzFv
/* 80177EEC  38 61 03 80 */	addi r3, r1, 0x380
/* 80177EF0  38 80 FF FF */	li r4, -1
/* 80177EF4  4B E9 12 91 */	bl __dt__4cXyzFv
/* 80177EF8  38 61 01 34 */	addi r3, r1, 0x134
/* 80177EFC  38 80 FF FF */	li r4, -1
/* 80177F00  4B EB 86 11 */	bl __dt__7cSAngleFv
/* 80177F04  38 61 01 74 */	addi r3, r1, 0x174
/* 80177F08  38 80 FF FF */	li r4, -1
/* 80177F0C  4B EF 97 71 */	bl __dt__7cSGlobeFv
/* 80177F10  38 61 01 38 */	addi r3, r1, 0x138
/* 80177F14  38 80 FF FF */	li r4, -1
/* 80177F18  4B EB 85 F9 */	bl __dt__7cSAngleFv
/* 80177F1C  38 61 01 3C */	addi r3, r1, 0x13c
/* 80177F20  38 80 FF FF */	li r4, -1
/* 80177F24  4B EB 85 ED */	bl __dt__7cSAngleFv
/* 80177F28  38 61 01 40 */	addi r3, r1, 0x140
/* 80177F2C  38 80 FF FF */	li r4, -1
/* 80177F30  4B EB 85 E1 */	bl __dt__7cSAngleFv
/* 80177F34  38 61 01 44 */	addi r3, r1, 0x144
/* 80177F38  38 80 FF FF */	li r4, -1
/* 80177F3C  4B EB 85 D5 */	bl __dt__7cSAngleFv
/* 80177F40  38 61 01 48 */	addi r3, r1, 0x148
/* 80177F44  38 80 FF FF */	li r4, -1
/* 80177F48  4B EB 85 C9 */	bl __dt__7cSAngleFv
/* 80177F4C  38 61 01 4C */	addi r3, r1, 0x14c
/* 80177F50  38 80 FF FF */	li r4, -1
/* 80177F54  4B EB 85 BD */	bl __dt__7cSAngleFv
/* 80177F58  38 60 00 01 */	li r3, 1
/* 80177F5C  48 00 0E 4C */	b lbl_80178DA8
lbl_80177F60:
/* 80177F60  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 80177F64  7F 04 C3 78 */	mr r4, r24
/* 80177F68  80 B8 01 80 */	lwz r5, 0x180(r24)
/* 80177F6C  4B F1 F7 F1 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80177F70  38 61 03 50 */	addi r3, r1, 0x350
/* 80177F74  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 80177F78  4B F1 F8 7D */	bl __ct__4cXyzFRC4cXyz
/* 80177F7C  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 80177F80  38 80 FF FF */	li r4, -1
/* 80177F84  4B E9 12 01 */	bl __dt__4cXyzFv
/* 80177F88  C0 21 03 54 */	lfs f1, 0x354(r1)
/* 80177F8C  C0 02 9C E4 */	lfs f0, lit_6629(r2)
/* 80177F90  EC 01 00 2A */	fadds f0, f1, f0
/* 80177F94  D0 01 03 54 */	stfs f0, 0x354(r1)
/* 80177F98  7F 03 C3 78 */	mr r3, r24
/* 80177F9C  38 81 03 50 */	addi r4, r1, 0x350
/* 80177FA0  4B FE D8 4D */	bl groundHeight__9dCamera_cFP4cXyz
/* 80177FA4  88 18 03 D0 */	lbz r0, 0x3d0(r24)
/* 80177FA8  28 00 00 00 */	cmplwi r0, 0
/* 80177FAC  41 82 00 18 */	beq lbl_80177FC4
/* 80177FB0  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80177FB4  D0 18 04 00 */	stfs f0, 0x400(r24)
/* 80177FB8  38 00 00 00 */	li r0, 0
/* 80177FBC  90 18 03 F8 */	stw r0, 0x3f8(r24)
/* 80177FC0  48 00 00 60 */	b lbl_80178020
lbl_80177FC4:
/* 80177FC4  80 78 03 F8 */	lwz r3, 0x3f8(r24)
/* 80177FC8  2C 03 00 50 */	cmpwi r3, 0x50
/* 80177FCC  40 80 00 54 */	bge lbl_80178020
/* 80177FD0  38 03 00 01 */	addi r0, r3, 1
/* 80177FD4  90 18 03 F8 */	stw r0, 0x3f8(r24)
/* 80177FD8  80 18 03 F8 */	lwz r0, 0x3f8(r24)
/* 80177FDC  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 80177FE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80177FE4  90 01 04 14 */	stw r0, 0x414(r1)
/* 80177FE8  3C 00 43 30 */	lis r0, 0x4330
/* 80177FEC  90 01 04 10 */	stw r0, 0x410(r1)
/* 80177FF0  C8 01 04 10 */	lfd f0, 0x410(r1)
/* 80177FF4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80177FF8  C0 02 9D 54 */	lfs f0, lit_9406(r2)
/* 80177FFC  EC 21 00 24 */	fdivs f1, f1, f0
/* 80178000  C0 42 9D D0 */	lfs f2, lit_10575(r2)
/* 80178004  4B F1 01 39 */	bl rationalBezierRatio__8dCamMathFff
/* 80178008  C0 02 9D 6C */	lfs f0, lit_10550(r2)
/* 8017800C  C0 58 04 00 */	lfs f2, 0x400(r24)
/* 80178010  EC 00 10 28 */	fsubs f0, f0, f2
/* 80178014  EC 00 00 72 */	fmuls f0, f0, f1
/* 80178018  EC 02 00 2A */	fadds f0, f2, f0
/* 8017801C  D0 18 04 00 */	stfs f0, 0x400(r24)
lbl_80178020:
/* 80178020  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80178024  38 81 01 34 */	addi r4, r1, 0x134
/* 80178028  7F 65 DB 78 */	mr r5, r27
/* 8017802C  48 0F 91 79 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80178030  38 61 01 24 */	addi r3, r1, 0x124
/* 80178034  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80178038  48 0F 8F 31 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017803C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80178040  38 80 FF FF */	li r4, -1
/* 80178044  4B EB 84 CD */	bl __dt__7cSAngleFv
/* 80178048  C0 38 04 68 */	lfs f1, 0x468(r24)
/* 8017804C  38 61 03 44 */	addi r3, r1, 0x344
/* 80178050  C0 58 04 6C */	lfs f2, 0x46c(r24)
/* 80178054  FC 60 08 90 */	fmr f3, f1
/* 80178058  4B FC 99 05 */	bl __ct__4cXyzFfff
/* 8017805C  38 61 01 DC */	addi r3, r1, 0x1dc
/* 80178060  38 81 03 68 */	addi r4, r1, 0x368
/* 80178064  38 B8 00 64 */	addi r5, r24, 0x64
/* 80178068  48 0E EA CD */	bl __mi__4cXyzCFRC3Vec
/* 8017806C  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 80178070  38 81 01 DC */	addi r4, r1, 0x1dc
/* 80178074  38 A1 03 44 */	addi r5, r1, 0x344
/* 80178078  48 0E EB 59 */	bl __ml__4cXyzCFRC3Vec
/* 8017807C  38 78 00 64 */	addi r3, r24, 0x64
/* 80178080  38 81 01 D0 */	addi r4, r1, 0x1d0
/* 80178084  4B F1 68 81 */	bl __apl__4cXyzFRC3Vec
/* 80178088  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 8017808C  38 80 FF FF */	li r4, -1
/* 80178090  4B E9 10 F5 */	bl __dt__4cXyzFv
/* 80178094  38 61 01 DC */	addi r3, r1, 0x1dc
/* 80178098  38 80 FF FF */	li r4, -1
/* 8017809C  4B E9 10 E9 */	bl __dt__4cXyzFv
/* 801780A0  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 801780A4  7F 04 C3 78 */	mr r4, r24
/* 801780A8  80 B8 01 80 */	lwz r5, 0x180(r24)
/* 801780AC  4B F1 F6 71 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801780B0  38 61 03 5C */	addi r3, r1, 0x35c
/* 801780B4  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 801780B8  4B F1 F7 21 */	bl __as__4cXyzFRC4cXyz
/* 801780BC  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 801780C0  38 80 FF FF */	li r4, -1
/* 801780C4  4B E9 10 C1 */	bl __dt__4cXyzFv
/* 801780C8  C0 21 03 60 */	lfs f1, 0x360(r1)
/* 801780CC  C0 02 9D CC */	lfs f0, lit_10574(r2)
/* 801780D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801780D4  D0 01 03 60 */	stfs f0, 0x360(r1)
/* 801780D8  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 801780DC  38 98 00 70 */	addi r4, r24, 0x70
/* 801780E0  38 B8 00 64 */	addi r5, r24, 0x64
/* 801780E4  48 0E EA 51 */	bl __mi__4cXyzCFRC3Vec
/* 801780E8  38 61 01 5C */	addi r3, r1, 0x15c
/* 801780EC  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 801780F0  48 0F 97 91 */	bl __ct__7cSGlobeFRC4cXyz
/* 801780F4  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 801780F8  38 80 FF FF */	li r4, -1
/* 801780FC  4B E9 10 89 */	bl __dt__4cXyzFv
/* 80178100  C1 C2 9C A8 */	lfs f14, lit_5658(r2)
/* 80178104  FC 15 A0 40 */	fcmpo cr0, f21, f20
/* 80178108  40 81 00 30 */	ble lbl_80178138
/* 8017810C  C0 18 00 5C */	lfs f0, 0x5c(r24)
/* 80178110  EC 00 A0 28 */	fsubs f0, f0, f20
/* 80178114  ED C0 C8 24 */	fdivs f14, f0, f25
/* 80178118  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017811C  FC 0E 00 40 */	fcmpo cr0, f14, f0
/* 80178120  40 80 00 08 */	bge lbl_80178128
/* 80178124  FD C0 00 90 */	fmr f14, f0
lbl_80178128:
/* 80178128  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8017812C  FC 0E 00 40 */	fcmpo cr0, f14, f0
/* 80178130  40 81 00 08 */	ble lbl_80178138
/* 80178134  FD C0 00 90 */	fmr f14, f0
lbl_80178138:
/* 80178138  7F 43 D3 78 */	mr r3, r26
/* 8017813C  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 80178140  81 8C 01 F0 */	lwz r12, 0x1f0(r12)
/* 80178144  7D 89 03 A6 */	mtctr r12
/* 80178148  4E 80 04 21 */	bctrl 
/* 8017814C  C2 F8 01 D8 */	lfs f23, 0x1d8(r24)
/* 80178150  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80178154  41 82 00 0C */	beq lbl_80178160
/* 80178158  C2 C2 9C A8 */	lfs f22, lit_5658(r2)
/* 8017815C  48 00 00 08 */	b lbl_80178164
lbl_80178160:
/* 80178160  C2 D8 01 C4 */	lfs f22, 0x1c4(r24)
lbl_80178164:
/* 80178164  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80178168  38 81 01 3C */	addi r4, r1, 0x13c
/* 8017816C  38 A1 01 38 */	addi r5, r1, 0x138
/* 80178170  48 0F 90 35 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80178174  38 61 00 AC */	addi r3, r1, 0xac
/* 80178178  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8017817C  FC 20 B0 90 */	fmr f1, f22
/* 80178180  48 0F 90 E5 */	bl __ml__7cSAngleCFf
/* 80178184  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80178188  38 81 01 3C */	addi r4, r1, 0x13c
/* 8017818C  38 A1 00 AC */	addi r5, r1, 0xac
/* 80178190  48 0F 8F E5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80178194  38 61 01 1C */	addi r3, r1, 0x11c
/* 80178198  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8017819C  48 0F 8D CD */	bl __ct__7cSAngleFRC7cSAngle
/* 801781A0  38 61 00 A8 */	addi r3, r1, 0xa8
/* 801781A4  38 80 FF FF */	li r4, -1
/* 801781A8  4B EB 83 69 */	bl __dt__7cSAngleFv
/* 801781AC  38 61 00 AC */	addi r3, r1, 0xac
/* 801781B0  38 80 FF FF */	li r4, -1
/* 801781B4  4B EB 83 5D */	bl __dt__7cSAngleFv
/* 801781B8  38 61 00 B0 */	addi r3, r1, 0xb0
/* 801781BC  38 80 FF FF */	li r4, -1
/* 801781C0  4B EB 83 51 */	bl __dt__7cSAngleFv
/* 801781C4  38 78 0A EC */	addi r3, r24, 0xaec
/* 801781C8  7F 24 CB 78 */	mr r4, r25
/* 801781CC  38 A0 00 40 */	li r5, 0x40
/* 801781D0  48 00 AA BD */	bl Flag__11dCamParam_cFlUs
/* 801781D4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 801781D8  40 82 01 18 */	bne lbl_801782F0
/* 801781DC  FC 20 B8 90 */	fmr f1, f23
/* 801781E0  48 00 A8 5D */	bl fabsf__3stdFf
/* 801781E4  C0 02 9C E8 */	lfs f0, lit_6630(r2)
/* 801781E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801781EC  40 81 01 04 */	ble lbl_801782F0
/* 801781F0  FC 20 B8 90 */	fmr f1, f23
/* 801781F4  C0 42 9C 90 */	lfs f2, lit_4445(r2)
/* 801781F8  4B F0 FF 45 */	bl rationalBezierRatio__8dCamMathFff
/* 801781FC  C0 02 9D B8 */	lfs f0, lit_10569(r2)
/* 80178200  EC 20 00 72 */	fmuls f1, f0, f1
/* 80178204  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80178208  48 0F 8D C1 */	bl __ct__7cSAngleFf
/* 8017820C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80178210  7F 64 DB 78 */	mr r4, r27
/* 80178214  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 80178218  48 0F 8F 5D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017821C  38 61 01 18 */	addi r3, r1, 0x118
/* 80178220  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80178224  48 0F 8D 45 */	bl __ct__7cSAngleFRC7cSAngle
/* 80178228  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8017822C  38 80 FF FF */	li r4, -1
/* 80178230  4B EB 82 E1 */	bl __dt__7cSAngleFv
/* 80178234  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80178238  38 80 FF FF */	li r4, -1
/* 8017823C  4B EB 82 D5 */	bl __dt__7cSAngleFv
/* 80178240  FC 20 B8 90 */	fmr f1, f23
/* 80178244  48 00 A7 F9 */	bl fabsf__3stdFf
/* 80178248  C0 02 9C E8 */	lfs f0, lit_6630(r2)
/* 8017824C  ED E1 00 28 */	fsubs f15, f1, f0
/* 80178250  38 61 00 9C */	addi r3, r1, 0x9c
/* 80178254  38 81 01 18 */	addi r4, r1, 0x118
/* 80178258  7F 65 DB 78 */	mr r5, r27
/* 8017825C  48 0F 8F 49 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80178260  38 61 00 98 */	addi r3, r1, 0x98
/* 80178264  38 81 00 9C */	addi r4, r1, 0x9c
/* 80178268  FC 20 78 90 */	fmr f1, f15
/* 8017826C  48 0F 8F F9 */	bl __ml__7cSAngleCFf
/* 80178270  38 61 00 94 */	addi r3, r1, 0x94
/* 80178274  7F 64 DB 78 */	mr r4, r27
/* 80178278  38 A1 00 98 */	addi r5, r1, 0x98
/* 8017827C  48 0F 8E F9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80178280  38 61 01 20 */	addi r3, r1, 0x120
/* 80178284  38 81 00 94 */	addi r4, r1, 0x94
/* 80178288  48 0F 8D 71 */	bl Val__7cSAngleFRC7cSAngle
/* 8017828C  38 61 00 94 */	addi r3, r1, 0x94
/* 80178290  38 80 FF FF */	li r4, -1
/* 80178294  4B EB 82 7D */	bl __dt__7cSAngleFv
/* 80178298  38 61 00 98 */	addi r3, r1, 0x98
/* 8017829C  38 80 FF FF */	li r4, -1
/* 801782A0  4B EB 82 71 */	bl __dt__7cSAngleFv
/* 801782A4  38 61 00 9C */	addi r3, r1, 0x9c
/* 801782A8  38 80 FF FF */	li r4, -1
/* 801782AC  4B EB 82 65 */	bl __dt__7cSAngleFv
/* 801782B0  38 00 00 01 */	li r0, 1
/* 801782B4  98 18 04 52 */	stb r0, 0x452(r24)
/* 801782B8  C0 58 04 60 */	lfs f2, 0x460(r24)
/* 801782BC  C0 22 9C E8 */	lfs f1, lit_6630(r2)
/* 801782C0  C0 02 9D F4 */	lfs f0, lit_11168(r2)
/* 801782C4  EC 00 10 28 */	fsubs f0, f0, f2
/* 801782C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801782CC  EC 02 00 2A */	fadds f0, f2, f0
/* 801782D0  D0 18 04 60 */	stfs f0, 0x460(r24)
/* 801782D4  38 78 04 10 */	addi r3, r24, 0x410
/* 801782D8  38 81 01 20 */	addi r4, r1, 0x120
/* 801782DC  48 00 A9 CD */	bl __as__7cSAngleFRC7cSAngle
/* 801782E0  38 61 01 18 */	addi r3, r1, 0x118
/* 801782E4  38 80 FF FF */	li r4, -1
/* 801782E8  4B EB 82 29 */	bl __dt__7cSAngleFv
/* 801782EC  48 00 05 EC */	b lbl_801788D8
lbl_801782F0:
/* 801782F0  88 18 04 52 */	lbz r0, 0x452(r24)
/* 801782F4  28 00 00 00 */	cmplwi r0, 0
/* 801782F8  41 82 00 14 */	beq lbl_8017830C
/* 801782FC  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80178300  D0 18 04 60 */	stfs f0, 0x460(r24)
/* 80178304  38 00 00 00 */	li r0, 0
/* 80178308  98 18 04 52 */	stb r0, 0x452(r24)
lbl_8017830C:
/* 8017830C  38 78 0A EC */	addi r3, r24, 0xaec
/* 80178310  7F 24 CB 78 */	mr r4, r25
/* 80178314  38 A0 08 00 */	li r5, 0x800
/* 80178318  48 00 A9 75 */	bl Flag__11dCamParam_cFlUs
/* 8017831C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80178320  41 82 01 D0 */	beq lbl_801784F0
/* 80178324  38 61 00 90 */	addi r3, r1, 0x90
/* 80178328  7F 04 C3 78 */	mr r4, r24
/* 8017832C  80 B8 01 80 */	lwz r5, 0x180(r24)
/* 80178330  4B F1 F4 09 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80178334  38 61 00 8C */	addi r3, r1, 0x8c
/* 80178338  7F 84 E3 78 */	mr r4, r28
/* 8017833C  38 A1 00 90 */	addi r5, r1, 0x90
/* 80178340  48 0F 8E 65 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80178344  38 61 01 14 */	addi r3, r1, 0x114
/* 80178348  38 81 00 8C */	addi r4, r1, 0x8c
/* 8017834C  48 0F 8C AD */	bl Val__7cSAngleFRC7cSAngle
/* 80178350  38 61 00 8C */	addi r3, r1, 0x8c
/* 80178354  38 80 FF FF */	li r4, -1
/* 80178358  4B EB 81 B9 */	bl __dt__7cSAngleFv
/* 8017835C  38 61 00 90 */	addi r3, r1, 0x90
/* 80178360  38 80 FF FF */	li r4, -1
/* 80178364  4B EB 81 AD */	bl __dt__7cSAngleFv
/* 80178368  C0 38 02 B0 */	lfs f1, 0x2b0(r24)
/* 8017836C  C0 02 9D 34 */	lfs f0, lit_9398(r2)
/* 80178370  EC 41 00 24 */	fdivs f2, f1, f0
/* 80178374  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80178378  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8017837C  40 81 00 08 */	ble lbl_80178384
/* 80178380  FC 40 00 90 */	fmr f2, f0
lbl_80178384:
/* 80178384  A8 61 01 14 */	lha r3, 0x114(r1)
/* 80178388  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8017838C  7C 03 00 00 */	cmpw r3, r0
/* 80178390  40 81 00 28 */	ble lbl_801783B8
/* 80178394  C0 38 04 2C */	lfs f1, 0x42c(r24)
/* 80178398  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8017839C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801783A0  40 80 00 38 */	bge lbl_801783D8
/* 801783A4  C0 02 9E AC */	lfs f0, lit_13673(r2)
/* 801783A8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801783AC  EC 01 00 2A */	fadds f0, f1, f0
/* 801783B0  D0 18 04 2C */	stfs f0, 0x42c(r24)
/* 801783B4  48 00 00 24 */	b lbl_801783D8
lbl_801783B8:
/* 801783B8  C0 38 04 2C */	lfs f1, 0x42c(r24)
/* 801783BC  C0 02 9E 9C */	lfs f0, lit_12868(r2)
/* 801783C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801783C4  40 81 00 14 */	ble lbl_801783D8
/* 801783C8  C0 02 9E AC */	lfs f0, lit_13673(r2)
/* 801783CC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801783D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801783D4  D0 18 04 2C */	stfs f0, 0x42c(r24)
lbl_801783D8:
/* 801783D8  C0 58 04 60 */	lfs f2, 0x460(r24)
/* 801783DC  C0 22 9C E8 */	lfs f1, lit_6630(r2)
/* 801783E0  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 801783E4  EC 00 10 28 */	fsubs f0, f0, f2
/* 801783E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801783EC  EC 02 00 2A */	fadds f0, f2, f0
/* 801783F0  D0 18 04 60 */	stfs f0, 0x460(r24)
/* 801783F4  80 18 04 4C */	lwz r0, 0x44c(r24)
/* 801783F8  2C 00 00 00 */	cmpwi r0, 0
/* 801783FC  40 82 00 88 */	bne lbl_80178484
/* 80178400  38 61 00 88 */	addi r3, r1, 0x88
/* 80178404  38 8D 8C 14 */	la r4, _180__7cSAngle(r13) /* 80451194-_SDA_BASE_ */
/* 80178408  38 A1 01 1C */	addi r5, r1, 0x11c
/* 8017840C  48 0F 8D 99 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80178410  38 61 01 10 */	addi r3, r1, 0x110
/* 80178414  38 81 00 88 */	addi r4, r1, 0x88
/* 80178418  48 0F 8B 51 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017841C  38 61 00 88 */	addi r3, r1, 0x88
/* 80178420  38 80 FF FF */	li r4, -1
/* 80178424  4B EB 80 ED */	bl __dt__7cSAngleFv
/* 80178428  38 61 00 84 */	addi r3, r1, 0x84
/* 8017842C  38 81 01 10 */	addi r4, r1, 0x110
/* 80178430  C0 38 04 2C */	lfs f1, 0x42c(r24)
/* 80178434  48 0F 8E 31 */	bl __ml__7cSAngleCFf
/* 80178438  7F 83 E3 78 */	mr r3, r28
/* 8017843C  48 0F 8C AD */	bl Inv__7cSAngleCFv
/* 80178440  7C 64 1B 78 */	mr r4, r3
/* 80178444  38 61 00 80 */	addi r3, r1, 0x80
/* 80178448  38 A1 00 84 */	addi r5, r1, 0x84
/* 8017844C  48 0F 8E D5 */	bl __mi__FsRC7cSAngle
/* 80178450  38 78 04 10 */	addi r3, r24, 0x410
/* 80178454  38 81 00 80 */	addi r4, r1, 0x80
/* 80178458  48 00 A8 51 */	bl __as__7cSAngleFRC7cSAngle
/* 8017845C  38 61 00 80 */	addi r3, r1, 0x80
/* 80178460  38 80 FF FF */	li r4, -1
/* 80178464  4B EB 80 AD */	bl __dt__7cSAngleFv
/* 80178468  38 61 00 84 */	addi r3, r1, 0x84
/* 8017846C  38 80 FF FF */	li r4, -1
/* 80178470  4B EB 80 A1 */	bl __dt__7cSAngleFv
/* 80178474  38 61 01 10 */	addi r3, r1, 0x110
/* 80178478  38 80 FF FF */	li r4, -1
/* 8017847C  4B EB 80 95 */	bl __dt__7cSAngleFv
/* 80178480  48 00 00 60 */	b lbl_801784E0
lbl_80178484:
/* 80178484  38 61 01 0C */	addi r3, r1, 0x10c
/* 80178488  38 81 01 1C */	addi r4, r1, 0x11c
/* 8017848C  48 0F 8A DD */	bl __ct__7cSAngleFRC7cSAngle
/* 80178490  38 61 00 7C */	addi r3, r1, 0x7c
/* 80178494  38 81 01 0C */	addi r4, r1, 0x10c
/* 80178498  C0 38 04 2C */	lfs f1, 0x42c(r24)
/* 8017849C  48 0F 8D C9 */	bl __ml__7cSAngleCFf
/* 801784A0  38 61 00 78 */	addi r3, r1, 0x78
/* 801784A4  7F 84 E3 78 */	mr r4, r28
/* 801784A8  38 A1 00 7C */	addi r5, r1, 0x7c
/* 801784AC  48 0F 8C F9 */	bl __mi__7cSAngleCFRC7cSAngle
/* 801784B0  38 78 04 10 */	addi r3, r24, 0x410
/* 801784B4  38 81 00 78 */	addi r4, r1, 0x78
/* 801784B8  48 00 A7 F1 */	bl __as__7cSAngleFRC7cSAngle
/* 801784BC  38 61 00 78 */	addi r3, r1, 0x78
/* 801784C0  38 80 FF FF */	li r4, -1
/* 801784C4  4B EB 80 4D */	bl __dt__7cSAngleFv
/* 801784C8  38 61 00 7C */	addi r3, r1, 0x7c
/* 801784CC  38 80 FF FF */	li r4, -1
/* 801784D0  4B EB 80 41 */	bl __dt__7cSAngleFv
/* 801784D4  38 61 01 0C */	addi r3, r1, 0x10c
/* 801784D8  38 80 FF FF */	li r4, -1
/* 801784DC  4B EB 80 35 */	bl __dt__7cSAngleFv
lbl_801784E0:
/* 801784E0  38 61 01 14 */	addi r3, r1, 0x114
/* 801784E4  38 80 FF FF */	li r4, -1
/* 801784E8  4B EB 80 29 */	bl __dt__7cSAngleFv
/* 801784EC  48 00 03 EC */	b lbl_801788D8
lbl_801784F0:
/* 801784F0  38 78 0A EC */	addi r3, r24, 0xaec
/* 801784F4  7F 24 CB 78 */	mr r4, r25
/* 801784F8  38 A0 01 00 */	li r5, 0x100
/* 801784FC  48 00 A7 91 */	bl Flag__11dCamParam_cFlUs
/* 80178500  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80178504  41 82 02 34 */	beq lbl_80178738
/* 80178508  28 1F 00 00 */	cmplwi r31, 0
/* 8017850C  40 82 00 E0 */	bne lbl_801785EC
/* 80178510  38 61 00 74 */	addi r3, r1, 0x74
/* 80178514  3A C1 01 62 */	addi r22, r1, 0x162
/* 80178518  7E C4 B3 78 */	mr r4, r22
/* 8017851C  7F 85 E3 78 */	mr r5, r28
/* 80178520  48 0F 8C 85 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80178524  38 61 01 08 */	addi r3, r1, 0x108
/* 80178528  38 81 00 74 */	addi r4, r1, 0x74
/* 8017852C  48 0F 8A 3D */	bl __ct__7cSAngleFRC7cSAngle
/* 80178530  38 61 00 74 */	addi r3, r1, 0x74
/* 80178534  38 80 FF FF */	li r4, -1
/* 80178538  4B EB 7F D9 */	bl __dt__7cSAngleFv
/* 8017853C  FC 20 70 90 */	fmr f1, f14
/* 80178540  FC 40 78 90 */	fmr f2, f15
/* 80178544  4B F0 FB F9 */	bl rationalBezierRatio__8dCamMathFff
/* 80178548  FD E0 08 90 */	fmr f15, f1
/* 8017854C  A8 61 01 08 */	lha r3, 0x108(r1)
/* 80178550  A8 01 01 1C */	lha r0, 0x11c(r1)
/* 80178554  7C 03 00 00 */	cmpw r3, r0
/* 80178558  40 81 00 08 */	ble lbl_80178560
/* 8017855C  C1 E2 9C A8 */	lfs f15, lit_5658(r2)
lbl_80178560:
/* 80178560  38 61 00 70 */	addi r3, r1, 0x70
/* 80178564  7F 84 E3 78 */	mr r4, r28
/* 80178568  38 A1 01 1C */	addi r5, r1, 0x11c
/* 8017856C  48 0F 8C 09 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80178570  38 61 00 6C */	addi r3, r1, 0x6c
/* 80178574  38 81 00 70 */	addi r4, r1, 0x70
/* 80178578  7E C5 B3 78 */	mr r5, r22
/* 8017857C  48 0F 8C 29 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80178580  38 61 00 68 */	addi r3, r1, 0x68
/* 80178584  38 81 00 6C */	addi r4, r1, 0x6c
/* 80178588  FC 20 78 90 */	fmr f1, f15
/* 8017858C  48 0F 8C D9 */	bl __ml__7cSAngleCFf
/* 80178590  38 61 00 64 */	addi r3, r1, 0x64
/* 80178594  7E C4 B3 78 */	mr r4, r22
/* 80178598  38 A1 00 68 */	addi r5, r1, 0x68
/* 8017859C  48 0F 8B D9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 801785A0  38 61 01 20 */	addi r3, r1, 0x120
/* 801785A4  38 81 00 64 */	addi r4, r1, 0x64
/* 801785A8  48 0F 8A 51 */	bl Val__7cSAngleFRC7cSAngle
/* 801785AC  38 61 00 64 */	addi r3, r1, 0x64
/* 801785B0  38 80 FF FF */	li r4, -1
/* 801785B4  4B EB 7F 5D */	bl __dt__7cSAngleFv
/* 801785B8  38 61 00 68 */	addi r3, r1, 0x68
/* 801785BC  38 80 FF FF */	li r4, -1
/* 801785C0  4B EB 7F 51 */	bl __dt__7cSAngleFv
/* 801785C4  38 61 00 6C */	addi r3, r1, 0x6c
/* 801785C8  38 80 FF FF */	li r4, -1
/* 801785CC  4B EB 7F 45 */	bl __dt__7cSAngleFv
/* 801785D0  38 61 00 70 */	addi r3, r1, 0x70
/* 801785D4  38 80 FF FF */	li r4, -1
/* 801785D8  4B EB 7F 39 */	bl __dt__7cSAngleFv
/* 801785DC  38 61 01 08 */	addi r3, r1, 0x108
/* 801785E0  38 80 FF FF */	li r4, -1
/* 801785E4  4B EB 7F 2D */	bl __dt__7cSAngleFv
/* 801785E8  48 00 00 DC */	b lbl_801786C4
lbl_801785EC:
/* 801785EC  38 61 00 60 */	addi r3, r1, 0x60
/* 801785F0  7F 84 E3 78 */	mr r4, r28
/* 801785F4  3A C1 01 62 */	addi r22, r1, 0x162
/* 801785F8  7E C5 B3 78 */	mr r5, r22
/* 801785FC  48 0F 8B A9 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80178600  38 61 01 04 */	addi r3, r1, 0x104
/* 80178604  38 81 00 60 */	addi r4, r1, 0x60
/* 80178608  48 0F 89 61 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017860C  38 61 00 60 */	addi r3, r1, 0x60
/* 80178610  38 80 FF FF */	li r4, -1
/* 80178614  4B EB 7E FD */	bl __dt__7cSAngleFv
/* 80178618  FC 20 70 90 */	fmr f1, f14
/* 8017861C  FC 40 78 90 */	fmr f2, f15
/* 80178620  4B F0 FB 1D */	bl rationalBezierRatio__8dCamMathFff
/* 80178624  FD E0 08 90 */	fmr f15, f1
/* 80178628  A8 61 01 04 */	lha r3, 0x104(r1)
/* 8017862C  A8 01 01 1C */	lha r0, 0x11c(r1)
/* 80178630  7C 03 00 00 */	cmpw r3, r0
/* 80178634  40 81 00 08 */	ble lbl_8017863C
/* 80178638  C1 E2 9C A8 */	lfs f15, lit_5658(r2)
lbl_8017863C:
/* 8017863C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80178640  7F 84 E3 78 */	mr r4, r28
/* 80178644  38 A1 01 1C */	addi r5, r1, 0x11c
/* 80178648  48 0F 8B 5D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017864C  38 61 00 58 */	addi r3, r1, 0x58
/* 80178650  38 81 00 5C */	addi r4, r1, 0x5c
/* 80178654  7E C5 B3 78 */	mr r5, r22
/* 80178658  48 0F 8B 4D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017865C  38 61 00 54 */	addi r3, r1, 0x54
/* 80178660  38 81 00 58 */	addi r4, r1, 0x58
/* 80178664  FC 20 78 90 */	fmr f1, f15
/* 80178668  48 0F 8B FD */	bl __ml__7cSAngleCFf
/* 8017866C  38 61 00 50 */	addi r3, r1, 0x50
/* 80178670  7E C4 B3 78 */	mr r4, r22
/* 80178674  38 A1 00 54 */	addi r5, r1, 0x54
/* 80178678  48 0F 8A FD */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017867C  38 61 01 20 */	addi r3, r1, 0x120
/* 80178680  38 81 00 50 */	addi r4, r1, 0x50
/* 80178684  48 0F 89 75 */	bl Val__7cSAngleFRC7cSAngle
/* 80178688  38 61 00 50 */	addi r3, r1, 0x50
/* 8017868C  38 80 FF FF */	li r4, -1
/* 80178690  4B EB 7E 81 */	bl __dt__7cSAngleFv
/* 80178694  38 61 00 54 */	addi r3, r1, 0x54
/* 80178698  38 80 FF FF */	li r4, -1
/* 8017869C  4B EB 7E 75 */	bl __dt__7cSAngleFv
/* 801786A0  38 61 00 58 */	addi r3, r1, 0x58
/* 801786A4  38 80 FF FF */	li r4, -1
/* 801786A8  4B EB 7E 69 */	bl __dt__7cSAngleFv
/* 801786AC  38 61 00 5C */	addi r3, r1, 0x5c
/* 801786B0  38 80 FF FF */	li r4, -1
/* 801786B4  4B EB 7E 5D */	bl __dt__7cSAngleFv
/* 801786B8  38 61 01 04 */	addi r3, r1, 0x104
/* 801786BC  38 80 FF FF */	li r4, -1
/* 801786C0  4B EB 7E 51 */	bl __dt__7cSAngleFv
lbl_801786C4:
/* 801786C4  38 61 00 4C */	addi r3, r1, 0x4c
/* 801786C8  38 81 01 20 */	addi r4, r1, 0x120
/* 801786CC  38 B8 04 10 */	addi r5, r24, 0x410
/* 801786D0  48 0F 8A D5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 801786D4  38 61 00 48 */	addi r3, r1, 0x48
/* 801786D8  38 81 00 4C */	addi r4, r1, 0x4c
/* 801786DC  C0 22 9D 3C */	lfs f1, lit_9400(r2)
/* 801786E0  48 0F 8B 85 */	bl __ml__7cSAngleCFf
/* 801786E4  38 78 04 10 */	addi r3, r24, 0x410
/* 801786E8  38 81 00 48 */	addi r4, r1, 0x48
/* 801786EC  48 0F 8A E9 */	bl __apl__7cSAngleFRC7cSAngle
/* 801786F0  38 61 00 48 */	addi r3, r1, 0x48
/* 801786F4  38 80 FF FF */	li r4, -1
/* 801786F8  4B EB 7E 19 */	bl __dt__7cSAngleFv
/* 801786FC  38 61 00 4C */	addi r3, r1, 0x4c
/* 80178700  38 80 FF FF */	li r4, -1
/* 80178704  4B EB 7E 0D */	bl __dt__7cSAngleFv
/* 80178708  FD E0 B0 90 */	fmr f15, f22
/* 8017870C  80 78 01 7C */	lwz r3, 0x17c(r24)
/* 80178710  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000108@ha */
/* 80178714  38 84 01 08 */	addi r4, r4, 0x0108 /* 0x02000108@l */
/* 80178718  4B FF 3C 51 */	bl func_8016C368
/* 8017871C  28 03 00 00 */	cmplwi r3, 0
/* 80178720  41 82 00 08 */	beq lbl_80178728
/* 80178724  C1 E2 9C A0 */	lfs f15, lit_5656(r2)
lbl_80178728:
/* 80178728  EC 1D 03 F2 */	fmuls f0, f29, f15
/* 8017872C  EC 1E 00 2A */	fadds f0, f30, f0
/* 80178730  D0 18 04 60 */	stfs f0, 0x460(r24)
/* 80178734  48 00 01 A4 */	b lbl_801788D8
lbl_80178738:
/* 80178738  28 1E 00 00 */	cmplwi r30, 0
/* 8017873C  41 82 00 88 */	beq lbl_801787C4
/* 80178740  38 61 00 44 */	addi r3, r1, 0x44
/* 80178744  7F 84 E3 78 */	mr r4, r28
/* 80178748  38 A1 01 1C */	addi r5, r1, 0x11c
/* 8017874C  48 0F 8A 29 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80178750  38 61 00 40 */	addi r3, r1, 0x40
/* 80178754  38 81 00 44 */	addi r4, r1, 0x44
/* 80178758  3A C1 01 62 */	addi r22, r1, 0x162
/* 8017875C  7E C5 B3 78 */	mr r5, r22
/* 80178760  48 0F 8A 45 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80178764  38 61 00 3C */	addi r3, r1, 0x3c
/* 80178768  38 81 00 40 */	addi r4, r1, 0x40
/* 8017876C  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 80178770  48 0F 8A F5 */	bl __ml__7cSAngleCFf
/* 80178774  38 61 00 38 */	addi r3, r1, 0x38
/* 80178778  7E C4 B3 78 */	mr r4, r22
/* 8017877C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80178780  48 0F 89 F5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80178784  38 61 01 20 */	addi r3, r1, 0x120
/* 80178788  38 81 00 38 */	addi r4, r1, 0x38
/* 8017878C  48 0F 88 6D */	bl Val__7cSAngleFRC7cSAngle
/* 80178790  38 61 00 38 */	addi r3, r1, 0x38
/* 80178794  38 80 FF FF */	li r4, -1
/* 80178798  4B EB 7D 79 */	bl __dt__7cSAngleFv
/* 8017879C  38 61 00 3C */	addi r3, r1, 0x3c
/* 801787A0  38 80 FF FF */	li r4, -1
/* 801787A4  4B EB 7D 6D */	bl __dt__7cSAngleFv
/* 801787A8  38 61 00 40 */	addi r3, r1, 0x40
/* 801787AC  38 80 FF FF */	li r4, -1
/* 801787B0  4B EB 7D 61 */	bl __dt__7cSAngleFv
/* 801787B4  38 61 00 44 */	addi r3, r1, 0x44
/* 801787B8  38 80 FF FF */	li r4, -1
/* 801787BC  4B EB 7D 55 */	bl __dt__7cSAngleFv
/* 801787C0  48 00 00 84 */	b lbl_80178844
lbl_801787C4:
/* 801787C4  38 61 00 34 */	addi r3, r1, 0x34
/* 801787C8  7F 84 E3 78 */	mr r4, r28
/* 801787CC  38 A1 01 1C */	addi r5, r1, 0x11c
/* 801787D0  48 0F 89 D5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 801787D4  38 61 00 30 */	addi r3, r1, 0x30
/* 801787D8  38 81 00 34 */	addi r4, r1, 0x34
/* 801787DC  3A C1 01 62 */	addi r22, r1, 0x162
/* 801787E0  7E C5 B3 78 */	mr r5, r22
/* 801787E4  48 0F 89 C1 */	bl __mi__7cSAngleCFRC7cSAngle
/* 801787E8  38 61 00 2C */	addi r3, r1, 0x2c
/* 801787EC  38 81 00 30 */	addi r4, r1, 0x30
/* 801787F0  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 801787F4  48 0F 8A 71 */	bl __ml__7cSAngleCFf
/* 801787F8  38 61 00 28 */	addi r3, r1, 0x28
/* 801787FC  7E C4 B3 78 */	mr r4, r22
/* 80178800  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80178804  48 0F 89 71 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80178808  38 61 01 20 */	addi r3, r1, 0x120
/* 8017880C  38 81 00 28 */	addi r4, r1, 0x28
/* 80178810  48 0F 87 E9 */	bl Val__7cSAngleFRC7cSAngle
/* 80178814  38 61 00 28 */	addi r3, r1, 0x28
/* 80178818  38 80 FF FF */	li r4, -1
/* 8017881C  4B EB 7C F5 */	bl __dt__7cSAngleFv
/* 80178820  38 61 00 2C */	addi r3, r1, 0x2c
/* 80178824  38 80 FF FF */	li r4, -1
/* 80178828  4B EB 7C E9 */	bl __dt__7cSAngleFv
/* 8017882C  38 61 00 30 */	addi r3, r1, 0x30
/* 80178830  38 80 FF FF */	li r4, -1
/* 80178834  4B EB 7C DD */	bl __dt__7cSAngleFv
/* 80178838  38 61 00 34 */	addi r3, r1, 0x34
/* 8017883C  38 80 FF FF */	li r4, -1
/* 80178840  4B EB 7C D1 */	bl __dt__7cSAngleFv
lbl_80178844:
/* 80178844  38 61 00 24 */	addi r3, r1, 0x24
/* 80178848  38 81 01 20 */	addi r4, r1, 0x120
/* 8017884C  38 B8 04 10 */	addi r5, r24, 0x410
/* 80178850  48 0F 89 55 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80178854  38 61 00 20 */	addi r3, r1, 0x20
/* 80178858  38 81 00 24 */	addi r4, r1, 0x24
/* 8017885C  C0 22 9D 3C */	lfs f1, lit_9400(r2)
/* 80178860  48 0F 8A 05 */	bl __ml__7cSAngleCFf
/* 80178864  38 78 04 10 */	addi r3, r24, 0x410
/* 80178868  38 81 00 20 */	addi r4, r1, 0x20
/* 8017886C  48 0F 89 69 */	bl __apl__7cSAngleFRC7cSAngle
/* 80178870  38 61 00 20 */	addi r3, r1, 0x20
/* 80178874  38 80 FF FF */	li r4, -1
/* 80178878  4B EB 7C 99 */	bl __dt__7cSAngleFv
/* 8017887C  38 61 00 24 */	addi r3, r1, 0x24
/* 80178880  38 80 FF FF */	li r4, -1
/* 80178884  4B EB 7C 8D */	bl __dt__7cSAngleFv
/* 80178888  80 78 01 7C */	lwz r3, 0x17c(r24)
/* 8017888C  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000108@ha */
/* 80178890  38 84 01 08 */	addi r4, r4, 0x0108 /* 0x02000108@l */
/* 80178894  4B FF 3A D5 */	bl func_8016C368
/* 80178898  28 03 00 00 */	cmplwi r3, 0
/* 8017889C  40 82 00 10 */	bne lbl_801788AC
/* 801788A0  88 18 04 51 */	lbz r0, 0x451(r24)
/* 801788A4  7C 00 F0 40 */	cmplw r0, r30
/* 801788A8  41 82 00 10 */	beq lbl_801788B8
lbl_801788AC:
/* 801788AC  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 801788B0  D0 18 04 60 */	stfs f0, 0x460(r24)
/* 801788B4  48 00 00 24 */	b lbl_801788D8
lbl_801788B8:
/* 801788B8  C0 58 04 60 */	lfs f2, 0x460(r24)
/* 801788BC  C0 22 9C E8 */	lfs f1, lit_6630(r2)
/* 801788C0  EC 1D 05 B2 */	fmuls f0, f29, f22
/* 801788C4  EC 1E 00 2A */	fadds f0, f30, f0
/* 801788C8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801788CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801788D0  EC 02 00 2A */	fadds f0, f2, f0
/* 801788D4  D0 18 04 60 */	stfs f0, 0x460(r24)
lbl_801788D8:
/* 801788D8  9B D8 04 51 */	stb r30, 0x451(r24)
/* 801788DC  38 61 00 1C */	addi r3, r1, 0x1c
/* 801788E0  38 98 04 10 */	addi r4, r24, 0x410
/* 801788E4  7F 65 DB 78 */	mr r5, r27
/* 801788E8  48 0F 88 BD */	bl __mi__7cSAngleCFRC7cSAngle
/* 801788EC  38 61 00 18 */	addi r3, r1, 0x18
/* 801788F0  38 81 00 1C */	addi r4, r1, 0x1c
/* 801788F4  C0 38 04 60 */	lfs f1, 0x460(r24)
/* 801788F8  48 0F 89 6D */	bl __ml__7cSAngleCFf
/* 801788FC  38 61 00 14 */	addi r3, r1, 0x14
/* 80178900  7F 64 DB 78 */	mr r4, r27
/* 80178904  38 A1 00 18 */	addi r5, r1, 0x18
/* 80178908  48 0F 88 6D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017890C  38 78 00 5C */	addi r3, r24, 0x5c
/* 80178910  38 81 00 14 */	addi r4, r1, 0x14
/* 80178914  4B F1 5F 81 */	bl U__7cSGlobeFRC7cSAngle
/* 80178918  38 61 00 14 */	addi r3, r1, 0x14
/* 8017891C  38 80 FF FF */	li r4, -1
/* 80178920  4B EB 7B F1 */	bl __dt__7cSAngleFv
/* 80178924  38 61 00 18 */	addi r3, r1, 0x18
/* 80178928  38 80 FF FF */	li r4, -1
/* 8017892C  4B EB 7B E5 */	bl __dt__7cSAngleFv
/* 80178930  38 61 00 1C */	addi r3, r1, 0x1c
/* 80178934  38 80 FF FF */	li r4, -1
/* 80178938  4B EB 7B D9 */	bl __dt__7cSAngleFv
/* 8017893C  C0 38 04 0C */	lfs f1, 0x40c(r24)
/* 80178940  EC 13 90 28 */	fsubs f0, f19, f18
/* 80178944  EC 0E 00 32 */	fmuls f0, f14, f0
/* 80178948  EC 12 00 2A */	fadds f0, f18, f0
/* 8017894C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80178950  EC 1C 00 32 */	fmuls f0, f28, f0
/* 80178954  EC 01 00 2A */	fadds f0, f1, f0
/* 80178958  D0 18 04 0C */	stfs f0, 0x40c(r24)
/* 8017895C  38 78 0A EC */	addi r3, r24, 0xaec
/* 80178960  7F 24 CB 78 */	mr r4, r25
/* 80178964  38 A0 40 00 */	li r5, 0x4000
/* 80178968  48 00 A3 25 */	bl Flag__11dCamParam_cFlUs
/* 8017896C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80178970  40 82 00 10 */	bne lbl_80178980
/* 80178974  38 78 01 B0 */	addi r3, r24, 0x1b0
/* 80178978  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 8017897C  48 00 A3 2D */	bl __as__7cSAngleFRC7cSAngle
lbl_80178980:
/* 80178980  80 18 03 F8 */	lwz r0, 0x3f8(r24)
/* 80178984  2C 00 00 00 */	cmpwi r0, 0
/* 80178988  40 82 00 3C */	bne lbl_801789C4
/* 8017898C  38 78 01 B0 */	addi r3, r24, 0x1b0
/* 80178990  48 0F 86 A1 */	bl Degree__7cSAngleCFv
/* 80178994  C0 18 04 0C */	lfs f0, 0x40c(r24)
/* 80178998  EC 20 08 2A */	fadds f1, f0, f1
/* 8017899C  38 61 01 00 */	addi r3, r1, 0x100
/* 801789A0  48 0F 86 6D */	bl Val__7cSAngleFf
/* 801789A4  C0 58 04 5C */	lfs f2, 0x45c(r24)
/* 801789A8  C0 22 9C E0 */	lfs f1, lit_6180(r2)
/* 801789AC  C8 01 04 30 */	lfd f0, 0x430(r1)
/* 801789B0  EC 00 10 28 */	fsubs f0, f0, f2
/* 801789B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 801789B8  EC 02 00 2A */	fadds f0, f2, f0
/* 801789BC  D0 18 04 5C */	stfs f0, 0x45c(r24)
/* 801789C0  48 00 00 2C */	b lbl_801789EC
lbl_801789C4:
/* 801789C4  38 61 01 00 */	addi r3, r1, 0x100
/* 801789C8  38 81 01 60 */	addi r4, r1, 0x160
/* 801789CC  48 00 A2 DD */	bl __as__7cSAngleFRC7cSAngle
/* 801789D0  38 61 01 00 */	addi r3, r1, 0x100
/* 801789D4  48 0F 86 5D */	bl Degree__7cSAngleCFv
/* 801789D8  D0 38 04 0C */	stfs f1, 0x40c(r24)
/* 801789DC  C0 38 04 00 */	lfs f1, 0x400(r24)
/* 801789E0  C0 42 9D 30 */	lfs f2, lit_9397(r2)
/* 801789E4  4B F0 F7 59 */	bl rationalBezierRatio__8dCamMathFff
/* 801789E8  D0 38 04 5C */	stfs f1, 0x45c(r24)
lbl_801789EC:
/* 801789EC  A8 61 01 00 */	lha r3, 0x100(r1)
/* 801789F0  A8 01 01 44 */	lha r0, 0x144(r1)
/* 801789F4  7C 03 00 00 */	cmpw r3, r0
/* 801789F8  40 80 00 14 */	bge lbl_80178A0C
/* 801789FC  38 61 01 00 */	addi r3, r1, 0x100
/* 80178A00  38 81 01 44 */	addi r4, r1, 0x144
/* 80178A04  48 0F 85 F5 */	bl Val__7cSAngleFRC7cSAngle
/* 80178A08  48 00 00 1C */	b lbl_80178A24
lbl_80178A0C:
/* 80178A0C  A8 01 01 40 */	lha r0, 0x140(r1)
/* 80178A10  7C 03 00 00 */	cmpw r3, r0
/* 80178A14  40 81 00 10 */	ble lbl_80178A24
/* 80178A18  38 61 01 00 */	addi r3, r1, 0x100
/* 80178A1C  38 81 01 40 */	addi r4, r1, 0x140
/* 80178A20  48 0F 85 D9 */	bl Val__7cSAngleFRC7cSAngle
lbl_80178A24:
/* 80178A24  38 61 00 10 */	addi r3, r1, 0x10
/* 80178A28  38 81 01 00 */	addi r4, r1, 0x100
/* 80178A2C  3A D8 00 60 */	addi r22, r24, 0x60
/* 80178A30  7E C5 B3 78 */	mr r5, r22
/* 80178A34  48 0F 87 71 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80178A38  38 61 00 0C */	addi r3, r1, 0xc
/* 80178A3C  38 81 00 10 */	addi r4, r1, 0x10
/* 80178A40  C0 38 04 5C */	lfs f1, 0x45c(r24)
/* 80178A44  48 0F 88 21 */	bl __ml__7cSAngleCFf
/* 80178A48  38 61 00 08 */	addi r3, r1, 8
/* 80178A4C  7E C4 B3 78 */	mr r4, r22
/* 80178A50  38 A1 00 0C */	addi r5, r1, 0xc
/* 80178A54  48 0F 87 21 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80178A58  38 78 00 5C */	addi r3, r24, 0x5c
/* 80178A5C  38 81 00 08 */	addi r4, r1, 8
/* 80178A60  4B F1 6F F9 */	bl V__7cSGlobeFRC7cSAngle
/* 80178A64  38 61 00 08 */	addi r3, r1, 8
/* 80178A68  38 80 FF FF */	li r4, -1
/* 80178A6C  4B EB 7A A5 */	bl __dt__7cSAngleFv
/* 80178A70  38 61 00 0C */	addi r3, r1, 0xc
/* 80178A74  38 80 FF FF */	li r4, -1
/* 80178A78  4B EB 7A 99 */	bl __dt__7cSAngleFv
/* 80178A7C  38 61 00 10 */	addi r3, r1, 0x10
/* 80178A80  38 80 FF FF */	li r4, -1
/* 80178A84  4B EB 7A 8D */	bl __dt__7cSAngleFv
/* 80178A88  C0 41 01 5C */	lfs f2, 0x15c(r1)
/* 80178A8C  FD E0 10 90 */	fmr f15, f2
/* 80178A90  C0 38 04 04 */	lfs f1, 0x404(r24)
/* 80178A94  EC 14 08 28 */	fsubs f0, f20, f1
/* 80178A98  EC 1C 00 32 */	fmuls f0, f28, f0
/* 80178A9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80178AA0  D0 18 04 04 */	stfs f0, 0x404(r24)
/* 80178AA4  C0 38 04 08 */	lfs f1, 0x408(r24)
/* 80178AA8  EC 15 08 28 */	fsubs f0, f21, f1
/* 80178AAC  EC 1C 00 32 */	fmuls f0, f28, f0
/* 80178AB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80178AB4  D0 18 04 08 */	stfs f0, 0x408(r24)
/* 80178AB8  C0 18 04 04 */	lfs f0, 0x404(r24)
/* 80178ABC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80178AC0  40 80 00 24 */	bge lbl_80178AE4
/* 80178AC4  C0 58 04 58 */	lfs f2, 0x458(r24)
/* 80178AC8  C0 22 9C E0 */	lfs f1, lit_6180(r2)
/* 80178ACC  EC 1B 10 28 */	fsubs f0, f27, f2
/* 80178AD0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80178AD4  EC 02 00 2A */	fadds f0, f2, f0
/* 80178AD8  D0 18 04 58 */	stfs f0, 0x458(r24)
/* 80178ADC  C1 F8 04 04 */	lfs f15, 0x404(r24)
/* 80178AE0  48 00 00 38 */	b lbl_80178B18
lbl_80178AE4:
/* 80178AE4  C0 18 04 08 */	lfs f0, 0x408(r24)
/* 80178AE8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80178AEC  40 81 00 24 */	ble lbl_80178B10
/* 80178AF0  C0 58 04 58 */	lfs f2, 0x458(r24)
/* 80178AF4  C0 22 9C E0 */	lfs f1, lit_6180(r2)
/* 80178AF8  EC 1B 10 28 */	fsubs f0, f27, f2
/* 80178AFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80178B00  EC 02 00 2A */	fadds f0, f2, f0
/* 80178B04  D0 18 04 58 */	stfs f0, 0x458(r24)
/* 80178B08  C1 F8 04 08 */	lfs f15, 0x408(r24)
/* 80178B0C  48 00 00 0C */	b lbl_80178B18
lbl_80178B10:
/* 80178B10  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80178B14  D0 18 04 58 */	stfs f0, 0x458(r24)
lbl_80178B18:
/* 80178B18  38 78 0A EC */	addi r3, r24, 0xaec
/* 80178B1C  7F 24 CB 78 */	mr r4, r25
/* 80178B20  38 A0 04 00 */	li r5, 0x400
/* 80178B24  48 00 A1 69 */	bl Flag__11dCamParam_cFlUs
/* 80178B28  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80178B2C  41 82 00 AC */	beq lbl_80178BD8
/* 80178B30  38 61 01 54 */	addi r3, r1, 0x154
/* 80178B34  FC 20 78 90 */	fmr f1, f15
/* 80178B38  7E C4 B3 78 */	mr r4, r22
/* 80178B3C  7F 65 DB 78 */	mr r5, r27
/* 80178B40  48 0F 8D 11 */	bl __ct__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 80178B44  38 61 01 AC */	addi r3, r1, 0x1ac
/* 80178B48  38 81 01 54 */	addi r4, r1, 0x154
/* 80178B4C  48 0F 8F 69 */	bl Xyz__7cSGlobeCFv
/* 80178B50  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 80178B54  38 98 00 64 */	addi r4, r24, 0x64
/* 80178B58  38 A1 01 AC */	addi r5, r1, 0x1ac
/* 80178B5C  48 0E DF 89 */	bl __pl__4cXyzCFRC3Vec
/* 80178B60  38 61 03 2C */	addi r3, r1, 0x32c
/* 80178B64  38 81 01 A0 */	addi r4, r1, 0x1a0
/* 80178B68  4B F1 EC 8D */	bl __ct__4cXyzFRC4cXyz
/* 80178B6C  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 80178B70  38 80 FF FF */	li r4, -1
/* 80178B74  4B E9 06 11 */	bl __dt__4cXyzFv
/* 80178B78  38 61 01 AC */	addi r3, r1, 0x1ac
/* 80178B7C  38 80 FF FF */	li r4, -1
/* 80178B80  4B E9 06 05 */	bl __dt__4cXyzFv
/* 80178B84  38 00 00 00 */	li r0, 0
/* 80178B88  98 18 04 50 */	stb r0, 0x450(r24)
/* 80178B8C  7F 03 C3 78 */	mr r3, r24
/* 80178B90  38 81 03 2C */	addi r4, r1, 0x32c
/* 80178B94  38 B8 00 64 */	addi r5, r24, 0x64
/* 80178B98  38 C1 03 38 */	addi r6, r1, 0x338
/* 80178B9C  38 E0 40 B7 */	li r7, 0x40b7
/* 80178BA0  4B FE CE 55 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP4cXyzUl
/* 80178BA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80178BA8  41 82 00 0C */	beq lbl_80178BB4
/* 80178BAC  38 00 00 01 */	li r0, 1
/* 80178BB0  98 18 04 50 */	stb r0, 0x450(r24)
lbl_80178BB4:
/* 80178BB4  38 61 03 2C */	addi r3, r1, 0x32c
/* 80178BB8  38 80 FF FF */	li r4, -1
/* 80178BBC  4B E9 05 C9 */	bl __dt__4cXyzFv
/* 80178BC0  38 61 03 38 */	addi r3, r1, 0x338
/* 80178BC4  38 80 FF FF */	li r4, -1
/* 80178BC8  4B E9 05 BD */	bl __dt__4cXyzFv
/* 80178BCC  38 61 01 54 */	addi r3, r1, 0x154
/* 80178BD0  38 80 FF FF */	li r4, -1
/* 80178BD4  4B EF 8A A9 */	bl __dt__7cSGlobeFv
lbl_80178BD8:
/* 80178BD8  C0 58 00 5C */	lfs f2, 0x5c(r24)
/* 80178BDC  C0 38 04 58 */	lfs f1, 0x458(r24)
/* 80178BE0  EC 0F 10 28 */	fsubs f0, f15, f2
/* 80178BE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80178BE8  EC 02 00 2A */	fadds f0, f2, f0
/* 80178BEC  D0 18 00 5C */	stfs f0, 0x5c(r24)
/* 80178BF0  38 61 01 94 */	addi r3, r1, 0x194
/* 80178BF4  38 98 00 5C */	addi r4, r24, 0x5c
/* 80178BF8  48 0F 8E BD */	bl Xyz__7cSGlobeCFv
/* 80178BFC  38 61 01 88 */	addi r3, r1, 0x188
/* 80178C00  38 98 00 64 */	addi r4, r24, 0x64
/* 80178C04  38 A1 01 94 */	addi r5, r1, 0x194
/* 80178C08  48 0E DE DD */	bl __pl__4cXyzCFRC3Vec
/* 80178C0C  38 78 00 70 */	addi r3, r24, 0x70
/* 80178C10  38 81 01 88 */	addi r4, r1, 0x188
/* 80178C14  4B F1 EB C5 */	bl __as__4cXyzFRC4cXyz
/* 80178C18  38 61 01 88 */	addi r3, r1, 0x188
/* 80178C1C  38 80 FF FF */	li r4, -1
/* 80178C20  4B E9 05 65 */	bl __dt__4cXyzFv
/* 80178C24  38 61 01 94 */	addi r3, r1, 0x194
/* 80178C28  38 80 FF FF */	li r4, -1
/* 80178C2C  4B E9 05 59 */	bl __dt__4cXyzFv
/* 80178C30  88 18 02 CC */	lbz r0, 0x2cc(r24)
/* 80178C34  28 00 00 00 */	cmplwi r0, 0
/* 80178C38  41 82 00 48 */	beq lbl_80178C80
/* 80178C3C  C0 58 00 74 */	lfs f2, 0x74(r24)
/* 80178C40  C0 22 9D 50 */	lfs f1, lit_9405(r2)
/* 80178C44  C0 18 03 24 */	lfs f0, 0x324(r24)
/* 80178C48  EC 01 00 2A */	fadds f0, f1, f0
/* 80178C4C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80178C50  40 80 00 30 */	bge lbl_80178C80
/* 80178C54  D0 18 00 74 */	stfs f0, 0x74(r24)
/* 80178C58  38 61 01 7C */	addi r3, r1, 0x17c
/* 80178C5C  38 98 00 70 */	addi r4, r24, 0x70
/* 80178C60  38 B8 00 64 */	addi r5, r24, 0x64
/* 80178C64  48 0E DE D1 */	bl __mi__4cXyzCFRC3Vec
/* 80178C68  38 78 00 5C */	addi r3, r24, 0x5c
/* 80178C6C  38 81 01 7C */	addi r4, r1, 0x17c
/* 80178C70  48 0F 8E 01 */	bl Val__7cSGlobeFRC4cXyz
/* 80178C74  38 61 01 7C */	addi r3, r1, 0x17c
/* 80178C78  38 80 FF FF */	li r4, -1
/* 80178C7C  4B E9 05 09 */	bl __dt__4cXyzFv
lbl_80178C80:
/* 80178C80  C0 58 04 64 */	lfs f2, 0x464(r24)
/* 80178C84  C0 22 9C E0 */	lfs f1, lit_6180(r2)
/* 80178C88  C8 01 04 38 */	lfd f0, 0x438(r1)
/* 80178C8C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80178C90  EC 01 00 32 */	fmuls f0, f1, f0
/* 80178C94  EC 02 00 2A */	fadds f0, f2, f0
/* 80178C98  D0 18 04 64 */	stfs f0, 0x464(r24)
/* 80178C9C  C0 58 00 80 */	lfs f2, 0x80(r24)
/* 80178CA0  C0 38 04 64 */	lfs f1, 0x464(r24)
/* 80178CA4  EC 11 80 28 */	fsubs f0, f17, f16
/* 80178CA8  EC 0E 00 32 */	fmuls f0, f14, f0
/* 80178CAC  EC 10 00 2A */	fadds f0, f16, f0
/* 80178CB0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80178CB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80178CB8  EC 02 00 2A */	fadds f0, f2, f0
/* 80178CBC  D0 18 00 80 */	stfs f0, 0x80(r24)
/* 80178CC0  38 61 01 00 */	addi r3, r1, 0x100
/* 80178CC4  38 80 FF FF */	li r4, -1
/* 80178CC8  4B EB 78 49 */	bl __dt__7cSAngleFv
/* 80178CCC  38 61 01 1C */	addi r3, r1, 0x11c
/* 80178CD0  38 80 FF FF */	li r4, -1
/* 80178CD4  4B EB 78 3D */	bl __dt__7cSAngleFv
/* 80178CD8  38 61 01 20 */	addi r3, r1, 0x120
/* 80178CDC  38 80 FF FF */	li r4, -1
/* 80178CE0  4B EB 78 31 */	bl __dt__7cSAngleFv
/* 80178CE4  38 61 01 5C */	addi r3, r1, 0x15c
/* 80178CE8  38 80 FF FF */	li r4, -1
/* 80178CEC  4B EF 89 91 */	bl __dt__7cSGlobeFv
/* 80178CF0  38 61 03 44 */	addi r3, r1, 0x344
/* 80178CF4  38 80 FF FF */	li r4, -1
/* 80178CF8  4B E9 04 8D */	bl __dt__4cXyzFv
/* 80178CFC  38 61 01 24 */	addi r3, r1, 0x124
/* 80178D00  38 80 FF FF */	li r4, -1
/* 80178D04  4B EB 78 0D */	bl __dt__7cSAngleFv
/* 80178D08  38 61 03 50 */	addi r3, r1, 0x350
/* 80178D0C  38 80 FF FF */	li r4, -1
/* 80178D10  4B E9 04 75 */	bl __dt__4cXyzFv
/* 80178D14  38 61 03 5C */	addi r3, r1, 0x35c
/* 80178D18  38 80 FF FF */	li r4, -1
/* 80178D1C  4B E9 04 69 */	bl __dt__4cXyzFv
/* 80178D20  38 61 01 6C */	addi r3, r1, 0x16c
/* 80178D24  38 80 FF FF */	li r4, -1
/* 80178D28  4B EF 89 55 */	bl __dt__7cSGlobeFv
/* 80178D2C  38 61 03 68 */	addi r3, r1, 0x368
/* 80178D30  38 80 FF FF */	li r4, -1
/* 80178D34  4B E9 04 51 */	bl __dt__4cXyzFv
/* 80178D38  38 61 03 80 */	addi r3, r1, 0x380
/* 80178D3C  38 80 FF FF */	li r4, -1
/* 80178D40  4B E9 04 45 */	bl __dt__4cXyzFv
/* 80178D44  38 61 01 34 */	addi r3, r1, 0x134
/* 80178D48  38 80 FF FF */	li r4, -1
/* 80178D4C  4B EB 77 C5 */	bl __dt__7cSAngleFv
/* 80178D50  38 61 01 74 */	addi r3, r1, 0x174
/* 80178D54  38 80 FF FF */	li r4, -1
/* 80178D58  4B EF 89 25 */	bl __dt__7cSGlobeFv
/* 80178D5C  38 61 01 38 */	addi r3, r1, 0x138
/* 80178D60  38 80 FF FF */	li r4, -1
/* 80178D64  4B EB 77 AD */	bl __dt__7cSAngleFv
/* 80178D68  38 61 01 3C */	addi r3, r1, 0x13c
/* 80178D6C  38 80 FF FF */	li r4, -1
/* 80178D70  4B EB 77 A1 */	bl __dt__7cSAngleFv
/* 80178D74  38 61 01 40 */	addi r3, r1, 0x140
/* 80178D78  38 80 FF FF */	li r4, -1
/* 80178D7C  4B EB 77 95 */	bl __dt__7cSAngleFv
/* 80178D80  38 61 01 44 */	addi r3, r1, 0x144
/* 80178D84  38 80 FF FF */	li r4, -1
/* 80178D88  4B EB 77 89 */	bl __dt__7cSAngleFv
/* 80178D8C  38 61 01 48 */	addi r3, r1, 0x148
/* 80178D90  38 80 FF FF */	li r4, -1
/* 80178D94  4B EB 77 7D */	bl __dt__7cSAngleFv
/* 80178D98  38 61 01 4C */	addi r3, r1, 0x14c
/* 80178D9C  38 80 FF FF */	li r4, -1
/* 80178DA0  4B EB 77 71 */	bl __dt__7cSAngleFv
/* 80178DA4  38 60 00 01 */	li r3, 1
lbl_80178DA8:
/* 80178DA8  E3 E1 05 88 */	psq_l f31, 1416(r1), 0, 0 /* qr0 */
/* 80178DAC  CB E1 05 80 */	lfd f31, 0x580(r1)
/* 80178DB0  E3 C1 05 78 */	psq_l f30, 1400(r1), 0, 0 /* qr0 */
/* 80178DB4  CB C1 05 70 */	lfd f30, 0x570(r1)
/* 80178DB8  E3 A1 05 68 */	psq_l f29, 1384(r1), 0, 0 /* qr0 */
/* 80178DBC  CB A1 05 60 */	lfd f29, 0x560(r1)
/* 80178DC0  E3 81 05 58 */	psq_l f28, 1368(r1), 0, 0 /* qr0 */
/* 80178DC4  CB 81 05 50 */	lfd f28, 0x550(r1)
/* 80178DC8  E3 61 05 48 */	psq_l f27, 1352(r1), 0, 0 /* qr0 */
/* 80178DCC  CB 61 05 40 */	lfd f27, 0x540(r1)
/* 80178DD0  E3 41 05 38 */	psq_l f26, 1336(r1), 0, 0 /* qr0 */
/* 80178DD4  CB 41 05 30 */	lfd f26, 0x530(r1)
/* 80178DD8  E3 21 05 28 */	psq_l f25, 1320(r1), 0, 0 /* qr0 */
/* 80178DDC  CB 21 05 20 */	lfd f25, 0x520(r1)
/* 80178DE0  E3 01 05 18 */	psq_l f24, 1304(r1), 0, 0 /* qr0 */
/* 80178DE4  CB 01 05 10 */	lfd f24, 0x510(r1)
/* 80178DE8  E2 E1 05 08 */	psq_l f23, 1288(r1), 0, 0 /* qr0 */
/* 80178DEC  CA E1 05 00 */	lfd f23, 0x500(r1)
/* 80178DF0  E2 C1 04 F8 */	psq_l f22, 1272(r1), 0, 0 /* qr0 */
/* 80178DF4  CA C1 04 F0 */	lfd f22, 0x4f0(r1)
/* 80178DF8  E2 A1 04 E8 */	psq_l f21, 1256(r1), 0, 0 /* qr0 */
/* 80178DFC  CA A1 04 E0 */	lfd f21, 0x4e0(r1)
/* 80178E00  E2 81 04 D8 */	psq_l f20, 1240(r1), 0, 0 /* qr0 */
/* 80178E04  CA 81 04 D0 */	lfd f20, 0x4d0(r1)
/* 80178E08  E2 61 04 C8 */	psq_l f19, 1224(r1), 0, 0 /* qr0 */
/* 80178E0C  CA 61 04 C0 */	lfd f19, 0x4c0(r1)
/* 80178E10  E2 41 04 B8 */	psq_l f18, 1208(r1), 0, 0 /* qr0 */
/* 80178E14  CA 41 04 B0 */	lfd f18, 0x4b0(r1)
/* 80178E18  E2 21 04 A8 */	psq_l f17, 1192(r1), 0, 0 /* qr0 */
/* 80178E1C  CA 21 04 A0 */	lfd f17, 0x4a0(r1)
/* 80178E20  E2 01 04 98 */	psq_l f16, 1176(r1), 0, 0 /* qr0 */
/* 80178E24  CA 01 04 90 */	lfd f16, 0x490(r1)
/* 80178E28  E1 E1 04 88 */	psq_l f15, 1160(r1), 0, 0 /* qr0 */
/* 80178E2C  C9 E1 04 80 */	lfd f15, 0x480(r1)
/* 80178E30  E1 C1 04 78 */	psq_l f14, 1144(r1), 0, 0 /* qr0 */
/* 80178E34  C9 C1 04 70 */	lfd f14, 0x470(r1)
/* 80178E38  39 61 04 70 */	addi r11, r1, 0x470
/* 80178E3C  48 1E 93 D1 */	bl _restgpr_22
/* 80178E40  80 01 05 94 */	lwz r0, 0x594(r1)
/* 80178E44  7C 08 03 A6 */	mtlr r0
/* 80178E48  38 21 05 90 */	addi r1, r1, 0x590
/* 80178E4C  4E 80 00 20 */	blr 
