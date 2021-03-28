lbl_800956E4:
/* 800956E4  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 800956E8  7C 08 02 A6 */	mflr r0
/* 800956EC  90 01 01 44 */	stw r0, 0x144(r1)
/* 800956F0  39 61 01 40 */	addi r11, r1, 0x140
/* 800956F4  48 2C CA E9 */	bl _savegpr_29
/* 800956F8  7C 7E 1B 78 */	mr r30, r3
/* 800956FC  88 0D 8A 0B */	lbz r0, struct_80450F88+0x3(r13)
/* 80095700  7C 00 07 75 */	extsb. r0, r0
/* 80095704  40 82 00 34 */	bne lbl_80095738
/* 80095708  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 8009570C  3C 60 80 42 */	lis r3, DefaultGap_10515@ha
/* 80095710  D4 03 54 2C */	stfsu f0, DefaultGap_10515@l(r3)
/* 80095714  D0 03 00 04 */	stfs f0, 4(r3)
/* 80095718  D0 03 00 08 */	stfs f0, 8(r3)
/* 8009571C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80095720  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80095724  3C A0 80 42 */	lis r5, lit_10516@ha
/* 80095728  38 A5 54 20 */	addi r5, r5, lit_10516@l
/* 8009572C  48 2C C4 F9 */	bl __register_global_object
/* 80095730  38 00 00 01 */	li r0, 1
/* 80095734  98 0D 8A 0B */	stb r0, struct_80450F88+0x3(r13)
lbl_80095738:
/* 80095738  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8009573C  28 00 00 00 */	cmplwi r0, 0
/* 80095740  40 82 02 34 */	bne lbl_80095974
/* 80095744  7F C3 F3 78 */	mr r3, r30
/* 80095748  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 8009574C  38 A4 AA F4 */	addi r5, r4, d_d_ev_camera__stringBase0@l
/* 80095750  38 85 01 B5 */	addi r4, r5, 0x1b5
/* 80095754  38 A5 00 72 */	addi r5, r5, 0x72
/* 80095758  4B FF 3E 9D */	bl getEvActor__9dCamera_cFPcPc
/* 8009575C  90 7E 03 E8 */	stw r3, 0x3e8(r30)
/* 80095760  7F C3 F3 78 */	mr r3, r30
/* 80095764  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 80095768  38 A4 AA F4 */	addi r5, r4, d_d_ev_camera__stringBase0@l
/* 8009576C  38 85 01 BC */	addi r4, r5, 0x1bc
/* 80095770  38 A5 00 62 */	addi r5, r5, 0x62
/* 80095774  4B FF 3E 81 */	bl getEvActor__9dCamera_cFPcPc
/* 80095778  90 7E 03 EC */	stw r3, 0x3ec(r30)
/* 8009577C  80 7E 03 E8 */	lwz r3, 0x3e8(r30)
/* 80095780  28 03 00 00 */	cmplwi r3, 0
/* 80095784  41 82 00 10 */	beq lbl_80095794
/* 80095788  80 1E 03 EC */	lwz r0, 0x3ec(r30)
/* 8009578C  28 00 00 00 */	cmplwi r0, 0
/* 80095790  40 82 00 0C */	bne lbl_8009579C
lbl_80095794:
/* 80095794  38 60 00 01 */	li r3, 1
/* 80095798  48 00 06 CC */	b lbl_80095E64
lbl_8009579C:
/* 8009579C  28 03 00 00 */	cmplwi r3, 0
/* 800957A0  41 82 00 0C */	beq lbl_800957AC
/* 800957A4  80 03 00 04 */	lwz r0, 4(r3)
/* 800957A8  48 00 00 08 */	b lbl_800957B0
lbl_800957AC:
/* 800957AC  38 00 FF FF */	li r0, -1
lbl_800957B0:
/* 800957B0  90 1E 03 F4 */	stw r0, 0x3f4(r30)
/* 800957B4  80 7E 03 EC */	lwz r3, 0x3ec(r30)
/* 800957B8  28 03 00 00 */	cmplwi r3, 0
/* 800957BC  41 82 00 0C */	beq lbl_800957C8
/* 800957C0  80 03 00 04 */	lwz r0, 4(r3)
/* 800957C4  48 00 00 08 */	b lbl_800957CC
lbl_800957C8:
/* 800957C8  38 00 FF FF */	li r0, -1
lbl_800957CC:
/* 800957CC  90 1E 03 F8 */	stw r0, 0x3f8(r30)
/* 800957D0  3C 60 80 42 */	lis r3, DefaultGap_10515@ha
/* 800957D4  C4 03 54 2C */	lfsu f0, DefaultGap_10515@l(r3)
/* 800957D8  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 800957DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 800957E0  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 800957E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 800957E8  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 800957EC  7F C3 F3 78 */	mr r3, r30
/* 800957F0  38 9E 04 28 */	addi r4, r30, 0x428
/* 800957F4  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 800957F8  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 800957FC  38 A5 00 46 */	addi r5, r5, 0x46
/* 80095800  38 C1 01 14 */	addi r6, r1, 0x114
/* 80095804  4B FF 3A 29 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 80095808  7F C3 F3 78 */	mr r3, r30
/* 8009580C  38 9E 04 24 */	addi r4, r30, 0x424
/* 80095810  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80095814  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80095818  38 A5 01 C3 */	addi r5, r5, 0x1c3
/* 8009581C  C0 22 91 98 */	lfs f1, lit_10780(r2)
/* 80095820  4B FF 39 35 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 80095824  7F C3 F3 78 */	mr r3, r30
/* 80095828  38 9E 03 FC */	addi r4, r30, 0x3fc
/* 8009582C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80095830  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80095834  38 A5 00 54 */	addi r5, r5, 0x54
/* 80095838  C0 22 8E DC */	lfs f1, lit_5346(r2)
/* 8009583C  4B FF 39 19 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 80095840  7F C3 F3 78 */	mr r3, r30
/* 80095844  38 9E 04 00 */	addi r4, r30, 0x400
/* 80095848  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8009584C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80095850  38 A5 00 4D */	addi r5, r5, 0x4d
/* 80095854  C0 22 8E DC */	lfs f1, lit_5346(r2)
/* 80095858  4B FF 38 FD */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8009585C  7F C3 F3 78 */	mr r3, r30
/* 80095860  38 9E 04 04 */	addi r4, r30, 0x404
/* 80095864  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80095868  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8009586C  38 A5 01 CC */	addi r5, r5, 0x1cc
/* 80095870  C0 22 8F 94 */	lfs f1, lit_8198(r2)
/* 80095874  4B FF 38 E1 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 80095878  7F C3 F3 78 */	mr r3, r30
/* 8009587C  38 9E 04 08 */	addi r4, r30, 0x408
/* 80095880  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80095884  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80095888  38 A5 01 D6 */	addi r5, r5, 0x1d6
/* 8009588C  C0 22 91 9C */	lfs f1, lit_10781(r2)
/* 80095890  4B FF 38 C5 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 80095894  7F C3 F3 78 */	mr r3, r30
/* 80095898  38 9E 04 0C */	addi r4, r30, 0x40c
/* 8009589C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 800958A0  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 800958A4  38 A5 01 E0 */	addi r5, r5, 0x1e0
/* 800958A8  C0 22 8F 98 */	lfs f1, lit_8199(r2)
/* 800958AC  4B FF 38 A9 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 800958B0  7F C3 F3 78 */	mr r3, r30
/* 800958B4  38 9E 04 10 */	addi r4, r30, 0x410
/* 800958B8  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 800958BC  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 800958C0  38 A5 01 EC */	addi r5, r5, 0x1ec
/* 800958C4  C0 22 8F 5C */	lfs f1, lit_8184(r2)
/* 800958C8  4B FF 38 8D */	bl getEvFloatData__9dCamera_cFPfPcf
/* 800958CC  7F C3 F3 78 */	mr r3, r30
/* 800958D0  38 9E 04 14 */	addi r4, r30, 0x414
/* 800958D4  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 800958D8  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 800958DC  38 A5 01 F8 */	addi r5, r5, 0x1f8
/* 800958E0  C0 22 8F B4 */	lfs f1, lit_8206(r2)
/* 800958E4  4B FF 38 71 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 800958E8  7F C3 F3 78 */	mr r3, r30
/* 800958EC  38 9E 04 18 */	addi r4, r30, 0x418
/* 800958F0  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 800958F4  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 800958F8  38 A5 02 05 */	addi r5, r5, 0x205
/* 800958FC  C0 22 8F 84 */	lfs f1, lit_8194(r2)
/* 80095900  4B FF 38 55 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 80095904  7F C3 F3 78 */	mr r3, r30
/* 80095908  38 9E 04 1C */	addi r4, r30, 0x41c
/* 8009590C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80095910  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80095914  38 A5 02 12 */	addi r5, r5, 0x212
/* 80095918  38 C0 FF FF */	li r6, -1
/* 8009591C  4B FF 37 71 */	bl getEvIntData__9dCamera_cFPiPci
/* 80095920  7F C3 F3 78 */	mr r3, r30
/* 80095924  38 9E 04 20 */	addi r4, r30, 0x420
/* 80095928  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8009592C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80095930  38 A5 00 1E */	addi r5, r5, 0x1e
/* 80095934  C0 22 8F 5C */	lfs f1, lit_8184(r2)
/* 80095938  4B FF 38 1D */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8009593C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80095940  D0 1E 04 34 */	stfs f0, 0x434(r30)
/* 80095944  38 7E 00 60 */	addi r3, r30, 0x60
/* 80095948  48 1D B6 E9 */	bl Degree__7cSAngleCFv
/* 8009594C  38 61 00 64 */	addi r3, r1, 0x64
/* 80095950  48 1D B6 79 */	bl __ct__7cSAngleFf
/* 80095954  A8 01 00 64 */	lha r0, 0x64(r1)
/* 80095958  B0 1E 04 3C */	sth r0, 0x43c(r30)
/* 8009595C  38 7E 00 62 */	addi r3, r30, 0x62
/* 80095960  48 1D B6 D1 */	bl Degree__7cSAngleCFv
/* 80095964  38 61 00 60 */	addi r3, r1, 0x60
/* 80095968  48 1D B6 61 */	bl __ct__7cSAngleFf
/* 8009596C  A8 01 00 60 */	lha r0, 0x60(r1)
/* 80095970  B0 1E 04 3E */	sth r0, 0x43e(r30)
lbl_80095974:
/* 80095974  38 61 01 08 */	addi r3, r1, 0x108
/* 80095978  7F C4 F3 78 */	mr r4, r30
/* 8009597C  80 BE 03 E8 */	lwz r5, 0x3e8(r30)
/* 80095980  48 00 1D 9D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80095984  38 61 00 FC */	addi r3, r1, 0xfc
/* 80095988  7F C4 F3 78 */	mr r4, r30
/* 8009598C  80 BE 03 EC */	lwz r5, 0x3ec(r30)
/* 80095990  48 00 1D 8D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80095994  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80095998  38 81 01 08 */	addi r4, r1, 0x108
/* 8009599C  38 A1 00 FC */	addi r5, r1, 0xfc
/* 800959A0  48 1D 11 95 */	bl __mi__4cXyzCFRC3Vec
/* 800959A4  38 61 00 7C */	addi r3, r1, 0x7c
/* 800959A8  38 81 00 F0 */	addi r4, r1, 0xf0
/* 800959AC  48 1D BE D5 */	bl __ct__7cSGlobeFRC4cXyz
/* 800959B0  80 1E 03 F4 */	lwz r0, 0x3f4(r30)
/* 800959B4  90 01 00 78 */	stw r0, 0x78(r1)
/* 800959B8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 800959BC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 800959C0  38 81 00 78 */	addi r4, r1, 0x78
/* 800959C4  4B F8 3E 35 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800959C8  28 03 00 00 */	cmplwi r3, 0
/* 800959CC  40 82 00 0C */	bne lbl_800959D8
/* 800959D0  38 60 00 01 */	li r3, 1
/* 800959D4  48 00 04 90 */	b lbl_80095E64
lbl_800959D8:
/* 800959D8  80 1E 03 F8 */	lwz r0, 0x3f8(r30)
/* 800959DC  90 01 00 74 */	stw r0, 0x74(r1)
/* 800959E0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 800959E4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 800959E8  38 81 00 74 */	addi r4, r1, 0x74
/* 800959EC  4B F8 3E 0D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800959F0  28 03 00 00 */	cmplwi r3, 0
/* 800959F4  40 82 00 0C */	bne lbl_80095A00
/* 800959F8  38 60 00 01 */	li r3, 1
/* 800959FC  48 00 04 68 */	b lbl_80095E64
lbl_80095A00:
/* 80095A00  C0 3E 04 24 */	lfs f1, 0x424(r30)
/* 80095A04  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 80095A08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80095A0C  4C 41 13 82 */	cror 2, 1, 2
/* 80095A10  40 82 00 14 */	bne lbl_80095A24
/* 80095A14  C0 02 8E DC */	lfs f0, lit_5346(r2)
/* 80095A18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80095A1C  4C 40 13 82 */	cror 2, 0, 2
/* 80095A20  41 82 00 3C */	beq lbl_80095A5C
lbl_80095A24:
/* 80095A24  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80095A28  7F C4 F3 78 */	mr r4, r30
/* 80095A2C  80 BE 03 E8 */	lwz r5, 0x3e8(r30)
/* 80095A30  80 DE 03 EC */	lwz r6, 0x3ec(r30)
/* 80095A34  38 FE 04 28 */	addi r7, r30, 0x428
/* 80095A38  C0 22 91 A0 */	lfs f1, lit_10782(r2)
/* 80095A3C  48 0C F3 E5 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP10fopAc_ac_cP4cXyzf
/* 80095A40  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80095A44  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80095A48  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80095A4C  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 80095A50  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 80095A54  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80095A58  48 00 00 5C */	b lbl_80095AB4
lbl_80095A5C:
/* 80095A5C  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80095A60  7F C4 F3 78 */	mr r4, r30
/* 80095A64  80 BE 03 E8 */	lwz r5, 0x3e8(r30)
/* 80095A68  48 00 1C B5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80095A6C  38 61 00 CC */	addi r3, r1, 0xcc
/* 80095A70  7F C4 F3 78 */	mr r4, r30
/* 80095A74  80 BE 03 EC */	lwz r5, 0x3ec(r30)
/* 80095A78  48 00 1C A5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80095A7C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80095A80  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80095A84  38 A1 00 CC */	addi r5, r1, 0xcc
/* 80095A88  48 1D 10 5D */	bl __pl__4cXyzCFRC3Vec
/* 80095A8C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80095A90  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80095A94  C0 3E 04 24 */	lfs f1, 0x424(r30)
/* 80095A98  48 1D 10 ED */	bl __ml__4cXyzCFf
/* 80095A9C  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80095AA0  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80095AA4  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80095AA8  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 80095AAC  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80095AB0  D0 01 01 28 */	stfs f0, 0x128(r1)
lbl_80095AB4:
/* 80095AB4  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80095AB8  38 81 01 20 */	addi r4, r1, 0x120
/* 80095ABC  38 BE 00 64 */	addi r5, r30, 0x64
/* 80095AC0  48 1D 10 75 */	bl __mi__4cXyzCFRC3Vec
/* 80095AC4  38 61 00 9C */	addi r3, r1, 0x9c
/* 80095AC8  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80095ACC  C0 3E 03 FC */	lfs f1, 0x3fc(r30)
/* 80095AD0  48 1D 10 B5 */	bl __ml__4cXyzCFf
/* 80095AD4  38 7E 00 64 */	addi r3, r30, 0x64
/* 80095AD8  38 81 00 9C */	addi r4, r1, 0x9c
/* 80095ADC  7C 65 1B 78 */	mr r5, r3
/* 80095AE0  48 2B 15 B1 */	bl PSVECAdd
/* 80095AE4  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 80095AE8  28 00 00 00 */	cmplwi r0, 0
/* 80095AEC  40 82 02 9C */	bne lbl_80095D88
/* 80095AF0  80 1E 04 1C */	lwz r0, 0x41c(r30)
/* 80095AF4  2C 00 00 02 */	cmpwi r0, 2
/* 80095AF8  41 82 00 44 */	beq lbl_80095B3C
/* 80095AFC  40 80 00 5C */	bge lbl_80095B58
/* 80095B00  2C 00 00 01 */	cmpwi r0, 1
/* 80095B04  40 80 00 08 */	bge lbl_80095B0C
/* 80095B08  48 00 00 50 */	b lbl_80095B58
lbl_80095B0C:
/* 80095B0C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80095B10  7F C4 F3 78 */	mr r4, r30
/* 80095B14  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 80095B18  48 00 1C 21 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80095B1C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80095B20  48 1D B5 C9 */	bl Inv__7cSAngleCFv
/* 80095B24  7C 64 1B 78 */	mr r4, r3
/* 80095B28  38 61 00 58 */	addi r3, r1, 0x58
/* 80095B2C  48 1D B4 6D */	bl __ct__7cSAngleFs
/* 80095B30  A8 01 00 58 */	lha r0, 0x58(r1)
/* 80095B34  B0 01 00 70 */	sth r0, 0x70(r1)
/* 80095B38  48 00 00 28 */	b lbl_80095B60
lbl_80095B3C:
/* 80095B3C  38 61 00 54 */	addi r3, r1, 0x54
/* 80095B40  7F C4 F3 78 */	mr r4, r30
/* 80095B44  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 80095B48  48 00 1B F1 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80095B4C  A8 01 00 54 */	lha r0, 0x54(r1)
/* 80095B50  B0 01 00 70 */	sth r0, 0x70(r1)
/* 80095B54  48 00 00 0C */	b lbl_80095B60
lbl_80095B58:
/* 80095B58  A8 1E 00 62 */	lha r0, 0x62(r30)
/* 80095B5C  B0 01 00 70 */	sth r0, 0x70(r1)
lbl_80095B60:
/* 80095B60  38 61 00 50 */	addi r3, r1, 0x50
/* 80095B64  3B E1 00 82 */	addi r31, r1, 0x82
/* 80095B68  7F E4 FB 78 */	mr r4, r31
/* 80095B6C  38 A1 00 70 */	addi r5, r1, 0x70
/* 80095B70  48 1D B6 35 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80095B74  38 61 00 6C */	addi r3, r1, 0x6c
/* 80095B78  38 81 00 50 */	addi r4, r1, 0x50
/* 80095B7C  48 1D B3 ED */	bl __ct__7cSAngleFRC7cSAngle
/* 80095B80  38 61 00 4C */	addi r3, r1, 0x4c
/* 80095B84  C0 3E 04 14 */	lfs f1, 0x414(r30)
/* 80095B88  48 1D B4 41 */	bl __ct__7cSAngleFf
/* 80095B8C  AB A1 00 4C */	lha r29, 0x4c(r1)
/* 80095B90  38 61 00 6C */	addi r3, r1, 0x6c
/* 80095B94  48 1D B5 39 */	bl Abs__7cSAngleCFv
/* 80095B98  7C 60 07 34 */	extsh r0, r3
/* 80095B9C  7F A4 07 34 */	extsh r4, r29
/* 80095BA0  7C 80 02 78 */	xor r0, r4, r0
/* 80095BA4  7C 03 0E 70 */	srawi r3, r0, 1
/* 80095BA8  7C 00 20 38 */	and r0, r0, r4
/* 80095BAC  7C 00 18 50 */	subf r0, r0, r3
/* 80095BB0  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80095BB4  41 82 00 64 */	beq lbl_80095C18
/* 80095BB8  A8 61 00 6C */	lha r3, 0x6c(r1)
/* 80095BBC  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80095BC0  7C 03 00 00 */	cmpw r3, r0
/* 80095BC4  40 80 00 2C */	bge lbl_80095BF0
/* 80095BC8  38 61 00 48 */	addi r3, r1, 0x48
/* 80095BCC  C0 3E 04 14 */	lfs f1, 0x414(r30)
/* 80095BD0  48 1D B3 F9 */	bl __ct__7cSAngleFf
/* 80095BD4  38 61 00 44 */	addi r3, r1, 0x44
/* 80095BD8  7F E4 FB 78 */	mr r4, r31
/* 80095BDC  38 A1 00 48 */	addi r5, r1, 0x48
/* 80095BE0  48 1D B5 95 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80095BE4  A8 01 00 44 */	lha r0, 0x44(r1)
/* 80095BE8  B0 1E 04 42 */	sth r0, 0x442(r30)
/* 80095BEC  48 00 00 CC */	b lbl_80095CB8
lbl_80095BF0:
/* 80095BF0  38 61 00 40 */	addi r3, r1, 0x40
/* 80095BF4  C0 3E 04 14 */	lfs f1, 0x414(r30)
/* 80095BF8  48 1D B3 D1 */	bl __ct__7cSAngleFf
/* 80095BFC  38 61 00 3C */	addi r3, r1, 0x3c
/* 80095C00  7F E4 FB 78 */	mr r4, r31
/* 80095C04  38 A1 00 40 */	addi r5, r1, 0x40
/* 80095C08  48 1D B5 9D */	bl __mi__7cSAngleCFRC7cSAngle
/* 80095C0C  A8 01 00 3C */	lha r0, 0x3c(r1)
/* 80095C10  B0 1E 04 42 */	sth r0, 0x442(r30)
/* 80095C14  48 00 00 A4 */	b lbl_80095CB8
lbl_80095C18:
/* 80095C18  38 61 00 38 */	addi r3, r1, 0x38
/* 80095C1C  C0 3E 04 18 */	lfs f1, 0x418(r30)
/* 80095C20  48 1D B3 A9 */	bl __ct__7cSAngleFf
/* 80095C24  AB A1 00 38 */	lha r29, 0x38(r1)
/* 80095C28  38 61 00 6C */	addi r3, r1, 0x6c
/* 80095C2C  48 1D B4 A1 */	bl Abs__7cSAngleCFv
/* 80095C30  7C 64 07 34 */	extsh r4, r3
/* 80095C34  7F A0 07 34 */	extsh r0, r29
/* 80095C38  7C 80 02 78 */	xor r0, r4, r0
/* 80095C3C  7C 03 0E 70 */	srawi r3, r0, 1
/* 80095C40  7C 00 20 38 */	and r0, r0, r4
/* 80095C44  7C 00 18 50 */	subf r0, r0, r3
/* 80095C48  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80095C4C  41 82 00 64 */	beq lbl_80095CB0
/* 80095C50  A8 61 00 6C */	lha r3, 0x6c(r1)
/* 80095C54  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80095C58  7C 03 00 00 */	cmpw r3, r0
/* 80095C5C  40 80 00 2C */	bge lbl_80095C88
/* 80095C60  38 61 00 34 */	addi r3, r1, 0x34
/* 80095C64  C0 3E 04 18 */	lfs f1, 0x418(r30)
/* 80095C68  48 1D B3 61 */	bl __ct__7cSAngleFf
/* 80095C6C  38 61 00 30 */	addi r3, r1, 0x30
/* 80095C70  7F E4 FB 78 */	mr r4, r31
/* 80095C74  38 A1 00 34 */	addi r5, r1, 0x34
/* 80095C78  48 1D B4 FD */	bl __pl__7cSAngleCFRC7cSAngle
/* 80095C7C  A8 01 00 30 */	lha r0, 0x30(r1)
/* 80095C80  B0 1E 04 42 */	sth r0, 0x442(r30)
/* 80095C84  48 00 00 34 */	b lbl_80095CB8
lbl_80095C88:
/* 80095C88  38 61 00 2C */	addi r3, r1, 0x2c
/* 80095C8C  C0 3E 04 18 */	lfs f1, 0x418(r30)
/* 80095C90  48 1D B3 39 */	bl __ct__7cSAngleFf
/* 80095C94  38 61 00 28 */	addi r3, r1, 0x28
/* 80095C98  7F E4 FB 78 */	mr r4, r31
/* 80095C9C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80095CA0  48 1D B5 05 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80095CA4  A8 01 00 28 */	lha r0, 0x28(r1)
/* 80095CA8  B0 1E 04 42 */	sth r0, 0x442(r30)
/* 80095CAC  48 00 00 0C */	b lbl_80095CB8
lbl_80095CB0:
/* 80095CB0  A8 01 00 70 */	lha r0, 0x70(r1)
/* 80095CB4  B0 1E 04 42 */	sth r0, 0x442(r30)
lbl_80095CB8:
/* 80095CB8  38 61 00 68 */	addi r3, r1, 0x68
/* 80095CBC  3B BE 00 60 */	addi r29, r30, 0x60
/* 80095CC0  7F A4 EB 78 */	mr r4, r29
/* 80095CC4  48 1D B2 A5 */	bl __ct__7cSAngleFRC7cSAngle
/* 80095CC8  38 61 00 24 */	addi r3, r1, 0x24
/* 80095CCC  C0 3E 04 0C */	lfs f1, 0x40c(r30)
/* 80095CD0  48 1D B2 F9 */	bl __ct__7cSAngleFf
/* 80095CD4  A8 01 00 68 */	lha r0, 0x68(r1)
/* 80095CD8  A8 81 00 24 */	lha r4, 0x24(r1)
/* 80095CDC  7C 80 02 78 */	xor r0, r4, r0
/* 80095CE0  7C 03 0E 70 */	srawi r3, r0, 1
/* 80095CE4  7C 00 20 38 */	and r0, r0, r4
/* 80095CE8  7C 00 18 50 */	subf r0, r0, r3
/* 80095CEC  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80095CF0  41 82 00 1C */	beq lbl_80095D0C
/* 80095CF4  38 61 00 20 */	addi r3, r1, 0x20
/* 80095CF8  C0 3E 04 0C */	lfs f1, 0x40c(r30)
/* 80095CFC  48 1D B2 CD */	bl __ct__7cSAngleFf
/* 80095D00  A8 01 00 20 */	lha r0, 0x20(r1)
/* 80095D04  B0 1E 04 40 */	sth r0, 0x440(r30)
/* 80095D08  48 00 00 50 */	b lbl_80095D58
lbl_80095D0C:
/* 80095D0C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80095D10  C0 3E 04 10 */	lfs f1, 0x410(r30)
/* 80095D14  48 1D B2 B5 */	bl __ct__7cSAngleFf
/* 80095D18  A8 81 00 68 */	lha r4, 0x68(r1)
/* 80095D1C  A8 01 00 1C */	lha r0, 0x1c(r1)
/* 80095D20  7C 80 02 78 */	xor r0, r4, r0
/* 80095D24  7C 03 0E 70 */	srawi r3, r0, 1
/* 80095D28  7C 00 20 38 */	and r0, r0, r4
/* 80095D2C  7C 00 18 50 */	subf r0, r0, r3
/* 80095D30  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80095D34  41 82 00 1C */	beq lbl_80095D50
/* 80095D38  38 61 00 18 */	addi r3, r1, 0x18
/* 80095D3C  C0 3E 04 10 */	lfs f1, 0x410(r30)
/* 80095D40  48 1D B2 89 */	bl __ct__7cSAngleFf
/* 80095D44  A8 01 00 18 */	lha r0, 0x18(r1)
/* 80095D48  B0 1E 04 40 */	sth r0, 0x440(r30)
/* 80095D4C  48 00 00 0C */	b lbl_80095D58
lbl_80095D50:
/* 80095D50  A8 1D 00 00 */	lha r0, 0(r29)
/* 80095D54  B0 1E 04 40 */	sth r0, 0x440(r30)
lbl_80095D58:
/* 80095D58  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80095D5C  C0 1E 04 04 */	lfs f0, 0x404(r30)
/* 80095D60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80095D64  40 80 00 0C */	bge lbl_80095D70
/* 80095D68  D0 1E 04 38 */	stfs f0, 0x438(r30)
/* 80095D6C  48 00 00 1C */	b lbl_80095D88
lbl_80095D70:
/* 80095D70  C0 1E 04 08 */	lfs f0, 0x408(r30)
/* 80095D74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80095D78  40 81 00 0C */	ble lbl_80095D84
/* 80095D7C  D0 1E 04 38 */	stfs f0, 0x438(r30)
/* 80095D80  48 00 00 08 */	b lbl_80095D88
lbl_80095D84:
/* 80095D84  D0 3E 04 38 */	stfs f1, 0x438(r30)
lbl_80095D88:
/* 80095D88  38 61 00 14 */	addi r3, r1, 0x14
/* 80095D8C  38 9E 04 42 */	addi r4, r30, 0x442
/* 80095D90  38 BE 04 3E */	addi r5, r30, 0x43e
/* 80095D94  48 1D B4 11 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80095D98  38 61 00 10 */	addi r3, r1, 0x10
/* 80095D9C  38 81 00 14 */	addi r4, r1, 0x14
/* 80095DA0  C0 3E 04 00 */	lfs f1, 0x400(r30)
/* 80095DA4  48 1D B4 C1 */	bl __ml__7cSAngleCFf
/* 80095DA8  38 7E 04 3E */	addi r3, r30, 0x43e
/* 80095DAC  38 81 00 10 */	addi r4, r1, 0x10
/* 80095DB0  48 1D B4 25 */	bl __apl__7cSAngleFRC7cSAngle
/* 80095DB4  38 61 00 0C */	addi r3, r1, 0xc
/* 80095DB8  38 9E 04 40 */	addi r4, r30, 0x440
/* 80095DBC  38 BE 04 3C */	addi r5, r30, 0x43c
/* 80095DC0  48 1D B3 E5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80095DC4  38 61 00 08 */	addi r3, r1, 8
/* 80095DC8  38 81 00 0C */	addi r4, r1, 0xc
/* 80095DCC  C0 3E 04 00 */	lfs f1, 0x400(r30)
/* 80095DD0  48 1D B4 95 */	bl __ml__7cSAngleCFf
/* 80095DD4  38 7E 04 3C */	addi r3, r30, 0x43c
/* 80095DD8  38 81 00 08 */	addi r4, r1, 8
/* 80095DDC  48 1D B3 F9 */	bl __apl__7cSAngleFRC7cSAngle
/* 80095DE0  C0 5E 04 34 */	lfs f2, 0x434(r30)
/* 80095DE4  C0 3E 04 00 */	lfs f1, 0x400(r30)
/* 80095DE8  C0 1E 04 38 */	lfs f0, 0x438(r30)
/* 80095DEC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80095DF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80095DF4  EC 02 00 2A */	fadds f0, f2, f0
/* 80095DF8  D0 1E 04 34 */	stfs f0, 0x434(r30)
/* 80095DFC  38 7E 00 5C */	addi r3, r30, 0x5c
/* 80095E00  C0 3E 04 34 */	lfs f1, 0x434(r30)
/* 80095E04  38 9E 04 3C */	addi r4, r30, 0x43c
/* 80095E08  38 BE 04 3E */	addi r5, r30, 0x43e
/* 80095E0C  48 1D BB FD */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 80095E10  38 61 00 90 */	addi r3, r1, 0x90
/* 80095E14  38 9E 00 5C */	addi r4, r30, 0x5c
/* 80095E18  48 1D BC 9D */	bl Xyz__7cSGlobeCFv
/* 80095E1C  38 61 00 84 */	addi r3, r1, 0x84
/* 80095E20  38 9E 00 64 */	addi r4, r30, 0x64
/* 80095E24  38 A1 00 90 */	addi r5, r1, 0x90
/* 80095E28  48 1D 0C BD */	bl __pl__4cXyzCFRC3Vec
/* 80095E2C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80095E30  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 80095E34  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80095E38  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 80095E3C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80095E40  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 80095E44  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 80095E48  C0 3E 03 FC */	lfs f1, 0x3fc(r30)
/* 80095E4C  C0 1E 04 20 */	lfs f0, 0x420(r30)
/* 80095E50  EC 00 10 28 */	fsubs f0, f0, f2
/* 80095E54  EC 01 00 32 */	fmuls f0, f1, f0
/* 80095E58  EC 02 00 2A */	fadds f0, f2, f0
/* 80095E5C  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 80095E60  38 60 00 01 */	li r3, 1
lbl_80095E64:
/* 80095E64  39 61 01 40 */	addi r11, r1, 0x140
/* 80095E68  48 2C C3 C1 */	bl _restgpr_29
/* 80095E6C  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80095E70  7C 08 03 A6 */	mtlr r0
/* 80095E74  38 21 01 40 */	addi r1, r1, 0x140
/* 80095E78  4E 80 00 20 */	blr 
