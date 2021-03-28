lbl_807A08BC:
/* 807A08BC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 807A08C0  7C 08 02 A6 */	mflr r0
/* 807A08C4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 807A08C8  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 807A08CC  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 807A08D0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807A08D4  4B BC 19 00 */	b _savegpr_27
/* 807A08D8  7C 7F 1B 78 */	mr r31, r3
/* 807A08DC  3C 60 80 7A */	lis r3, lit_3903@ha
/* 807A08E0  3B A3 68 24 */	addi r29, r3, lit_3903@l
/* 807A08E4  38 61 00 5C */	addi r3, r1, 0x5c
/* 807A08E8  38 9F 07 44 */	addi r4, r31, 0x744
/* 807A08EC  38 BF 07 10 */	addi r5, r31, 0x710
/* 807A08F0  4B AC 62 44 */	b __mi__4cXyzCFRC3Vec
/* 807A08F4  38 61 00 50 */	addi r3, r1, 0x50
/* 807A08F8  38 81 00 5C */	addi r4, r1, 0x5c
/* 807A08FC  C0 3D 00 CC */	lfs f1, 0xcc(r29)
/* 807A0900  4B AC 62 84 */	b __ml__4cXyzCFf
/* 807A0904  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807A0908  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807A090C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807A0910  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807A0914  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 807A0918  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807A091C  80 7F 07 40 */	lwz r3, 0x740(r31)
/* 807A0920  83 83 00 00 */	lwz r28, 0(r3)
/* 807A0924  3B 60 00 00 */	li r27, 0
/* 807A0928  CB FD 00 D0 */	lfd f31, 0xd0(r29)
/* 807A092C  3F C0 43 30 */	lis r30, 0x4330
lbl_807A0930:
/* 807A0930  38 61 00 44 */	addi r3, r1, 0x44
/* 807A0934  38 81 00 68 */	addi r4, r1, 0x68
/* 807A0938  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 807A093C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 807A0940  93 C1 00 78 */	stw r30, 0x78(r1)
/* 807A0944  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 807A0948  EC 20 F8 28 */	fsubs f1, f0, f31
/* 807A094C  4B AC 62 38 */	b __ml__4cXyzCFf
/* 807A0950  38 61 00 38 */	addi r3, r1, 0x38
/* 807A0954  38 9F 07 10 */	addi r4, r31, 0x710
/* 807A0958  38 A1 00 44 */	addi r5, r1, 0x44
/* 807A095C  4B AC 61 88 */	b __pl__4cXyzCFRC3Vec
/* 807A0960  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807A0964  D0 1C 00 00 */	stfs f0, 0(r28)
/* 807A0968  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807A096C  D0 1C 00 04 */	stfs f0, 4(r28)
/* 807A0970  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807A0974  D0 1C 00 08 */	stfs f0, 8(r28)
/* 807A0978  3B 7B 00 01 */	addi r27, r27, 1
/* 807A097C  2C 1B 00 14 */	cmpwi r27, 0x14
/* 807A0980  3B 9C 00 0C */	addi r28, r28, 0xc
/* 807A0984  41 80 FF AC */	blt lbl_807A0930
/* 807A0988  C0 3F 07 48 */	lfs f1, 0x748(r31)
/* 807A098C  C0 1F 07 14 */	lfs f0, 0x714(r31)
/* 807A0990  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A0994  FC 00 02 10 */	fabs f0, f0
/* 807A0998  FC 20 00 18 */	frsp f1, f0
/* 807A099C  38 7F 0F 54 */	addi r3, r31, 0xf54
/* 807A09A0  4B AC E8 58 */	b SetH__8cM3dGCylFf
/* 807A09A4  38 7F 0F 54 */	addi r3, r31, 0xf54
/* 807A09A8  38 9F 07 10 */	addi r4, r31, 0x710
/* 807A09AC  4B AC E8 30 */	b SetC__8cM3dGCylFRC4cXyz
/* 807A09B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A09B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A09B8  38 63 23 3C */	addi r3, r3, 0x233c
/* 807A09BC  38 9F 0E 30 */	addi r4, r31, 0xe30
/* 807A09C0  4B AC 41 E8 */	b Set__4cCcSFP8cCcD_Obj
/* 807A09C4  38 7F 0E 30 */	addi r3, r31, 0xe30
/* 807A09C8  4B 8E 3A 98 */	b ChkTgHit__12dCcD_GObjInfFv
/* 807A09CC  28 03 00 00 */	cmplwi r3, 0
/* 807A09D0  41 82 01 54 */	beq lbl_807A0B24
/* 807A09D4  38 00 00 0C */	li r0, 0xc
/* 807A09D8  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 807A09DC  38 00 00 00 */	li r0, 0
/* 807A09E0  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 807A09E4  38 7F 0E 30 */	addi r3, r31, 0xe30
/* 807A09E8  4B 8E 3B 10 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807A09EC  7C 64 1B 78 */	mr r4, r3
/* 807A09F0  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 807A09F4  38 A0 00 21 */	li r5, 0x21
/* 807A09F8  38 C0 00 00 */	li r6, 0
/* 807A09FC  4B 8E 6B 18 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 807A0A00  C0 1F 07 44 */	lfs f0, 0x744(r31)
/* 807A0A04  D0 1F 07 50 */	stfs f0, 0x750(r31)
/* 807A0A08  C0 1F 07 48 */	lfs f0, 0x748(r31)
/* 807A0A0C  D0 1F 07 54 */	stfs f0, 0x754(r31)
/* 807A0A10  C0 1F 07 4C */	lfs f0, 0x74c(r31)
/* 807A0A14  D0 1F 07 58 */	stfs f0, 0x758(r31)
/* 807A0A18  C0 1F 0F 08 */	lfs f0, 0xf08(r31)
/* 807A0A1C  D0 1F 07 54 */	stfs f0, 0x754(r31)
/* 807A0A20  C0 3F 07 54 */	lfs f1, 0x754(r31)
/* 807A0A24  C0 1F 07 14 */	lfs f0, 0x714(r31)
/* 807A0A28  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A0A2C  D0 1F 07 64 */	stfs f0, 0x764(r31)
/* 807A0A30  C0 3F 07 64 */	lfs f1, 0x764(r31)
/* 807A0A34  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807A0A38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A0A3C  40 80 00 08 */	bge lbl_807A0A44
/* 807A0A40  D0 1F 07 64 */	stfs f0, 0x764(r31)
lbl_807A0A44:
/* 807A0A44  38 00 00 01 */	li r0, 1
/* 807A0A48  98 1F 07 60 */	stb r0, 0x760(r31)
/* 807A0A4C  38 61 00 2C */	addi r3, r1, 0x2c
/* 807A0A50  38 9F 07 50 */	addi r4, r31, 0x750
/* 807A0A54  38 BF 07 10 */	addi r5, r31, 0x710
/* 807A0A58  4B AC 60 DC */	b __mi__4cXyzCFRC3Vec
/* 807A0A5C  38 61 00 20 */	addi r3, r1, 0x20
/* 807A0A60  38 81 00 2C */	addi r4, r1, 0x2c
/* 807A0A64  C0 3D 00 CC */	lfs f1, 0xcc(r29)
/* 807A0A68  4B AC 61 1C */	b __ml__4cXyzCFf
/* 807A0A6C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807A0A70  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807A0A74  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807A0A78  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807A0A7C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 807A0A80  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807A0A84  80 7F 07 80 */	lwz r3, 0x780(r31)
/* 807A0A88  83 63 00 00 */	lwz r27, 0(r3)
/* 807A0A8C  3B 80 00 00 */	li r28, 0
/* 807A0A90  CB FD 00 D0 */	lfd f31, 0xd0(r29)
/* 807A0A94  3F C0 43 30 */	lis r30, 0x4330
lbl_807A0A98:
/* 807A0A98  38 61 00 14 */	addi r3, r1, 0x14
/* 807A0A9C  38 81 00 68 */	addi r4, r1, 0x68
/* 807A0AA0  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 807A0AA4  90 01 00 7C */	stw r0, 0x7c(r1)
/* 807A0AA8  93 C1 00 78 */	stw r30, 0x78(r1)
/* 807A0AAC  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 807A0AB0  EC 20 F8 28 */	fsubs f1, f0, f31
/* 807A0AB4  4B AC 60 D0 */	b __ml__4cXyzCFf
/* 807A0AB8  38 61 00 08 */	addi r3, r1, 8
/* 807A0ABC  38 9F 07 10 */	addi r4, r31, 0x710
/* 807A0AC0  38 A1 00 14 */	addi r5, r1, 0x14
/* 807A0AC4  4B AC 60 20 */	b __pl__4cXyzCFRC3Vec
/* 807A0AC8  C0 01 00 08 */	lfs f0, 8(r1)
/* 807A0ACC  D0 1B 00 00 */	stfs f0, 0(r27)
/* 807A0AD0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807A0AD4  D0 1B 00 04 */	stfs f0, 4(r27)
/* 807A0AD8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807A0ADC  D0 1B 00 08 */	stfs f0, 8(r27)
/* 807A0AE0  3B 9C 00 01 */	addi r28, r28, 1
/* 807A0AE4  2C 1C 00 14 */	cmpwi r28, 0x14
/* 807A0AE8  3B 7B 00 0C */	addi r27, r27, 0xc
/* 807A0AEC  41 80 FF AC */	blt lbl_807A0A98
/* 807A0AF0  38 00 00 02 */	li r0, 2
/* 807A0AF4  98 1F 07 20 */	stb r0, 0x720(r31)
/* 807A0AF8  C0 5D 00 58 */	lfs f2, 0x58(r29)
/* 807A0AFC  C0 3F 07 48 */	lfs f1, 0x748(r31)
/* 807A0B00  C0 1F 07 54 */	lfs f0, 0x754(r31)
/* 807A0B04  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A0B08  EC 02 00 32 */	fmuls f0, f2, f0
/* 807A0B0C  D0 1F 07 5C */	stfs f0, 0x75c(r31)
/* 807A0B10  C0 3F 07 5C */	lfs f1, 0x75c(r31)
/* 807A0B14  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 807A0B18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A0B1C  40 81 00 08 */	ble lbl_807A0B24
/* 807A0B20  D0 1F 07 5C */	stfs f0, 0x75c(r31)
lbl_807A0B24:
/* 807A0B24  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 807A0B28  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 807A0B2C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807A0B30  4B BC 16 F0 */	b _restgpr_27
/* 807A0B34  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 807A0B38  7C 08 03 A6 */	mtlr r0
/* 807A0B3C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 807A0B40  4E 80 00 20 */	blr 
