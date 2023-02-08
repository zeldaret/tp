lbl_80A8A8F4:
/* 80A8A8F4  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80A8A8F8  7C 08 02 A6 */	mflr r0
/* 80A8A8FC  90 01 01 04 */	stw r0, 0x104(r1)
/* 80A8A900  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80A8A904  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 80A8A908  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80A8A90C  4B 8D 78 C1 */	bl _savegpr_25
/* 80A8A910  7C 79 1B 78 */	mr r25, r3
/* 80A8A914  7C 9A 23 78 */	mr r26, r4
/* 80A8A918  3C 60 80 A9 */	lis r3, lit_3990@ha /* 0x80A9241C@ha */
/* 80A8A91C  3B C3 24 1C */	addi r30, r3, lit_3990@l /* 0x80A9241C@l */
/* 80A8A920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A8A924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8A928  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80A8A92C  38 61 00 74 */	addi r3, r1, 0x74
/* 80A8A930  4B 5E CE 81 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 80A8A934  38 61 00 20 */	addi r3, r1, 0x20
/* 80A8A938  4B 5E CC 45 */	bl __ct__11dBgS_GndChkFv
/* 80A8A93C  3B 60 00 00 */	li r27, 0
/* 80A8A940  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A8A944  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8A948  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80A8A94C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A8A950  3B E3 07 68 */	addi r31, r3, calc_mtx@l /* 0x80450768@l */
/* 80A8A954  C3 FE 00 18 */	lfs f31, 0x18(r30)
lbl_80A8A958:
/* 80A8A958  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A8A95C  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80A8A960  4B 58 1A 7D */	bl mDoMtx_YrotS__FPA4_fs
/* 80A8A964  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 80A8A968  2C 1B 00 00 */	cmpwi r27, 0
/* 80A8A96C  40 82 00 18 */	bne lbl_80A8A984
/* 80A8A970  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A8A974  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A8A978  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80A8A97C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8A980  48 00 00 60 */	b lbl_80A8A9E0
lbl_80A8A984:
/* 80A8A984  2C 1B 00 01 */	cmpwi r27, 1
/* 80A8A988  40 82 00 18 */	bne lbl_80A8A9A0
/* 80A8A98C  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80A8A990  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A8A994  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80A8A998  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8A99C  48 00 00 44 */	b lbl_80A8A9E0
lbl_80A8A9A0:
/* 80A8A9A0  2C 1B 00 02 */	cmpwi r27, 2
/* 80A8A9A4  40 82 00 18 */	bne lbl_80A8A9BC
/* 80A8A9A8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80A8A9AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A8A9B0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80A8A9B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8A9B8  48 00 00 28 */	b lbl_80A8A9E0
lbl_80A8A9BC:
/* 80A8A9BC  2C 1B 00 03 */	cmpwi r27, 3
/* 80A8A9C0  40 82 00 14 */	bne lbl_80A8A9D4
/* 80A8A9C4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80A8A9C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A8A9CC  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 80A8A9D0  48 00 00 10 */	b lbl_80A8A9E0
lbl_80A8A9D4:
/* 80A8A9D4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80A8A9D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A8A9DC  D3 E1 00 1C */	stfs f31, 0x1c(r1)
lbl_80A8A9E0:
/* 80A8A9E0  38 61 00 14 */	addi r3, r1, 0x14
/* 80A8A9E4  38 81 00 08 */	addi r4, r1, 8
/* 80A8A9E8  4B 7E 65 05 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A8A9EC  38 61 00 08 */	addi r3, r1, 8
/* 80A8A9F0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A8A9F4  7C 65 1B 78 */	mr r5, r3
/* 80A8A9F8  4B 8B C6 99 */	bl PSVECAdd
/* 80A8A9FC  38 61 00 20 */	addi r3, r1, 0x20
/* 80A8AA00  38 81 00 08 */	addi r4, r1, 8
/* 80A8AA04  4B 7D D3 25 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80A8AA08  7F A3 EB 78 */	mr r3, r29
/* 80A8AA0C  38 81 00 20 */	addi r4, r1, 0x20
/* 80A8AA10  4B 5E 9A 91 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80A8AA14  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A8AA18  FC 20 08 18 */	frsp f1, f1
/* 80A8AA1C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80A8AA20  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A8AA24  FC 00 02 10 */	fabs f0, f0
/* 80A8AA28  FC 00 00 18 */	frsp f0, f0
/* 80A8AA2C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80A8AA30  40 80 00 5C */	bge lbl_80A8AA8C
/* 80A8AA34  38 61 00 74 */	addi r3, r1, 0x74
/* 80A8AA38  38 81 00 08 */	addi r4, r1, 8
/* 80A8AA3C  4B 7D D2 ED */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80A8AA40  7F A3 EB 78 */	mr r3, r29
/* 80A8AA44  38 81 00 74 */	addi r4, r1, 0x74
/* 80A8AA48  4B 5E 9A 59 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80A8AA4C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A8AA50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8AA54  40 80 00 38 */	bge lbl_80A8AA8C
/* 80A8AA58  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A8AA5C  D0 19 00 00 */	stfs f0, 0(r25)
/* 80A8AA60  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A8AA64  D0 19 00 04 */	stfs f0, 4(r25)
/* 80A8AA68  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A8AA6C  D0 19 00 08 */	stfs f0, 8(r25)
/* 80A8AA70  38 61 00 20 */	addi r3, r1, 0x20
/* 80A8AA74  38 80 FF FF */	li r4, -1
/* 80A8AA78  4B 5E CB 79 */	bl __dt__11dBgS_GndChkFv
/* 80A8AA7C  38 61 00 74 */	addi r3, r1, 0x74
/* 80A8AA80  38 80 FF FF */	li r4, -1
/* 80A8AA84  4B 5E CD C5 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 80A8AA88  48 00 00 40 */	b lbl_80A8AAC8
lbl_80A8AA8C:
/* 80A8AA8C  3B 7B 00 01 */	addi r27, r27, 1
/* 80A8AA90  2C 1B 00 04 */	cmpwi r27, 4
/* 80A8AA94  40 81 FE C4 */	ble lbl_80A8A958
/* 80A8AA98  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80A8AA9C  D0 19 00 00 */	stfs f0, 0(r25)
/* 80A8AAA0  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80A8AAA4  D0 19 00 04 */	stfs f0, 4(r25)
/* 80A8AAA8  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80A8AAAC  D0 19 00 08 */	stfs f0, 8(r25)
/* 80A8AAB0  38 61 00 20 */	addi r3, r1, 0x20
/* 80A8AAB4  38 80 FF FF */	li r4, -1
/* 80A8AAB8  4B 5E CB 39 */	bl __dt__11dBgS_GndChkFv
/* 80A8AABC  38 61 00 74 */	addi r3, r1, 0x74
/* 80A8AAC0  38 80 FF FF */	li r4, -1
/* 80A8AAC4  4B 5E CD 85 */	bl __dt__18dBgS_ObjGndChk_SplFv
lbl_80A8AAC8:
/* 80A8AAC8  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 80A8AACC  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80A8AAD0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80A8AAD4  4B 8D 77 45 */	bl _restgpr_25
/* 80A8AAD8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80A8AADC  7C 08 03 A6 */	mtlr r0
/* 80A8AAE0  38 21 01 00 */	addi r1, r1, 0x100
/* 80A8AAE4  4E 80 00 20 */	blr 
