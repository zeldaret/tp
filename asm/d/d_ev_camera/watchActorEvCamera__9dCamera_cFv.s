lbl_8008E938:
/* 8008E938  94 21 FC 70 */	stwu r1, -0x390(r1)
/* 8008E93C  7C 08 02 A6 */	mflr r0
/* 8008E940  90 01 03 94 */	stw r0, 0x394(r1)
/* 8008E944  DB E1 03 80 */	stfd f31, 0x380(r1)
/* 8008E948  F3 E1 03 88 */	psq_st f31, 904(r1), 0, 0 /* qr0 */
/* 8008E94C  39 61 03 80 */	addi r11, r1, 0x380
/* 8008E950  48 2D 38 7D */	bl _savegpr_25
/* 8008E954  7C 7B 1B 78 */	mr r27, r3
/* 8008E958  88 0D 8A 09 */	lbz r0, struct_80450F88+0x1(r13)
/* 8008E95C  7C 00 07 75 */	extsb. r0, r0
/* 8008E960  40 82 00 34 */	bne lbl_8008E994
/* 8008E964  3C 60 80 42 */	lis r3, DefaultGap_6755@ha /* 0x804253FC@ha */
/* 8008E968  38 63 53 FC */	addi r3, r3, DefaultGap_6755@l /* 0x804253FC@l */
/* 8008E96C  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8008E970  38 84 0C F4 */	addi r4, r4, Zero__4cXyz@l /* 0x80430CF4@l */
/* 8008E974  48 00 8E 81 */	bl __ct__4cXyzFRC4cXyz
/* 8008E978  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8008E97C  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8008E980  3C A0 80 42 */	lis r5, lit_6756@ha /* 0x804253F0@ha */
/* 8008E984  38 A5 53 F0 */	addi r5, r5, lit_6756@l /* 0x804253F0@l */
/* 8008E988  48 2D 32 9D */	bl __register_global_object
/* 8008E98C  38 00 00 01 */	li r0, 1
/* 8008E990  98 0D 8A 09 */	stb r0, struct_80450F88+0x1(r13)
lbl_8008E994:
/* 8008E994  3B DB 03 E8 */	addi r30, r27, 0x3e8
/* 8008E998  80 1B 01 74 */	lwz r0, 0x174(r27)
/* 8008E99C  28 00 00 00 */	cmplwi r0, 0
/* 8008E9A0  40 82 02 30 */	bne lbl_8008EBD0
/* 8008E9A4  38 61 03 0C */	addi r3, r1, 0x30c
/* 8008E9A8  3C 80 80 42 */	lis r4, DefaultGap_6755@ha /* 0x804253FC@ha */
/* 8008E9AC  38 84 53 FC */	addi r4, r4, DefaultGap_6755@l /* 0x804253FC@l */
/* 8008E9B0  48 00 8E 45 */	bl __ct__4cXyzFRC4cXyz
/* 8008E9B4  7F 63 DB 78 */	mr r3, r27
/* 8008E9B8  7F C4 F3 78 */	mr r4, r30
/* 8008E9BC  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008E9C0  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008E9C4  38 A5 00 46 */	addi r5, r5, 0x46
/* 8008E9C8  38 C1 03 0C */	addi r6, r1, 0x30c
/* 8008E9CC  4B FF A8 61 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 8008E9D0  7F 63 DB 78 */	mr r3, r27
/* 8008E9D4  38 9E 00 18 */	addi r4, r30, 0x18
/* 8008E9D8  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008E9DC  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008E9E0  38 A5 01 04 */	addi r5, r5, 0x104
/* 8008E9E4  C0 22 8E DC */	lfs f1, lit_5346(r2)
/* 8008E9E8  4B FF A7 6D */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008E9EC  7F 63 DB 78 */	mr r3, r27
/* 8008E9F0  38 9E 00 20 */	addi r4, r30, 0x20
/* 8008E9F4  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008E9F8  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008E9FC  38 A5 01 0C */	addi r5, r5, 0x10c
/* 8008EA00  C0 22 8F 08 */	lfs f1, lit_7334(r2)
/* 8008EA04  4B FF A7 51 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008EA08  7F 63 DB 78 */	mr r3, r27
/* 8008EA0C  38 9E 00 2C */	addi r4, r30, 0x2c
/* 8008EA10  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008EA14  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008EA18  38 A5 01 15 */	addi r5, r5, 0x115
/* 8008EA1C  C0 22 8F 0C */	lfs f1, lit_7335(r2)
/* 8008EA20  4B FF A7 35 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008EA24  7F 63 DB 78 */	mr r3, r27
/* 8008EA28  38 9E 00 30 */	addi r4, r30, 0x30
/* 8008EA2C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008EA30  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008EA34  38 A5 01 1E */	addi r5, r5, 0x11e
/* 8008EA38  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 8008EA3C  4B FF A7 19 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008EA40  7F 63 DB 78 */	mr r3, r27
/* 8008EA44  38 9E 00 28 */	addi r4, r30, 0x28
/* 8008EA48  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008EA4C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008EA50  38 A5 01 29 */	addi r5, r5, 0x129
/* 8008EA54  C0 22 8F 10 */	lfs f1, lit_7336(r2)
/* 8008EA58  4B FF A6 FD */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008EA5C  7F 63 DB 78 */	mr r3, r27
/* 8008EA60  38 9E 00 60 */	addi r4, r30, 0x60
/* 8008EA64  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008EA68  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008EA6C  38 A5 00 1E */	addi r5, r5, 0x1e
/* 8008EA70  C0 22 8F 14 */	lfs f1, lit_7337(r2)
/* 8008EA74  4B FF A6 E1 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008EA78  7F 63 DB 78 */	mr r3, r27
/* 8008EA7C  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8008EA80  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008EA84  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008EA88  38 A5 01 31 */	addi r5, r5, 0x131
/* 8008EA8C  38 C0 00 14 */	li r6, 0x14
/* 8008EA90  4B FF A5 FD */	bl getEvIntData__9dCamera_cFPiPci
/* 8008EA94  7F 63 DB 78 */	mr r3, r27
/* 8008EA98  38 9E 00 24 */	addi r4, r30, 0x24
/* 8008EA9C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008EAA0  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008EAA4  38 A5 01 3B */	addi r5, r5, 0x13b
/* 8008EAA8  38 C0 00 1E */	li r6, 0x1e
/* 8008EAAC  4B FF A5 E1 */	bl getEvIntData__9dCamera_cFPiPci
/* 8008EAB0  7F 63 DB 78 */	mr r3, r27
/* 8008EAB4  38 9E 00 5C */	addi r4, r30, 0x5c
/* 8008EAB8  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008EABC  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008EAC0  38 A5 01 44 */	addi r5, r5, 0x144
/* 8008EAC4  C0 22 8F 18 */	lfs f1, lit_7338(r2)
/* 8008EAC8  4B FF A6 8D */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008EACC  7F 63 DB 78 */	mr r3, r27
/* 8008EAD0  38 9E 00 58 */	addi r4, r30, 0x58
/* 8008EAD4  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008EAD8  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008EADC  38 A5 01 4F */	addi r5, r5, 0x14f
/* 8008EAE0  38 C0 00 00 */	li r6, 0
/* 8008EAE4  4B FF A5 A9 */	bl getEvIntData__9dCamera_cFPiPci
/* 8008EAE8  7F 63 DB 78 */	mr r3, r27
/* 8008EAEC  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008EAF0  38 A4 AA F4 */	addi r5, r4, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008EAF4  38 85 00 6B */	addi r4, r5, 0x6b
/* 8008EAF8  38 A5 00 62 */	addi r5, r5, 0x62
/* 8008EAFC  4B FF AA F9 */	bl getEvActor__9dCamera_cFPcPc
/* 8008EB00  90 7E 00 34 */	stw r3, 0x34(r30)
/* 8008EB04  28 03 00 00 */	cmplwi r3, 0
/* 8008EB08  40 82 00 0C */	bne lbl_8008EB14
/* 8008EB0C  38 60 00 01 */	li r3, 1
/* 8008EB10  48 00 0F 28 */	b lbl_8008FA38
lbl_8008EB14:
/* 8008EB14  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8008EB18  28 03 00 00 */	cmplwi r3, 0
/* 8008EB1C  41 82 00 0C */	beq lbl_8008EB28
/* 8008EB20  80 03 00 04 */	lwz r0, 4(r3)
/* 8008EB24  48 00 00 08 */	b lbl_8008EB2C
lbl_8008EB28:
/* 8008EB28  38 00 FF FF */	li r0, -1
lbl_8008EB2C:
/* 8008EB2C  90 1E 00 38 */	stw r0, 0x38(r30)
/* 8008EB30  38 61 03 00 */	addi r3, r1, 0x300
/* 8008EB34  7F 64 DB 78 */	mr r4, r27
/* 8008EB38  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008EB3C  7F C6 F3 78 */	mr r6, r30
/* 8008EB40  48 0D 62 2D */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008EB44  38 7E 00 0C */	addi r3, r30, 0xc
/* 8008EB48  38 81 03 00 */	addi r4, r1, 0x300
/* 8008EB4C  48 00 8C 8D */	bl __as__4cXyzFRC4cXyz
/* 8008EB50  38 61 02 F4 */	addi r3, r1, 0x2f4
/* 8008EB54  38 9B 00 70 */	addi r4, r27, 0x70
/* 8008EB58  38 BE 00 0C */	addi r5, r30, 0xc
/* 8008EB5C  48 1D 7F D9 */	bl __mi__4cXyzCFRC3Vec
/* 8008EB60  38 7E 00 3C */	addi r3, r30, 0x3c
/* 8008EB64  38 81 02 F4 */	addi r4, r1, 0x2f4
/* 8008EB68  48 1E 2F 09 */	bl Val__7cSGlobeFRC4cXyz
/* 8008EB6C  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 8008EB70  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8008EB74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008EB78  40 80 00 30 */	bge lbl_8008EBA8
/* 8008EB7C  7F 63 DB 78 */	mr r3, r27
/* 8008EB80  38 9E 00 0C */	addi r4, r30, 0xc
/* 8008EB84  48 0D 65 F9 */	bl pointInSight__9dCamera_cFP4cXyz
/* 8008EB88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008EB8C  41 82 00 10 */	beq lbl_8008EB9C
/* 8008EB90  38 00 00 00 */	li r0, 0
/* 8008EB94  90 1E 00 54 */	stw r0, 0x54(r30)
/* 8008EB98  48 00 00 30 */	b lbl_8008EBC8
lbl_8008EB9C:
/* 8008EB9C  38 00 00 01 */	li r0, 1
/* 8008EBA0  90 1E 00 54 */	stw r0, 0x54(r30)
/* 8008EBA4  48 00 00 24 */	b lbl_8008EBC8
lbl_8008EBA8:
/* 8008EBA8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8008EBAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008EBB0  40 80 00 10 */	bge lbl_8008EBC0
/* 8008EBB4  38 00 00 02 */	li r0, 2
/* 8008EBB8  90 1E 00 54 */	stw r0, 0x54(r30)
/* 8008EBBC  48 00 00 0C */	b lbl_8008EBC8
lbl_8008EBC0:
/* 8008EBC0  38 00 00 03 */	li r0, 3
/* 8008EBC4  90 1E 00 54 */	stw r0, 0x54(r30)
lbl_8008EBC8:
/* 8008EBC8  38 00 00 01 */	li r0, 1
/* 8008EBCC  98 1B 01 58 */	stb r0, 0x158(r27)
lbl_8008EBD0:
/* 8008EBD0  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 8008EBD4  90 01 01 50 */	stw r0, 0x150(r1)
/* 8008EBD8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8008EBDC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8008EBE0  38 81 01 50 */	addi r4, r1, 0x150
/* 8008EBE4  4B F8 AC 15 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8008EBE8  28 03 00 00 */	cmplwi r3, 0
/* 8008EBEC  40 82 00 0C */	bne lbl_8008EBF8
/* 8008EBF0  38 60 00 01 */	li r3, 1
/* 8008EBF4  48 00 0E 44 */	b lbl_8008FA38
lbl_8008EBF8:
/* 8008EBF8  3B A0 00 00 */	li r29, 0
/* 8008EBFC  3B 80 00 01 */	li r28, 1
/* 8008EC00  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8008EC04  A8 03 00 0E */	lha r0, 0xe(r3)
/* 8008EC08  2C 00 00 E8 */	cmpwi r0, 0xe8
/* 8008EC0C  41 82 00 0C */	beq lbl_8008EC18
/* 8008EC10  2C 00 02 26 */	cmpwi r0, 0x226
/* 8008EC14  40 82 00 08 */	bne lbl_8008EC1C
lbl_8008EC18:
/* 8008EC18  3B A0 00 01 */	li r29, 1
lbl_8008EC1C:
/* 8008EC1C  80 1E 00 54 */	lwz r0, 0x54(r30)
/* 8008EC20  2C 00 00 02 */	cmpwi r0, 2
/* 8008EC24  41 82 05 A0 */	beq lbl_8008F1C4
/* 8008EC28  40 80 00 14 */	bge lbl_8008EC3C
/* 8008EC2C  2C 00 00 00 */	cmpwi r0, 0
/* 8008EC30  41 82 00 18 */	beq lbl_8008EC48
/* 8008EC34  40 80 00 30 */	bge lbl_8008EC64
/* 8008EC38  48 00 0D F4 */	b lbl_8008FA2C
lbl_8008EC3C:
/* 8008EC3C  2C 00 00 04 */	cmpwi r0, 4
/* 8008EC40  40 80 0D EC */	bge lbl_8008FA2C
/* 8008EC44  48 00 0A 54 */	b lbl_8008F698
lbl_8008EC48:
/* 8008EC48  38 7B 00 70 */	addi r3, r27, 0x70
/* 8008EC4C  38 9B 00 3C */	addi r4, r27, 0x3c
/* 8008EC50  48 00 8B 89 */	bl __as__4cXyzFRC4cXyz
/* 8008EC54  38 7B 00 5C */	addi r3, r27, 0x5c
/* 8008EC58  38 9B 00 28 */	addi r4, r27, 0x28
/* 8008EC5C  4B FF FB 19 */	bl __as__7cSGlobeFRC7cSGlobe
/* 8008EC60  48 00 0D CC */	b lbl_8008FA2C
lbl_8008EC64:
/* 8008EC64  80 1B 01 74 */	lwz r0, 0x174(r27)
/* 8008EC68  28 00 00 00 */	cmplwi r0, 0
/* 8008EC6C  40 82 04 04 */	bne lbl_8008F070
/* 8008EC70  38 61 02 E8 */	addi r3, r1, 0x2e8
/* 8008EC74  7F 64 DB 78 */	mr r4, r27
/* 8008EC78  80 BB 01 80 */	lwz r5, 0x180(r27)
/* 8008EC7C  48 00 8A A1 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008EC80  38 61 03 3C */	addi r3, r1, 0x33c
/* 8008EC84  38 81 02 E8 */	addi r4, r1, 0x2e8
/* 8008EC88  48 00 8B 6D */	bl __ct__4cXyzFRC4cXyz
/* 8008EC8C  C0 21 03 40 */	lfs f1, 0x340(r1)
/* 8008EC90  C0 02 8F 1C */	lfs f0, lit_7339(r2)
/* 8008EC94  EC 01 00 2A */	fadds f0, f1, f0
/* 8008EC98  D0 01 03 40 */	stfs f0, 0x340(r1)
/* 8008EC9C  38 61 02 DC */	addi r3, r1, 0x2dc
/* 8008ECA0  38 81 03 3C */	addi r4, r1, 0x33c
/* 8008ECA4  38 BE 00 0C */	addi r5, r30, 0xc
/* 8008ECA8  48 1D 7E 8D */	bl __mi__4cXyzCFRC3Vec
/* 8008ECAC  38 61 01 84 */	addi r3, r1, 0x184
/* 8008ECB0  38 81 02 DC */	addi r4, r1, 0x2dc
/* 8008ECB4  48 1E 2B CD */	bl __ct__7cSGlobeFRC4cXyz
/* 8008ECB8  38 61 02 D0 */	addi r3, r1, 0x2d0
/* 8008ECBC  7F 64 DB 78 */	mr r4, r27
/* 8008ECC0  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008ECC4  48 00 8A 99 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008ECC8  38 61 02 C4 */	addi r3, r1, 0x2c4
/* 8008ECCC  38 9B 00 70 */	addi r4, r27, 0x70
/* 8008ECD0  38 A1 02 D0 */	addi r5, r1, 0x2d0
/* 8008ECD4  48 1D 7E 61 */	bl __mi__4cXyzCFRC3Vec
/* 8008ECD8  38 61 01 7C */	addi r3, r1, 0x17c
/* 8008ECDC  38 81 02 C4 */	addi r4, r1, 0x2c4
/* 8008ECE0  48 1E 2B A1 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008ECE4  38 61 01 24 */	addi r3, r1, 0x124
/* 8008ECE8  7F 64 DB 78 */	mr r4, r27
/* 8008ECEC  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008ECF0  48 00 8A 49 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008ECF4  38 61 01 20 */	addi r3, r1, 0x120
/* 8008ECF8  38 81 01 82 */	addi r4, r1, 0x182
/* 8008ECFC  38 A1 01 24 */	addi r5, r1, 0x124
/* 8008ED00  48 1E 24 A5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008ED04  38 61 01 4C */	addi r3, r1, 0x14c
/* 8008ED08  38 81 01 20 */	addi r4, r1, 0x120
/* 8008ED0C  48 1E 22 5D */	bl __ct__7cSAngleFRC7cSAngle
/* 8008ED10  A8 61 01 4C */	lha r3, 0x14c(r1)
/* 8008ED14  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8008ED18  7C 03 00 00 */	cmpw r3, r0
/* 8008ED1C  40 80 00 30 */	bge lbl_8008ED4C
/* 8008ED20  38 61 01 1C */	addi r3, r1, 0x11c
/* 8008ED24  C0 22 8F 20 */	lfs f1, lit_7340(r2)
/* 8008ED28  48 1E 22 A1 */	bl __ct__7cSAngleFf
/* 8008ED2C  38 61 01 18 */	addi r3, r1, 0x118
/* 8008ED30  38 81 01 8A */	addi r4, r1, 0x18a
/* 8008ED34  38 A1 01 1C */	addi r5, r1, 0x11c
/* 8008ED38  48 1E 24 3D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008ED3C  38 61 01 84 */	addi r3, r1, 0x184
/* 8008ED40  38 81 01 18 */	addi r4, r1, 0x118
/* 8008ED44  4B FF FB 51 */	bl U__7cSGlobeFRC7cSAngle
/* 8008ED48  48 00 00 2C */	b lbl_8008ED74
lbl_8008ED4C:
/* 8008ED4C  38 61 01 14 */	addi r3, r1, 0x114
/* 8008ED50  C0 22 8F 24 */	lfs f1, lit_7341(r2)
/* 8008ED54  48 1E 22 75 */	bl __ct__7cSAngleFf
/* 8008ED58  38 61 01 10 */	addi r3, r1, 0x110
/* 8008ED5C  38 81 01 8A */	addi r4, r1, 0x18a
/* 8008ED60  38 A1 01 14 */	addi r5, r1, 0x114
/* 8008ED64  48 1E 24 11 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008ED68  38 61 01 84 */	addi r3, r1, 0x184
/* 8008ED6C  38 81 01 10 */	addi r4, r1, 0x110
/* 8008ED70  4B FF FB 25 */	bl U__7cSGlobeFRC7cSAngle
lbl_8008ED74:
/* 8008ED74  38 61 01 0C */	addi r3, r1, 0x10c
/* 8008ED78  7F 64 DB 78 */	mr r4, r27
/* 8008ED7C  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008ED80  48 00 89 B9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008ED84  38 61 01 08 */	addi r3, r1, 0x108
/* 8008ED88  3B E1 01 8A */	addi r31, r1, 0x18a
/* 8008ED8C  7F E4 FB 78 */	mr r4, r31
/* 8008ED90  38 A1 01 0C */	addi r5, r1, 0x10c
/* 8008ED94  48 1E 24 11 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008ED98  38 61 01 48 */	addi r3, r1, 0x148
/* 8008ED9C  38 81 01 08 */	addi r4, r1, 0x108
/* 8008EDA0  48 1E 21 C9 */	bl __ct__7cSAngleFRC7cSAngle
/* 8008EDA4  38 61 01 04 */	addi r3, r1, 0x104
/* 8008EDA8  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8008EDAC  FC 20 00 50 */	fneg f1, f0
/* 8008EDB0  48 1E 22 19 */	bl __ct__7cSAngleFf
/* 8008EDB4  A8 01 01 48 */	lha r0, 0x148(r1)
/* 8008EDB8  A8 81 01 04 */	lha r4, 0x104(r1)
/* 8008EDBC  7C 80 02 78 */	xor r0, r4, r0
/* 8008EDC0  7C 03 0E 70 */	srawi r3, r0, 1
/* 8008EDC4  7C 00 20 38 */	and r0, r0, r4
/* 8008EDC8  7C 00 18 50 */	subf r0, r0, r3
/* 8008EDCC  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8008EDD0  41 82 00 44 */	beq lbl_8008EE14
/* 8008EDD4  38 61 01 00 */	addi r3, r1, 0x100
/* 8008EDD8  7F 64 DB 78 */	mr r4, r27
/* 8008EDDC  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008EDE0  48 00 89 59 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008EDE4  38 61 00 FC */	addi r3, r1, 0xfc
/* 8008EDE8  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8008EDEC  FC 20 00 50 */	fneg f1, f0
/* 8008EDF0  48 1E 21 D9 */	bl __ct__7cSAngleFf
/* 8008EDF4  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8008EDF8  38 81 01 00 */	addi r4, r1, 0x100
/* 8008EDFC  38 A1 00 FC */	addi r5, r1, 0xfc
/* 8008EE00  48 1E 23 75 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008EE04  38 61 01 84 */	addi r3, r1, 0x184
/* 8008EE08  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8008EE0C  4B FF FA 89 */	bl U__7cSGlobeFRC7cSAngle
/* 8008EE10  48 00 00 68 */	b lbl_8008EE78
lbl_8008EE14:
/* 8008EE14  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8008EE18  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8008EE1C  48 1E 21 AD */	bl __ct__7cSAngleFf
/* 8008EE20  A8 81 01 48 */	lha r4, 0x148(r1)
/* 8008EE24  A8 01 00 F4 */	lha r0, 0xf4(r1)
/* 8008EE28  7C 80 02 78 */	xor r0, r4, r0
/* 8008EE2C  7C 03 0E 70 */	srawi r3, r0, 1
/* 8008EE30  7C 00 20 38 */	and r0, r0, r4
/* 8008EE34  7C 00 18 50 */	subf r0, r0, r3
/* 8008EE38  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8008EE3C  41 82 00 3C */	beq lbl_8008EE78
/* 8008EE40  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8008EE44  7F 64 DB 78 */	mr r4, r27
/* 8008EE48  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008EE4C  48 00 88 ED */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008EE50  38 61 00 EC */	addi r3, r1, 0xec
/* 8008EE54  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8008EE58  48 1E 21 71 */	bl __ct__7cSAngleFf
/* 8008EE5C  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8008EE60  38 81 00 F0 */	addi r4, r1, 0xf0
/* 8008EE64  38 A1 00 EC */	addi r5, r1, 0xec
/* 8008EE68  48 1E 23 0D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008EE6C  38 61 01 84 */	addi r3, r1, 0x184
/* 8008EE70  38 81 00 E8 */	addi r4, r1, 0xe8
/* 8008EE74  4B FF FA 21 */	bl U__7cSGlobeFRC7cSAngle
lbl_8008EE78:
/* 8008EE78  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8008EE7C  C0 22 8F 28 */	lfs f1, lit_7342(r2)
/* 8008EE80  C0 01 01 84 */	lfs f0, 0x184(r1)
/* 8008EE84  EC 21 00 2A */	fadds f1, f1, f0
/* 8008EE88  38 81 01 88 */	addi r4, r1, 0x188
/* 8008EE8C  7F E5 FB 78 */	mr r5, r31
/* 8008EE90  48 1E 2B 79 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 8008EE94  A8 61 01 48 */	lha r3, 0x148(r1)
/* 8008EE98  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8008EE9C  7C 03 00 00 */	cmpw r3, r0
/* 8008EEA0  41 80 00 14 */	blt lbl_8008EEB4
/* 8008EEA4  38 61 01 44 */	addi r3, r1, 0x144
/* 8008EEA8  C0 22 8F 2C */	lfs f1, lit_7343(r2)
/* 8008EEAC  48 1E 21 61 */	bl Val__7cSAngleFf
/* 8008EEB0  48 00 00 10 */	b lbl_8008EEC0
lbl_8008EEB4:
/* 8008EEB4  38 61 01 44 */	addi r3, r1, 0x144
/* 8008EEB8  C0 22 8F 30 */	lfs f1, lit_7344(r2)
/* 8008EEBC  48 1E 21 51 */	bl Val__7cSAngleFf
lbl_8008EEC0:
/* 8008EEC0  38 61 01 74 */	addi r3, r1, 0x174
/* 8008EEC4  38 9E 00 4C */	addi r4, r30, 0x4c
/* 8008EEC8  48 1E 29 29 */	bl __ct__7cSGlobeFRC7cSGlobe
/* 8008EECC  3B 20 00 00 */	li r25, 0
/* 8008EED0  3B E1 01 7A */	addi r31, r1, 0x17a
/* 8008EED4  3B 41 01 78 */	addi r26, r1, 0x178
/* 8008EED8  57 BD 06 3E */	clrlwi r29, r29, 0x18
lbl_8008EEDC:
/* 8008EEDC  38 61 02 B8 */	addi r3, r1, 0x2b8
/* 8008EEE0  38 81 01 74 */	addi r4, r1, 0x174
/* 8008EEE4  48 1E 2B D1 */	bl Xyz__7cSGlobeCFv
/* 8008EEE8  38 61 02 AC */	addi r3, r1, 0x2ac
/* 8008EEEC  38 9E 00 0C */	addi r4, r30, 0xc
/* 8008EEF0  38 A1 02 B8 */	addi r5, r1, 0x2b8
/* 8008EEF4  48 1D 7B F1 */	bl __pl__4cXyzCFRC3Vec
/* 8008EEF8  38 61 03 30 */	addi r3, r1, 0x330
/* 8008EEFC  38 81 02 AC */	addi r4, r1, 0x2ac
/* 8008EF00  48 00 88 D9 */	bl __as__4cXyzFRC4cXyz
/* 8008EF04  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8008EF08  41 82 00 68 */	beq lbl_8008EF70
/* 8008EF0C  7F 63 DB 78 */	mr r3, r27
/* 8008EF10  38 9E 00 0C */	addi r4, r30, 0xc
/* 8008EF14  38 A1 03 30 */	addi r5, r1, 0x330
/* 8008EF18  38 C0 40 07 */	li r6, 0x4007
/* 8008EF1C  48 0D 6B D5 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8008EF20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008EF24  40 82 00 4C */	bne lbl_8008EF70
/* 8008EF28  38 61 02 A0 */	addi r3, r1, 0x2a0
/* 8008EF2C  38 9E 00 0C */	addi r4, r30, 0xc
/* 8008EF30  48 00 88 C5 */	bl __ct__4cXyzFRC4cXyz
/* 8008EF34  38 61 02 94 */	addi r3, r1, 0x294
/* 8008EF38  38 81 03 30 */	addi r4, r1, 0x330
/* 8008EF3C  48 00 88 B9 */	bl __ct__4cXyzFRC4cXyz
/* 8008EF40  38 61 02 A0 */	addi r3, r1, 0x2a0
/* 8008EF44  38 81 02 94 */	addi r4, r1, 0x294
/* 8008EF48  80 BB 01 80 */	lwz r5, 0x180(r27)
/* 8008EF4C  80 DE 00 34 */	lwz r6, 0x34(r30)
/* 8008EF50  38 E0 00 00 */	li r7, 0
/* 8008EF54  48 00 0B 41 */	bl func_8008FA94
/* 8008EF58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008EF5C  40 82 00 14 */	bne lbl_8008EF70
/* 8008EF60  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8008EF64  38 81 01 74 */	addi r4, r1, 0x174
/* 8008EF68  4B FF F8 0D */	bl __as__7cSGlobeFRC7cSGlobe
/* 8008EF6C  48 00 00 E0 */	b lbl_8008F04C
lbl_8008EF70:
/* 8008EF70  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8008EF74  7F E4 FB 78 */	mr r4, r31
/* 8008EF78  38 A1 01 44 */	addi r5, r1, 0x144
/* 8008EF7C  48 1E 21 F9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008EF80  38 61 01 74 */	addi r3, r1, 0x174
/* 8008EF84  38 81 00 E4 */	addi r4, r1, 0xe4
/* 8008EF88  4B FF F9 0D */	bl U__7cSGlobeFRC7cSAngle
/* 8008EF8C  28 1D 00 00 */	cmplwi r29, 0
/* 8008EF90  41 82 00 58 */	beq lbl_8008EFE8
/* 8008EF94  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8008EF98  7F 64 DB 78 */	mr r4, r27
/* 8008EF9C  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008EFA0  48 00 87 99 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008EFA4  38 61 00 DC */	addi r3, r1, 0xdc
/* 8008EFA8  7F E4 FB 78 */	mr r4, r31
/* 8008EFAC  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 8008EFB0  48 1E 21 F5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008EFB4  38 61 01 40 */	addi r3, r1, 0x140
/* 8008EFB8  38 81 00 DC */	addi r4, r1, 0xdc
/* 8008EFBC  48 1E 1F AD */	bl __ct__7cSAngleFRC7cSAngle
/* 8008EFC0  38 61 01 40 */	addi r3, r1, 0x140
/* 8008EFC4  48 1E 20 6D */	bl Degree__7cSAngleCFv
/* 8008EFC8  FC 00 0A 10 */	fabs f0, f1
/* 8008EFCC  FC 20 00 18 */	frsp f1, f0
/* 8008EFD0  C0 02 8F 34 */	lfs f0, lit_7345(r2)
/* 8008EFD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008EFD8  40 80 00 0C */	bge lbl_8008EFE4
/* 8008EFDC  3B 80 00 01 */	li r28, 1
/* 8008EFE0  48 00 00 08 */	b lbl_8008EFE8
lbl_8008EFE4:
/* 8008EFE4  3B 80 00 00 */	li r28, 0
lbl_8008EFE8:
/* 8008EFE8  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8008EFEC  57 20 07 BD */	rlwinm. r0, r25, 0, 0x1e, 0x1e
/* 8008EFF0  41 82 00 0C */	beq lbl_8008EFFC
/* 8008EFF4  C0 22 8F 24 */	lfs f1, lit_7341(r2)
/* 8008EFF8  48 00 00 08 */	b lbl_8008F000
lbl_8008EFFC:
/* 8008EFFC  C0 22 8F 20 */	lfs f1, lit_7340(r2)
lbl_8008F000:
/* 8008F000  48 1E 1F C9 */	bl __ct__7cSAngleFf
/* 8008F004  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8008F008  7F 44 D3 78 */	mr r4, r26
/* 8008F00C  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 8008F010  48 1E 21 65 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008F014  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8008F018  7F 44 D3 78 */	mr r4, r26
/* 8008F01C  C0 22 8F 38 */	lfs f1, lit_7346(r2)
/* 8008F020  48 1E 22 45 */	bl __ml__7cSAngleCFf
/* 8008F024  38 61 00 CC */	addi r3, r1, 0xcc
/* 8008F028  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8008F02C  38 A1 00 D0 */	addi r5, r1, 0xd0
/* 8008F030  48 1E 21 75 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008F034  38 61 01 74 */	addi r3, r1, 0x174
/* 8008F038  38 81 00 CC */	addi r4, r1, 0xcc
/* 8008F03C  48 00 0A 1D */	bl V__7cSGlobeFRC7cSAngle
/* 8008F040  3B 39 00 01 */	addi r25, r25, 1
/* 8008F044  2C 19 00 2D */	cmpwi r25, 0x2d
/* 8008F048  41 80 FE 94 */	blt lbl_8008EEDC
lbl_8008F04C:
/* 8008F04C  38 61 01 74 */	addi r3, r1, 0x174
/* 8008F050  38 80 FF FF */	li r4, -1
/* 8008F054  4B FE 26 29 */	bl __dt__7cSGlobeFv
/* 8008F058  38 61 01 7C */	addi r3, r1, 0x17c
/* 8008F05C  38 80 FF FF */	li r4, -1
/* 8008F060  4B FE 26 1D */	bl __dt__7cSGlobeFv
/* 8008F064  38 61 01 84 */	addi r3, r1, 0x184
/* 8008F068  38 80 FF FF */	li r4, -1
/* 8008F06C  4B FE 26 11 */	bl __dt__7cSGlobeFv
lbl_8008F070:
/* 8008F070  80 7B 01 74 */	lwz r3, 0x174(r27)
/* 8008F074  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8008F078  7C 03 00 40 */	cmplw r3, r0
/* 8008F07C  40 80 09 B0 */	bge lbl_8008FA2C
/* 8008F080  C8 22 8E E8 */	lfd f1, lit_5846(r2)
/* 8008F084  90 61 03 4C */	stw r3, 0x34c(r1)
/* 8008F088  3C 60 43 30 */	lis r3, 0x4330
/* 8008F08C  90 61 03 48 */	stw r3, 0x348(r1)
/* 8008F090  C8 01 03 48 */	lfd f0, 0x348(r1)
/* 8008F094  EC 40 08 28 */	fsubs f2, f0, f1
/* 8008F098  C8 22 8E F8 */	lfd f1, lit_5962(r2)
/* 8008F09C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8008F0A0  90 01 03 54 */	stw r0, 0x354(r1)
/* 8008F0A4  90 61 03 50 */	stw r3, 0x350(r1)
/* 8008F0A8  C8 01 03 50 */	lfd f0, 0x350(r1)
/* 8008F0AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8008F0B0  EF E2 00 24 */	fdivs f31, f2, f0
/* 8008F0B4  38 61 02 88 */	addi r3, r1, 0x288
/* 8008F0B8  38 9E 00 0C */	addi r4, r30, 0xc
/* 8008F0BC  38 BB 00 64 */	addi r5, r27, 0x64
/* 8008F0C0  48 1D 7A 75 */	bl __mi__4cXyzCFRC3Vec
/* 8008F0C4  38 61 02 7C */	addi r3, r1, 0x27c
/* 8008F0C8  38 81 02 88 */	addi r4, r1, 0x288
/* 8008F0CC  FC 20 F8 90 */	fmr f1, f31
/* 8008F0D0  48 1D 7A B5 */	bl __ml__4cXyzCFf
/* 8008F0D4  38 7B 00 64 */	addi r3, r27, 0x64
/* 8008F0D8  38 81 02 7C */	addi r4, r1, 0x27c
/* 8008F0DC  7C 65 1B 78 */	mr r5, r3
/* 8008F0E0  48 2B 7F B1 */	bl PSVECAdd
/* 8008F0E4  3B 3B 00 5C */	addi r25, r27, 0x5c
/* 8008F0E8  C0 3B 00 5C */	lfs f1, 0x5c(r27)
/* 8008F0EC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8008F0F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8008F0F4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8008F0F8  EC 01 00 2A */	fadds f0, f1, f0
/* 8008F0FC  D0 1B 00 5C */	stfs f0, 0x5c(r27)
/* 8008F100  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8008F104  38 9E 00 52 */	addi r4, r30, 0x52
/* 8008F108  38 B9 00 06 */	addi r5, r25, 6
/* 8008F10C  48 1E 20 99 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008F110  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8008F114  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8008F118  FC 20 F8 90 */	fmr f1, f31
/* 8008F11C  48 1E 21 49 */	bl __ml__7cSAngleCFf
/* 8008F120  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8008F124  38 99 00 06 */	addi r4, r25, 6
/* 8008F128  38 A1 00 C4 */	addi r5, r1, 0xc4
/* 8008F12C  48 1E 20 49 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008F130  7F 23 CB 78 */	mr r3, r25
/* 8008F134  38 81 00 C0 */	addi r4, r1, 0xc0
/* 8008F138  4B FF F7 5D */	bl U__7cSGlobeFRC7cSAngle
/* 8008F13C  38 61 00 BC */	addi r3, r1, 0xbc
/* 8008F140  38 9E 00 50 */	addi r4, r30, 0x50
/* 8008F144  38 B9 00 04 */	addi r5, r25, 4
/* 8008F148  48 1E 20 5D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008F14C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8008F150  38 81 00 BC */	addi r4, r1, 0xbc
/* 8008F154  FC 20 F8 90 */	fmr f1, f31
/* 8008F158  48 1E 21 0D */	bl __ml__7cSAngleCFf
/* 8008F15C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8008F160  38 99 00 04 */	addi r4, r25, 4
/* 8008F164  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 8008F168  48 1E 20 0D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008F16C  7F 23 CB 78 */	mr r3, r25
/* 8008F170  38 81 00 B4 */	addi r4, r1, 0xb4
/* 8008F174  48 00 08 E5 */	bl V__7cSGlobeFRC7cSAngle
/* 8008F178  38 61 02 70 */	addi r3, r1, 0x270
/* 8008F17C  7F 24 CB 78 */	mr r4, r25
/* 8008F180  48 1E 29 35 */	bl Xyz__7cSGlobeCFv
/* 8008F184  38 61 02 64 */	addi r3, r1, 0x264
/* 8008F188  38 9B 00 64 */	addi r4, r27, 0x64
/* 8008F18C  38 A1 02 70 */	addi r5, r1, 0x270
/* 8008F190  48 1D 79 55 */	bl __pl__4cXyzCFRC3Vec
/* 8008F194  38 7B 00 70 */	addi r3, r27, 0x70
/* 8008F198  38 81 02 64 */	addi r4, r1, 0x264
/* 8008F19C  48 00 86 3D */	bl __as__4cXyzFRC4cXyz
/* 8008F1A0  C0 5B 00 80 */	lfs f2, 0x80(r27)
/* 8008F1A4  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8008F1A8  C0 1B 00 58 */	lfs f0, 0x58(r27)
/* 8008F1AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8008F1B0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8008F1B4  EC 02 00 2A */	fadds f0, f2, f0
/* 8008F1B8  D0 1B 00 80 */	stfs f0, 0x80(r27)
/* 8008F1BC  38 60 00 00 */	li r3, 0
/* 8008F1C0  48 00 08 78 */	b lbl_8008FA38
lbl_8008F1C4:
/* 8008F1C4  80 1B 01 74 */	lwz r0, 0x174(r27)
/* 8008F1C8  28 00 00 00 */	cmplwi r0, 0
/* 8008F1CC  40 82 03 78 */	bne lbl_8008F544
/* 8008F1D0  38 61 02 58 */	addi r3, r1, 0x258
/* 8008F1D4  7F 64 DB 78 */	mr r4, r27
/* 8008F1D8  80 BB 01 80 */	lwz r5, 0x180(r27)
/* 8008F1DC  48 00 85 41 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008F1E0  38 61 02 4C */	addi r3, r1, 0x24c
/* 8008F1E4  38 81 02 58 */	addi r4, r1, 0x258
/* 8008F1E8  38 BE 00 0C */	addi r5, r30, 0xc
/* 8008F1EC  48 1D 79 49 */	bl __mi__4cXyzCFRC3Vec
/* 8008F1F0  38 61 01 6C */	addi r3, r1, 0x16c
/* 8008F1F4  38 81 02 4C */	addi r4, r1, 0x24c
/* 8008F1F8  48 1E 26 89 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008F1FC  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 8008F200  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8008F204  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8008F208  41 82 00 18 */	beq lbl_8008F220
/* 8008F20C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8008F210  48 1E 1D B9 */	bl __ct__7cSAngleFf
/* 8008F214  38 61 01 6C */	addi r3, r1, 0x16c
/* 8008F218  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8008F21C  48 00 08 3D */	bl V__7cSGlobeFRC7cSAngle
lbl_8008F220:
/* 8008F220  38 61 00 AC */	addi r3, r1, 0xac
/* 8008F224  7F 64 DB 78 */	mr r4, r27
/* 8008F228  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008F22C  48 00 85 0D */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008F230  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8008F234  3B E1 01 72 */	addi r31, r1, 0x172
/* 8008F238  7F E4 FB 78 */	mr r4, r31
/* 8008F23C  38 A1 00 AC */	addi r5, r1, 0xac
/* 8008F240  48 1E 1F 65 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008F244  38 61 01 3C */	addi r3, r1, 0x13c
/* 8008F248  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8008F24C  48 1E 1D 1D */	bl __ct__7cSAngleFRC7cSAngle
/* 8008F250  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8008F254  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8008F258  FC 20 00 50 */	fneg f1, f0
/* 8008F25C  48 1E 1D 6D */	bl __ct__7cSAngleFf
/* 8008F260  A8 01 01 3C */	lha r0, 0x13c(r1)
/* 8008F264  A8 81 00 A4 */	lha r4, 0xa4(r1)
/* 8008F268  7C 80 02 78 */	xor r0, r4, r0
/* 8008F26C  7C 03 0E 70 */	srawi r3, r0, 1
/* 8008F270  7C 00 20 38 */	and r0, r0, r4
/* 8008F274  7C 00 18 50 */	subf r0, r0, r3
/* 8008F278  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8008F27C  41 82 00 44 */	beq lbl_8008F2C0
/* 8008F280  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8008F284  7F 64 DB 78 */	mr r4, r27
/* 8008F288  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008F28C  48 00 84 AD */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008F290  38 61 00 9C */	addi r3, r1, 0x9c
/* 8008F294  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8008F298  FC 20 00 50 */	fneg f1, f0
/* 8008F29C  48 1E 1D 2D */	bl __ct__7cSAngleFf
/* 8008F2A0  38 61 00 98 */	addi r3, r1, 0x98
/* 8008F2A4  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8008F2A8  38 A1 00 9C */	addi r5, r1, 0x9c
/* 8008F2AC  48 1E 1E C9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008F2B0  38 61 01 6C */	addi r3, r1, 0x16c
/* 8008F2B4  38 81 00 98 */	addi r4, r1, 0x98
/* 8008F2B8  4B FF F5 DD */	bl U__7cSGlobeFRC7cSAngle
/* 8008F2BC  48 00 00 68 */	b lbl_8008F324
lbl_8008F2C0:
/* 8008F2C0  38 61 00 94 */	addi r3, r1, 0x94
/* 8008F2C4  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8008F2C8  48 1E 1D 01 */	bl __ct__7cSAngleFf
/* 8008F2CC  A8 81 01 3C */	lha r4, 0x13c(r1)
/* 8008F2D0  A8 01 00 94 */	lha r0, 0x94(r1)
/* 8008F2D4  7C 80 02 78 */	xor r0, r4, r0
/* 8008F2D8  7C 03 0E 70 */	srawi r3, r0, 1
/* 8008F2DC  7C 00 20 38 */	and r0, r0, r4
/* 8008F2E0  7C 00 18 50 */	subf r0, r0, r3
/* 8008F2E4  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8008F2E8  41 82 00 3C */	beq lbl_8008F324
/* 8008F2EC  38 61 00 90 */	addi r3, r1, 0x90
/* 8008F2F0  7F 64 DB 78 */	mr r4, r27
/* 8008F2F4  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008F2F8  48 00 84 41 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008F2FC  38 61 00 8C */	addi r3, r1, 0x8c
/* 8008F300  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8008F304  48 1E 1C C5 */	bl __ct__7cSAngleFf
/* 8008F308  38 61 00 88 */	addi r3, r1, 0x88
/* 8008F30C  38 81 00 90 */	addi r4, r1, 0x90
/* 8008F310  38 A1 00 8C */	addi r5, r1, 0x8c
/* 8008F314  48 1E 1E 61 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008F318  38 61 01 6C */	addi r3, r1, 0x16c
/* 8008F31C  38 81 00 88 */	addi r4, r1, 0x88
/* 8008F320  4B FF F5 75 */	bl U__7cSGlobeFRC7cSAngle
lbl_8008F324:
/* 8008F324  C0 21 01 6C */	lfs f1, 0x16c(r1)
/* 8008F328  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8008F32C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8008F330  FC 00 02 10 */	fabs f0, f0
/* 8008F334  FC 20 00 18 */	frsp f1, f0
/* 8008F338  C0 02 8F 3C */	lfs f0, lit_7347(r2)
/* 8008F33C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008F340  40 80 00 20 */	bge lbl_8008F360
/* 8008F344  38 61 00 84 */	addi r3, r1, 0x84
/* 8008F348  7F E4 FB 78 */	mr r4, r31
/* 8008F34C  38 A0 03 84 */	li r5, 0x384
/* 8008F350  48 1E 1E AD */	bl __pl__7cSAngleCFs
/* 8008F354  38 61 01 6C */	addi r3, r1, 0x16c
/* 8008F358  38 81 00 84 */	addi r4, r1, 0x84
/* 8008F35C  4B FF F5 39 */	bl U__7cSGlobeFRC7cSAngle
lbl_8008F360:
/* 8008F360  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8008F364  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8008F368  38 81 01 70 */	addi r4, r1, 0x170
/* 8008F36C  7F E5 FB 78 */	mr r5, r31
/* 8008F370  48 1E 26 99 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 8008F374  A8 61 01 3C */	lha r3, 0x13c(r1)
/* 8008F378  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8008F37C  7C 03 00 00 */	cmpw r3, r0
/* 8008F380  41 80 00 14 */	blt lbl_8008F394
/* 8008F384  38 61 01 38 */	addi r3, r1, 0x138
/* 8008F388  C0 22 8F 2C */	lfs f1, lit_7343(r2)
/* 8008F38C  48 1E 1C 81 */	bl Val__7cSAngleFf
/* 8008F390  48 00 00 10 */	b lbl_8008F3A0
lbl_8008F394:
/* 8008F394  38 61 01 38 */	addi r3, r1, 0x138
/* 8008F398  C0 22 8F 30 */	lfs f1, lit_7344(r2)
/* 8008F39C  48 1E 1C 71 */	bl Val__7cSAngleFf
lbl_8008F3A0:
/* 8008F3A0  38 61 01 64 */	addi r3, r1, 0x164
/* 8008F3A4  38 9E 00 4C */	addi r4, r30, 0x4c
/* 8008F3A8  48 1E 24 49 */	bl __ct__7cSGlobeFRC7cSGlobe
/* 8008F3AC  3B 20 00 00 */	li r25, 0
/* 8008F3B0  3B 41 01 6A */	addi r26, r1, 0x16a
/* 8008F3B4  3B E1 01 68 */	addi r31, r1, 0x168
/* 8008F3B8  57 BD 06 3E */	clrlwi r29, r29, 0x18
lbl_8008F3BC:
/* 8008F3BC  38 61 02 40 */	addi r3, r1, 0x240
/* 8008F3C0  38 81 01 64 */	addi r4, r1, 0x164
/* 8008F3C4  48 1E 26 F1 */	bl Xyz__7cSGlobeCFv
/* 8008F3C8  38 61 02 34 */	addi r3, r1, 0x234
/* 8008F3CC  38 9E 00 0C */	addi r4, r30, 0xc
/* 8008F3D0  38 A1 02 40 */	addi r5, r1, 0x240
/* 8008F3D4  48 1D 77 11 */	bl __pl__4cXyzCFRC3Vec
/* 8008F3D8  38 61 03 24 */	addi r3, r1, 0x324
/* 8008F3DC  38 81 02 34 */	addi r4, r1, 0x234
/* 8008F3E0  48 00 83 F9 */	bl __as__4cXyzFRC4cXyz
/* 8008F3E4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8008F3E8  41 82 00 68 */	beq lbl_8008F450
/* 8008F3EC  7F 63 DB 78 */	mr r3, r27
/* 8008F3F0  38 9E 00 0C */	addi r4, r30, 0xc
/* 8008F3F4  38 A1 03 24 */	addi r5, r1, 0x324
/* 8008F3F8  38 C0 40 07 */	li r6, 0x4007
/* 8008F3FC  48 0D 66 F5 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8008F400  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008F404  40 82 00 4C */	bne lbl_8008F450
/* 8008F408  38 61 02 28 */	addi r3, r1, 0x228
/* 8008F40C  38 9E 00 0C */	addi r4, r30, 0xc
/* 8008F410  48 00 83 E5 */	bl __ct__4cXyzFRC4cXyz
/* 8008F414  38 61 02 1C */	addi r3, r1, 0x21c
/* 8008F418  38 81 03 24 */	addi r4, r1, 0x324
/* 8008F41C  48 00 83 D9 */	bl __ct__4cXyzFRC4cXyz
/* 8008F420  38 61 02 28 */	addi r3, r1, 0x228
/* 8008F424  38 81 02 1C */	addi r4, r1, 0x21c
/* 8008F428  80 BB 01 80 */	lwz r5, 0x180(r27)
/* 8008F42C  80 DE 00 34 */	lwz r6, 0x34(r30)
/* 8008F430  38 E0 00 00 */	li r7, 0
/* 8008F434  48 00 06 61 */	bl func_8008FA94
/* 8008F438  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008F43C  40 82 00 14 */	bne lbl_8008F450
/* 8008F440  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8008F444  38 81 01 64 */	addi r4, r1, 0x164
/* 8008F448  4B FF F3 2D */	bl __as__7cSGlobeFRC7cSGlobe
/* 8008F44C  48 00 00 E0 */	b lbl_8008F52C
lbl_8008F450:
/* 8008F450  38 61 00 80 */	addi r3, r1, 0x80
/* 8008F454  7F 44 D3 78 */	mr r4, r26
/* 8008F458  38 A1 01 38 */	addi r5, r1, 0x138
/* 8008F45C  48 1E 1D 19 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008F460  38 61 01 64 */	addi r3, r1, 0x164
/* 8008F464  38 81 00 80 */	addi r4, r1, 0x80
/* 8008F468  4B FF F4 2D */	bl U__7cSGlobeFRC7cSAngle
/* 8008F46C  28 1D 00 00 */	cmplwi r29, 0
/* 8008F470  41 82 00 58 */	beq lbl_8008F4C8
/* 8008F474  38 61 00 7C */	addi r3, r1, 0x7c
/* 8008F478  7F 64 DB 78 */	mr r4, r27
/* 8008F47C  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008F480  48 00 82 B9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008F484  38 61 00 78 */	addi r3, r1, 0x78
/* 8008F488  7F 44 D3 78 */	mr r4, r26
/* 8008F48C  38 A1 00 7C */	addi r5, r1, 0x7c
/* 8008F490  48 1E 1D 15 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008F494  38 61 01 34 */	addi r3, r1, 0x134
/* 8008F498  38 81 00 78 */	addi r4, r1, 0x78
/* 8008F49C  48 1E 1A CD */	bl __ct__7cSAngleFRC7cSAngle
/* 8008F4A0  38 61 01 34 */	addi r3, r1, 0x134
/* 8008F4A4  48 1E 1B 8D */	bl Degree__7cSAngleCFv
/* 8008F4A8  FC 00 0A 10 */	fabs f0, f1
/* 8008F4AC  FC 20 00 18 */	frsp f1, f0
/* 8008F4B0  C0 02 8F 34 */	lfs f0, lit_7345(r2)
/* 8008F4B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008F4B8  40 80 00 0C */	bge lbl_8008F4C4
/* 8008F4BC  3B 80 00 01 */	li r28, 1
/* 8008F4C0  48 00 00 08 */	b lbl_8008F4C8
lbl_8008F4C4:
/* 8008F4C4  3B 80 00 00 */	li r28, 0
lbl_8008F4C8:
/* 8008F4C8  38 61 00 74 */	addi r3, r1, 0x74
/* 8008F4CC  57 20 07 BD */	rlwinm. r0, r25, 0, 0x1e, 0x1e
/* 8008F4D0  41 82 00 0C */	beq lbl_8008F4DC
/* 8008F4D4  C0 22 8F 24 */	lfs f1, lit_7341(r2)
/* 8008F4D8  48 00 00 08 */	b lbl_8008F4E0
lbl_8008F4DC:
/* 8008F4DC  C0 22 8F 20 */	lfs f1, lit_7340(r2)
lbl_8008F4E0:
/* 8008F4E0  48 1E 1A E9 */	bl __ct__7cSAngleFf
/* 8008F4E4  38 61 00 70 */	addi r3, r1, 0x70
/* 8008F4E8  7F E4 FB 78 */	mr r4, r31
/* 8008F4EC  38 A1 00 74 */	addi r5, r1, 0x74
/* 8008F4F0  48 1E 1C 85 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008F4F4  38 61 00 6C */	addi r3, r1, 0x6c
/* 8008F4F8  7F E4 FB 78 */	mr r4, r31
/* 8008F4FC  C0 22 8F 38 */	lfs f1, lit_7346(r2)
/* 8008F500  48 1E 1D 65 */	bl __ml__7cSAngleCFf
/* 8008F504  38 61 00 68 */	addi r3, r1, 0x68
/* 8008F508  38 81 00 70 */	addi r4, r1, 0x70
/* 8008F50C  38 A1 00 6C */	addi r5, r1, 0x6c
/* 8008F510  48 1E 1C 95 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008F514  38 61 01 64 */	addi r3, r1, 0x164
/* 8008F518  38 81 00 68 */	addi r4, r1, 0x68
/* 8008F51C  48 00 05 3D */	bl V__7cSGlobeFRC7cSAngle
/* 8008F520  3B 39 00 01 */	addi r25, r25, 1
/* 8008F524  2C 19 00 2D */	cmpwi r25, 0x2d
/* 8008F528  41 80 FE 94 */	blt lbl_8008F3BC
lbl_8008F52C:
/* 8008F52C  38 61 01 64 */	addi r3, r1, 0x164
/* 8008F530  38 80 FF FF */	li r4, -1
/* 8008F534  4B FE 21 49 */	bl __dt__7cSGlobeFv
/* 8008F538  38 61 01 6C */	addi r3, r1, 0x16c
/* 8008F53C  38 80 FF FF */	li r4, -1
/* 8008F540  4B FE 21 3D */	bl __dt__7cSGlobeFv
lbl_8008F544:
/* 8008F544  80 7B 01 74 */	lwz r3, 0x174(r27)
/* 8008F548  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8008F54C  7C 03 00 40 */	cmplw r3, r0
/* 8008F550  40 80 04 DC */	bge lbl_8008FA2C
/* 8008F554  C8 22 8E E8 */	lfd f1, lit_5846(r2)
/* 8008F558  90 61 03 54 */	stw r3, 0x354(r1)
/* 8008F55C  3C 60 43 30 */	lis r3, 0x4330
/* 8008F560  90 61 03 50 */	stw r3, 0x350(r1)
/* 8008F564  C8 01 03 50 */	lfd f0, 0x350(r1)
/* 8008F568  EC 40 08 28 */	fsubs f2, f0, f1
/* 8008F56C  C8 22 8E F8 */	lfd f1, lit_5962(r2)
/* 8008F570  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8008F574  90 01 03 4C */	stw r0, 0x34c(r1)
/* 8008F578  90 61 03 48 */	stw r3, 0x348(r1)
/* 8008F57C  C8 01 03 48 */	lfd f0, 0x348(r1)
/* 8008F580  EC 00 08 28 */	fsubs f0, f0, f1
/* 8008F584  EF E2 00 24 */	fdivs f31, f2, f0
/* 8008F588  38 61 02 10 */	addi r3, r1, 0x210
/* 8008F58C  38 9E 00 0C */	addi r4, r30, 0xc
/* 8008F590  38 BB 00 64 */	addi r5, r27, 0x64
/* 8008F594  48 1D 75 A1 */	bl __mi__4cXyzCFRC3Vec
/* 8008F598  38 61 02 04 */	addi r3, r1, 0x204
/* 8008F59C  38 81 02 10 */	addi r4, r1, 0x210
/* 8008F5A0  FC 20 F8 90 */	fmr f1, f31
/* 8008F5A4  48 1D 75 E1 */	bl __ml__4cXyzCFf
/* 8008F5A8  38 7B 00 64 */	addi r3, r27, 0x64
/* 8008F5AC  38 81 02 04 */	addi r4, r1, 0x204
/* 8008F5B0  7C 65 1B 78 */	mr r5, r3
/* 8008F5B4  48 2B 7A DD */	bl PSVECAdd
/* 8008F5B8  3B 3B 00 5C */	addi r25, r27, 0x5c
/* 8008F5BC  C0 3B 00 5C */	lfs f1, 0x5c(r27)
/* 8008F5C0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8008F5C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8008F5C8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8008F5CC  EC 01 00 2A */	fadds f0, f1, f0
/* 8008F5D0  D0 1B 00 5C */	stfs f0, 0x5c(r27)
/* 8008F5D4  38 61 00 64 */	addi r3, r1, 0x64
/* 8008F5D8  38 9E 00 52 */	addi r4, r30, 0x52
/* 8008F5DC  38 B9 00 06 */	addi r5, r25, 6
/* 8008F5E0  48 1E 1B C5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008F5E4  38 61 00 60 */	addi r3, r1, 0x60
/* 8008F5E8  38 81 00 64 */	addi r4, r1, 0x64
/* 8008F5EC  FC 20 F8 90 */	fmr f1, f31
/* 8008F5F0  48 1E 1C 75 */	bl __ml__7cSAngleCFf
/* 8008F5F4  38 61 00 5C */	addi r3, r1, 0x5c
/* 8008F5F8  38 99 00 06 */	addi r4, r25, 6
/* 8008F5FC  38 A1 00 60 */	addi r5, r1, 0x60
/* 8008F600  48 1E 1B 75 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008F604  7F 23 CB 78 */	mr r3, r25
/* 8008F608  38 81 00 5C */	addi r4, r1, 0x5c
/* 8008F60C  4B FF F2 89 */	bl U__7cSGlobeFRC7cSAngle
/* 8008F610  38 61 00 58 */	addi r3, r1, 0x58
/* 8008F614  38 9E 00 50 */	addi r4, r30, 0x50
/* 8008F618  38 B9 00 04 */	addi r5, r25, 4
/* 8008F61C  48 1E 1B 89 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008F620  38 61 00 54 */	addi r3, r1, 0x54
/* 8008F624  38 81 00 58 */	addi r4, r1, 0x58
/* 8008F628  FC 20 F8 90 */	fmr f1, f31
/* 8008F62C  48 1E 1C 39 */	bl __ml__7cSAngleCFf
/* 8008F630  38 61 00 50 */	addi r3, r1, 0x50
/* 8008F634  38 99 00 04 */	addi r4, r25, 4
/* 8008F638  38 A1 00 54 */	addi r5, r1, 0x54
/* 8008F63C  48 1E 1B 39 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008F640  7F 23 CB 78 */	mr r3, r25
/* 8008F644  38 81 00 50 */	addi r4, r1, 0x50
/* 8008F648  48 00 04 11 */	bl V__7cSGlobeFRC7cSAngle
/* 8008F64C  38 61 01 F8 */	addi r3, r1, 0x1f8
/* 8008F650  7F 24 CB 78 */	mr r4, r25
/* 8008F654  48 1E 24 61 */	bl Xyz__7cSGlobeCFv
/* 8008F658  38 61 01 EC */	addi r3, r1, 0x1ec
/* 8008F65C  38 9B 00 64 */	addi r4, r27, 0x64
/* 8008F660  38 A1 01 F8 */	addi r5, r1, 0x1f8
/* 8008F664  48 1D 74 81 */	bl __pl__4cXyzCFRC3Vec
/* 8008F668  38 7B 00 70 */	addi r3, r27, 0x70
/* 8008F66C  38 81 01 EC */	addi r4, r1, 0x1ec
/* 8008F670  48 00 81 69 */	bl __as__4cXyzFRC4cXyz
/* 8008F674  C0 5B 00 80 */	lfs f2, 0x80(r27)
/* 8008F678  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8008F67C  C0 1B 00 58 */	lfs f0, 0x58(r27)
/* 8008F680  EC 01 00 28 */	fsubs f0, f1, f0
/* 8008F684  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8008F688  EC 02 00 2A */	fadds f0, f2, f0
/* 8008F68C  D0 1B 00 80 */	stfs f0, 0x80(r27)
/* 8008F690  38 60 00 00 */	li r3, 0
/* 8008F694  48 00 03 A4 */	b lbl_8008FA38
lbl_8008F698:
/* 8008F698  80 1B 01 74 */	lwz r0, 0x174(r27)
/* 8008F69C  28 00 00 00 */	cmplwi r0, 0
/* 8008F6A0  40 82 03 50 */	bne lbl_8008F9F0
/* 8008F6A4  38 7B 00 64 */	addi r3, r27, 0x64
/* 8008F6A8  38 9E 00 0C */	addi r4, r30, 0xc
/* 8008F6AC  48 00 81 2D */	bl __as__4cXyzFRC4cXyz
/* 8008F6B0  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 8008F6B4  7F 64 DB 78 */	mr r4, r27
/* 8008F6B8  80 BB 01 80 */	lwz r5, 0x180(r27)
/* 8008F6BC  48 00 80 61 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008F6C0  38 61 01 D4 */	addi r3, r1, 0x1d4
/* 8008F6C4  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 8008F6C8  38 BE 00 0C */	addi r5, r30, 0xc
/* 8008F6CC  48 1D 74 69 */	bl __mi__4cXyzCFRC3Vec
/* 8008F6D0  38 61 01 5C */	addi r3, r1, 0x15c
/* 8008F6D4  38 81 01 D4 */	addi r4, r1, 0x1d4
/* 8008F6D8  48 1E 21 A9 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008F6DC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8008F6E0  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 8008F6E4  38 61 00 4C */	addi r3, r1, 0x4c
/* 8008F6E8  7F 64 DB 78 */	mr r4, r27
/* 8008F6EC  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008F6F0  48 00 80 49 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008F6F4  38 61 00 48 */	addi r3, r1, 0x48
/* 8008F6F8  3B E1 01 62 */	addi r31, r1, 0x162
/* 8008F6FC  7F E4 FB 78 */	mr r4, r31
/* 8008F700  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8008F704  48 1E 1A A1 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008F708  38 61 01 30 */	addi r3, r1, 0x130
/* 8008F70C  38 81 00 48 */	addi r4, r1, 0x48
/* 8008F710  48 1E 18 59 */	bl __ct__7cSAngleFRC7cSAngle
/* 8008F714  38 61 00 44 */	addi r3, r1, 0x44
/* 8008F718  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8008F71C  FC 20 00 50 */	fneg f1, f0
/* 8008F720  48 1E 18 A9 */	bl __ct__7cSAngleFf
/* 8008F724  A8 01 01 30 */	lha r0, 0x130(r1)
/* 8008F728  A8 81 00 44 */	lha r4, 0x44(r1)
/* 8008F72C  7C 80 02 78 */	xor r0, r4, r0
/* 8008F730  7C 03 0E 70 */	srawi r3, r0, 1
/* 8008F734  7C 00 20 38 */	and r0, r0, r4
/* 8008F738  7C 00 18 50 */	subf r0, r0, r3
/* 8008F73C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8008F740  41 82 00 44 */	beq lbl_8008F784
/* 8008F744  38 61 00 40 */	addi r3, r1, 0x40
/* 8008F748  7F 64 DB 78 */	mr r4, r27
/* 8008F74C  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008F750  48 00 7F E9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008F754  38 61 00 3C */	addi r3, r1, 0x3c
/* 8008F758  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8008F75C  FC 20 00 50 */	fneg f1, f0
/* 8008F760  48 1E 18 69 */	bl __ct__7cSAngleFf
/* 8008F764  38 61 00 38 */	addi r3, r1, 0x38
/* 8008F768  38 81 00 40 */	addi r4, r1, 0x40
/* 8008F76C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8008F770  48 1E 1A 05 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008F774  38 61 01 5C */	addi r3, r1, 0x15c
/* 8008F778  38 81 00 38 */	addi r4, r1, 0x38
/* 8008F77C  4B FF F1 19 */	bl U__7cSGlobeFRC7cSAngle
/* 8008F780  48 00 00 68 */	b lbl_8008F7E8
lbl_8008F784:
/* 8008F784  38 61 00 34 */	addi r3, r1, 0x34
/* 8008F788  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8008F78C  48 1E 18 3D */	bl __ct__7cSAngleFf
/* 8008F790  A8 81 01 30 */	lha r4, 0x130(r1)
/* 8008F794  A8 01 00 34 */	lha r0, 0x34(r1)
/* 8008F798  7C 80 02 78 */	xor r0, r4, r0
/* 8008F79C  7C 03 0E 70 */	srawi r3, r0, 1
/* 8008F7A0  7C 00 20 38 */	and r0, r0, r4
/* 8008F7A4  7C 00 18 50 */	subf r0, r0, r3
/* 8008F7A8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8008F7AC  41 82 00 3C */	beq lbl_8008F7E8
/* 8008F7B0  38 61 00 30 */	addi r3, r1, 0x30
/* 8008F7B4  7F 64 DB 78 */	mr r4, r27
/* 8008F7B8  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008F7BC  48 00 7F 7D */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008F7C0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8008F7C4  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8008F7C8  48 1E 18 01 */	bl __ct__7cSAngleFf
/* 8008F7CC  38 61 00 28 */	addi r3, r1, 0x28
/* 8008F7D0  38 81 00 30 */	addi r4, r1, 0x30
/* 8008F7D4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8008F7D8  48 1E 19 9D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008F7DC  38 61 01 5C */	addi r3, r1, 0x15c
/* 8008F7E0  38 81 00 28 */	addi r4, r1, 0x28
/* 8008F7E4  4B FF F0 B1 */	bl U__7cSGlobeFRC7cSAngle
lbl_8008F7E8:
/* 8008F7E8  C0 02 8E B8 */	lfs f0, lit_5141(r2)
/* 8008F7EC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8008F7F0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8008F7F4  41 82 00 18 */	beq lbl_8008F80C
/* 8008F7F8  38 61 00 24 */	addi r3, r1, 0x24
/* 8008F7FC  48 1E 17 CD */	bl __ct__7cSAngleFf
/* 8008F800  38 61 01 5C */	addi r3, r1, 0x15c
/* 8008F804  38 81 00 24 */	addi r4, r1, 0x24
/* 8008F808  48 00 02 51 */	bl V__7cSGlobeFRC7cSAngle
lbl_8008F80C:
/* 8008F80C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8008F810  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8008F814  38 81 01 60 */	addi r4, r1, 0x160
/* 8008F818  7F E5 FB 78 */	mr r5, r31
/* 8008F81C  48 1E 21 ED */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 8008F820  A8 61 01 30 */	lha r3, 0x130(r1)
/* 8008F824  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8008F828  7C 03 00 00 */	cmpw r3, r0
/* 8008F82C  41 80 00 14 */	blt lbl_8008F840
/* 8008F830  38 61 01 2C */	addi r3, r1, 0x12c
/* 8008F834  C0 22 8F 2C */	lfs f1, lit_7343(r2)
/* 8008F838  48 1E 17 D5 */	bl Val__7cSAngleFf
/* 8008F83C  48 00 00 10 */	b lbl_8008F84C
lbl_8008F840:
/* 8008F840  38 61 01 2C */	addi r3, r1, 0x12c
/* 8008F844  C0 22 8F 30 */	lfs f1, lit_7344(r2)
/* 8008F848  48 1E 17 C5 */	bl Val__7cSAngleFf
lbl_8008F84C:
/* 8008F84C  38 61 01 54 */	addi r3, r1, 0x154
/* 8008F850  38 9E 00 4C */	addi r4, r30, 0x4c
/* 8008F854  48 1E 1F 9D */	bl __ct__7cSGlobeFRC7cSGlobe
/* 8008F858  3B 20 00 00 */	li r25, 0
/* 8008F85C  3B 41 01 5A */	addi r26, r1, 0x15a
/* 8008F860  3B E1 01 58 */	addi r31, r1, 0x158
/* 8008F864  57 BD 06 3E */	clrlwi r29, r29, 0x18
lbl_8008F868:
/* 8008F868  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 8008F86C  38 81 01 54 */	addi r4, r1, 0x154
/* 8008F870  48 1E 22 45 */	bl Xyz__7cSGlobeCFv
/* 8008F874  38 61 01 BC */	addi r3, r1, 0x1bc
/* 8008F878  38 9E 00 0C */	addi r4, r30, 0xc
/* 8008F87C  38 A1 01 C8 */	addi r5, r1, 0x1c8
/* 8008F880  48 1D 72 65 */	bl __pl__4cXyzCFRC3Vec
/* 8008F884  38 61 03 18 */	addi r3, r1, 0x318
/* 8008F888  38 81 01 BC */	addi r4, r1, 0x1bc
/* 8008F88C  48 00 7F 4D */	bl __as__4cXyzFRC4cXyz
/* 8008F890  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8008F894  41 82 00 68 */	beq lbl_8008F8FC
/* 8008F898  7F 63 DB 78 */	mr r3, r27
/* 8008F89C  38 9E 00 0C */	addi r4, r30, 0xc
/* 8008F8A0  38 A1 03 18 */	addi r5, r1, 0x318
/* 8008F8A4  38 C0 40 07 */	li r6, 0x4007
/* 8008F8A8  48 0D 62 49 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8008F8AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008F8B0  40 82 00 4C */	bne lbl_8008F8FC
/* 8008F8B4  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 8008F8B8  38 9E 00 0C */	addi r4, r30, 0xc
/* 8008F8BC  48 00 7F 39 */	bl __ct__4cXyzFRC4cXyz
/* 8008F8C0  38 61 01 A4 */	addi r3, r1, 0x1a4
/* 8008F8C4  38 81 03 18 */	addi r4, r1, 0x318
/* 8008F8C8  48 00 7F 2D */	bl __ct__4cXyzFRC4cXyz
/* 8008F8CC  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 8008F8D0  38 81 01 A4 */	addi r4, r1, 0x1a4
/* 8008F8D4  80 BB 01 80 */	lwz r5, 0x180(r27)
/* 8008F8D8  80 DE 00 34 */	lwz r6, 0x34(r30)
/* 8008F8DC  38 E0 00 00 */	li r7, 0
/* 8008F8E0  48 00 01 B5 */	bl func_8008FA94
/* 8008F8E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008F8E8  40 82 00 14 */	bne lbl_8008F8FC
/* 8008F8EC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8008F8F0  38 81 01 54 */	addi r4, r1, 0x154
/* 8008F8F4  4B FF EE 81 */	bl __as__7cSGlobeFRC7cSGlobe
/* 8008F8F8  48 00 00 E0 */	b lbl_8008F9D8
lbl_8008F8FC:
/* 8008F8FC  38 61 00 20 */	addi r3, r1, 0x20
/* 8008F900  7F 44 D3 78 */	mr r4, r26
/* 8008F904  38 A1 01 2C */	addi r5, r1, 0x12c
/* 8008F908  48 1E 18 6D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008F90C  38 61 01 54 */	addi r3, r1, 0x154
/* 8008F910  38 81 00 20 */	addi r4, r1, 0x20
/* 8008F914  4B FF EF 81 */	bl U__7cSGlobeFRC7cSAngle
/* 8008F918  28 1D 00 00 */	cmplwi r29, 0
/* 8008F91C  41 82 00 58 */	beq lbl_8008F974
/* 8008F920  38 61 00 1C */	addi r3, r1, 0x1c
/* 8008F924  7F 64 DB 78 */	mr r4, r27
/* 8008F928  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8008F92C  48 00 7E 0D */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008F930  38 61 00 18 */	addi r3, r1, 0x18
/* 8008F934  7F 44 D3 78 */	mr r4, r26
/* 8008F938  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8008F93C  48 1E 18 69 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008F940  38 61 01 28 */	addi r3, r1, 0x128
/* 8008F944  38 81 00 18 */	addi r4, r1, 0x18
/* 8008F948  48 1E 16 21 */	bl __ct__7cSAngleFRC7cSAngle
/* 8008F94C  38 61 01 28 */	addi r3, r1, 0x128
/* 8008F950  48 1E 16 E1 */	bl Degree__7cSAngleCFv
/* 8008F954  FC 00 0A 10 */	fabs f0, f1
/* 8008F958  FC 20 00 18 */	frsp f1, f0
/* 8008F95C  C0 02 8F 34 */	lfs f0, lit_7345(r2)
/* 8008F960  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008F964  40 80 00 0C */	bge lbl_8008F970
/* 8008F968  3B 80 00 01 */	li r28, 1
/* 8008F96C  48 00 00 08 */	b lbl_8008F974
lbl_8008F970:
/* 8008F970  3B 80 00 00 */	li r28, 0
lbl_8008F974:
/* 8008F974  38 61 00 14 */	addi r3, r1, 0x14
/* 8008F978  57 20 07 BD */	rlwinm. r0, r25, 0, 0x1e, 0x1e
/* 8008F97C  41 82 00 0C */	beq lbl_8008F988
/* 8008F980  C0 22 8F 24 */	lfs f1, lit_7341(r2)
/* 8008F984  48 00 00 08 */	b lbl_8008F98C
lbl_8008F988:
/* 8008F988  C0 22 8F 20 */	lfs f1, lit_7340(r2)
lbl_8008F98C:
/* 8008F98C  48 1E 16 3D */	bl __ct__7cSAngleFf
/* 8008F990  38 61 00 10 */	addi r3, r1, 0x10
/* 8008F994  7F E4 FB 78 */	mr r4, r31
/* 8008F998  38 A1 00 14 */	addi r5, r1, 0x14
/* 8008F99C  48 1E 17 D9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008F9A0  38 61 00 0C */	addi r3, r1, 0xc
/* 8008F9A4  7F E4 FB 78 */	mr r4, r31
/* 8008F9A8  C0 22 8F 38 */	lfs f1, lit_7346(r2)
/* 8008F9AC  48 1E 18 B9 */	bl __ml__7cSAngleCFf
/* 8008F9B0  38 61 00 08 */	addi r3, r1, 8
/* 8008F9B4  38 81 00 10 */	addi r4, r1, 0x10
/* 8008F9B8  38 A1 00 0C */	addi r5, r1, 0xc
/* 8008F9BC  48 1E 17 E9 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008F9C0  38 61 01 54 */	addi r3, r1, 0x154
/* 8008F9C4  38 81 00 08 */	addi r4, r1, 8
/* 8008F9C8  48 00 00 91 */	bl V__7cSGlobeFRC7cSAngle
/* 8008F9CC  3B 39 00 01 */	addi r25, r25, 1
/* 8008F9D0  2C 19 00 2D */	cmpwi r25, 0x2d
/* 8008F9D4  41 80 FE 94 */	blt lbl_8008F868
lbl_8008F9D8:
/* 8008F9D8  38 61 01 54 */	addi r3, r1, 0x154
/* 8008F9DC  38 80 FF FF */	li r4, -1
/* 8008F9E0  4B FE 1C 9D */	bl __dt__7cSGlobeFv
/* 8008F9E4  38 61 01 5C */	addi r3, r1, 0x15c
/* 8008F9E8  38 80 FF FF */	li r4, -1
/* 8008F9EC  4B FE 1C 91 */	bl __dt__7cSGlobeFv
lbl_8008F9F0:
/* 8008F9F0  38 7B 00 5C */	addi r3, r27, 0x5c
/* 8008F9F4  38 9E 00 4C */	addi r4, r30, 0x4c
/* 8008F9F8  4B FF ED 7D */	bl __as__7cSGlobeFRC7cSGlobe
/* 8008F9FC  38 61 01 98 */	addi r3, r1, 0x198
/* 8008FA00  38 9B 00 5C */	addi r4, r27, 0x5c
/* 8008FA04  48 1E 20 B1 */	bl Xyz__7cSGlobeCFv
/* 8008FA08  38 61 01 8C */	addi r3, r1, 0x18c
/* 8008FA0C  38 9B 00 64 */	addi r4, r27, 0x64
/* 8008FA10  38 A1 01 98 */	addi r5, r1, 0x198
/* 8008FA14  48 1D 70 D1 */	bl __pl__4cXyzCFRC3Vec
/* 8008FA18  38 7B 00 70 */	addi r3, r27, 0x70
/* 8008FA1C  38 81 01 8C */	addi r4, r1, 0x18c
/* 8008FA20  48 00 7D B9 */	bl __as__4cXyzFRC4cXyz
/* 8008FA24  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8008FA28  D0 1B 00 80 */	stfs f0, 0x80(r27)
lbl_8008FA2C:
/* 8008FA2C  38 00 00 01 */	li r0, 1
/* 8008FA30  98 1B 01 58 */	stb r0, 0x158(r27)
/* 8008FA34  38 60 00 01 */	li r3, 1
lbl_8008FA38:
/* 8008FA38  E3 E1 03 88 */	psq_l f31, 904(r1), 0, 0 /* qr0 */
/* 8008FA3C  CB E1 03 80 */	lfd f31, 0x380(r1)
/* 8008FA40  39 61 03 80 */	addi r11, r1, 0x380
/* 8008FA44  48 2D 27 D5 */	bl _restgpr_25
/* 8008FA48  80 01 03 94 */	lwz r0, 0x394(r1)
/* 8008FA4C  7C 08 03 A6 */	mtlr r0
/* 8008FA50  38 21 03 90 */	addi r1, r1, 0x390
/* 8008FA54  4E 80 00 20 */	blr 
