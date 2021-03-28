lbl_800897E8:
/* 800897E8  94 21 FD 80 */	stwu r1, -0x280(r1)
/* 800897EC  7C 08 02 A6 */	mflr r0
/* 800897F0  90 01 02 84 */	stw r0, 0x284(r1)
/* 800897F4  DB E1 02 70 */	stfd f31, 0x270(r1)
/* 800897F8  F3 E1 02 78 */	psq_st f31, 632(r1), 0, 0 /* qr0 */
/* 800897FC  93 E1 02 6C */	stw r31, 0x26c(r1)
/* 80089800  7C 7F 1B 78 */	mr r31, r3
/* 80089804  80 03 01 74 */	lwz r0, 0x174(r3)
/* 80089808  28 00 00 00 */	cmplwi r0, 0
/* 8008980C  40 82 0C 2C */	bne lbl_8008A438
/* 80089810  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80089814  D0 01 02 18 */	stfs f0, 0x218(r1)
/* 80089818  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8008981C  D0 01 02 1C */	stfs f0, 0x21c(r1)
/* 80089820  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80089824  D0 01 02 20 */	stfs f0, 0x220(r1)
/* 80089828  38 81 02 3C */	addi r4, r1, 0x23c
/* 8008982C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80089830  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80089834  38 A5 00 0B */	addi r5, r5, 0xb
/* 80089838  38 C1 02 18 */	addi r6, r1, 0x218
/* 8008983C  4B FF F9 F1 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 80089840  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80089844  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 80089848  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8008984C  D0 01 02 10 */	stfs f0, 0x210(r1)
/* 80089850  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80089854  D0 01 02 14 */	stfs f0, 0x214(r1)
/* 80089858  7F E3 FB 78 */	mr r3, r31
/* 8008985C  38 81 02 48 */	addi r4, r1, 0x248
/* 80089860  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80089864  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80089868  38 A5 00 0F */	addi r5, r5, 0xf
/* 8008986C  38 C1 02 0C */	addi r6, r1, 0x20c
/* 80089870  4B FF F9 BD */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 80089874  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 80089878  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 8008987C  D0 01 02 00 */	stfs f0, 0x200(r1)
/* 80089880  C0 03 00 04 */	lfs f0, 4(r3)
/* 80089884  D0 01 02 04 */	stfs f0, 0x204(r1)
/* 80089888  C0 03 00 08 */	lfs f0, 8(r3)
/* 8008988C  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 80089890  7F E3 FB 78 */	mr r3, r31
/* 80089894  38 9F 04 1C */	addi r4, r31, 0x41c
/* 80089898  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008989C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 800898A0  38 A5 00 16 */	addi r5, r5, 0x16
/* 800898A4  38 C1 02 00 */	addi r6, r1, 0x200
/* 800898A8  4B FF F9 85 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 800898AC  7F E3 FB 78 */	mr r3, r31
/* 800898B0  38 9F 04 04 */	addi r4, r31, 0x404
/* 800898B4  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 800898B8  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 800898BC  38 A5 00 1E */	addi r5, r5, 0x1e
/* 800898C0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 800898C4  4B FF F8 91 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 800898C8  7F E3 FB 78 */	mr r3, r31
/* 800898CC  38 9F 04 08 */	addi r4, r31, 0x408
/* 800898D0  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 800898D4  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 800898D8  38 A5 00 23 */	addi r5, r5, 0x23
/* 800898DC  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 800898E0  4B FF F8 75 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 800898E4  98 7F 04 18 */	stb r3, 0x418(r31)
/* 800898E8  7F E3 FB 78 */	mr r3, r31
/* 800898EC  38 9F 04 14 */	addi r4, r31, 0x414
/* 800898F0  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 800898F4  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 800898F8  38 C0 FF FF */	li r6, -1
/* 800898FC  4B FF F7 91 */	bl getEvIntData__9dCamera_cFPiPci
/* 80089900  98 7F 03 E8 */	stb r3, 0x3e8(r31)
/* 80089904  7F E3 FB 78 */	mr r3, r31
/* 80089908  38 9F 04 10 */	addi r4, r31, 0x410
/* 8008990C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80089910  38 C5 AA F4 */	addi r6, r5, d_d_ev_camera__stringBase0@l
/* 80089914  38 A6 00 28 */	addi r5, r6, 0x28
/* 80089918  38 C6 00 33 */	addi r6, r6, 0x33
/* 8008991C  4B FF FA 21 */	bl getEvStringData__9dCamera_cFPcPcPc
/* 80089920  7F E3 FB 78 */	mr r3, r31
/* 80089924  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 80089928  38 84 AA F4 */	addi r4, r4, d_d_ev_camera__stringBase0@l
/* 8008992C  38 84 00 36 */	addi r4, r4, 0x36
/* 80089930  4B FF FB 95 */	bl getEvActor__9dCamera_cFPc
/* 80089934  90 7F 04 0C */	stw r3, 0x40c(r31)
/* 80089938  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 8008993C  28 05 00 00 */	cmplwi r5, 0
/* 80089940  41 82 00 3C */	beq lbl_8008997C
/* 80089944  88 1F 04 10 */	lbz r0, 0x410(r31)
/* 80089948  2C 00 00 6F */	cmpwi r0, 0x6f
/* 8008994C  40 82 00 30 */	bne lbl_8008997C
/* 80089950  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 80089954  7F E4 FB 78 */	mr r4, r31
/* 80089958  38 C1 02 48 */	addi r6, r1, 0x248
/* 8008995C  48 0D B4 11 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80089960  C0 01 01 F4 */	lfs f0, 0x1f4(r1)
/* 80089964  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 80089968  C0 01 01 F8 */	lfs f0, 0x1f8(r1)
/* 8008996C  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 80089970  C0 01 01 FC */	lfs f0, 0x1fc(r1)
/* 80089974  D0 1F 04 00 */	stfs f0, 0x400(r31)
/* 80089978  48 00 04 D0 */	b lbl_80089E48
lbl_8008997C:
/* 8008997C  28 05 00 00 */	cmplwi r5, 0
/* 80089980  41 82 00 60 */	beq lbl_800899E0
/* 80089984  88 1F 04 10 */	lbz r0, 0x410(r31)
/* 80089988  2C 00 00 77 */	cmpwi r0, 0x77
/* 8008998C  40 82 00 54 */	bne lbl_800899E0
/* 80089990  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80089994  2C 00 00 01 */	cmpwi r0, 1
/* 80089998  40 82 00 18 */	bne lbl_800899B0
/* 8008999C  38 61 02 48 */	addi r3, r1, 0x248
/* 800899A0  3C 80 80 42 */	lis r4, data_804253B4@ha
/* 800899A4  38 84 53 B4 */	addi r4, r4, data_804253B4@l
/* 800899A8  7C 65 1B 78 */	mr r5, r3
/* 800899AC  48 2B D6 E5 */	bl PSVECAdd
lbl_800899B0:
/* 800899B0  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 800899B4  7F E4 FB 78 */	mr r4, r31
/* 800899B8  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 800899BC  38 C1 02 48 */	addi r6, r1, 0x248
/* 800899C0  48 0D B3 AD */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 800899C4  C0 01 01 E8 */	lfs f0, 0x1e8(r1)
/* 800899C8  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 800899CC  C0 01 01 EC */	lfs f0, 0x1ec(r1)
/* 800899D0  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 800899D4  C0 01 01 F0 */	lfs f0, 0x1f0(r1)
/* 800899D8  D0 1F 04 00 */	stfs f0, 0x400(r31)
/* 800899DC  48 00 04 6C */	b lbl_80089E48
lbl_800899E0:
/* 800899E0  28 05 00 00 */	cmplwi r5, 0
/* 800899E4  41 82 00 60 */	beq lbl_80089A44
/* 800899E8  88 1F 04 10 */	lbz r0, 0x410(r31)
/* 800899EC  2C 00 00 57 */	cmpwi r0, 0x57
/* 800899F0  40 82 00 54 */	bne lbl_80089A44
/* 800899F4  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 800899F8  2C 00 00 01 */	cmpwi r0, 1
/* 800899FC  40 82 00 18 */	bne lbl_80089A14
/* 80089A00  38 61 02 48 */	addi r3, r1, 0x248
/* 80089A04  3C 80 80 42 */	lis r4, data_804253B4@ha
/* 80089A08  38 84 53 B4 */	addi r4, r4, data_804253B4@l
/* 80089A0C  7C 65 1B 78 */	mr r5, r3
/* 80089A10  48 2B D6 A5 */	bl PSVECSubtract
lbl_80089A14:
/* 80089A14  38 61 01 DC */	addi r3, r1, 0x1dc
/* 80089A18  7F E4 FB 78 */	mr r4, r31
/* 80089A1C  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 80089A20  38 C1 02 48 */	addi r6, r1, 0x248
/* 80089A24  48 0D B3 49 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80089A28  C0 01 01 DC */	lfs f0, 0x1dc(r1)
/* 80089A2C  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 80089A30  C0 01 01 E0 */	lfs f0, 0x1e0(r1)
/* 80089A34  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 80089A38  C0 01 01 E4 */	lfs f0, 0x1e4(r1)
/* 80089A3C  D0 1F 04 00 */	stfs f0, 0x400(r31)
/* 80089A40  48 00 04 08 */	b lbl_80089E48
lbl_80089A44:
/* 80089A44  88 1F 04 10 */	lbz r0, 0x410(r31)
/* 80089A48  7C 00 07 74 */	extsb r0, r0
/* 80089A4C  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80089A50  40 82 00 A4 */	bne lbl_80089AF4
/* 80089A54  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 80089A58  7F E4 FB 78 */	mr r4, r31
/* 80089A5C  48 00 DD 01 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80089A60  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 80089A64  38 9F 00 3C */	addi r4, r31, 0x3c
/* 80089A68  38 A1 01 D0 */	addi r5, r1, 0x1d0
/* 80089A6C  48 1D D0 C9 */	bl __mi__4cXyzCFRC3Vec
/* 80089A70  38 61 00 3C */	addi r3, r1, 0x3c
/* 80089A74  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 80089A78  48 1E 7E 09 */	bl __ct__7cSGlobeFRC4cXyz
/* 80089A7C  38 61 00 18 */	addi r3, r1, 0x18
/* 80089A80  7F E4 FB 78 */	mr r4, r31
/* 80089A84  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 80089A88  48 00 DC B1 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80089A8C  38 61 00 14 */	addi r3, r1, 0x14
/* 80089A90  38 81 00 42 */	addi r4, r1, 0x42
/* 80089A94  38 A1 00 18 */	addi r5, r1, 0x18
/* 80089A98  48 1E 77 0D */	bl __mi__7cSAngleCFRC7cSAngle
/* 80089A9C  38 61 00 20 */	addi r3, r1, 0x20
/* 80089AA0  38 81 00 14 */	addi r4, r1, 0x14
/* 80089AA4  48 1E 74 C5 */	bl __ct__7cSAngleFRC7cSAngle
/* 80089AA8  A8 61 00 20 */	lha r3, 0x20(r1)
/* 80089AAC  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80089AB0  7C 03 00 00 */	cmpw r3, r0
/* 80089AB4  40 80 00 10 */	bge lbl_80089AC4
/* 80089AB8  C0 01 02 48 */	lfs f0, 0x248(r1)
/* 80089ABC  FC 00 00 50 */	fneg f0, f0
/* 80089AC0  D0 01 02 48 */	stfs f0, 0x248(r1)
lbl_80089AC4:
/* 80089AC4  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 80089AC8  7F E4 FB 78 */	mr r4, r31
/* 80089ACC  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 80089AD0  38 C1 02 48 */	addi r6, r1, 0x248
/* 80089AD4  48 0D B2 99 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80089AD8  C0 01 01 B8 */	lfs f0, 0x1b8(r1)
/* 80089ADC  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 80089AE0  C0 01 01 BC */	lfs f0, 0x1bc(r1)
/* 80089AE4  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 80089AE8  C0 01 01 C0 */	lfs f0, 0x1c0(r1)
/* 80089AEC  D0 1F 04 00 */	stfs f0, 0x400(r31)
/* 80089AF0  48 00 03 58 */	b lbl_80089E48
lbl_80089AF4:
/* 80089AF4  2C 00 00 70 */	cmpwi r0, 0x70
/* 80089AF8  40 82 02 F8 */	bne lbl_80089DF0
/* 80089AFC  38 61 01 AC */	addi r3, r1, 0x1ac
/* 80089B00  7F E4 FB 78 */	mr r4, r31
/* 80089B04  38 C1 02 48 */	addi r6, r1, 0x248
/* 80089B08  48 0D B2 65 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80089B0C  C0 01 01 AC */	lfs f0, 0x1ac(r1)
/* 80089B10  D0 01 02 30 */	stfs f0, 0x230(r1)
/* 80089B14  C0 01 01 B0 */	lfs f0, 0x1b0(r1)
/* 80089B18  D0 01 02 34 */	stfs f0, 0x234(r1)
/* 80089B1C  C0 01 01 B4 */	lfs f0, 0x1b4(r1)
/* 80089B20  D0 01 02 38 */	stfs f0, 0x238(r1)
/* 80089B24  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 80089B28  7F E4 FB 78 */	mr r4, r31
/* 80089B2C  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80089B30  48 00 DC 2D */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80089B34  38 61 01 94 */	addi r3, r1, 0x194
/* 80089B38  38 81 02 30 */	addi r4, r1, 0x230
/* 80089B3C  38 A1 01 A0 */	addi r5, r1, 0x1a0
/* 80089B40  48 1D CF F5 */	bl __mi__4cXyzCFRC3Vec
/* 80089B44  C0 01 01 94 */	lfs f0, 0x194(r1)
/* 80089B48  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 80089B4C  C0 01 01 98 */	lfs f0, 0x198(r1)
/* 80089B50  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 80089B54  C0 01 01 9C */	lfs f0, 0x19c(r1)
/* 80089B58  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 80089B5C  38 61 01 88 */	addi r3, r1, 0x188
/* 80089B60  48 2B D5 D9 */	bl PSVECSquareMag
/* 80089B64  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80089B68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80089B6C  40 81 00 58 */	ble lbl_80089BC4
/* 80089B70  FC 00 08 34 */	frsqrte f0, f1
/* 80089B74  C8 82 8E C0 */	lfd f4, lit_5142(r2)
/* 80089B78  FC 44 00 32 */	fmul f2, f4, f0
/* 80089B7C  C8 62 8E C8 */	lfd f3, lit_5143(r2)
/* 80089B80  FC 00 00 32 */	fmul f0, f0, f0
/* 80089B84  FC 01 00 32 */	fmul f0, f1, f0
/* 80089B88  FC 03 00 28 */	fsub f0, f3, f0
/* 80089B8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80089B90  FC 44 00 32 */	fmul f2, f4, f0
/* 80089B94  FC 00 00 32 */	fmul f0, f0, f0
/* 80089B98  FC 01 00 32 */	fmul f0, f1, f0
/* 80089B9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80089BA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80089BA4  FC 44 00 32 */	fmul f2, f4, f0
/* 80089BA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80089BAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80089BB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80089BB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80089BB8  FF E1 00 32 */	fmul f31, f1, f0
/* 80089BBC  FF E0 F8 18 */	frsp f31, f31
/* 80089BC0  48 00 00 90 */	b lbl_80089C50
lbl_80089BC4:
/* 80089BC4  C8 02 8E D0 */	lfd f0, lit_5144(r2)
/* 80089BC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80089BCC  40 80 00 10 */	bge lbl_80089BDC
/* 80089BD0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80089BD4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80089BD8  48 00 00 78 */	b lbl_80089C50
lbl_80089BDC:
/* 80089BDC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80089BE0  80 81 00 30 */	lwz r4, 0x30(r1)
/* 80089BE4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80089BE8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80089BEC  7C 03 00 00 */	cmpw r3, r0
/* 80089BF0  41 82 00 14 */	beq lbl_80089C04
/* 80089BF4  40 80 00 40 */	bge lbl_80089C34
/* 80089BF8  2C 03 00 00 */	cmpwi r3, 0
/* 80089BFC  41 82 00 20 */	beq lbl_80089C1C
/* 80089C00  48 00 00 34 */	b lbl_80089C34
lbl_80089C04:
/* 80089C04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80089C08  41 82 00 0C */	beq lbl_80089C14
/* 80089C0C  38 00 00 01 */	li r0, 1
/* 80089C10  48 00 00 28 */	b lbl_80089C38
lbl_80089C14:
/* 80089C14  38 00 00 02 */	li r0, 2
/* 80089C18  48 00 00 20 */	b lbl_80089C38
lbl_80089C1C:
/* 80089C1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80089C20  41 82 00 0C */	beq lbl_80089C2C
/* 80089C24  38 00 00 05 */	li r0, 5
/* 80089C28  48 00 00 10 */	b lbl_80089C38
lbl_80089C2C:
/* 80089C2C  38 00 00 03 */	li r0, 3
/* 80089C30  48 00 00 08 */	b lbl_80089C38
lbl_80089C34:
/* 80089C34  38 00 00 04 */	li r0, 4
lbl_80089C38:
/* 80089C38  2C 00 00 01 */	cmpwi r0, 1
/* 80089C3C  40 82 00 10 */	bne lbl_80089C4C
/* 80089C40  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80089C44  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80089C48  48 00 00 08 */	b lbl_80089C50
lbl_80089C4C:
/* 80089C4C  FF E0 08 90 */	fmr f31, f1
lbl_80089C50:
/* 80089C50  C0 01 02 48 */	lfs f0, 0x248(r1)
/* 80089C54  FC 00 00 50 */	fneg f0, f0
/* 80089C58  D0 01 02 48 */	stfs f0, 0x248(r1)
/* 80089C5C  38 61 01 7C */	addi r3, r1, 0x17c
/* 80089C60  7F E4 FB 78 */	mr r4, r31
/* 80089C64  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 80089C68  38 C1 02 48 */	addi r6, r1, 0x248
/* 80089C6C  48 0D B1 01 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80089C70  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 80089C74  D0 01 02 30 */	stfs f0, 0x230(r1)
/* 80089C78  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 80089C7C  D0 01 02 34 */	stfs f0, 0x234(r1)
/* 80089C80  C0 01 01 84 */	lfs f0, 0x184(r1)
/* 80089C84  D0 01 02 38 */	stfs f0, 0x238(r1)
/* 80089C88  38 61 01 70 */	addi r3, r1, 0x170
/* 80089C8C  7F E4 FB 78 */	mr r4, r31
/* 80089C90  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80089C94  48 00 DA C9 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80089C98  38 61 01 64 */	addi r3, r1, 0x164
/* 80089C9C  38 81 02 30 */	addi r4, r1, 0x230
/* 80089CA0  38 A1 01 70 */	addi r5, r1, 0x170
/* 80089CA4  48 1D CE 91 */	bl __mi__4cXyzCFRC3Vec
/* 80089CA8  C0 01 01 64 */	lfs f0, 0x164(r1)
/* 80089CAC  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 80089CB0  C0 01 01 68 */	lfs f0, 0x168(r1)
/* 80089CB4  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 80089CB8  C0 01 01 6C */	lfs f0, 0x16c(r1)
/* 80089CBC  D0 01 01 60 */	stfs f0, 0x160(r1)
/* 80089CC0  38 61 01 58 */	addi r3, r1, 0x158
/* 80089CC4  48 2B D4 75 */	bl PSVECSquareMag
/* 80089CC8  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80089CCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80089CD0  40 81 00 58 */	ble lbl_80089D28
/* 80089CD4  FC 00 08 34 */	frsqrte f0, f1
/* 80089CD8  C8 82 8E C0 */	lfd f4, lit_5142(r2)
/* 80089CDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80089CE0  C8 62 8E C8 */	lfd f3, lit_5143(r2)
/* 80089CE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80089CE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80089CEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80089CF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80089CF4  FC 44 00 32 */	fmul f2, f4, f0
/* 80089CF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80089CFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80089D00  FC 03 00 28 */	fsub f0, f3, f0
/* 80089D04  FC 02 00 32 */	fmul f0, f2, f0
/* 80089D08  FC 44 00 32 */	fmul f2, f4, f0
/* 80089D0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80089D10  FC 01 00 32 */	fmul f0, f1, f0
/* 80089D14  FC 03 00 28 */	fsub f0, f3, f0
/* 80089D18  FC 02 00 32 */	fmul f0, f2, f0
/* 80089D1C  FC 21 00 32 */	fmul f1, f1, f0
/* 80089D20  FC 20 08 18 */	frsp f1, f1
/* 80089D24  48 00 00 88 */	b lbl_80089DAC
lbl_80089D28:
/* 80089D28  C8 02 8E D0 */	lfd f0, lit_5144(r2)
/* 80089D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80089D30  40 80 00 10 */	bge lbl_80089D40
/* 80089D34  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80089D38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80089D3C  48 00 00 70 */	b lbl_80089DAC
lbl_80089D40:
/* 80089D40  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80089D44  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80089D48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80089D4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80089D50  7C 03 00 00 */	cmpw r3, r0
/* 80089D54  41 82 00 14 */	beq lbl_80089D68
/* 80089D58  40 80 00 40 */	bge lbl_80089D98
/* 80089D5C  2C 03 00 00 */	cmpwi r3, 0
/* 80089D60  41 82 00 20 */	beq lbl_80089D80
/* 80089D64  48 00 00 34 */	b lbl_80089D98
lbl_80089D68:
/* 80089D68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80089D6C  41 82 00 0C */	beq lbl_80089D78
/* 80089D70  38 00 00 01 */	li r0, 1
/* 80089D74  48 00 00 28 */	b lbl_80089D9C
lbl_80089D78:
/* 80089D78  38 00 00 02 */	li r0, 2
/* 80089D7C  48 00 00 20 */	b lbl_80089D9C
lbl_80089D80:
/* 80089D80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80089D84  41 82 00 0C */	beq lbl_80089D90
/* 80089D88  38 00 00 05 */	li r0, 5
/* 80089D8C  48 00 00 10 */	b lbl_80089D9C
lbl_80089D90:
/* 80089D90  38 00 00 03 */	li r0, 3
/* 80089D94  48 00 00 08 */	b lbl_80089D9C
lbl_80089D98:
/* 80089D98  38 00 00 04 */	li r0, 4
lbl_80089D9C:
/* 80089D9C  2C 00 00 01 */	cmpwi r0, 1
/* 80089DA0  40 82 00 0C */	bne lbl_80089DAC
/* 80089DA4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80089DA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80089DAC:
/* 80089DAC  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80089DB0  40 81 00 10 */	ble lbl_80089DC0
/* 80089DB4  C0 01 02 48 */	lfs f0, 0x248(r1)
/* 80089DB8  FC 00 00 50 */	fneg f0, f0
/* 80089DBC  D0 01 02 48 */	stfs f0, 0x248(r1)
lbl_80089DC0:
/* 80089DC0  38 61 01 4C */	addi r3, r1, 0x14c
/* 80089DC4  7F E4 FB 78 */	mr r4, r31
/* 80089DC8  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 80089DCC  38 C1 02 48 */	addi r6, r1, 0x248
/* 80089DD0  48 0D AF 9D */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80089DD4  C0 01 01 4C */	lfs f0, 0x14c(r1)
/* 80089DD8  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 80089DDC  C0 01 01 50 */	lfs f0, 0x150(r1)
/* 80089DE0  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 80089DE4  C0 01 01 54 */	lfs f0, 0x154(r1)
/* 80089DE8  D0 1F 04 00 */	stfs f0, 0x400(r31)
/* 80089DEC  48 00 00 5C */	b lbl_80089E48
lbl_80089DF0:
/* 80089DF0  2C 00 00 74 */	cmpwi r0, 0x74
/* 80089DF4  40 82 00 3C */	bne lbl_80089E30
/* 80089DF8  38 61 01 40 */	addi r3, r1, 0x140
/* 80089DFC  7F E4 FB 78 */	mr r4, r31
/* 80089E00  48 00 D9 1D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80089E04  38 61 01 34 */	addi r3, r1, 0x134
/* 80089E08  38 81 01 40 */	addi r4, r1, 0x140
/* 80089E0C  38 A1 02 48 */	addi r5, r1, 0x248
/* 80089E10  48 1D CC D5 */	bl __pl__4cXyzCFRC3Vec
/* 80089E14  C0 01 01 34 */	lfs f0, 0x134(r1)
/* 80089E18  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 80089E1C  C0 01 01 38 */	lfs f0, 0x138(r1)
/* 80089E20  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 80089E24  C0 01 01 3C */	lfs f0, 0x13c(r1)
/* 80089E28  D0 1F 04 00 */	stfs f0, 0x400(r31)
/* 80089E2C  48 00 00 1C */	b lbl_80089E48
lbl_80089E30:
/* 80089E30  C0 01 02 48 */	lfs f0, 0x248(r1)
/* 80089E34  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 80089E38  C0 01 02 4C */	lfs f0, 0x24c(r1)
/* 80089E3C  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 80089E40  C0 01 02 50 */	lfs f0, 0x250(r1)
/* 80089E44  D0 1F 04 00 */	stfs f0, 0x400(r31)
lbl_80089E48:
/* 80089E48  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 80089E4C  28 05 00 00 */	cmplwi r5, 0
/* 80089E50  41 82 00 3C */	beq lbl_80089E8C
/* 80089E54  88 1F 04 11 */	lbz r0, 0x411(r31)
/* 80089E58  2C 00 00 6F */	cmpwi r0, 0x6f
/* 80089E5C  40 82 00 30 */	bne lbl_80089E8C
/* 80089E60  38 61 01 28 */	addi r3, r1, 0x128
/* 80089E64  7F E4 FB 78 */	mr r4, r31
/* 80089E68  38 C1 02 3C */	addi r6, r1, 0x23c
/* 80089E6C  48 0D AF 01 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80089E70  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 80089E74  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 80089E78  C0 01 01 2C */	lfs f0, 0x12c(r1)
/* 80089E7C  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 80089E80  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 80089E84  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 80089E88  48 00 05 A8 */	b lbl_8008A430
lbl_80089E8C:
/* 80089E8C  28 05 00 00 */	cmplwi r5, 0
/* 80089E90  41 82 00 60 */	beq lbl_80089EF0
/* 80089E94  88 1F 04 11 */	lbz r0, 0x411(r31)
/* 80089E98  2C 00 00 77 */	cmpwi r0, 0x77
/* 80089E9C  40 82 00 54 */	bne lbl_80089EF0
/* 80089EA0  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80089EA4  2C 00 00 01 */	cmpwi r0, 1
/* 80089EA8  40 82 00 18 */	bne lbl_80089EC0
/* 80089EAC  38 61 02 3C */	addi r3, r1, 0x23c
/* 80089EB0  3C 80 80 42 */	lis r4, data_804253B4@ha
/* 80089EB4  38 84 53 B4 */	addi r4, r4, data_804253B4@l
/* 80089EB8  7C 65 1B 78 */	mr r5, r3
/* 80089EBC  48 2B D1 D5 */	bl PSVECAdd
lbl_80089EC0:
/* 80089EC0  38 61 01 1C */	addi r3, r1, 0x11c
/* 80089EC4  7F E4 FB 78 */	mr r4, r31
/* 80089EC8  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 80089ECC  38 C1 02 3C */	addi r6, r1, 0x23c
/* 80089ED0  48 0D AE 9D */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80089ED4  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 80089ED8  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 80089EDC  C0 01 01 20 */	lfs f0, 0x120(r1)
/* 80089EE0  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 80089EE4  C0 01 01 24 */	lfs f0, 0x124(r1)
/* 80089EE8  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 80089EEC  48 00 05 44 */	b lbl_8008A430
lbl_80089EF0:
/* 80089EF0  28 05 00 00 */	cmplwi r5, 0
/* 80089EF4  41 82 00 60 */	beq lbl_80089F54
/* 80089EF8  88 1F 04 11 */	lbz r0, 0x411(r31)
/* 80089EFC  2C 00 00 57 */	cmpwi r0, 0x57
/* 80089F00  40 82 00 54 */	bne lbl_80089F54
/* 80089F04  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80089F08  2C 00 00 01 */	cmpwi r0, 1
/* 80089F0C  40 82 00 18 */	bne lbl_80089F24
/* 80089F10  38 61 02 3C */	addi r3, r1, 0x23c
/* 80089F14  3C 80 80 42 */	lis r4, data_804253B4@ha
/* 80089F18  38 84 53 B4 */	addi r4, r4, data_804253B4@l
/* 80089F1C  7C 65 1B 78 */	mr r5, r3
/* 80089F20  48 2B D1 95 */	bl PSVECSubtract
lbl_80089F24:
/* 80089F24  38 61 01 10 */	addi r3, r1, 0x110
/* 80089F28  7F E4 FB 78 */	mr r4, r31
/* 80089F2C  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 80089F30  38 C1 02 3C */	addi r6, r1, 0x23c
/* 80089F34  48 0D AE 39 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80089F38  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 80089F3C  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 80089F40  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80089F44  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 80089F48  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 80089F4C  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 80089F50  48 00 04 E0 */	b lbl_8008A430
lbl_80089F54:
/* 80089F54  28 05 00 00 */	cmplwi r5, 0
/* 80089F58  41 82 00 AC */	beq lbl_8008A004
/* 80089F5C  88 1F 04 11 */	lbz r0, 0x411(r31)
/* 80089F60  2C 00 00 72 */	cmpwi r0, 0x72
/* 80089F64  40 82 00 A0 */	bne lbl_8008A004
/* 80089F68  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 80089F6C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80089F70  41 82 00 10 */	beq lbl_80089F80
/* 80089F74  C0 01 02 3C */	lfs f0, 0x23c(r1)
/* 80089F78  FC 00 00 50 */	fneg f0, f0
/* 80089F7C  D0 01 02 3C */	stfs f0, 0x23c(r1)
lbl_80089F80:
/* 80089F80  38 61 01 04 */	addi r3, r1, 0x104
/* 80089F84  7F E4 FB 78 */	mr r4, r31
/* 80089F88  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 80089F8C  38 C1 02 3C */	addi r6, r1, 0x23c
/* 80089F90  48 0D AD DD */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80089F94  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 80089F98  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 80089F9C  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 80089FA0  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 80089FA4  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 80089FA8  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 80089FAC  7F E3 FB 78 */	mr r3, r31
/* 80089FB0  38 9F 03 F8 */	addi r4, r31, 0x3f8
/* 80089FB4  38 BF 03 EC */	addi r5, r31, 0x3ec
/* 80089FB8  38 C0 40 07 */	li r6, 0x4007
/* 80089FBC  48 0D BB 35 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80089FC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80089FC4  41 82 00 10 */	beq lbl_80089FD4
/* 80089FC8  C0 01 02 3C */	lfs f0, 0x23c(r1)
/* 80089FCC  FC 00 00 50 */	fneg f0, f0
/* 80089FD0  D0 01 02 3C */	stfs f0, 0x23c(r1)
lbl_80089FD4:
/* 80089FD4  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80089FD8  7F E4 FB 78 */	mr r4, r31
/* 80089FDC  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 80089FE0  38 C1 02 3C */	addi r6, r1, 0x23c
/* 80089FE4  48 0D AD 89 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80089FE8  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 80089FEC  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 80089FF0  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80089FF4  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 80089FF8  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 80089FFC  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 8008A000  48 00 04 30 */	b lbl_8008A430
lbl_8008A004:
/* 8008A004  88 1F 04 11 */	lbz r0, 0x411(r31)
/* 8008A008  7C 00 07 74 */	extsb r0, r0
/* 8008A00C  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8008A010  40 82 00 CC */	bne lbl_8008A0DC
/* 8008A014  38 61 00 EC */	addi r3, r1, 0xec
/* 8008A018  7F E4 FB 78 */	mr r4, r31
/* 8008A01C  48 00 D7 41 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008A020  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8008A024  38 9F 00 3C */	addi r4, r31, 0x3c
/* 8008A028  38 A1 00 EC */	addi r5, r1, 0xec
/* 8008A02C  48 1D CB 09 */	bl __mi__4cXyzCFRC3Vec
/* 8008A030  38 61 00 34 */	addi r3, r1, 0x34
/* 8008A034  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8008A038  48 1E 78 49 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008A03C  38 61 00 10 */	addi r3, r1, 0x10
/* 8008A040  7F E4 FB 78 */	mr r4, r31
/* 8008A044  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 8008A048  48 00 D6 F1 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008A04C  38 61 00 0C */	addi r3, r1, 0xc
/* 8008A050  38 81 00 3A */	addi r4, r1, 0x3a
/* 8008A054  38 A1 00 10 */	addi r5, r1, 0x10
/* 8008A058  48 1E 71 4D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008A05C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8008A060  38 81 00 0C */	addi r4, r1, 0xc
/* 8008A064  48 1E 6F 05 */	bl __ct__7cSAngleFRC7cSAngle
/* 8008A068  A8 61 00 1C */	lha r3, 0x1c(r1)
/* 8008A06C  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8008A070  7C 03 00 00 */	cmpw r3, r0
/* 8008A074  40 80 00 10 */	bge lbl_8008A084
/* 8008A078  C0 01 02 3C */	lfs f0, 0x23c(r1)
/* 8008A07C  FC 00 00 50 */	fneg f0, f0
/* 8008A080  D0 01 02 3C */	stfs f0, 0x23c(r1)
lbl_8008A084:
/* 8008A084  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8008A088  7F E4 FB 78 */	mr r4, r31
/* 8008A08C  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 8008A090  38 C1 02 3C */	addi r6, r1, 0x23c
/* 8008A094  48 0D AC D9 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008A098  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8008A09C  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 8008A0A0  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 8008A0A4  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 8008A0A8  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 8008A0AC  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 8008A0B0  7F E3 FB 78 */	mr r3, r31
/* 8008A0B4  38 9F 03 F8 */	addi r4, r31, 0x3f8
/* 8008A0B8  38 BF 03 EC */	addi r5, r31, 0x3ec
/* 8008A0BC  38 C0 40 07 */	li r6, 0x4007
/* 8008A0C0  48 0D BA 31 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8008A0C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008A0C8  41 82 03 68 */	beq lbl_8008A430
/* 8008A0CC  C0 01 02 3C */	lfs f0, 0x23c(r1)
/* 8008A0D0  FC 00 00 50 */	fneg f0, f0
/* 8008A0D4  D0 01 02 3C */	stfs f0, 0x23c(r1)
/* 8008A0D8  48 00 03 58 */	b lbl_8008A430
lbl_8008A0DC:
/* 8008A0DC  2C 00 00 70 */	cmpwi r0, 0x70
/* 8008A0E0  40 82 02 F8 */	bne lbl_8008A3D8
/* 8008A0E4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8008A0E8  7F E4 FB 78 */	mr r4, r31
/* 8008A0EC  38 C1 02 3C */	addi r6, r1, 0x23c
/* 8008A0F0  48 0D AC 7D */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008A0F4  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 8008A0F8  D0 01 02 24 */	stfs f0, 0x224(r1)
/* 8008A0FC  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 8008A100  D0 01 02 28 */	stfs f0, 0x228(r1)
/* 8008A104  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8008A108  D0 01 02 2C */	stfs f0, 0x22c(r1)
/* 8008A10C  38 61 00 BC */	addi r3, r1, 0xbc
/* 8008A110  7F E4 FB 78 */	mr r4, r31
/* 8008A114  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8008A118  48 00 D6 45 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008A11C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8008A120  38 81 02 24 */	addi r4, r1, 0x224
/* 8008A124  38 A1 00 BC */	addi r5, r1, 0xbc
/* 8008A128  48 1D CA 0D */	bl __mi__4cXyzCFRC3Vec
/* 8008A12C  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8008A130  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8008A134  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8008A138  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8008A13C  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8008A140  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8008A144  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8008A148  48 2B CF F1 */	bl PSVECSquareMag
/* 8008A14C  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 8008A150  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008A154  40 81 00 58 */	ble lbl_8008A1AC
/* 8008A158  FC 00 08 34 */	frsqrte f0, f1
/* 8008A15C  C8 82 8E C0 */	lfd f4, lit_5142(r2)
/* 8008A160  FC 44 00 32 */	fmul f2, f4, f0
/* 8008A164  C8 62 8E C8 */	lfd f3, lit_5143(r2)
/* 8008A168  FC 00 00 32 */	fmul f0, f0, f0
/* 8008A16C  FC 01 00 32 */	fmul f0, f1, f0
/* 8008A170  FC 03 00 28 */	fsub f0, f3, f0
/* 8008A174  FC 02 00 32 */	fmul f0, f2, f0
/* 8008A178  FC 44 00 32 */	fmul f2, f4, f0
/* 8008A17C  FC 00 00 32 */	fmul f0, f0, f0
/* 8008A180  FC 01 00 32 */	fmul f0, f1, f0
/* 8008A184  FC 03 00 28 */	fsub f0, f3, f0
/* 8008A188  FC 02 00 32 */	fmul f0, f2, f0
/* 8008A18C  FC 44 00 32 */	fmul f2, f4, f0
/* 8008A190  FC 00 00 32 */	fmul f0, f0, f0
/* 8008A194  FC 01 00 32 */	fmul f0, f1, f0
/* 8008A198  FC 03 00 28 */	fsub f0, f3, f0
/* 8008A19C  FC 02 00 32 */	fmul f0, f2, f0
/* 8008A1A0  FF E1 00 32 */	fmul f31, f1, f0
/* 8008A1A4  FF E0 F8 18 */	frsp f31, f31
/* 8008A1A8  48 00 00 90 */	b lbl_8008A238
lbl_8008A1AC:
/* 8008A1AC  C8 02 8E D0 */	lfd f0, lit_5144(r2)
/* 8008A1B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008A1B4  40 80 00 10 */	bge lbl_8008A1C4
/* 8008A1B8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8008A1BC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8008A1C0  48 00 00 78 */	b lbl_8008A238
lbl_8008A1C4:
/* 8008A1C4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8008A1C8  80 81 00 28 */	lwz r4, 0x28(r1)
/* 8008A1CC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8008A1D0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8008A1D4  7C 03 00 00 */	cmpw r3, r0
/* 8008A1D8  41 82 00 14 */	beq lbl_8008A1EC
/* 8008A1DC  40 80 00 40 */	bge lbl_8008A21C
/* 8008A1E0  2C 03 00 00 */	cmpwi r3, 0
/* 8008A1E4  41 82 00 20 */	beq lbl_8008A204
/* 8008A1E8  48 00 00 34 */	b lbl_8008A21C
lbl_8008A1EC:
/* 8008A1EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008A1F0  41 82 00 0C */	beq lbl_8008A1FC
/* 8008A1F4  38 00 00 01 */	li r0, 1
/* 8008A1F8  48 00 00 28 */	b lbl_8008A220
lbl_8008A1FC:
/* 8008A1FC  38 00 00 02 */	li r0, 2
/* 8008A200  48 00 00 20 */	b lbl_8008A220
lbl_8008A204:
/* 8008A204  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008A208  41 82 00 0C */	beq lbl_8008A214
/* 8008A20C  38 00 00 05 */	li r0, 5
/* 8008A210  48 00 00 10 */	b lbl_8008A220
lbl_8008A214:
/* 8008A214  38 00 00 03 */	li r0, 3
/* 8008A218  48 00 00 08 */	b lbl_8008A220
lbl_8008A21C:
/* 8008A21C  38 00 00 04 */	li r0, 4
lbl_8008A220:
/* 8008A220  2C 00 00 01 */	cmpwi r0, 1
/* 8008A224  40 82 00 10 */	bne lbl_8008A234
/* 8008A228  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8008A22C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8008A230  48 00 00 08 */	b lbl_8008A238
lbl_8008A234:
/* 8008A234  FF E0 08 90 */	fmr f31, f1
lbl_8008A238:
/* 8008A238  C0 01 02 3C */	lfs f0, 0x23c(r1)
/* 8008A23C  FC 00 00 50 */	fneg f0, f0
/* 8008A240  D0 01 02 3C */	stfs f0, 0x23c(r1)
/* 8008A244  38 61 00 98 */	addi r3, r1, 0x98
/* 8008A248  7F E4 FB 78 */	mr r4, r31
/* 8008A24C  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 8008A250  38 C1 02 3C */	addi r6, r1, 0x23c
/* 8008A254  48 0D AB 19 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008A258  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8008A25C  D0 01 02 24 */	stfs f0, 0x224(r1)
/* 8008A260  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8008A264  D0 01 02 28 */	stfs f0, 0x228(r1)
/* 8008A268  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8008A26C  D0 01 02 2C */	stfs f0, 0x22c(r1)
/* 8008A270  38 61 00 8C */	addi r3, r1, 0x8c
/* 8008A274  7F E4 FB 78 */	mr r4, r31
/* 8008A278  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8008A27C  48 00 D4 E1 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008A280  38 61 00 80 */	addi r3, r1, 0x80
/* 8008A284  38 81 02 24 */	addi r4, r1, 0x224
/* 8008A288  38 A1 00 8C */	addi r5, r1, 0x8c
/* 8008A28C  48 1D C8 A9 */	bl __mi__4cXyzCFRC3Vec
/* 8008A290  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8008A294  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8008A298  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8008A29C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8008A2A0  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8008A2A4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8008A2A8  38 61 00 74 */	addi r3, r1, 0x74
/* 8008A2AC  48 2B CE 8D */	bl PSVECSquareMag
/* 8008A2B0  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 8008A2B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008A2B8  40 81 00 58 */	ble lbl_8008A310
/* 8008A2BC  FC 00 08 34 */	frsqrte f0, f1
/* 8008A2C0  C8 82 8E C0 */	lfd f4, lit_5142(r2)
/* 8008A2C4  FC 44 00 32 */	fmul f2, f4, f0
/* 8008A2C8  C8 62 8E C8 */	lfd f3, lit_5143(r2)
/* 8008A2CC  FC 00 00 32 */	fmul f0, f0, f0
/* 8008A2D0  FC 01 00 32 */	fmul f0, f1, f0
/* 8008A2D4  FC 03 00 28 */	fsub f0, f3, f0
/* 8008A2D8  FC 02 00 32 */	fmul f0, f2, f0
/* 8008A2DC  FC 44 00 32 */	fmul f2, f4, f0
/* 8008A2E0  FC 00 00 32 */	fmul f0, f0, f0
/* 8008A2E4  FC 01 00 32 */	fmul f0, f1, f0
/* 8008A2E8  FC 03 00 28 */	fsub f0, f3, f0
/* 8008A2EC  FC 02 00 32 */	fmul f0, f2, f0
/* 8008A2F0  FC 44 00 32 */	fmul f2, f4, f0
/* 8008A2F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8008A2F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8008A2FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8008A300  FC 02 00 32 */	fmul f0, f2, f0
/* 8008A304  FC 21 00 32 */	fmul f1, f1, f0
/* 8008A308  FC 20 08 18 */	frsp f1, f1
/* 8008A30C  48 00 00 88 */	b lbl_8008A394
lbl_8008A310:
/* 8008A310  C8 02 8E D0 */	lfd f0, lit_5144(r2)
/* 8008A314  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008A318  40 80 00 10 */	bge lbl_8008A328
/* 8008A31C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8008A320  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8008A324  48 00 00 70 */	b lbl_8008A394
lbl_8008A328:
/* 8008A328  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8008A32C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8008A330  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8008A334  3C 00 7F 80 */	lis r0, 0x7f80
/* 8008A338  7C 03 00 00 */	cmpw r3, r0
/* 8008A33C  41 82 00 14 */	beq lbl_8008A350
/* 8008A340  40 80 00 40 */	bge lbl_8008A380
/* 8008A344  2C 03 00 00 */	cmpwi r3, 0
/* 8008A348  41 82 00 20 */	beq lbl_8008A368
/* 8008A34C  48 00 00 34 */	b lbl_8008A380
lbl_8008A350:
/* 8008A350  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008A354  41 82 00 0C */	beq lbl_8008A360
/* 8008A358  38 00 00 01 */	li r0, 1
/* 8008A35C  48 00 00 28 */	b lbl_8008A384
lbl_8008A360:
/* 8008A360  38 00 00 02 */	li r0, 2
/* 8008A364  48 00 00 20 */	b lbl_8008A384
lbl_8008A368:
/* 8008A368  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008A36C  41 82 00 0C */	beq lbl_8008A378
/* 8008A370  38 00 00 05 */	li r0, 5
/* 8008A374  48 00 00 10 */	b lbl_8008A384
lbl_8008A378:
/* 8008A378  38 00 00 03 */	li r0, 3
/* 8008A37C  48 00 00 08 */	b lbl_8008A384
lbl_8008A380:
/* 8008A380  38 00 00 04 */	li r0, 4
lbl_8008A384:
/* 8008A384  2C 00 00 01 */	cmpwi r0, 1
/* 8008A388  40 82 00 0C */	bne lbl_8008A394
/* 8008A38C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8008A390  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8008A394:
/* 8008A394  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8008A398  40 81 00 10 */	ble lbl_8008A3A8
/* 8008A39C  C0 01 02 3C */	lfs f0, 0x23c(r1)
/* 8008A3A0  FC 00 00 50 */	fneg f0, f0
/* 8008A3A4  D0 01 02 3C */	stfs f0, 0x23c(r1)
lbl_8008A3A8:
/* 8008A3A8  38 61 00 68 */	addi r3, r1, 0x68
/* 8008A3AC  7F E4 FB 78 */	mr r4, r31
/* 8008A3B0  80 BF 04 0C */	lwz r5, 0x40c(r31)
/* 8008A3B4  38 C1 02 3C */	addi r6, r1, 0x23c
/* 8008A3B8  48 0D A9 B5 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008A3BC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8008A3C0  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 8008A3C4  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8008A3C8  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 8008A3CC  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8008A3D0  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 8008A3D4  48 00 00 5C */	b lbl_8008A430
lbl_8008A3D8:
/* 8008A3D8  2C 00 00 74 */	cmpwi r0, 0x74
/* 8008A3DC  40 82 00 3C */	bne lbl_8008A418
/* 8008A3E0  38 61 00 5C */	addi r3, r1, 0x5c
/* 8008A3E4  7F E4 FB 78 */	mr r4, r31
/* 8008A3E8  48 00 D3 35 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008A3EC  38 61 00 50 */	addi r3, r1, 0x50
/* 8008A3F0  38 81 00 5C */	addi r4, r1, 0x5c
/* 8008A3F4  38 A1 02 3C */	addi r5, r1, 0x23c
/* 8008A3F8  48 1D C6 ED */	bl __pl__4cXyzCFRC3Vec
/* 8008A3FC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8008A400  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 8008A404  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8008A408  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 8008A40C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8008A410  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 8008A414  48 00 00 1C */	b lbl_8008A430
lbl_8008A418:
/* 8008A418  C0 01 02 3C */	lfs f0, 0x23c(r1)
/* 8008A41C  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 8008A420  C0 01 02 40 */	lfs f0, 0x240(r1)
/* 8008A424  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 8008A428  C0 01 02 44 */	lfs f0, 0x244(r1)
/* 8008A42C  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
lbl_8008A430:
/* 8008A430  38 00 00 01 */	li r0, 1
/* 8008A434  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_8008A438:
/* 8008A438  C0 1F 03 F8 */	lfs f0, 0x3f8(r31)
/* 8008A43C  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 8008A440  C0 1F 03 FC */	lfs f0, 0x3fc(r31)
/* 8008A444  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 8008A448  C0 1F 04 00 */	lfs f0, 0x400(r31)
/* 8008A44C  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 8008A450  C0 1F 03 EC */	lfs f0, 0x3ec(r31)
/* 8008A454  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 8008A458  C0 1F 03 F0 */	lfs f0, 0x3f0(r31)
/* 8008A45C  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8008A460  C0 1F 03 F4 */	lfs f0, 0x3f4(r31)
/* 8008A464  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8008A468  38 61 00 44 */	addi r3, r1, 0x44
/* 8008A46C  38 9F 00 70 */	addi r4, r31, 0x70
/* 8008A470  38 BF 00 64 */	addi r5, r31, 0x64
/* 8008A474  48 1D C6 C1 */	bl __mi__4cXyzCFRC3Vec
/* 8008A478  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8008A47C  38 81 00 44 */	addi r4, r1, 0x44
/* 8008A480  48 1E 75 F1 */	bl Val__7cSGlobeFRC4cXyz
/* 8008A484  C0 1F 04 04 */	lfs f0, 0x404(r31)
/* 8008A488  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8008A48C  88 1F 04 18 */	lbz r0, 0x418(r31)
/* 8008A490  28 00 00 00 */	cmplwi r0, 0
/* 8008A494  41 82 00 38 */	beq lbl_8008A4CC
/* 8008A498  C0 22 8E D8 */	lfs f1, lit_5145(r2)
/* 8008A49C  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 8008A4A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8008A4A4  FC 00 00 1E */	fctiwz f0, f0
/* 8008A4A8  D8 01 02 58 */	stfd f0, 0x258(r1)
/* 8008A4AC  80 81 02 5C */	lwz r4, 0x25c(r1)
/* 8008A4B0  38 61 00 08 */	addi r3, r1, 8
/* 8008A4B4  48 1E 6A E5 */	bl __ct__7cSAngleFs
/* 8008A4B8  A8 01 00 08 */	lha r0, 8(r1)
/* 8008A4BC  B0 1F 00 7C */	sth r0, 0x7c(r31)
/* 8008A4C0  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8008A4C4  60 00 04 00 */	ori r0, r0, 0x400
/* 8008A4C8  90 1F 06 0C */	stw r0, 0x60c(r31)
lbl_8008A4CC:
/* 8008A4CC  88 1F 03 E8 */	lbz r0, 0x3e8(r31)
/* 8008A4D0  28 00 00 00 */	cmplwi r0, 0
/* 8008A4D4  41 82 00 1C */	beq lbl_8008A4F0
/* 8008A4D8  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 8008A4DC  80 1F 04 14 */	lwz r0, 0x414(r31)
/* 8008A4E0  7C 03 00 40 */	cmplw r3, r0
/* 8008A4E4  40 80 00 0C */	bge lbl_8008A4F0
/* 8008A4E8  38 60 00 00 */	li r3, 0
/* 8008A4EC  48 00 00 08 */	b lbl_8008A4F4
lbl_8008A4F0:
/* 8008A4F0  38 60 00 01 */	li r3, 1
lbl_8008A4F4:
/* 8008A4F4  E3 E1 02 78 */	psq_l f31, 632(r1), 0, 0 /* qr0 */
/* 8008A4F8  CB E1 02 70 */	lfd f31, 0x270(r1)
/* 8008A4FC  83 E1 02 6C */	lwz r31, 0x26c(r1)
/* 8008A500  80 01 02 84 */	lwz r0, 0x284(r1)
/* 8008A504  7C 08 03 A6 */	mtlr r0
/* 8008A508  38 21 02 80 */	addi r1, r1, 0x280
/* 8008A50C  4E 80 00 20 */	blr 
