lbl_8008A974:
/* 8008A974  94 21 FC E0 */	stwu r1, -0x320(r1)
/* 8008A978  7C 08 02 A6 */	mflr r0
/* 8008A97C  90 01 03 24 */	stw r0, 0x324(r1)
/* 8008A980  DB E1 03 10 */	stfd f31, 0x310(r1)
/* 8008A984  F3 E1 03 18 */	psq_st f31, 792(r1), 0, 0 /* qr0 */
/* 8008A988  93 E1 03 0C */	stw r31, 0x30c(r1)
/* 8008A98C  7C 7F 1B 78 */	mr r31, r3
/* 8008A990  80 03 01 74 */	lwz r0, 0x174(r3)
/* 8008A994  28 00 00 00 */	cmplwi r0, 0
/* 8008A998  40 82 0A 64 */	bne lbl_8008B3FC
/* 8008A99C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8008A9A0  D0 01 02 BC */	stfs f0, 0x2bc(r1)
/* 8008A9A4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8008A9A8  D0 01 02 C0 */	stfs f0, 0x2c0(r1)
/* 8008A9AC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8008A9B0  D0 01 02 C4 */	stfs f0, 0x2c4(r1)
/* 8008A9B4  38 9F 04 04 */	addi r4, r31, 0x404
/* 8008A9B8  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008A9BC  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008A9C0  38 A5 00 0B */	addi r5, r5, 0xb
/* 8008A9C4  38 C1 02 BC */	addi r6, r1, 0x2bc
/* 8008A9C8  4B FF E8 65 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 8008A9CC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8008A9D0  D0 01 02 B0 */	stfs f0, 0x2b0(r1)
/* 8008A9D4  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8008A9D8  D0 01 02 B4 */	stfs f0, 0x2b4(r1)
/* 8008A9DC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8008A9E0  D0 01 02 B8 */	stfs f0, 0x2b8(r1)
/* 8008A9E4  7F E3 FB 78 */	mr r3, r31
/* 8008A9E8  38 9F 04 10 */	addi r4, r31, 0x410
/* 8008A9EC  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008A9F0  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008A9F4  38 A5 00 0F */	addi r5, r5, 0xf
/* 8008A9F8  38 C1 02 B0 */	addi r6, r1, 0x2b0
/* 8008A9FC  4B FF E8 31 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 8008AA00  7F E3 FB 78 */	mr r3, r31
/* 8008AA04  38 9F 04 40 */	addi r4, r31, 0x440
/* 8008AA08  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008AA0C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008AA10  38 A5 00 54 */	addi r5, r5, 0x54
/* 8008AA14  C0 22 8E DC */	lfs f1, lit_5346(r2)
/* 8008AA18  4B FF E7 3D */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008AA1C  7F E3 FB 78 */	mr r3, r31
/* 8008AA20  38 9F 04 30 */	addi r4, r31, 0x430
/* 8008AA24  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008AA28  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008AA2C  38 A5 00 7A */	addi r5, r5, 0x7a
/* 8008AA30  38 C0 00 00 */	li r6, 0
/* 8008AA34  4B FF E6 59 */	bl getEvIntData__9dCamera_cFPiPci
/* 8008AA38  7F E3 FB 78 */	mr r3, r31
/* 8008AA3C  38 9F 04 1C */	addi r4, r31, 0x41c
/* 8008AA40  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008AA44  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008AA48  38 A5 00 1E */	addi r5, r5, 0x1e
/* 8008AA4C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8008AA50  4B FF E7 05 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008AA54  7F E3 FB 78 */	mr r3, r31
/* 8008AA58  38 9F 04 20 */	addi r4, r31, 0x420
/* 8008AA5C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008AA60  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008AA64  38 A5 00 23 */	addi r5, r5, 0x23
/* 8008AA68  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 8008AA6C  4B FF E6 E9 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008AA70  98 7F 03 E9 */	stb r3, 0x3e9(r31)
/* 8008AA74  7F E3 FB 78 */	mr r3, r31
/* 8008AA78  38 9F 04 34 */	addi r4, r31, 0x434
/* 8008AA7C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008AA80  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008AA84  38 A5 00 84 */	addi r5, r5, 0x84
/* 8008AA88  C0 22 8E E0 */	lfs f1, lit_5844(r2)
/* 8008AA8C  4B FF E6 C9 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008AA90  7F E3 FB 78 */	mr r3, r31
/* 8008AA94  38 9F 04 38 */	addi r4, r31, 0x438
/* 8008AA98  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008AA9C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008AAA0  38 A5 00 89 */	addi r5, r5, 0x89
/* 8008AAA4  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 8008AAA8  4B FF E6 AD */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008AAAC  38 61 02 A4 */	addi r3, r1, 0x2a4
/* 8008AAB0  38 9F 04 04 */	addi r4, r31, 0x404
/* 8008AAB4  38 BF 04 10 */	addi r5, r31, 0x410
/* 8008AAB8  48 1D C0 7D */	bl __mi__4cXyzCFRC3Vec
/* 8008AABC  38 61 00 74 */	addi r3, r1, 0x74
/* 8008AAC0  38 81 02 A4 */	addi r4, r1, 0x2a4
/* 8008AAC4  48 1E 6D BD */	bl __ct__7cSGlobeFRC4cXyz
/* 8008AAC8  38 61 00 78 */	addi r3, r1, 0x78
/* 8008AACC  48 1E 65 65 */	bl Degree__7cSAngleCFv
/* 8008AAD0  7F E3 FB 78 */	mr r3, r31
/* 8008AAD4  38 9F 04 3C */	addi r4, r31, 0x43c
/* 8008AAD8  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008AADC  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008AAE0  38 A5 00 93 */	addi r5, r5, 0x93
/* 8008AAE4  4B FF E6 71 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008AAE8  7F E3 FB 78 */	mr r3, r31
/* 8008AAEC  38 9F 04 2C */	addi r4, r31, 0x42c
/* 8008AAF0  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008AAF4  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008AAF8  38 C0 FF FF */	li r6, -1
/* 8008AAFC  4B FF E5 91 */	bl getEvIntData__9dCamera_cFPiPci
/* 8008AB00  98 7F 03 E8 */	stb r3, 0x3e8(r31)
/* 8008AB04  7F E3 FB 78 */	mr r3, r31
/* 8008AB08  38 9F 04 28 */	addi r4, r31, 0x428
/* 8008AB0C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008AB10  38 C5 AA F4 */	addi r6, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008AB14  38 A6 00 28 */	addi r5, r6, 0x28
/* 8008AB18  38 C6 00 33 */	addi r6, r6, 0x33
/* 8008AB1C  4B FF E8 21 */	bl getEvStringData__9dCamera_cFPcPcPc
/* 8008AB20  7F E3 FB 78 */	mr r3, r31
/* 8008AB24  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008AB28  38 84 AA F4 */	addi r4, r4, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008AB2C  38 84 00 36 */	addi r4, r4, 0x36
/* 8008AB30  4B FF E9 95 */	bl getEvActor__9dCamera_cFPc
/* 8008AB34  90 7F 04 24 */	stw r3, 0x424(r31)
/* 8008AB38  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008AB3C  28 05 00 00 */	cmplwi r5, 0
/* 8008AB40  41 82 03 E4 */	beq lbl_8008AF24
/* 8008AB44  88 1F 04 28 */	lbz r0, 0x428(r31)
/* 8008AB48  7C 00 07 74 */	extsb r0, r0
/* 8008AB4C  2C 00 00 6F */	cmpwi r0, 0x6f
/* 8008AB50  40 82 00 30 */	bne lbl_8008AB80
/* 8008AB54  38 61 02 98 */	addi r3, r1, 0x298
/* 8008AB58  7F E4 FB 78 */	mr r4, r31
/* 8008AB5C  38 DF 04 10 */	addi r6, r31, 0x410
/* 8008AB60  48 0D A2 0D */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008AB64  C0 01 02 98 */	lfs f0, 0x298(r1)
/* 8008AB68  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 8008AB6C  C0 01 02 9C */	lfs f0, 0x29c(r1)
/* 8008AB70  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 8008AB74  C0 01 02 A0 */	lfs f0, 0x2a0(r1)
/* 8008AB78  D0 1F 04 00 */	stfs f0, 0x400(r31)
/* 8008AB7C  48 00 03 C0 */	b lbl_8008AF3C
lbl_8008AB80:
/* 8008AB80  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8008AB84  40 82 00 A4 */	bne lbl_8008AC28
/* 8008AB88  38 61 02 8C */	addi r3, r1, 0x28c
/* 8008AB8C  7F E4 FB 78 */	mr r4, r31
/* 8008AB90  48 00 CB CD */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008AB94  38 61 02 80 */	addi r3, r1, 0x280
/* 8008AB98  38 9F 00 3C */	addi r4, r31, 0x3c
/* 8008AB9C  38 A1 02 8C */	addi r5, r1, 0x28c
/* 8008ABA0  48 1D BF 95 */	bl __mi__4cXyzCFRC3Vec
/* 8008ABA4  38 61 00 6C */	addi r3, r1, 0x6c
/* 8008ABA8  38 81 02 80 */	addi r4, r1, 0x280
/* 8008ABAC  48 1E 6C D5 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008ABB0  38 61 00 34 */	addi r3, r1, 0x34
/* 8008ABB4  7F E4 FB 78 */	mr r4, r31
/* 8008ABB8  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008ABBC  48 00 CB 7D */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008ABC0  38 61 00 30 */	addi r3, r1, 0x30
/* 8008ABC4  38 81 00 72 */	addi r4, r1, 0x72
/* 8008ABC8  38 A1 00 34 */	addi r5, r1, 0x34
/* 8008ABCC  48 1E 65 D9 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008ABD0  38 61 00 40 */	addi r3, r1, 0x40
/* 8008ABD4  38 81 00 30 */	addi r4, r1, 0x30
/* 8008ABD8  48 1E 63 91 */	bl __ct__7cSAngleFRC7cSAngle
/* 8008ABDC  A8 61 00 40 */	lha r3, 0x40(r1)
/* 8008ABE0  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8008ABE4  7C 03 00 00 */	cmpw r3, r0
/* 8008ABE8  40 80 00 10 */	bge lbl_8008ABF8
/* 8008ABEC  C0 1F 04 10 */	lfs f0, 0x410(r31)
/* 8008ABF0  FC 00 00 50 */	fneg f0, f0
/* 8008ABF4  D0 1F 04 10 */	stfs f0, 0x410(r31)
lbl_8008ABF8:
/* 8008ABF8  38 61 02 74 */	addi r3, r1, 0x274
/* 8008ABFC  7F E4 FB 78 */	mr r4, r31
/* 8008AC00  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008AC04  38 DF 04 10 */	addi r6, r31, 0x410
/* 8008AC08  48 0D A1 65 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008AC0C  C0 01 02 74 */	lfs f0, 0x274(r1)
/* 8008AC10  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 8008AC14  C0 01 02 78 */	lfs f0, 0x278(r1)
/* 8008AC18  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 8008AC1C  C0 01 02 7C */	lfs f0, 0x27c(r1)
/* 8008AC20  D0 1F 04 00 */	stfs f0, 0x400(r31)
/* 8008AC24  48 00 03 18 */	b lbl_8008AF3C
lbl_8008AC28:
/* 8008AC28  2C 00 00 70 */	cmpwi r0, 0x70
/* 8008AC2C  40 82 03 10 */	bne lbl_8008AF3C
/* 8008AC30  38 61 02 68 */	addi r3, r1, 0x268
/* 8008AC34  7F E4 FB 78 */	mr r4, r31
/* 8008AC38  38 DF 04 10 */	addi r6, r31, 0x410
/* 8008AC3C  48 0D A1 31 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008AC40  C0 01 02 68 */	lfs f0, 0x268(r1)
/* 8008AC44  D0 01 02 E0 */	stfs f0, 0x2e0(r1)
/* 8008AC48  C0 01 02 6C */	lfs f0, 0x26c(r1)
/* 8008AC4C  D0 01 02 E4 */	stfs f0, 0x2e4(r1)
/* 8008AC50  C0 01 02 70 */	lfs f0, 0x270(r1)
/* 8008AC54  D0 01 02 E8 */	stfs f0, 0x2e8(r1)
/* 8008AC58  38 61 02 5C */	addi r3, r1, 0x25c
/* 8008AC5C  7F E4 FB 78 */	mr r4, r31
/* 8008AC60  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8008AC64  48 00 CA F9 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008AC68  38 61 02 50 */	addi r3, r1, 0x250
/* 8008AC6C  38 81 02 E0 */	addi r4, r1, 0x2e0
/* 8008AC70  38 A1 02 5C */	addi r5, r1, 0x25c
/* 8008AC74  48 1D BE C1 */	bl __mi__4cXyzCFRC3Vec
/* 8008AC78  C0 01 02 50 */	lfs f0, 0x250(r1)
/* 8008AC7C  D0 01 02 44 */	stfs f0, 0x244(r1)
/* 8008AC80  C0 01 02 54 */	lfs f0, 0x254(r1)
/* 8008AC84  D0 01 02 48 */	stfs f0, 0x248(r1)
/* 8008AC88  C0 01 02 58 */	lfs f0, 0x258(r1)
/* 8008AC8C  D0 01 02 4C */	stfs f0, 0x24c(r1)
/* 8008AC90  38 61 02 44 */	addi r3, r1, 0x244
/* 8008AC94  48 2B C4 A5 */	bl PSVECSquareMag
/* 8008AC98  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 8008AC9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008ACA0  40 81 00 58 */	ble lbl_8008ACF8
/* 8008ACA4  FC 00 08 34 */	frsqrte f0, f1
/* 8008ACA8  C8 82 8E C0 */	lfd f4, lit_5142(r2)
/* 8008ACAC  FC 44 00 32 */	fmul f2, f4, f0
/* 8008ACB0  C8 62 8E C8 */	lfd f3, lit_5143(r2)
/* 8008ACB4  FC 00 00 32 */	fmul f0, f0, f0
/* 8008ACB8  FC 01 00 32 */	fmul f0, f1, f0
/* 8008ACBC  FC 03 00 28 */	fsub f0, f3, f0
/* 8008ACC0  FC 02 00 32 */	fmul f0, f2, f0
/* 8008ACC4  FC 44 00 32 */	fmul f2, f4, f0
/* 8008ACC8  FC 00 00 32 */	fmul f0, f0, f0
/* 8008ACCC  FC 01 00 32 */	fmul f0, f1, f0
/* 8008ACD0  FC 03 00 28 */	fsub f0, f3, f0
/* 8008ACD4  FC 02 00 32 */	fmul f0, f2, f0
/* 8008ACD8  FC 44 00 32 */	fmul f2, f4, f0
/* 8008ACDC  FC 00 00 32 */	fmul f0, f0, f0
/* 8008ACE0  FC 01 00 32 */	fmul f0, f1, f0
/* 8008ACE4  FC 03 00 28 */	fsub f0, f3, f0
/* 8008ACE8  FC 02 00 32 */	fmul f0, f2, f0
/* 8008ACEC  FF E1 00 32 */	fmul f31, f1, f0
/* 8008ACF0  FF E0 F8 18 */	frsp f31, f31
/* 8008ACF4  48 00 00 90 */	b lbl_8008AD84
lbl_8008ACF8:
/* 8008ACF8  C8 02 8E D0 */	lfd f0, lit_5144(r2)
/* 8008ACFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008AD00  40 80 00 10 */	bge lbl_8008AD10
/* 8008AD04  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8008AD08  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8008AD0C  48 00 00 78 */	b lbl_8008AD84
lbl_8008AD10:
/* 8008AD10  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8008AD14  80 81 00 58 */	lwz r4, 0x58(r1)
/* 8008AD18  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8008AD1C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8008AD20  7C 03 00 00 */	cmpw r3, r0
/* 8008AD24  41 82 00 14 */	beq lbl_8008AD38
/* 8008AD28  40 80 00 40 */	bge lbl_8008AD68
/* 8008AD2C  2C 03 00 00 */	cmpwi r3, 0
/* 8008AD30  41 82 00 20 */	beq lbl_8008AD50
/* 8008AD34  48 00 00 34 */	b lbl_8008AD68
lbl_8008AD38:
/* 8008AD38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008AD3C  41 82 00 0C */	beq lbl_8008AD48
/* 8008AD40  38 00 00 01 */	li r0, 1
/* 8008AD44  48 00 00 28 */	b lbl_8008AD6C
lbl_8008AD48:
/* 8008AD48  38 00 00 02 */	li r0, 2
/* 8008AD4C  48 00 00 20 */	b lbl_8008AD6C
lbl_8008AD50:
/* 8008AD50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008AD54  41 82 00 0C */	beq lbl_8008AD60
/* 8008AD58  38 00 00 05 */	li r0, 5
/* 8008AD5C  48 00 00 10 */	b lbl_8008AD6C
lbl_8008AD60:
/* 8008AD60  38 00 00 03 */	li r0, 3
/* 8008AD64  48 00 00 08 */	b lbl_8008AD6C
lbl_8008AD68:
/* 8008AD68  38 00 00 04 */	li r0, 4
lbl_8008AD6C:
/* 8008AD6C  2C 00 00 01 */	cmpwi r0, 1
/* 8008AD70  40 82 00 10 */	bne lbl_8008AD80
/* 8008AD74  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8008AD78  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8008AD7C  48 00 00 08 */	b lbl_8008AD84
lbl_8008AD80:
/* 8008AD80  FF E0 08 90 */	fmr f31, f1
lbl_8008AD84:
/* 8008AD84  C0 1F 04 10 */	lfs f0, 0x410(r31)
/* 8008AD88  FC 00 00 50 */	fneg f0, f0
/* 8008AD8C  D0 1F 04 10 */	stfs f0, 0x410(r31)
/* 8008AD90  38 61 02 38 */	addi r3, r1, 0x238
/* 8008AD94  7F E4 FB 78 */	mr r4, r31
/* 8008AD98  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008AD9C  38 DF 04 10 */	addi r6, r31, 0x410
/* 8008ADA0  48 0D 9F CD */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008ADA4  C0 01 02 38 */	lfs f0, 0x238(r1)
/* 8008ADA8  D0 01 02 E0 */	stfs f0, 0x2e0(r1)
/* 8008ADAC  C0 01 02 3C */	lfs f0, 0x23c(r1)
/* 8008ADB0  D0 01 02 E4 */	stfs f0, 0x2e4(r1)
/* 8008ADB4  C0 01 02 40 */	lfs f0, 0x240(r1)
/* 8008ADB8  D0 01 02 E8 */	stfs f0, 0x2e8(r1)
/* 8008ADBC  38 61 02 2C */	addi r3, r1, 0x22c
/* 8008ADC0  7F E4 FB 78 */	mr r4, r31
/* 8008ADC4  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8008ADC8  48 00 C9 95 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008ADCC  38 61 02 20 */	addi r3, r1, 0x220
/* 8008ADD0  38 81 02 E0 */	addi r4, r1, 0x2e0
/* 8008ADD4  38 A1 02 2C */	addi r5, r1, 0x22c
/* 8008ADD8  48 1D BD 5D */	bl __mi__4cXyzCFRC3Vec
/* 8008ADDC  C0 01 02 20 */	lfs f0, 0x220(r1)
/* 8008ADE0  D0 01 02 14 */	stfs f0, 0x214(r1)
/* 8008ADE4  C0 01 02 24 */	lfs f0, 0x224(r1)
/* 8008ADE8  D0 01 02 18 */	stfs f0, 0x218(r1)
/* 8008ADEC  C0 01 02 28 */	lfs f0, 0x228(r1)
/* 8008ADF0  D0 01 02 1C */	stfs f0, 0x21c(r1)
/* 8008ADF4  38 61 02 14 */	addi r3, r1, 0x214
/* 8008ADF8  48 2B C3 41 */	bl PSVECSquareMag
/* 8008ADFC  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 8008AE00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008AE04  40 81 00 58 */	ble lbl_8008AE5C
/* 8008AE08  FC 00 08 34 */	frsqrte f0, f1
/* 8008AE0C  C8 82 8E C0 */	lfd f4, lit_5142(r2)
/* 8008AE10  FC 44 00 32 */	fmul f2, f4, f0
/* 8008AE14  C8 62 8E C8 */	lfd f3, lit_5143(r2)
/* 8008AE18  FC 00 00 32 */	fmul f0, f0, f0
/* 8008AE1C  FC 01 00 32 */	fmul f0, f1, f0
/* 8008AE20  FC 03 00 28 */	fsub f0, f3, f0
/* 8008AE24  FC 02 00 32 */	fmul f0, f2, f0
/* 8008AE28  FC 44 00 32 */	fmul f2, f4, f0
/* 8008AE2C  FC 00 00 32 */	fmul f0, f0, f0
/* 8008AE30  FC 01 00 32 */	fmul f0, f1, f0
/* 8008AE34  FC 03 00 28 */	fsub f0, f3, f0
/* 8008AE38  FC 02 00 32 */	fmul f0, f2, f0
/* 8008AE3C  FC 44 00 32 */	fmul f2, f4, f0
/* 8008AE40  FC 00 00 32 */	fmul f0, f0, f0
/* 8008AE44  FC 01 00 32 */	fmul f0, f1, f0
/* 8008AE48  FC 03 00 28 */	fsub f0, f3, f0
/* 8008AE4C  FC 02 00 32 */	fmul f0, f2, f0
/* 8008AE50  FC 21 00 32 */	fmul f1, f1, f0
/* 8008AE54  FC 20 08 18 */	frsp f1, f1
/* 8008AE58  48 00 00 88 */	b lbl_8008AEE0
lbl_8008AE5C:
/* 8008AE5C  C8 02 8E D0 */	lfd f0, lit_5144(r2)
/* 8008AE60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008AE64  40 80 00 10 */	bge lbl_8008AE74
/* 8008AE68  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8008AE6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8008AE70  48 00 00 70 */	b lbl_8008AEE0
lbl_8008AE74:
/* 8008AE74  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8008AE78  80 81 00 54 */	lwz r4, 0x54(r1)
/* 8008AE7C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8008AE80  3C 00 7F 80 */	lis r0, 0x7f80
/* 8008AE84  7C 03 00 00 */	cmpw r3, r0
/* 8008AE88  41 82 00 14 */	beq lbl_8008AE9C
/* 8008AE8C  40 80 00 40 */	bge lbl_8008AECC
/* 8008AE90  2C 03 00 00 */	cmpwi r3, 0
/* 8008AE94  41 82 00 20 */	beq lbl_8008AEB4
/* 8008AE98  48 00 00 34 */	b lbl_8008AECC
lbl_8008AE9C:
/* 8008AE9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008AEA0  41 82 00 0C */	beq lbl_8008AEAC
/* 8008AEA4  38 00 00 01 */	li r0, 1
/* 8008AEA8  48 00 00 28 */	b lbl_8008AED0
lbl_8008AEAC:
/* 8008AEAC  38 00 00 02 */	li r0, 2
/* 8008AEB0  48 00 00 20 */	b lbl_8008AED0
lbl_8008AEB4:
/* 8008AEB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008AEB8  41 82 00 0C */	beq lbl_8008AEC4
/* 8008AEBC  38 00 00 05 */	li r0, 5
/* 8008AEC0  48 00 00 10 */	b lbl_8008AED0
lbl_8008AEC4:
/* 8008AEC4  38 00 00 03 */	li r0, 3
/* 8008AEC8  48 00 00 08 */	b lbl_8008AED0
lbl_8008AECC:
/* 8008AECC  38 00 00 04 */	li r0, 4
lbl_8008AED0:
/* 8008AED0  2C 00 00 01 */	cmpwi r0, 1
/* 8008AED4  40 82 00 0C */	bne lbl_8008AEE0
/* 8008AED8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8008AEDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8008AEE0:
/* 8008AEE0  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8008AEE4  40 81 00 10 */	ble lbl_8008AEF4
/* 8008AEE8  C0 1F 04 10 */	lfs f0, 0x410(r31)
/* 8008AEEC  FC 00 00 50 */	fneg f0, f0
/* 8008AEF0  D0 1F 04 10 */	stfs f0, 0x410(r31)
lbl_8008AEF4:
/* 8008AEF4  38 61 02 08 */	addi r3, r1, 0x208
/* 8008AEF8  7F E4 FB 78 */	mr r4, r31
/* 8008AEFC  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008AF00  38 DF 04 10 */	addi r6, r31, 0x410
/* 8008AF04  48 0D 9E 69 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008AF08  C0 01 02 08 */	lfs f0, 0x208(r1)
/* 8008AF0C  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 8008AF10  C0 01 02 0C */	lfs f0, 0x20c(r1)
/* 8008AF14  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 8008AF18  C0 01 02 10 */	lfs f0, 0x210(r1)
/* 8008AF1C  D0 1F 04 00 */	stfs f0, 0x400(r31)
/* 8008AF20  48 00 00 1C */	b lbl_8008AF3C
lbl_8008AF24:
/* 8008AF24  C0 1F 04 10 */	lfs f0, 0x410(r31)
/* 8008AF28  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 8008AF2C  C0 1F 04 14 */	lfs f0, 0x414(r31)
/* 8008AF30  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 8008AF34  C0 1F 04 18 */	lfs f0, 0x418(r31)
/* 8008AF38  D0 1F 04 00 */	stfs f0, 0x400(r31)
lbl_8008AF3C:
/* 8008AF3C  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008AF40  28 05 00 00 */	cmplwi r5, 0
/* 8008AF44  41 82 00 3C */	beq lbl_8008AF80
/* 8008AF48  88 1F 04 29 */	lbz r0, 0x429(r31)
/* 8008AF4C  2C 00 00 6F */	cmpwi r0, 0x6f
/* 8008AF50  40 82 00 30 */	bne lbl_8008AF80
/* 8008AF54  38 61 01 FC */	addi r3, r1, 0x1fc
/* 8008AF58  7F E4 FB 78 */	mr r4, r31
/* 8008AF5C  38 DF 04 04 */	addi r6, r31, 0x404
/* 8008AF60  48 0D 9E 0D */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008AF64  C0 01 01 FC */	lfs f0, 0x1fc(r1)
/* 8008AF68  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 8008AF6C  C0 01 02 00 */	lfs f0, 0x200(r1)
/* 8008AF70  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 8008AF74  C0 01 02 04 */	lfs f0, 0x204(r1)
/* 8008AF78  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 8008AF7C  48 00 04 78 */	b lbl_8008B3F4
lbl_8008AF80:
/* 8008AF80  28 05 00 00 */	cmplwi r5, 0
/* 8008AF84  41 82 00 AC */	beq lbl_8008B030
/* 8008AF88  88 1F 04 29 */	lbz r0, 0x429(r31)
/* 8008AF8C  2C 00 00 72 */	cmpwi r0, 0x72
/* 8008AF90  40 82 00 A0 */	bne lbl_8008B030
/* 8008AF94  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 8008AF98  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8008AF9C  41 82 00 10 */	beq lbl_8008AFAC
/* 8008AFA0  C0 1F 04 04 */	lfs f0, 0x404(r31)
/* 8008AFA4  FC 00 00 50 */	fneg f0, f0
/* 8008AFA8  D0 1F 04 04 */	stfs f0, 0x404(r31)
lbl_8008AFAC:
/* 8008AFAC  38 61 01 F0 */	addi r3, r1, 0x1f0
/* 8008AFB0  7F E4 FB 78 */	mr r4, r31
/* 8008AFB4  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008AFB8  38 DF 04 04 */	addi r6, r31, 0x404
/* 8008AFBC  48 0D 9D B1 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008AFC0  C0 01 01 F0 */	lfs f0, 0x1f0(r1)
/* 8008AFC4  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 8008AFC8  C0 01 01 F4 */	lfs f0, 0x1f4(r1)
/* 8008AFCC  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 8008AFD0  C0 01 01 F8 */	lfs f0, 0x1f8(r1)
/* 8008AFD4  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 8008AFD8  7F E3 FB 78 */	mr r3, r31
/* 8008AFDC  38 9F 03 F8 */	addi r4, r31, 0x3f8
/* 8008AFE0  38 BF 03 EC */	addi r5, r31, 0x3ec
/* 8008AFE4  38 C0 40 07 */	li r6, 0x4007
/* 8008AFE8  48 0D AB 09 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8008AFEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008AFF0  41 82 00 10 */	beq lbl_8008B000
/* 8008AFF4  C0 1F 04 04 */	lfs f0, 0x404(r31)
/* 8008AFF8  FC 00 00 50 */	fneg f0, f0
/* 8008AFFC  D0 1F 04 04 */	stfs f0, 0x404(r31)
lbl_8008B000:
/* 8008B000  38 61 01 E4 */	addi r3, r1, 0x1e4
/* 8008B004  7F E4 FB 78 */	mr r4, r31
/* 8008B008  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008B00C  38 DF 04 04 */	addi r6, r31, 0x404
/* 8008B010  48 0D 9D 5D */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008B014  C0 01 01 E4 */	lfs f0, 0x1e4(r1)
/* 8008B018  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 8008B01C  C0 01 01 E8 */	lfs f0, 0x1e8(r1)
/* 8008B020  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 8008B024  C0 01 01 EC */	lfs f0, 0x1ec(r1)
/* 8008B028  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 8008B02C  48 00 03 C8 */	b lbl_8008B3F4
lbl_8008B030:
/* 8008B030  88 1F 04 29 */	lbz r0, 0x429(r31)
/* 8008B034  7C 00 07 74 */	extsb r0, r0
/* 8008B038  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8008B03C  40 82 00 A4 */	bne lbl_8008B0E0
/* 8008B040  38 61 01 D8 */	addi r3, r1, 0x1d8
/* 8008B044  7F E4 FB 78 */	mr r4, r31
/* 8008B048  48 00 C7 15 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008B04C  38 61 01 CC */	addi r3, r1, 0x1cc
/* 8008B050  38 9F 00 3C */	addi r4, r31, 0x3c
/* 8008B054  38 A1 01 D8 */	addi r5, r1, 0x1d8
/* 8008B058  48 1D BA DD */	bl __mi__4cXyzCFRC3Vec
/* 8008B05C  38 61 00 64 */	addi r3, r1, 0x64
/* 8008B060  38 81 01 CC */	addi r4, r1, 0x1cc
/* 8008B064  48 1E 68 1D */	bl __ct__7cSGlobeFRC4cXyz
/* 8008B068  38 61 00 2C */	addi r3, r1, 0x2c
/* 8008B06C  7F E4 FB 78 */	mr r4, r31
/* 8008B070  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008B074  48 00 C6 C5 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008B078  38 61 00 28 */	addi r3, r1, 0x28
/* 8008B07C  38 81 00 6A */	addi r4, r1, 0x6a
/* 8008B080  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8008B084  48 1E 61 21 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008B088  38 61 00 3C */	addi r3, r1, 0x3c
/* 8008B08C  38 81 00 28 */	addi r4, r1, 0x28
/* 8008B090  48 1E 5E D9 */	bl __ct__7cSAngleFRC7cSAngle
/* 8008B094  A8 61 00 3C */	lha r3, 0x3c(r1)
/* 8008B098  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8008B09C  7C 03 00 00 */	cmpw r3, r0
/* 8008B0A0  40 80 00 10 */	bge lbl_8008B0B0
/* 8008B0A4  C0 1F 04 04 */	lfs f0, 0x404(r31)
/* 8008B0A8  FC 00 00 50 */	fneg f0, f0
/* 8008B0AC  D0 1F 04 04 */	stfs f0, 0x404(r31)
lbl_8008B0B0:
/* 8008B0B0  38 61 01 C0 */	addi r3, r1, 0x1c0
/* 8008B0B4  7F E4 FB 78 */	mr r4, r31
/* 8008B0B8  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008B0BC  38 DF 04 04 */	addi r6, r31, 0x404
/* 8008B0C0  48 0D 9C AD */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008B0C4  C0 01 01 C0 */	lfs f0, 0x1c0(r1)
/* 8008B0C8  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 8008B0CC  C0 01 01 C4 */	lfs f0, 0x1c4(r1)
/* 8008B0D0  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 8008B0D4  C0 01 01 C8 */	lfs f0, 0x1c8(r1)
/* 8008B0D8  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 8008B0DC  48 00 03 18 */	b lbl_8008B3F4
lbl_8008B0E0:
/* 8008B0E0  2C 00 00 70 */	cmpwi r0, 0x70
/* 8008B0E4  40 82 02 F8 */	bne lbl_8008B3DC
/* 8008B0E8  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 8008B0EC  7F E4 FB 78 */	mr r4, r31
/* 8008B0F0  38 DF 04 04 */	addi r6, r31, 0x404
/* 8008B0F4  48 0D 9C 79 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008B0F8  C0 01 01 B4 */	lfs f0, 0x1b4(r1)
/* 8008B0FC  D0 01 02 D4 */	stfs f0, 0x2d4(r1)
/* 8008B100  C0 01 01 B8 */	lfs f0, 0x1b8(r1)
/* 8008B104  D0 01 02 D8 */	stfs f0, 0x2d8(r1)
/* 8008B108  C0 01 01 BC */	lfs f0, 0x1bc(r1)
/* 8008B10C  D0 01 02 DC */	stfs f0, 0x2dc(r1)
/* 8008B110  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 8008B114  7F E4 FB 78 */	mr r4, r31
/* 8008B118  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8008B11C  48 00 C6 41 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008B120  38 61 01 9C */	addi r3, r1, 0x19c
/* 8008B124  38 81 02 D4 */	addi r4, r1, 0x2d4
/* 8008B128  38 A1 01 A8 */	addi r5, r1, 0x1a8
/* 8008B12C  48 1D BA 09 */	bl __mi__4cXyzCFRC3Vec
/* 8008B130  C0 01 01 9C */	lfs f0, 0x19c(r1)
/* 8008B134  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 8008B138  C0 01 01 A0 */	lfs f0, 0x1a0(r1)
/* 8008B13C  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 8008B140  C0 01 01 A4 */	lfs f0, 0x1a4(r1)
/* 8008B144  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 8008B148  38 61 01 90 */	addi r3, r1, 0x190
/* 8008B14C  48 2B BF ED */	bl PSVECSquareMag
/* 8008B150  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 8008B154  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008B158  40 81 00 58 */	ble lbl_8008B1B0
/* 8008B15C  FC 00 08 34 */	frsqrte f0, f1
/* 8008B160  C8 82 8E C0 */	lfd f4, lit_5142(r2)
/* 8008B164  FC 44 00 32 */	fmul f2, f4, f0
/* 8008B168  C8 62 8E C8 */	lfd f3, lit_5143(r2)
/* 8008B16C  FC 00 00 32 */	fmul f0, f0, f0
/* 8008B170  FC 01 00 32 */	fmul f0, f1, f0
/* 8008B174  FC 03 00 28 */	fsub f0, f3, f0
/* 8008B178  FC 02 00 32 */	fmul f0, f2, f0
/* 8008B17C  FC 44 00 32 */	fmul f2, f4, f0
/* 8008B180  FC 00 00 32 */	fmul f0, f0, f0
/* 8008B184  FC 01 00 32 */	fmul f0, f1, f0
/* 8008B188  FC 03 00 28 */	fsub f0, f3, f0
/* 8008B18C  FC 02 00 32 */	fmul f0, f2, f0
/* 8008B190  FC 44 00 32 */	fmul f2, f4, f0
/* 8008B194  FC 00 00 32 */	fmul f0, f0, f0
/* 8008B198  FC 01 00 32 */	fmul f0, f1, f0
/* 8008B19C  FC 03 00 28 */	fsub f0, f3, f0
/* 8008B1A0  FC 02 00 32 */	fmul f0, f2, f0
/* 8008B1A4  FF E1 00 32 */	fmul f31, f1, f0
/* 8008B1A8  FF E0 F8 18 */	frsp f31, f31
/* 8008B1AC  48 00 00 90 */	b lbl_8008B23C
lbl_8008B1B0:
/* 8008B1B0  C8 02 8E D0 */	lfd f0, lit_5144(r2)
/* 8008B1B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008B1B8  40 80 00 10 */	bge lbl_8008B1C8
/* 8008B1BC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8008B1C0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8008B1C4  48 00 00 78 */	b lbl_8008B23C
lbl_8008B1C8:
/* 8008B1C8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8008B1CC  80 81 00 50 */	lwz r4, 0x50(r1)
/* 8008B1D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8008B1D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8008B1D8  7C 03 00 00 */	cmpw r3, r0
/* 8008B1DC  41 82 00 14 */	beq lbl_8008B1F0
/* 8008B1E0  40 80 00 40 */	bge lbl_8008B220
/* 8008B1E4  2C 03 00 00 */	cmpwi r3, 0
/* 8008B1E8  41 82 00 20 */	beq lbl_8008B208
/* 8008B1EC  48 00 00 34 */	b lbl_8008B220
lbl_8008B1F0:
/* 8008B1F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008B1F4  41 82 00 0C */	beq lbl_8008B200
/* 8008B1F8  38 00 00 01 */	li r0, 1
/* 8008B1FC  48 00 00 28 */	b lbl_8008B224
lbl_8008B200:
/* 8008B200  38 00 00 02 */	li r0, 2
/* 8008B204  48 00 00 20 */	b lbl_8008B224
lbl_8008B208:
/* 8008B208  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008B20C  41 82 00 0C */	beq lbl_8008B218
/* 8008B210  38 00 00 05 */	li r0, 5
/* 8008B214  48 00 00 10 */	b lbl_8008B224
lbl_8008B218:
/* 8008B218  38 00 00 03 */	li r0, 3
/* 8008B21C  48 00 00 08 */	b lbl_8008B224
lbl_8008B220:
/* 8008B220  38 00 00 04 */	li r0, 4
lbl_8008B224:
/* 8008B224  2C 00 00 01 */	cmpwi r0, 1
/* 8008B228  40 82 00 10 */	bne lbl_8008B238
/* 8008B22C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8008B230  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8008B234  48 00 00 08 */	b lbl_8008B23C
lbl_8008B238:
/* 8008B238  FF E0 08 90 */	fmr f31, f1
lbl_8008B23C:
/* 8008B23C  C0 1F 04 04 */	lfs f0, 0x404(r31)
/* 8008B240  FC 00 00 50 */	fneg f0, f0
/* 8008B244  D0 1F 04 04 */	stfs f0, 0x404(r31)
/* 8008B248  38 61 01 84 */	addi r3, r1, 0x184
/* 8008B24C  7F E4 FB 78 */	mr r4, r31
/* 8008B250  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008B254  38 DF 04 04 */	addi r6, r31, 0x404
/* 8008B258  48 0D 9B 15 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008B25C  C0 01 01 84 */	lfs f0, 0x184(r1)
/* 8008B260  D0 01 02 D4 */	stfs f0, 0x2d4(r1)
/* 8008B264  C0 01 01 88 */	lfs f0, 0x188(r1)
/* 8008B268  D0 01 02 D8 */	stfs f0, 0x2d8(r1)
/* 8008B26C  C0 01 01 8C */	lfs f0, 0x18c(r1)
/* 8008B270  D0 01 02 DC */	stfs f0, 0x2dc(r1)
/* 8008B274  38 61 01 78 */	addi r3, r1, 0x178
/* 8008B278  7F E4 FB 78 */	mr r4, r31
/* 8008B27C  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8008B280  48 00 C4 DD */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008B284  38 61 01 6C */	addi r3, r1, 0x16c
/* 8008B288  38 81 02 D4 */	addi r4, r1, 0x2d4
/* 8008B28C  38 A1 01 78 */	addi r5, r1, 0x178
/* 8008B290  48 1D B8 A5 */	bl __mi__4cXyzCFRC3Vec
/* 8008B294  C0 01 01 6C */	lfs f0, 0x16c(r1)
/* 8008B298  D0 01 01 60 */	stfs f0, 0x160(r1)
/* 8008B29C  C0 01 01 70 */	lfs f0, 0x170(r1)
/* 8008B2A0  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 8008B2A4  C0 01 01 74 */	lfs f0, 0x174(r1)
/* 8008B2A8  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 8008B2AC  38 61 01 60 */	addi r3, r1, 0x160
/* 8008B2B0  48 2B BE 89 */	bl PSVECSquareMag
/* 8008B2B4  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 8008B2B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008B2BC  40 81 00 58 */	ble lbl_8008B314
/* 8008B2C0  FC 00 08 34 */	frsqrte f0, f1
/* 8008B2C4  C8 82 8E C0 */	lfd f4, lit_5142(r2)
/* 8008B2C8  FC 44 00 32 */	fmul f2, f4, f0
/* 8008B2CC  C8 62 8E C8 */	lfd f3, lit_5143(r2)
/* 8008B2D0  FC 00 00 32 */	fmul f0, f0, f0
/* 8008B2D4  FC 01 00 32 */	fmul f0, f1, f0
/* 8008B2D8  FC 03 00 28 */	fsub f0, f3, f0
/* 8008B2DC  FC 02 00 32 */	fmul f0, f2, f0
/* 8008B2E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8008B2E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8008B2E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8008B2EC  FC 03 00 28 */	fsub f0, f3, f0
/* 8008B2F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8008B2F4  FC 44 00 32 */	fmul f2, f4, f0
/* 8008B2F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8008B2FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8008B300  FC 03 00 28 */	fsub f0, f3, f0
/* 8008B304  FC 02 00 32 */	fmul f0, f2, f0
/* 8008B308  FC 21 00 32 */	fmul f1, f1, f0
/* 8008B30C  FC 20 08 18 */	frsp f1, f1
/* 8008B310  48 00 00 88 */	b lbl_8008B398
lbl_8008B314:
/* 8008B314  C8 02 8E D0 */	lfd f0, lit_5144(r2)
/* 8008B318  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008B31C  40 80 00 10 */	bge lbl_8008B32C
/* 8008B320  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8008B324  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8008B328  48 00 00 70 */	b lbl_8008B398
lbl_8008B32C:
/* 8008B32C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8008B330  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 8008B334  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8008B338  3C 00 7F 80 */	lis r0, 0x7f80
/* 8008B33C  7C 03 00 00 */	cmpw r3, r0
/* 8008B340  41 82 00 14 */	beq lbl_8008B354
/* 8008B344  40 80 00 40 */	bge lbl_8008B384
/* 8008B348  2C 03 00 00 */	cmpwi r3, 0
/* 8008B34C  41 82 00 20 */	beq lbl_8008B36C
/* 8008B350  48 00 00 34 */	b lbl_8008B384
lbl_8008B354:
/* 8008B354  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008B358  41 82 00 0C */	beq lbl_8008B364
/* 8008B35C  38 00 00 01 */	li r0, 1
/* 8008B360  48 00 00 28 */	b lbl_8008B388
lbl_8008B364:
/* 8008B364  38 00 00 02 */	li r0, 2
/* 8008B368  48 00 00 20 */	b lbl_8008B388
lbl_8008B36C:
/* 8008B36C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008B370  41 82 00 0C */	beq lbl_8008B37C
/* 8008B374  38 00 00 05 */	li r0, 5
/* 8008B378  48 00 00 10 */	b lbl_8008B388
lbl_8008B37C:
/* 8008B37C  38 00 00 03 */	li r0, 3
/* 8008B380  48 00 00 08 */	b lbl_8008B388
lbl_8008B384:
/* 8008B384  38 00 00 04 */	li r0, 4
lbl_8008B388:
/* 8008B388  2C 00 00 01 */	cmpwi r0, 1
/* 8008B38C  40 82 00 0C */	bne lbl_8008B398
/* 8008B390  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8008B394  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8008B398:
/* 8008B398  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8008B39C  40 81 00 10 */	ble lbl_8008B3AC
/* 8008B3A0  C0 1F 04 04 */	lfs f0, 0x404(r31)
/* 8008B3A4  FC 00 00 50 */	fneg f0, f0
/* 8008B3A8  D0 1F 04 04 */	stfs f0, 0x404(r31)
lbl_8008B3AC:
/* 8008B3AC  38 61 01 54 */	addi r3, r1, 0x154
/* 8008B3B0  7F E4 FB 78 */	mr r4, r31
/* 8008B3B4  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008B3B8  38 DF 04 04 */	addi r6, r31, 0x404
/* 8008B3BC  48 0D 99 B1 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008B3C0  C0 01 01 54 */	lfs f0, 0x154(r1)
/* 8008B3C4  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 8008B3C8  C0 01 01 58 */	lfs f0, 0x158(r1)
/* 8008B3CC  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 8008B3D0  C0 01 01 5C */	lfs f0, 0x15c(r1)
/* 8008B3D4  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 8008B3D8  48 00 00 1C */	b lbl_8008B3F4
lbl_8008B3DC:
/* 8008B3DC  C0 1F 04 04 */	lfs f0, 0x404(r31)
/* 8008B3E0  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 8008B3E4  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 8008B3E8  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 8008B3EC  C0 1F 04 0C */	lfs f0, 0x40c(r31)
/* 8008B3F0  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
lbl_8008B3F4:
/* 8008B3F4  38 00 00 01 */	li r0, 1
/* 8008B3F8  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_8008B3FC:
/* 8008B3FC  80 1F 04 30 */	lwz r0, 0x430(r31)
/* 8008B400  2C 00 00 01 */	cmpwi r0, 1
/* 8008B404  41 82 00 0C */	beq lbl_8008B410
/* 8008B408  2C 00 00 02 */	cmpwi r0, 2
/* 8008B40C  40 82 03 EC */	bne lbl_8008B7F8
lbl_8008B410:
/* 8008B410  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008B414  28 05 00 00 */	cmplwi r5, 0
/* 8008B418  41 82 03 E0 */	beq lbl_8008B7F8
/* 8008B41C  88 1F 04 28 */	lbz r0, 0x428(r31)
/* 8008B420  7C 00 07 74 */	extsb r0, r0
/* 8008B424  2C 00 00 6F */	cmpwi r0, 0x6f
/* 8008B428  40 82 00 30 */	bne lbl_8008B458
/* 8008B42C  38 61 01 48 */	addi r3, r1, 0x148
/* 8008B430  7F E4 FB 78 */	mr r4, r31
/* 8008B434  38 DF 04 10 */	addi r6, r31, 0x410
/* 8008B438  48 0D 99 35 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008B43C  C0 01 01 48 */	lfs f0, 0x148(r1)
/* 8008B440  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 8008B444  C0 01 01 4C */	lfs f0, 0x14c(r1)
/* 8008B448  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 8008B44C  C0 01 01 50 */	lfs f0, 0x150(r1)
/* 8008B450  D0 1F 04 00 */	stfs f0, 0x400(r31)
/* 8008B454  48 00 03 A4 */	b lbl_8008B7F8
lbl_8008B458:
/* 8008B458  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8008B45C  40 82 00 A4 */	bne lbl_8008B500
/* 8008B460  38 61 01 3C */	addi r3, r1, 0x13c
/* 8008B464  7F E4 FB 78 */	mr r4, r31
/* 8008B468  48 00 C2 F5 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008B46C  38 61 01 30 */	addi r3, r1, 0x130
/* 8008B470  38 9F 00 3C */	addi r4, r31, 0x3c
/* 8008B474  38 A1 01 3C */	addi r5, r1, 0x13c
/* 8008B478  48 1D B6 BD */	bl __mi__4cXyzCFRC3Vec
/* 8008B47C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8008B480  38 81 01 30 */	addi r4, r1, 0x130
/* 8008B484  48 1E 63 FD */	bl __ct__7cSGlobeFRC4cXyz
/* 8008B488  38 61 00 24 */	addi r3, r1, 0x24
/* 8008B48C  7F E4 FB 78 */	mr r4, r31
/* 8008B490  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008B494  48 00 C2 A5 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008B498  38 61 00 20 */	addi r3, r1, 0x20
/* 8008B49C  38 81 00 62 */	addi r4, r1, 0x62
/* 8008B4A0  38 A1 00 24 */	addi r5, r1, 0x24
/* 8008B4A4  48 1E 5D 01 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008B4A8  38 61 00 38 */	addi r3, r1, 0x38
/* 8008B4AC  38 81 00 20 */	addi r4, r1, 0x20
/* 8008B4B0  48 1E 5A B9 */	bl __ct__7cSAngleFRC7cSAngle
/* 8008B4B4  A8 61 00 38 */	lha r3, 0x38(r1)
/* 8008B4B8  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8008B4BC  7C 03 00 00 */	cmpw r3, r0
/* 8008B4C0  40 80 00 10 */	bge lbl_8008B4D0
/* 8008B4C4  C0 1F 04 10 */	lfs f0, 0x410(r31)
/* 8008B4C8  FC 00 00 50 */	fneg f0, f0
/* 8008B4CC  D0 1F 04 10 */	stfs f0, 0x410(r31)
lbl_8008B4D0:
/* 8008B4D0  38 61 01 24 */	addi r3, r1, 0x124
/* 8008B4D4  7F E4 FB 78 */	mr r4, r31
/* 8008B4D8  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008B4DC  38 DF 04 10 */	addi r6, r31, 0x410
/* 8008B4E0  48 0D 98 8D */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008B4E4  C0 01 01 24 */	lfs f0, 0x124(r1)
/* 8008B4E8  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 8008B4EC  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 8008B4F0  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 8008B4F4  C0 01 01 2C */	lfs f0, 0x12c(r1)
/* 8008B4F8  D0 1F 04 00 */	stfs f0, 0x400(r31)
/* 8008B4FC  48 00 02 FC */	b lbl_8008B7F8
lbl_8008B500:
/* 8008B500  2C 00 00 70 */	cmpwi r0, 0x70
/* 8008B504  40 82 02 F4 */	bne lbl_8008B7F8
/* 8008B508  38 61 01 18 */	addi r3, r1, 0x118
/* 8008B50C  7F E4 FB 78 */	mr r4, r31
/* 8008B510  38 DF 04 10 */	addi r6, r31, 0x410
/* 8008B514  48 0D 98 59 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008B518  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 8008B51C  D0 01 02 C8 */	stfs f0, 0x2c8(r1)
/* 8008B520  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 8008B524  D0 01 02 CC */	stfs f0, 0x2cc(r1)
/* 8008B528  C0 01 01 20 */	lfs f0, 0x120(r1)
/* 8008B52C  D0 01 02 D0 */	stfs f0, 0x2d0(r1)
/* 8008B530  38 61 01 0C */	addi r3, r1, 0x10c
/* 8008B534  7F E4 FB 78 */	mr r4, r31
/* 8008B538  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8008B53C  48 00 C2 21 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008B540  38 61 01 00 */	addi r3, r1, 0x100
/* 8008B544  38 81 02 C8 */	addi r4, r1, 0x2c8
/* 8008B548  38 A1 01 0C */	addi r5, r1, 0x10c
/* 8008B54C  48 1D B5 E9 */	bl __mi__4cXyzCFRC3Vec
/* 8008B550  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 8008B554  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 8008B558  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 8008B55C  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 8008B560  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 8008B564  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8008B568  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8008B56C  48 2B BB CD */	bl PSVECSquareMag
/* 8008B570  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 8008B574  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008B578  40 81 00 58 */	ble lbl_8008B5D0
/* 8008B57C  FC 00 08 34 */	frsqrte f0, f1
/* 8008B580  C8 82 8E C0 */	lfd f4, lit_5142(r2)
/* 8008B584  FC 44 00 32 */	fmul f2, f4, f0
/* 8008B588  C8 62 8E C8 */	lfd f3, lit_5143(r2)
/* 8008B58C  FC 00 00 32 */	fmul f0, f0, f0
/* 8008B590  FC 01 00 32 */	fmul f0, f1, f0
/* 8008B594  FC 03 00 28 */	fsub f0, f3, f0
/* 8008B598  FC 02 00 32 */	fmul f0, f2, f0
/* 8008B59C  FC 44 00 32 */	fmul f2, f4, f0
/* 8008B5A0  FC 00 00 32 */	fmul f0, f0, f0
/* 8008B5A4  FC 01 00 32 */	fmul f0, f1, f0
/* 8008B5A8  FC 03 00 28 */	fsub f0, f3, f0
/* 8008B5AC  FC 02 00 32 */	fmul f0, f2, f0
/* 8008B5B0  FC 44 00 32 */	fmul f2, f4, f0
/* 8008B5B4  FC 00 00 32 */	fmul f0, f0, f0
/* 8008B5B8  FC 01 00 32 */	fmul f0, f1, f0
/* 8008B5BC  FC 03 00 28 */	fsub f0, f3, f0
/* 8008B5C0  FC 02 00 32 */	fmul f0, f2, f0
/* 8008B5C4  FF E1 00 32 */	fmul f31, f1, f0
/* 8008B5C8  FF E0 F8 18 */	frsp f31, f31
/* 8008B5CC  48 00 00 90 */	b lbl_8008B65C
lbl_8008B5D0:
/* 8008B5D0  C8 02 8E D0 */	lfd f0, lit_5144(r2)
/* 8008B5D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008B5D8  40 80 00 10 */	bge lbl_8008B5E8
/* 8008B5DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8008B5E0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8008B5E4  48 00 00 78 */	b lbl_8008B65C
lbl_8008B5E8:
/* 8008B5E8  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8008B5EC  80 81 00 48 */	lwz r4, 0x48(r1)
/* 8008B5F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8008B5F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8008B5F8  7C 03 00 00 */	cmpw r3, r0
/* 8008B5FC  41 82 00 14 */	beq lbl_8008B610
/* 8008B600  40 80 00 40 */	bge lbl_8008B640
/* 8008B604  2C 03 00 00 */	cmpwi r3, 0
/* 8008B608  41 82 00 20 */	beq lbl_8008B628
/* 8008B60C  48 00 00 34 */	b lbl_8008B640
lbl_8008B610:
/* 8008B610  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008B614  41 82 00 0C */	beq lbl_8008B620
/* 8008B618  38 00 00 01 */	li r0, 1
/* 8008B61C  48 00 00 28 */	b lbl_8008B644
lbl_8008B620:
/* 8008B620  38 00 00 02 */	li r0, 2
/* 8008B624  48 00 00 20 */	b lbl_8008B644
lbl_8008B628:
/* 8008B628  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008B62C  41 82 00 0C */	beq lbl_8008B638
/* 8008B630  38 00 00 05 */	li r0, 5
/* 8008B634  48 00 00 10 */	b lbl_8008B644
lbl_8008B638:
/* 8008B638  38 00 00 03 */	li r0, 3
/* 8008B63C  48 00 00 08 */	b lbl_8008B644
lbl_8008B640:
/* 8008B640  38 00 00 04 */	li r0, 4
lbl_8008B644:
/* 8008B644  2C 00 00 01 */	cmpwi r0, 1
/* 8008B648  40 82 00 10 */	bne lbl_8008B658
/* 8008B64C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8008B650  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8008B654  48 00 00 08 */	b lbl_8008B65C
lbl_8008B658:
/* 8008B658  FF E0 08 90 */	fmr f31, f1
lbl_8008B65C:
/* 8008B65C  C0 1F 04 10 */	lfs f0, 0x410(r31)
/* 8008B660  FC 00 00 50 */	fneg f0, f0
/* 8008B664  D0 1F 04 10 */	stfs f0, 0x410(r31)
/* 8008B668  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8008B66C  7F E4 FB 78 */	mr r4, r31
/* 8008B670  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008B674  38 DF 04 10 */	addi r6, r31, 0x410
/* 8008B678  48 0D 96 F5 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008B67C  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 8008B680  D0 01 02 C8 */	stfs f0, 0x2c8(r1)
/* 8008B684  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 8008B688  D0 01 02 CC */	stfs f0, 0x2cc(r1)
/* 8008B68C  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 8008B690  D0 01 02 D0 */	stfs f0, 0x2d0(r1)
/* 8008B694  38 61 00 DC */	addi r3, r1, 0xdc
/* 8008B698  7F E4 FB 78 */	mr r4, r31
/* 8008B69C  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8008B6A0  48 00 C0 BD */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008B6A4  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8008B6A8  38 81 02 C8 */	addi r4, r1, 0x2c8
/* 8008B6AC  38 A1 00 DC */	addi r5, r1, 0xdc
/* 8008B6B0  48 1D B4 85 */	bl __mi__4cXyzCFRC3Vec
/* 8008B6B4  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8008B6B8  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8008B6BC  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8008B6C0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8008B6C4  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 8008B6C8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8008B6CC  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8008B6D0  48 2B BA 69 */	bl PSVECSquareMag
/* 8008B6D4  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 8008B6D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008B6DC  40 81 00 58 */	ble lbl_8008B734
/* 8008B6E0  FC 00 08 34 */	frsqrte f0, f1
/* 8008B6E4  C8 82 8E C0 */	lfd f4, lit_5142(r2)
/* 8008B6E8  FC 44 00 32 */	fmul f2, f4, f0
/* 8008B6EC  C8 62 8E C8 */	lfd f3, lit_5143(r2)
/* 8008B6F0  FC 00 00 32 */	fmul f0, f0, f0
/* 8008B6F4  FC 01 00 32 */	fmul f0, f1, f0
/* 8008B6F8  FC 03 00 28 */	fsub f0, f3, f0
/* 8008B6FC  FC 02 00 32 */	fmul f0, f2, f0
/* 8008B700  FC 44 00 32 */	fmul f2, f4, f0
/* 8008B704  FC 00 00 32 */	fmul f0, f0, f0
/* 8008B708  FC 01 00 32 */	fmul f0, f1, f0
/* 8008B70C  FC 03 00 28 */	fsub f0, f3, f0
/* 8008B710  FC 02 00 32 */	fmul f0, f2, f0
/* 8008B714  FC 44 00 32 */	fmul f2, f4, f0
/* 8008B718  FC 00 00 32 */	fmul f0, f0, f0
/* 8008B71C  FC 01 00 32 */	fmul f0, f1, f0
/* 8008B720  FC 03 00 28 */	fsub f0, f3, f0
/* 8008B724  FC 02 00 32 */	fmul f0, f2, f0
/* 8008B728  FC 21 00 32 */	fmul f1, f1, f0
/* 8008B72C  FC 20 08 18 */	frsp f1, f1
/* 8008B730  48 00 00 88 */	b lbl_8008B7B8
lbl_8008B734:
/* 8008B734  C8 02 8E D0 */	lfd f0, lit_5144(r2)
/* 8008B738  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008B73C  40 80 00 10 */	bge lbl_8008B74C
/* 8008B740  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8008B744  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8008B748  48 00 00 70 */	b lbl_8008B7B8
lbl_8008B74C:
/* 8008B74C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8008B750  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8008B754  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8008B758  3C 00 7F 80 */	lis r0, 0x7f80
/* 8008B75C  7C 03 00 00 */	cmpw r3, r0
/* 8008B760  41 82 00 14 */	beq lbl_8008B774
/* 8008B764  40 80 00 40 */	bge lbl_8008B7A4
/* 8008B768  2C 03 00 00 */	cmpwi r3, 0
/* 8008B76C  41 82 00 20 */	beq lbl_8008B78C
/* 8008B770  48 00 00 34 */	b lbl_8008B7A4
lbl_8008B774:
/* 8008B774  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008B778  41 82 00 0C */	beq lbl_8008B784
/* 8008B77C  38 00 00 01 */	li r0, 1
/* 8008B780  48 00 00 28 */	b lbl_8008B7A8
lbl_8008B784:
/* 8008B784  38 00 00 02 */	li r0, 2
/* 8008B788  48 00 00 20 */	b lbl_8008B7A8
lbl_8008B78C:
/* 8008B78C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8008B790  41 82 00 0C */	beq lbl_8008B79C
/* 8008B794  38 00 00 05 */	li r0, 5
/* 8008B798  48 00 00 10 */	b lbl_8008B7A8
lbl_8008B79C:
/* 8008B79C  38 00 00 03 */	li r0, 3
/* 8008B7A0  48 00 00 08 */	b lbl_8008B7A8
lbl_8008B7A4:
/* 8008B7A4  38 00 00 04 */	li r0, 4
lbl_8008B7A8:
/* 8008B7A8  2C 00 00 01 */	cmpwi r0, 1
/* 8008B7AC  40 82 00 0C */	bne lbl_8008B7B8
/* 8008B7B0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8008B7B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8008B7B8:
/* 8008B7B8  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8008B7BC  40 81 00 10 */	ble lbl_8008B7CC
/* 8008B7C0  C0 1F 04 10 */	lfs f0, 0x410(r31)
/* 8008B7C4  FC 00 00 50 */	fneg f0, f0
/* 8008B7C8  D0 1F 04 10 */	stfs f0, 0x410(r31)
lbl_8008B7CC:
/* 8008B7CC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8008B7D0  7F E4 FB 78 */	mr r4, r31
/* 8008B7D4  80 BF 04 24 */	lwz r5, 0x424(r31)
/* 8008B7D8  38 DF 04 10 */	addi r6, r31, 0x410
/* 8008B7DC  48 0D 95 91 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008B7E0  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8008B7E4  D0 1F 03 F8 */	stfs f0, 0x3f8(r31)
/* 8008B7E8  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8008B7EC  D0 1F 03 FC */	stfs f0, 0x3fc(r31)
/* 8008B7F0  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8008B7F4  D0 1F 04 00 */	stfs f0, 0x400(r31)
lbl_8008B7F8:
/* 8008B7F8  38 61 00 AC */	addi r3, r1, 0xac
/* 8008B7FC  38 9F 03 F8 */	addi r4, r31, 0x3f8
/* 8008B800  38 BF 00 64 */	addi r5, r31, 0x64
/* 8008B804  48 1D B3 31 */	bl __mi__4cXyzCFRC3Vec
/* 8008B808  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8008B80C  38 81 00 AC */	addi r4, r1, 0xac
/* 8008B810  C0 3F 04 40 */	lfs f1, 0x440(r31)
/* 8008B814  48 1D B3 71 */	bl __ml__4cXyzCFf
/* 8008B818  38 7F 00 64 */	addi r3, r31, 0x64
/* 8008B81C  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8008B820  7C 65 1B 78 */	mr r5, r3
/* 8008B824  48 2B B8 6D */	bl PSVECAdd
/* 8008B828  38 61 00 94 */	addi r3, r1, 0x94
/* 8008B82C  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 8008B830  38 BF 03 F8 */	addi r5, r31, 0x3f8
/* 8008B834  48 1D B3 01 */	bl __mi__4cXyzCFRC3Vec
/* 8008B838  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8008B83C  38 81 00 94 */	addi r4, r1, 0x94
/* 8008B840  48 1E 62 31 */	bl Val__7cSGlobeFRC4cXyz
/* 8008B844  80 1F 04 30 */	lwz r0, 0x430(r31)
/* 8008B848  2C 00 00 02 */	cmpwi r0, 2
/* 8008B84C  40 82 00 24 */	bne lbl_8008B870
/* 8008B850  38 61 00 1C */	addi r3, r1, 0x1c
/* 8008B854  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 8008B858  48 1E 57 71 */	bl __ct__7cSAngleFf
/* 8008B85C  38 61 00 0C */	addi r3, r1, 0xc
/* 8008B860  A8 81 00 1C */	lha r4, 0x1c(r1)
/* 8008B864  48 1E 57 35 */	bl __ct__7cSAngleFs
/* 8008B868  A8 01 00 0C */	lha r0, 0xc(r1)
/* 8008B86C  B0 1F 00 60 */	sth r0, 0x60(r31)
lbl_8008B870:
/* 8008B870  38 61 00 18 */	addi r3, r1, 0x18
/* 8008B874  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8008B878  C8 22 8E E8 */	lfd f1, lit_5846(r2)
/* 8008B87C  90 01 02 F4 */	stw r0, 0x2f4(r1)
/* 8008B880  3C 00 43 30 */	lis r0, 0x4330
/* 8008B884  90 01 02 F0 */	stw r0, 0x2f0(r1)
/* 8008B888  C8 01 02 F0 */	lfd f0, 0x2f0(r1)
/* 8008B88C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8008B890  C0 1F 04 34 */	lfs f0, 0x434(r31)
/* 8008B894  EC 21 00 32 */	fmuls f1, f1, f0
/* 8008B898  48 1E 57 31 */	bl __ct__7cSAngleFf
/* 8008B89C  38 61 00 14 */	addi r3, r1, 0x14
/* 8008B8A0  38 9F 00 62 */	addi r4, r31, 0x62
/* 8008B8A4  38 A1 00 18 */	addi r5, r1, 0x18
/* 8008B8A8  48 1E 58 CD */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008B8AC  38 61 00 08 */	addi r3, r1, 8
/* 8008B8B0  A8 81 00 14 */	lha r4, 0x14(r1)
/* 8008B8B4  48 1E 56 E5 */	bl __ct__7cSAngleFs
/* 8008B8B8  A8 01 00 08 */	lha r0, 8(r1)
/* 8008B8BC  B0 1F 00 62 */	sth r0, 0x62(r31)
/* 8008B8C0  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8008B8C4  C8 22 8E E8 */	lfd f1, lit_5846(r2)
/* 8008B8C8  90 01 02 FC */	stw r0, 0x2fc(r1)
/* 8008B8CC  3C 00 43 30 */	lis r0, 0x4330
/* 8008B8D0  90 01 02 F8 */	stw r0, 0x2f8(r1)
/* 8008B8D4  C8 01 02 F8 */	lfd f0, 0x2f8(r1)
/* 8008B8D8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8008B8DC  C0 1F 04 38 */	lfs f0, 0x438(r31)
/* 8008B8E0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8008B8E4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8008B8E8  EC 01 00 2A */	fadds f0, f1, f0
/* 8008B8EC  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8008B8F0  38 61 00 88 */	addi r3, r1, 0x88
/* 8008B8F4  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8008B8F8  48 1E 61 BD */	bl Xyz__7cSGlobeCFv
/* 8008B8FC  38 61 00 7C */	addi r3, r1, 0x7c
/* 8008B900  38 9F 00 64 */	addi r4, r31, 0x64
/* 8008B904  38 A1 00 88 */	addi r5, r1, 0x88
/* 8008B908  48 1D B1 DD */	bl __pl__4cXyzCFRC3Vec
/* 8008B90C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8008B910  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 8008B914  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8008B918  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8008B91C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8008B920  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8008B924  C0 1F 04 1C */	lfs f0, 0x41c(r31)
/* 8008B928  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8008B92C  88 1F 03 E9 */	lbz r0, 0x3e9(r31)
/* 8008B930  28 00 00 00 */	cmplwi r0, 0
/* 8008B934  41 82 00 38 */	beq lbl_8008B96C
/* 8008B938  C0 22 8E D8 */	lfs f1, lit_5145(r2)
/* 8008B93C  C0 1F 04 20 */	lfs f0, 0x420(r31)
/* 8008B940  EC 01 00 32 */	fmuls f0, f1, f0
/* 8008B944  FC 00 00 1E */	fctiwz f0, f0
/* 8008B948  D8 01 02 F8 */	stfd f0, 0x2f8(r1)
/* 8008B94C  80 81 02 FC */	lwz r4, 0x2fc(r1)
/* 8008B950  38 61 00 10 */	addi r3, r1, 0x10
/* 8008B954  48 1E 56 45 */	bl __ct__7cSAngleFs
/* 8008B958  A8 01 00 10 */	lha r0, 0x10(r1)
/* 8008B95C  B0 1F 00 7C */	sth r0, 0x7c(r31)
/* 8008B960  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8008B964  60 00 04 00 */	ori r0, r0, 0x400
/* 8008B968  90 1F 06 0C */	stw r0, 0x60c(r31)
lbl_8008B96C:
/* 8008B96C  88 1F 03 E8 */	lbz r0, 0x3e8(r31)
/* 8008B970  28 00 00 00 */	cmplwi r0, 0
/* 8008B974  41 82 00 1C */	beq lbl_8008B990
/* 8008B978  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 8008B97C  80 1F 04 2C */	lwz r0, 0x42c(r31)
/* 8008B980  7C 03 00 40 */	cmplw r3, r0
/* 8008B984  40 80 00 0C */	bge lbl_8008B990
/* 8008B988  38 60 00 00 */	li r3, 0
/* 8008B98C  48 00 00 08 */	b lbl_8008B994
lbl_8008B990:
/* 8008B990  38 60 00 01 */	li r3, 1
lbl_8008B994:
/* 8008B994  E3 E1 03 18 */	psq_l f31, 792(r1), 0, 0 /* qr0 */
/* 8008B998  CB E1 03 10 */	lfd f31, 0x310(r1)
/* 8008B99C  83 E1 03 0C */	lwz r31, 0x30c(r1)
/* 8008B9A0  80 01 03 24 */	lwz r0, 0x324(r1)
/* 8008B9A4  7C 08 03 A6 */	mtlr r0
/* 8008B9A8  38 21 03 20 */	addi r1, r1, 0x320
/* 8008B9AC  4E 80 00 20 */	blr 
