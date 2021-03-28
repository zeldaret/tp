lbl_800CC7FC:
/* 800CC7FC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800CC800  7C 08 02 A6 */	mflr r0
/* 800CC804  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800CC808  39 61 00 A0 */	addi r11, r1, 0xa0
/* 800CC80C  48 29 59 B9 */	bl _savegpr_23
/* 800CC810  7C 7C 1B 78 */	mr r28, r3
/* 800CC814  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800CC818  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CC81C  41 82 00 20 */	beq lbl_800CC83C
/* 800CC820  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800CC824  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800CC828  38 80 00 09 */	li r4, 9
/* 800CC82C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 800CC830  38 DC 01 0C */	addi r6, r28, 0x10c
/* 800CC834  48 0D 6F 91 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 800CC838  48 00 00 1C */	b lbl_800CC854
lbl_800CC83C:
/* 800CC83C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800CC840  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800CC844  38 80 00 0A */	li r4, 0xa
/* 800CC848  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 800CC84C  38 DC 01 0C */	addi r6, r28, 0x10c
/* 800CC850  48 0D 6F 75 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_800CC854:
/* 800CC854  7F 83 E3 78 */	mr r3, r28
/* 800CC858  4B FF FF 85 */	bl initTevCustomColor__9daAlink_cFv
/* 800CC85C  88 1C 20 68 */	lbz r0, 0x2068(r28)
/* 800CC860  28 00 00 00 */	cmplwi r0, 0
/* 800CC864  41 82 00 1C */	beq lbl_800CC880
/* 800CC868  7F 83 E3 78 */	mr r3, r28
/* 800CC86C  48 04 93 B5 */	bl checkEventRun__9daAlink_cCFv
/* 800CC870  2C 03 00 00 */	cmpwi r3, 0
/* 800CC874  40 82 00 0C */	bne lbl_800CC880
/* 800CC878  38 7C 20 64 */	addi r3, r28, 0x2064
/* 800CC87C  48 09 2A 81 */	bl setSight__18daPy_sightPacket_cFv
lbl_800CC880:
/* 800CC880  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800CC884  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800CC888  41 82 00 68 */	beq lbl_800CC8F0
/* 800CC88C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CC890  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CC894  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800CC898  38 63 02 10 */	addi r3, r3, 0x210
/* 800CC89C  80 9C 31 C4 */	lwz r4, 0x31c4(r28)
/* 800CC8A0  4B F7 F0 79 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 800CC8A4  7C 7B 1B 79 */	or. r27, r3, r3
/* 800CC8A8  41 82 00 48 */	beq lbl_800CC8F0
/* 800CC8AC  7F 83 E3 78 */	mr r3, r28
/* 800CC8B0  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800CC8B4  81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 800CC8B8  7D 89 03 A6 */	mtctr r12
/* 800CC8BC  4E 80 04 21 */	bctrl 
/* 800CC8C0  28 03 00 00 */	cmplwi r3, 0
/* 800CC8C4  41 82 00 20 */	beq lbl_800CC8E4
/* 800CC8C8  80 1C 05 8C */	lwz r0, 0x58c(r28)
/* 800CC8CC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800CC8D0  40 82 00 14 */	bne lbl_800CC8E4
/* 800CC8D4  80 1B 00 F4 */	lwz r0, 0xf4(r27)
/* 800CC8D8  60 00 00 04 */	ori r0, r0, 4
/* 800CC8DC  90 1B 00 F4 */	stw r0, 0xf4(r27)
/* 800CC8E0  48 00 00 10 */	b lbl_800CC8F0
lbl_800CC8E4:
/* 800CC8E4  80 1B 00 F4 */	lwz r0, 0xf4(r27)
/* 800CC8E8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 800CC8EC  90 1B 00 F4 */	stw r0, 0xf4(r27)
lbl_800CC8F0:
/* 800CC8F0  88 1C 2F BF */	lbz r0, 0x2fbf(r28)
/* 800CC8F4  28 00 00 00 */	cmplwi r0, 0
/* 800CC8F8  41 82 00 68 */	beq lbl_800CC960
/* 800CC8FC  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 800CC900  28 00 01 4D */	cmplwi r0, 0x14d
/* 800CC904  40 82 00 54 */	bne lbl_800CC958
/* 800CC908  A8 1C 30 0E */	lha r0, 0x300e(r28)
/* 800CC90C  2C 00 00 00 */	cmpwi r0, 0
/* 800CC910  40 81 00 10 */	ble lbl_800CC920
/* 800CC914  38 00 00 FF */	li r0, 0xff
/* 800CC918  B0 1C 04 64 */	sth r0, 0x464(r28)
/* 800CC91C  48 00 00 0C */	b lbl_800CC928
lbl_800CC920:
/* 800CC920  38 00 FF 01 */	li r0, -255
/* 800CC924  B0 1C 04 64 */	sth r0, 0x464(r28)
lbl_800CC928:
/* 800CC928  A8 1C 04 64 */	lha r0, 0x464(r28)
/* 800CC92C  B0 1C 04 66 */	sth r0, 0x466(r28)
/* 800CC930  A8 1C 04 64 */	lha r0, 0x464(r28)
/* 800CC934  B0 1C 04 68 */	sth r0, 0x468(r28)
/* 800CC938  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800CC93C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800CC940  80 9C 06 74 */	lwz r4, 0x674(r28)
/* 800CC944  80 84 00 04 */	lwz r4, 4(r4)
/* 800CC948  38 BC 01 0C */	addi r5, r28, 0x10c
/* 800CC94C  48 0D 84 55 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 800CC950  80 7C 06 74 */	lwz r3, 0x674(r28)
/* 800CC954  4B F4 14 11 */	bl mDoExt_modelEntryDL__FP8J3DModel
lbl_800CC958:
/* 800CC958  38 60 00 01 */	li r3, 1
/* 800CC95C  48 00 0E 18 */	b lbl_800CD774
lbl_800CC960:
/* 800CC960  7F 83 E3 78 */	mr r3, r28
/* 800CC964  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800CC968  81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 800CC96C  7D 89 03 A6 */	mtctr r12
/* 800CC970  4E 80 04 21 */	bctrl 
/* 800CC974  7C 7E 1B 78 */	mr r30, r3
/* 800CC978  3B A0 00 00 */	li r29, 0
/* 800CC97C  3B E0 00 01 */	li r31, 1
/* 800CC980  80 7C 06 F4 */	lwz r3, 0x6f4(r28)
/* 800CC984  28 03 00 00 */	cmplwi r3, 0
/* 800CC988  41 82 00 14 */	beq lbl_800CC99C
/* 800CC98C  38 80 00 00 */	li r4, 0
/* 800CC990  38 BC 04 64 */	addi r5, r28, 0x464
/* 800CC994  48 25 E8 65 */	bl getTevColorReg__15J3DAnmTevRegKeyCFUsP11_GXColorS10
/* 800CC998  48 00 03 A8 */	b lbl_800CCD40
lbl_800CC99C:
/* 800CC99C  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 800CC9A0  28 00 01 4D */	cmplwi r0, 0x14d
/* 800CC9A4  41 82 00 14 */	beq lbl_800CC9B8
/* 800CC9A8  28 00 00 EB */	cmplwi r0, 0xeb
/* 800CC9AC  41 82 00 0C */	beq lbl_800CC9B8
/* 800CC9B0  28 00 00 EC */	cmplwi r0, 0xec
/* 800CC9B4  40 82 00 20 */	bne lbl_800CC9D4
lbl_800CC9B8:
/* 800CC9B8  A8 1C 30 0E */	lha r0, 0x300e(r28)
/* 800CC9BC  B0 1C 04 64 */	sth r0, 0x464(r28)
/* 800CC9C0  A8 1C 30 0E */	lha r0, 0x300e(r28)
/* 800CC9C4  B0 1C 04 66 */	sth r0, 0x466(r28)
/* 800CC9C8  A8 1C 30 0E */	lha r0, 0x300e(r28)
/* 800CC9CC  B0 1C 04 68 */	sth r0, 0x468(r28)
/* 800CC9D0  48 00 03 70 */	b lbl_800CCD40
lbl_800CC9D4:
/* 800CC9D4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800CC9D8  C0 3C 34 6C */	lfs f1, 0x346c(r28)
/* 800CC9DC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 800CC9E0  41 82 00 A4 */	beq lbl_800CCA84
/* 800CC9E4  FC 00 0A 10 */	fabs f0, f1
/* 800CC9E8  FC 40 00 18 */	frsp f2, f0
/* 800CC9EC  3C 60 80 39 */	lis r3, m__18daAlinkHIO_wolf_c0@ha
/* 800CC9F0  38 83 F9 F8 */	addi r4, r3, m__18daAlinkHIO_wolf_c0@l
/* 800CC9F4  A8 04 00 0E */	lha r0, 0xe(r4)
/* 800CC9F8  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800CC9FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CCA00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800CCA04  3C 60 43 30 */	lis r3, 0x4330
/* 800CCA08  90 61 00 18 */	stw r3, 0x18(r1)
/* 800CCA0C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800CCA10  EC 00 08 28 */	fsubs f0, f0, f1
/* 800CCA14  EC 02 00 32 */	fmuls f0, f2, f0
/* 800CCA18  FC 00 00 1E */	fctiwz f0, f0
/* 800CCA1C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800CCA20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CCA24  B0 1C 04 64 */	sth r0, 0x464(r28)
/* 800CCA28  A8 04 00 10 */	lha r0, 0x10(r4)
/* 800CCA2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CCA30  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800CCA34  90 61 00 28 */	stw r3, 0x28(r1)
/* 800CCA38  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800CCA3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800CCA40  EC 02 00 32 */	fmuls f0, f2, f0
/* 800CCA44  FC 00 00 1E */	fctiwz f0, f0
/* 800CCA48  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 800CCA4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800CCA50  B0 1C 04 66 */	sth r0, 0x466(r28)
/* 800CCA54  A8 04 00 12 */	lha r0, 0x12(r4)
/* 800CCA58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CCA5C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800CCA60  90 61 00 38 */	stw r3, 0x38(r1)
/* 800CCA64  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 800CCA68  EC 00 08 28 */	fsubs f0, f0, f1
/* 800CCA6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800CCA70  FC 00 00 1E */	fctiwz f0, f0
/* 800CCA74  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 800CCA78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800CCA7C  B0 1C 04 68 */	sth r0, 0x468(r28)
/* 800CCA80  48 00 02 C0 */	b lbl_800CCD40
lbl_800CCA84:
/* 800CCA84  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800CCA88  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800CCA8C  41 82 00 28 */	beq lbl_800CCAB4
/* 800CCA90  3C 60 80 39 */	lis r3, m__20daAlinkHIO_damage_c0@ha
/* 800CCA94  38 63 E5 4C */	addi r3, r3, m__20daAlinkHIO_damage_c0@l
/* 800CCA98  A8 03 00 48 */	lha r0, 0x48(r3)
/* 800CCA9C  B0 1C 04 64 */	sth r0, 0x464(r28)
/* 800CCAA0  A8 03 00 4A */	lha r0, 0x4a(r3)
/* 800CCAA4  B0 1C 04 66 */	sth r0, 0x466(r28)
/* 800CCAA8  A8 03 00 4C */	lha r0, 0x4c(r3)
/* 800CCAAC  B0 1C 04 68 */	sth r0, 0x468(r28)
/* 800CCAB0  48 00 02 90 */	b lbl_800CCD40
lbl_800CCAB4:
/* 800CCAB4  A8 1C 05 6C */	lha r0, 0x56c(r28)
/* 800CCAB8  2C 00 00 00 */	cmpwi r0, 0
/* 800CCABC  41 82 01 14 */	beq lbl_800CCBD0
/* 800CCAC0  7F 83 E3 78 */	mr r3, r28
/* 800CCAC4  48 00 AD 05 */	bl checkMagicArmorNoDamage__9daAlink_cFv
/* 800CCAC8  2C 03 00 00 */	cmpwi r3, 0
/* 800CCACC  40 82 02 74 */	bne lbl_800CCD40
/* 800CCAD0  A8 7C 05 6C */	lha r3, 0x56c(r28)
/* 800CCAD4  88 1C 2F B5 */	lbz r0, 0x2fb5(r28)
/* 800CCAD8  7C 03 02 14 */	add r0, r3, r0
/* 800CCADC  2C 00 00 20 */	cmpwi r0, 0x20
/* 800CCAE0  40 81 00 1C */	ble lbl_800CCAFC
/* 800CCAE4  3C 60 80 39 */	lis r3, m__20daAlinkHIO_damage_c0@ha
/* 800CCAE8  38 63 E5 4C */	addi r3, r3, m__20daAlinkHIO_damage_c0@l
/* 800CCAEC  A8 83 00 36 */	lha r4, 0x36(r3)
/* 800CCAF0  A8 A3 00 38 */	lha r5, 0x38(r3)
/* 800CCAF4  A8 C3 00 3A */	lha r6, 0x3a(r3)
/* 800CCAF8  48 00 00 38 */	b lbl_800CCB30
lbl_800CCAFC:
/* 800CCAFC  2C 00 00 10 */	cmpwi r0, 0x10
/* 800CCB00  40 81 00 1C */	ble lbl_800CCB1C
/* 800CCB04  3C 60 80 39 */	lis r3, m__20daAlinkHIO_damage_c0@ha
/* 800CCB08  38 63 E5 4C */	addi r3, r3, m__20daAlinkHIO_damage_c0@l
/* 800CCB0C  A8 83 00 3C */	lha r4, 0x3c(r3)
/* 800CCB10  A8 A3 00 3E */	lha r5, 0x3e(r3)
/* 800CCB14  A8 C3 00 40 */	lha r6, 0x40(r3)
/* 800CCB18  48 00 00 18 */	b lbl_800CCB30
lbl_800CCB1C:
/* 800CCB1C  3C 60 80 39 */	lis r3, m__20daAlinkHIO_damage_c0@ha
/* 800CCB20  38 63 E5 4C */	addi r3, r3, m__20daAlinkHIO_damage_c0@l
/* 800CCB24  A8 83 00 42 */	lha r4, 0x42(r3)
/* 800CCB28  A8 A3 00 44 */	lha r5, 0x44(r3)
/* 800CCB2C  A8 C3 00 46 */	lha r6, 0x46(r3)
lbl_800CCB30:
/* 800CCB30  54 00 5C 28 */	rlwinm r0, r0, 0xb, 0x10, 0x14
/* 800CCB34  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800CCB38  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800CCB3C  7C 03 04 2E */	lfsx f0, r3, r0
/* 800CCB40  FC 00 02 10 */	fabs f0, f0
/* 800CCB44  FC 40 00 18 */	frsp f2, f0
/* 800CCB48  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800CCB4C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 800CCB50  90 01 00 44 */	stw r0, 0x44(r1)
/* 800CCB54  3C 60 43 30 */	lis r3, 0x4330
/* 800CCB58  90 61 00 40 */	stw r3, 0x40(r1)
/* 800CCB5C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 800CCB60  EC 00 08 28 */	fsubs f0, f0, f1
/* 800CCB64  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800CCB68  FC 00 00 1E */	fctiwz f0, f0
/* 800CCB6C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 800CCB70  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800CCB74  98 1C 04 6C */	stb r0, 0x46c(r28)
/* 800CCB78  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 800CCB7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800CCB80  90 61 00 30 */	stw r3, 0x30(r1)
/* 800CCB84  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 800CCB88  EC 00 08 28 */	fsubs f0, f0, f1
/* 800CCB8C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800CCB90  FC 00 00 1E */	fctiwz f0, f0
/* 800CCB94  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 800CCB98  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800CCB9C  98 1C 04 6D */	stb r0, 0x46d(r28)
/* 800CCBA0  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 800CCBA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CCBA8  90 61 00 20 */	stw r3, 0x20(r1)
/* 800CCBAC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 800CCBB0  EC 00 08 28 */	fsubs f0, f0, f1
/* 800CCBB4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800CCBB8  FC 00 00 1E */	fctiwz f0, f0
/* 800CCBBC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800CCBC0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800CCBC4  98 1C 04 6E */	stb r0, 0x46e(r28)
/* 800CCBC8  3B E0 00 00 */	li r31, 0
/* 800CCBCC  48 00 01 74 */	b lbl_800CCD40
lbl_800CCBD0:
/* 800CCBD0  A8 7C 30 06 */	lha r3, 0x3006(r28)
/* 800CCBD4  7C 60 07 35 */	extsh. r0, r3
/* 800CCBD8  41 82 01 3C */	beq lbl_800CCD14
/* 800CCBDC  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 800CCBE0  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800CCBE4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800CCBE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800CCBEC  3C 80 43 30 */	lis r4, 0x4330
/* 800CCBF0  90 81 00 40 */	stw r4, 0x40(r1)
/* 800CCBF4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 800CCBF8  EC 20 10 28 */	fsubs f1, f0, f2
/* 800CCBFC  3C 60 80 39 */	lis r3, m__20daAlinkHIO_damage_c0@ha
/* 800CCC00  38 63 E5 4C */	addi r3, r3, m__20daAlinkHIO_damage_c0@l
/* 800CCC04  A8 03 00 2E */	lha r0, 0x2e(r3)
/* 800CCC08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CCC0C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800CCC10  90 81 00 38 */	stw r4, 0x38(r1)
/* 800CCC14  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 800CCC18  EC 00 10 28 */	fsubs f0, f0, f2
/* 800CCC1C  EC 03 00 24 */	fdivs f0, f3, f0
/* 800CCC20  EC 01 00 32 */	fmuls f0, f1, f0
/* 800CCC24  EC 83 00 28 */	fsubs f4, f3, f0
/* 800CCC28  EC 63 20 28 */	fsubs f3, f3, f4
/* 800CCC2C  A8 03 00 30 */	lha r0, 0x30(r3)
/* 800CCC30  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CCC34  90 01 00 34 */	stw r0, 0x34(r1)
/* 800CCC38  90 81 00 30 */	stw r4, 0x30(r1)
/* 800CCC3C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 800CCC40  EC 00 10 28 */	fsubs f0, f0, f2
/* 800CCC44  EC 24 00 32 */	fmuls f1, f4, f0
/* 800CCC48  A8 03 00 48 */	lha r0, 0x48(r3)
/* 800CCC4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CCC50  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800CCC54  90 81 00 28 */	stw r4, 0x28(r1)
/* 800CCC58  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800CCC5C  EC 00 10 28 */	fsubs f0, f0, f2
/* 800CCC60  EC 03 00 32 */	fmuls f0, f3, f0
/* 800CCC64  EC 01 00 2A */	fadds f0, f1, f0
/* 800CCC68  FC 00 00 1E */	fctiwz f0, f0
/* 800CCC6C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800CCC70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CCC74  B0 1C 04 64 */	sth r0, 0x464(r28)
/* 800CCC78  A8 03 00 32 */	lha r0, 0x32(r3)
/* 800CCC7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CCC80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800CCC84  90 81 00 18 */	stw r4, 0x18(r1)
/* 800CCC88  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800CCC8C  EC 00 10 28 */	fsubs f0, f0, f2
/* 800CCC90  EC 24 00 32 */	fmuls f1, f4, f0
/* 800CCC94  A8 03 00 4A */	lha r0, 0x4a(r3)
/* 800CCC98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CCC9C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 800CCCA0  90 81 00 48 */	stw r4, 0x48(r1)
/* 800CCCA4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 800CCCA8  EC 00 10 28 */	fsubs f0, f0, f2
/* 800CCCAC  EC 03 00 32 */	fmuls f0, f3, f0
/* 800CCCB0  EC 01 00 2A */	fadds f0, f1, f0
/* 800CCCB4  FC 00 00 1E */	fctiwz f0, f0
/* 800CCCB8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 800CCCBC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800CCCC0  B0 1C 04 66 */	sth r0, 0x466(r28)
/* 800CCCC4  A8 03 00 34 */	lha r0, 0x34(r3)
/* 800CCCC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CCCCC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 800CCCD0  90 81 00 58 */	stw r4, 0x58(r1)
/* 800CCCD4  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 800CCCD8  EC 00 10 28 */	fsubs f0, f0, f2
/* 800CCCDC  EC 24 00 32 */	fmuls f1, f4, f0
/* 800CCCE0  A8 03 00 4C */	lha r0, 0x4c(r3)
/* 800CCCE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CCCE8  90 01 00 64 */	stw r0, 0x64(r1)
/* 800CCCEC  90 81 00 60 */	stw r4, 0x60(r1)
/* 800CCCF0  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 800CCCF4  EC 00 10 28 */	fsubs f0, f0, f2
/* 800CCCF8  EC 03 00 32 */	fmuls f0, f3, f0
/* 800CCCFC  EC 01 00 2A */	fadds f0, f1, f0
/* 800CCD00  FC 00 00 1E */	fctiwz f0, f0
/* 800CCD04  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 800CCD08  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 800CCD0C  B0 1C 04 68 */	sth r0, 0x468(r28)
/* 800CCD10  48 00 00 30 */	b lbl_800CCD40
lbl_800CCD14:
/* 800CCD14  A8 7C 32 B0 */	lha r3, 0x32b0(r28)
/* 800CCD18  7C 60 07 35 */	extsh. r0, r3
/* 800CCD1C  41 82 00 20 */	beq lbl_800CCD3C
/* 800CCD20  B0 7C 04 64 */	sth r3, 0x464(r28)
/* 800CCD24  A8 1C 32 B2 */	lha r0, 0x32b2(r28)
/* 800CCD28  B0 1C 04 66 */	sth r0, 0x466(r28)
/* 800CCD2C  A8 1C 32 B4 */	lha r0, 0x32b4(r28)
/* 800CCD30  B0 1C 04 68 */	sth r0, 0x468(r28)
/* 800CCD34  3B A0 00 01 */	li r29, 1
/* 800CCD38  48 00 00 08 */	b lbl_800CCD40
lbl_800CCD3C:
/* 800CCD3C  3B E0 00 00 */	li r31, 0
lbl_800CCD40:
/* 800CCD40  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800CCD44  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CCD48  40 82 00 C8 */	bne lbl_800CCE10
/* 800CCD4C  2C 1F 00 00 */	cmpwi r31, 0
/* 800CCD50  41 82 00 78 */	beq lbl_800CCDC8
/* 800CCD54  7F 83 E3 78 */	mr r3, r28
/* 800CCD58  4B FF 30 A5 */	bl checkMagicArmorWearAbility__9daAlink_cCFv
/* 800CCD5C  2C 03 00 00 */	cmpwi r3, 0
/* 800CCD60  41 82 00 38 */	beq lbl_800CCD98
/* 800CCD64  88 1C 2F BF */	lbz r0, 0x2fbf(r28)
/* 800CCD68  28 00 00 00 */	cmplwi r0, 0
/* 800CCD6C  40 82 00 2C */	bne lbl_800CCD98
/* 800CCD70  80 7C 06 50 */	lwz r3, 0x650(r28)
/* 800CCD74  80 63 00 04 */	lwz r3, 4(r3)
/* 800CCD78  38 63 00 58 */	addi r3, r3, 0x58
/* 800CCD7C  80 9C 06 7C */	lwz r4, 0x67c(r28)
/* 800CCD80  48 26 2B 01 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 800CCD84  80 7C 06 58 */	lwz r3, 0x658(r28)
/* 800CCD88  80 63 00 04 */	lwz r3, 4(r3)
/* 800CCD8C  38 63 00 58 */	addi r3, r3, 0x58
/* 800CCD90  80 9C 06 80 */	lwz r4, 0x680(r28)
/* 800CCD94  48 26 2A ED */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_800CCD98:
/* 800CCD98  2C 1D 00 00 */	cmpwi r29, 0
/* 800CCD9C  41 82 00 14 */	beq lbl_800CCDB0
/* 800CCDA0  7F 83 E3 78 */	mr r3, r28
/* 800CCDA4  38 9C 32 B8 */	addi r4, r28, 0x32b8
/* 800CCDA8  4B FF F5 BD */	bl setWaterDropColor__9daAlink_cFPC13J3DGXColorS10
/* 800CCDAC  48 00 00 7C */	b lbl_800CCE28
lbl_800CCDB0:
/* 800CCDB0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800CCDB4  D0 1C 34 74 */	stfs f0, 0x3474(r28)
/* 800CCDB8  7F 83 E3 78 */	mr r3, r28
/* 800CCDBC  38 9C 04 64 */	addi r4, r28, 0x464
/* 800CCDC0  4B FF F5 A5 */	bl setWaterDropColor__9daAlink_cFPC13J3DGXColorS10
/* 800CCDC4  48 00 00 64 */	b lbl_800CCE28
lbl_800CCDC8:
/* 800CCDC8  7F 83 E3 78 */	mr r3, r28
/* 800CCDCC  4B FF 30 31 */	bl checkMagicArmorWearAbility__9daAlink_cCFv
/* 800CCDD0  2C 03 00 00 */	cmpwi r3, 0
/* 800CCDD4  41 82 00 2C */	beq lbl_800CCE00
/* 800CCDD8  80 7C 06 50 */	lwz r3, 0x650(r28)
/* 800CCDDC  80 63 00 04 */	lwz r3, 4(r3)
/* 800CCDE0  38 63 00 58 */	addi r3, r3, 0x58
/* 800CCDE4  80 9C 06 7C */	lwz r4, 0x67c(r28)
/* 800CCDE8  48 26 30 89 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 800CCDEC  80 7C 06 58 */	lwz r3, 0x658(r28)
/* 800CCDF0  80 63 00 04 */	lwz r3, 4(r3)
/* 800CCDF4  38 63 00 58 */	addi r3, r3, 0x58
/* 800CCDF8  80 9C 06 80 */	lwz r4, 0x680(r28)
/* 800CCDFC  48 26 30 75 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_800CCE00:
/* 800CCE00  7F 83 E3 78 */	mr r3, r28
/* 800CCE04  38 9C 32 A0 */	addi r4, r28, 0x32a0
/* 800CCE08  4B FF F5 5D */	bl setWaterDropColor__9daAlink_cFPC13J3DGXColorS10
/* 800CCE0C  48 00 00 1C */	b lbl_800CCE28
lbl_800CCE10:
/* 800CCE10  2C 1F 00 00 */	cmpwi r31, 0
/* 800CCE14  41 82 00 14 */	beq lbl_800CCE28
/* 800CCE18  2C 1D 00 00 */	cmpwi r29, 0
/* 800CCE1C  40 82 00 0C */	bne lbl_800CCE28
/* 800CCE20  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800CCE24  D0 1C 34 74 */	stfs f0, 0x3474(r28)
lbl_800CCE28:
/* 800CCE28  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800CCE2C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CCE30  41 82 01 50 */	beq lbl_800CCF80
/* 800CCE34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CCE38  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800CCE3C  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 800CCE40  3C 60 80 43 */	lis r3, j3dSys@ha
/* 800CCE44  3B 63 4A C8 */	addi r27, r3, j3dSys@l
/* 800CCE48  90 1B 00 48 */	stw r0, 0x48(r27)
/* 800CCE4C  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 800CCE50  90 1B 00 4C */	stw r0, 0x4c(r27)
/* 800CCE54  7F 83 E3 78 */	mr r3, r28
/* 800CCE58  80 9C 06 50 */	lwz r4, 0x650(r28)
/* 800CCE5C  7F C5 F3 78 */	mr r5, r30
/* 800CCE60  4B FF F4 81 */	bl modelDraw__9daAlink_cFP8J3DModeli
/* 800CCE64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CCE68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CCE6C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800CCE70  38 80 05 10 */	li r4, 0x510
/* 800CCE74  4B F6 7B 49 */	bl isEventBit__11dSv_event_cCFUs
/* 800CCE78  2C 03 00 00 */	cmpwi r3, 0
/* 800CCE7C  41 82 00 30 */	beq lbl_800CCEAC
/* 800CCE80  3B 00 00 00 */	li r24, 0
/* 800CCE84  3B A0 00 00 */	li r29, 0
lbl_800CCE88:
/* 800CCE88  7F 83 E3 78 */	mr r3, r28
/* 800CCE8C  38 1D 07 8C */	addi r0, r29, 0x78c
/* 800CCE90  7C 9C 00 2E */	lwzx r4, r28, r0
/* 800CCE94  7F C5 F3 78 */	mr r5, r30
/* 800CCE98  4B FF F4 49 */	bl modelDraw__9daAlink_cFP8J3DModeli
/* 800CCE9C  3B 18 00 01 */	addi r24, r24, 1
/* 800CCEA0  2C 18 00 04 */	cmpwi r24, 4
/* 800CCEA4  3B BD 00 04 */	addi r29, r29, 4
/* 800CCEA8  41 80 FF E0 */	blt lbl_800CCE88
lbl_800CCEAC:
/* 800CCEAC  38 00 00 00 */	li r0, 0
/* 800CCEB0  98 1C 04 6C */	stb r0, 0x46c(r28)
/* 800CCEB4  98 1C 04 6D */	stb r0, 0x46d(r28)
/* 800CCEB8  98 1C 04 6E */	stb r0, 0x46e(r28)
/* 800CCEBC  7F 83 E3 78 */	mr r3, r28
/* 800CCEC0  4B FF E5 C1 */	bl checkSwordDraw__9daAlink_cFv
/* 800CCEC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CCEC8  41 82 00 24 */	beq lbl_800CCEEC
/* 800CCECC  7F 83 E3 78 */	mr r3, r28
/* 800CCED0  80 9C 06 B8 */	lwz r4, 0x6b8(r28)
/* 800CCED4  7F C5 F3 78 */	mr r5, r30
/* 800CCED8  4B FF F4 09 */	bl modelDraw__9daAlink_cFP8J3DModeli
/* 800CCEDC  7F 83 E3 78 */	mr r3, r28
/* 800CCEE0  80 9C 06 BC */	lwz r4, 0x6bc(r28)
/* 800CCEE4  7F C5 F3 78 */	mr r5, r30
/* 800CCEE8  4B FF F3 F9 */	bl modelDraw__9daAlink_cFP8J3DModeli
lbl_800CCEEC:
/* 800CCEEC  7F 83 E3 78 */	mr r3, r28
/* 800CCEF0  4B FF E6 4D */	bl checkShieldDraw__9daAlink_cFv
/* 800CCEF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CCEF8  41 82 00 14 */	beq lbl_800CCF0C
/* 800CCEFC  7F 83 E3 78 */	mr r3, r28
/* 800CCF00  80 9C 06 78 */	lwz r4, 0x678(r28)
/* 800CCF04  7F C5 F3 78 */	mr r5, r30
/* 800CCF08  4B FF F3 D9 */	bl modelDraw__9daAlink_cFP8J3DModeli
lbl_800CCF0C:
/* 800CCF0C  80 7C 07 08 */	lwz r3, 0x708(r28)
/* 800CCF10  28 03 00 00 */	cmplwi r3, 0
/* 800CCF14  41 82 00 50 */	beq lbl_800CCF64
/* 800CCF18  A0 1C 2F DC */	lhz r0, 0x2fdc(r28)
/* 800CCF1C  28 00 01 09 */	cmplwi r0, 0x109
/* 800CCF20  40 82 00 1C */	bne lbl_800CCF3C
/* 800CCF24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CCF28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CCF2C  80 03 5F B0 */	lwz r0, 0x5fb0(r3)
/* 800CCF30  90 1B 00 48 */	stw r0, 0x48(r27)
/* 800CCF34  90 1B 00 4C */	stw r0, 0x4c(r27)
/* 800CCF38  48 00 00 1C */	b lbl_800CCF54
lbl_800CCF3C:
/* 800CCF3C  28 00 01 0A */	cmplwi r0, 0x10a
/* 800CCF40  40 82 00 14 */	bne lbl_800CCF54
/* 800CCF44  80 63 00 04 */	lwz r3, 4(r3)
/* 800CCF48  38 63 00 58 */	addi r3, r3, 0x58
/* 800CCF4C  80 9C 07 18 */	lwz r4, 0x718(r28)
/* 800CCF50  48 26 2D 75 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_800CCF54:
/* 800CCF54  7F 83 E3 78 */	mr r3, r28
/* 800CCF58  80 9C 07 08 */	lwz r4, 0x708(r28)
/* 800CCF5C  7F C5 F3 78 */	mr r5, r30
/* 800CCF60  4B FF F3 81 */	bl modelDraw__9daAlink_cFP8J3DModeli
lbl_800CCF64:
/* 800CCF64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CCF68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CCF6C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 800CCF70  90 1B 00 48 */	stw r0, 0x48(r27)
/* 800CCF74  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 800CCF78  90 1B 00 4C */	stw r0, 0x4c(r27)
/* 800CCF7C  48 00 07 7C */	b lbl_800CD6F8
lbl_800CCF80:
/* 800CCF80  7F 83 E3 78 */	mr r3, r28
/* 800CCF84  4B FF E0 45 */	bl setDrawHand__9daAlink_cFv
/* 800CCF88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CCF8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CCF90  3B E3 5D 7C */	addi r31, r3, 0x5d7c
/* 800CCF94  80 1C 31 7C */	lwz r0, 0x317c(r28)
/* 800CCF98  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800CCF9C  7C 1F 00 2E */	lwzx r0, r31, r0
/* 800CCFA0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800CCFA4  41 82 00 8C */	beq lbl_800CD030
/* 800CCFA8  80 7C 06 E8 */	lwz r3, 0x6e8(r28)
/* 800CCFAC  28 03 00 00 */	cmplwi r3, 0
/* 800CCFB0  41 82 00 10 */	beq lbl_800CCFC0
/* 800CCFB4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800CCFB8  60 00 00 01 */	ori r0, r0, 1
/* 800CCFBC  90 03 00 0C */	stw r0, 0xc(r3)
lbl_800CCFC0:
/* 800CCFC0  80 7C 06 F0 */	lwz r3, 0x6f0(r28)
/* 800CCFC4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800CCFC8  60 00 00 01 */	ori r0, r0, 1
/* 800CCFCC  90 03 00 0C */	stw r0, 0xc(r3)
/* 800CCFD0  7F 83 E3 78 */	mr r3, r28
/* 800CCFD4  48 03 C0 69 */	bl checkHookshotReadyMaterialOffMode__9daAlink_cCFv
/* 800CCFD8  2C 03 00 00 */	cmpwi r3, 0
/* 800CCFDC  41 82 00 54 */	beq lbl_800CD030
/* 800CCFE0  38 C0 00 00 */	li r6, 0
/* 800CCFE4  38 80 00 01 */	li r4, 1
/* 800CCFE8  48 00 00 38 */	b lbl_800CD020
lbl_800CCFEC:
/* 800CCFEC  80 7C 32 CC */	lwz r3, 0x32cc(r28)
/* 800CCFF0  7C 80 28 30 */	slw r0, r4, r5
/* 800CCFF4  7C 60 00 39 */	and. r0, r3, r0
/* 800CCFF8  40 82 00 24 */	bne lbl_800CD01C
/* 800CCFFC  80 7C 06 4C */	lwz r3, 0x64c(r28)
/* 800CD000  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CD004  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 800CD008  7C 63 00 2E */	lwzx r3, r3, r0
/* 800CD00C  80 63 00 08 */	lwz r3, 8(r3)
/* 800CD010  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800CD014  60 00 00 01 */	ori r0, r0, 1
/* 800CD018  90 03 00 0C */	stw r0, 0xc(r3)
lbl_800CD01C:
/* 800CD01C  38 C6 00 01 */	addi r6, r6, 1
lbl_800CD020:
/* 800CD020  54 C5 04 3E */	clrlwi r5, r6, 0x10
/* 800CD024  A8 1C 30 14 */	lha r0, 0x3014(r28)
/* 800CD028  7C 05 00 00 */	cmpw r5, r0
/* 800CD02C  41 80 FF C0 */	blt lbl_800CCFEC
lbl_800CD030:
/* 800CD030  7F 83 E3 78 */	mr r3, r28
/* 800CD034  80 9C 06 50 */	lwz r4, 0x650(r28)
/* 800CD038  7F C5 F3 78 */	mr r5, r30
/* 800CD03C  4B FF F2 A5 */	bl modelDraw__9daAlink_cFP8J3DModeli
/* 800CD040  80 1C 31 7C */	lwz r0, 0x317c(r28)
/* 800CD044  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800CD048  7C 1F 00 2E */	lwzx r0, r31, r0
/* 800CD04C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800CD050  41 82 00 DC */	beq lbl_800CD12C
/* 800CD054  7F 83 E3 78 */	mr r3, r28
/* 800CD058  48 03 BF E5 */	bl checkHookshotReadyMaterialOffMode__9daAlink_cCFv
/* 800CD05C  2C 03 00 00 */	cmpwi r3, 0
/* 800CD060  41 82 00 84 */	beq lbl_800CD0E4
/* 800CD064  38 C0 00 00 */	li r6, 0
/* 800CD068  38 80 00 01 */	li r4, 1
/* 800CD06C  48 00 00 38 */	b lbl_800CD0A4
lbl_800CD070:
/* 800CD070  80 7C 32 CC */	lwz r3, 0x32cc(r28)
/* 800CD074  7C 80 28 30 */	slw r0, r4, r5
/* 800CD078  7C 60 00 39 */	and. r0, r3, r0
/* 800CD07C  40 82 00 24 */	bne lbl_800CD0A0
/* 800CD080  80 7C 06 4C */	lwz r3, 0x64c(r28)
/* 800CD084  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CD088  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 800CD08C  7C 63 00 2E */	lwzx r3, r3, r0
/* 800CD090  80 63 00 08 */	lwz r3, 8(r3)
/* 800CD094  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800CD098  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800CD09C  90 03 00 0C */	stw r0, 0xc(r3)
lbl_800CD0A0:
/* 800CD0A0  38 C6 00 01 */	addi r6, r6, 1
lbl_800CD0A4:
/* 800CD0A4  54 C5 04 3E */	clrlwi r5, r6, 0x10
/* 800CD0A8  A8 1C 30 14 */	lha r0, 0x3014(r28)
/* 800CD0AC  7C 05 00 00 */	cmpw r5, r0
/* 800CD0B0  41 80 FF C0 */	blt lbl_800CD070
/* 800CD0B4  7F 83 E3 78 */	mr r3, r28
/* 800CD0B8  48 03 47 D9 */	bl checkZoraWearMaskDraw__9daAlink_cFv
/* 800CD0BC  2C 03 00 00 */	cmpwi r3, 0
/* 800CD0C0  40 82 00 24 */	bne lbl_800CD0E4
/* 800CD0C4  7F 83 E3 78 */	mr r3, r28
/* 800CD0C8  4B FF 2C E9 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800CD0CC  2C 03 00 00 */	cmpwi r3, 0
/* 800CD0D0  41 82 00 14 */	beq lbl_800CD0E4
/* 800CD0D4  80 7C 06 F0 */	lwz r3, 0x6f0(r28)
/* 800CD0D8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800CD0DC  60 00 00 01 */	ori r0, r0, 1
/* 800CD0E0  90 03 00 0C */	stw r0, 0xc(r3)
lbl_800CD0E4:
/* 800CD0E4  80 7C 06 E8 */	lwz r3, 0x6e8(r28)
/* 800CD0E8  28 03 00 00 */	cmplwi r3, 0
/* 800CD0EC  41 82 00 10 */	beq lbl_800CD0FC
/* 800CD0F0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800CD0F4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800CD0F8  90 03 00 0C */	stw r0, 0xc(r3)
lbl_800CD0FC:
/* 800CD0FC  7F 83 E3 78 */	mr r3, r28
/* 800CD100  48 03 47 91 */	bl checkZoraWearMaskDraw__9daAlink_cFv
/* 800CD104  2C 03 00 00 */	cmpwi r3, 0
/* 800CD108  40 82 00 14 */	bne lbl_800CD11C
/* 800CD10C  7F 83 E3 78 */	mr r3, r28
/* 800CD110  4B FF 2C A1 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800CD114  2C 03 00 00 */	cmpwi r3, 0
/* 800CD118  40 82 00 14 */	bne lbl_800CD12C
lbl_800CD11C:
/* 800CD11C  80 7C 06 F0 */	lwz r3, 0x6f0(r28)
/* 800CD120  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800CD124  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800CD128  90 03 00 0C */	stw r0, 0xc(r3)
lbl_800CD12C:
/* 800CD12C  7F 83 E3 78 */	mr r3, r28
/* 800CD130  80 9C 06 5C */	lwz r4, 0x65c(r28)
/* 800CD134  7F C5 F3 78 */	mr r5, r30
/* 800CD138  4B FF F1 A9 */	bl modelDraw__9daAlink_cFP8J3DModeli
/* 800CD13C  88 1C 2F 92 */	lbz r0, 0x2f92(r28)
/* 800CD140  28 00 00 FB */	cmplwi r0, 0xfb
/* 800CD144  40 82 00 14 */	bne lbl_800CD158
/* 800CD148  7F 83 E3 78 */	mr r3, r28
/* 800CD14C  80 9C 06 A0 */	lwz r4, 0x6a0(r28)
/* 800CD150  7F C5 F3 78 */	mr r5, r30
/* 800CD154  4B FF F1 8D */	bl modelDraw__9daAlink_cFP8J3DModeli
lbl_800CD158:
/* 800CD158  88 1C 2F 93 */	lbz r0, 0x2f93(r28)
/* 800CD15C  28 00 00 FB */	cmplwi r0, 0xfb
/* 800CD160  40 82 00 14 */	bne lbl_800CD174
/* 800CD164  7F 83 E3 78 */	mr r3, r28
/* 800CD168  80 9C 06 A8 */	lwz r4, 0x6a8(r28)
/* 800CD16C  7F C5 F3 78 */	mr r5, r30
/* 800CD170  4B FF F1 71 */	bl modelDraw__9daAlink_cFP8J3DModeli
lbl_800CD174:
/* 800CD174  38 60 00 01 */	li r3, 1
/* 800CD178  2C 1E 00 00 */	cmpwi r30, 0
/* 800CD17C  40 82 00 1C */	bne lbl_800CD198
/* 800CD180  80 1C 31 7C */	lwz r0, 0x317c(r28)
/* 800CD184  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800CD188  7C 1F 00 2E */	lwzx r0, r31, r0
/* 800CD18C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800CD190  40 82 00 08 */	bne lbl_800CD198
/* 800CD194  38 60 00 00 */	li r3, 0
lbl_800CD198:
/* 800CD198  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 800CD19C  7F 83 E3 78 */	mr r3, r28
/* 800CD1A0  80 9C 06 58 */	lwz r4, 0x658(r28)
/* 800CD1A4  7F E5 FB 78 */	mr r5, r31
/* 800CD1A8  4B FF F1 39 */	bl modelDraw__9daAlink_cFP8J3DModeli
/* 800CD1AC  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800CD1B0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800CD1B4  41 82 00 28 */	beq lbl_800CD1DC
/* 800CD1B8  7F 83 E3 78 */	mr r3, r28
/* 800CD1BC  80 9C 06 84 */	lwz r4, 0x684(r28)
/* 800CD1C0  7F E5 FB 78 */	mr r5, r31
/* 800CD1C4  4B FF F1 1D */	bl modelDraw__9daAlink_cFP8J3DModeli
/* 800CD1C8  7F 83 E3 78 */	mr r3, r28
/* 800CD1CC  80 9C 06 88 */	lwz r4, 0x688(r28)
/* 800CD1D0  7F E5 FB 78 */	mr r5, r31
/* 800CD1D4  4B FF F1 0D */	bl modelDraw__9daAlink_cFP8J3DModeli
/* 800CD1D8  48 00 00 14 */	b lbl_800CD1EC
lbl_800CD1DC:
/* 800CD1DC  7F 83 E3 78 */	mr r3, r28
/* 800CD1E0  80 9C 06 54 */	lwz r4, 0x654(r28)
/* 800CD1E4  7F E5 FB 78 */	mr r5, r31
/* 800CD1E8  4B FF F0 F9 */	bl modelDraw__9daAlink_cFP8J3DModeli
lbl_800CD1EC:
/* 800CD1EC  38 00 00 00 */	li r0, 0
/* 800CD1F0  98 1C 04 6C */	stb r0, 0x46c(r28)
/* 800CD1F4  98 1C 04 6D */	stb r0, 0x46d(r28)
/* 800CD1F8  98 1C 04 6E */	stb r0, 0x46e(r28)
/* 800CD1FC  7F 83 E3 78 */	mr r3, r28
/* 800CD200  4B FF E2 81 */	bl checkSwordDraw__9daAlink_cFv
/* 800CD204  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CD208  41 82 00 44 */	beq lbl_800CD24C
/* 800CD20C  80 1C 05 7C */	lwz r0, 0x57c(r28)
/* 800CD210  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 800CD214  40 82 00 14 */	bne lbl_800CD228
/* 800CD218  7F 83 E3 78 */	mr r3, r28
/* 800CD21C  80 9C 06 B8 */	lwz r4, 0x6b8(r28)
/* 800CD220  7F E5 FB 78 */	mr r5, r31
/* 800CD224  4B FF F0 BD */	bl modelDraw__9daAlink_cFP8J3DModeli
lbl_800CD228:
/* 800CD228  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CD22C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CD230  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800CD234  28 00 00 3F */	cmplwi r0, 0x3f
/* 800CD238  41 82 00 14 */	beq lbl_800CD24C
/* 800CD23C  7F 83 E3 78 */	mr r3, r28
/* 800CD240  80 9C 06 BC */	lwz r4, 0x6bc(r28)
/* 800CD244  7F E5 FB 78 */	mr r5, r31
/* 800CD248  4B FF F0 99 */	bl modelDraw__9daAlink_cFP8J3DModeli
lbl_800CD24C:
/* 800CD24C  7F 83 E3 78 */	mr r3, r28
/* 800CD250  4B FF E2 ED */	bl checkShieldDraw__9daAlink_cFv
/* 800CD254  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CD258  41 82 00 84 */	beq lbl_800CD2DC
/* 800CD25C  48 09 21 69 */	bl checkWoodShieldEquip__9daPy_py_cFv
/* 800CD260  2C 03 00 00 */	cmpwi r3, 0
/* 800CD264  41 82 00 4C */	beq lbl_800CD2B0
/* 800CD268  88 7C 2F CB */	lbz r3, 0x2fcb(r28)
/* 800CD26C  28 03 00 00 */	cmplwi r3, 0
/* 800CD270  41 82 00 40 */	beq lbl_800CD2B0
/* 800CD274  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 800CD278  28 00 01 4D */	cmplwi r0, 0x14d
/* 800CD27C  41 82 00 34 */	beq lbl_800CD2B0
/* 800CD280  20 03 00 78 */	subfic r0, r3, 0x78
/* 800CD284  54 00 28 34 */	slwi r0, r0, 5
/* 800CD288  7C 60 00 D0 */	neg r3, r0
/* 800CD28C  38 00 00 78 */	li r0, 0x78
/* 800CD290  7C 03 03 D6 */	divw r0, r3, r0
/* 800CD294  B0 1C 04 64 */	sth r0, 0x464(r28)
/* 800CD298  A8 1C 04 64 */	lha r0, 0x464(r28)
/* 800CD29C  B0 1C 04 66 */	sth r0, 0x466(r28)
/* 800CD2A0  A8 1C 04 64 */	lha r0, 0x464(r28)
/* 800CD2A4  B0 1C 04 68 */	sth r0, 0x468(r28)
/* 800CD2A8  3B 00 00 01 */	li r24, 1
/* 800CD2AC  48 00 00 08 */	b lbl_800CD2B4
lbl_800CD2B0:
/* 800CD2B0  3B 00 00 00 */	li r24, 0
lbl_800CD2B4:
/* 800CD2B4  7F 83 E3 78 */	mr r3, r28
/* 800CD2B8  80 9C 06 78 */	lwz r4, 0x678(r28)
/* 800CD2BC  7F E5 FB 78 */	mr r5, r31
/* 800CD2C0  4B FF F0 21 */	bl modelDraw__9daAlink_cFP8J3DModeli
/* 800CD2C4  2C 18 00 00 */	cmpwi r24, 0
/* 800CD2C8  41 82 00 14 */	beq lbl_800CD2DC
/* 800CD2CC  38 00 00 00 */	li r0, 0
/* 800CD2D0  B0 1C 04 64 */	sth r0, 0x464(r28)
/* 800CD2D4  B0 1C 04 66 */	sth r0, 0x466(r28)
/* 800CD2D8  B0 1C 04 68 */	sth r0, 0x468(r28)
lbl_800CD2DC:
/* 800CD2DC  2C 1D 00 00 */	cmpwi r29, 0
/* 800CD2E0  41 82 00 14 */	beq lbl_800CD2F4
/* 800CD2E4  38 00 00 00 */	li r0, 0
/* 800CD2E8  B0 1C 04 64 */	sth r0, 0x464(r28)
/* 800CD2EC  B0 1C 04 66 */	sth r0, 0x466(r28)
/* 800CD2F0  B0 1C 04 68 */	sth r0, 0x468(r28)
lbl_800CD2F4:
/* 800CD2F4  7F 83 E3 78 */	mr r3, r28
/* 800CD2F8  4B FF E3 01 */	bl checkItemDraw__9daAlink_cFv
/* 800CD2FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CD300  41 82 02 D4 */	beq lbl_800CD5D4
/* 800CD304  7F 83 E3 78 */	mr r3, r28
/* 800CD308  48 03 B5 5D */	bl changeHookshotDrawModel__9daAlink_cFv
/* 800CD30C  7F 83 E3 78 */	mr r3, r28
/* 800CD310  80 9C 07 08 */	lwz r4, 0x708(r28)
/* 800CD314  7F C5 F3 78 */	mr r5, r30
/* 800CD318  4B FF EF C9 */	bl modelDraw__9daAlink_cFP8J3DModeli
/* 800CD31C  80 9C 07 0C */	lwz r4, 0x70c(r28)
/* 800CD320  28 04 00 00 */	cmplwi r4, 0
/* 800CD324  41 82 00 10 */	beq lbl_800CD334
/* 800CD328  7F 83 E3 78 */	mr r3, r28
/* 800CD32C  7F C5 F3 78 */	mr r5, r30
/* 800CD330  4B FF EF B1 */	bl modelDraw__9daAlink_cFP8J3DModeli
lbl_800CD334:
/* 800CD334  A0 1C 2F DC */	lhz r0, 0x2fdc(r28)
/* 800CD338  28 00 00 47 */	cmplwi r0, 0x47
/* 800CD33C  40 82 00 50 */	bne lbl_800CD38C
/* 800CD340  7F 83 E3 78 */	mr r3, r28
/* 800CD344  48 00 FB C1 */	bl checkPlayerGuardAndAttack__9daAlink_cCFv
/* 800CD348  2C 03 00 00 */	cmpwi r3, 0
/* 800CD34C  40 82 00 40 */	bne lbl_800CD38C
/* 800CD350  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800CD354  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800CD358  40 82 00 34 */	bne lbl_800CD38C
/* 800CD35C  80 9C 07 10 */	lwz r4, 0x710(r28)
/* 800CD360  28 04 00 00 */	cmplwi r4, 0
/* 800CD364  41 82 00 10 */	beq lbl_800CD374
/* 800CD368  7F 83 E3 78 */	mr r3, r28
/* 800CD36C  7F C5 F3 78 */	mr r5, r30
/* 800CD370  4B FF EF 71 */	bl modelDraw__9daAlink_cFP8J3DModeli
lbl_800CD374:
/* 800CD374  80 9C 07 14 */	lwz r4, 0x714(r28)
/* 800CD378  28 04 00 00 */	cmplwi r4, 0
/* 800CD37C  41 82 00 10 */	beq lbl_800CD38C
/* 800CD380  7F 83 E3 78 */	mr r3, r28
/* 800CD384  7F C5 F3 78 */	mr r5, r30
/* 800CD388  4B FF EF 59 */	bl modelDraw__9daAlink_cFP8J3DModeli
lbl_800CD38C:
/* 800CD38C  7F 83 E3 78 */	mr r3, r28
/* 800CD390  48 03 B4 D5 */	bl changeHookshotDrawModel__9daAlink_cFv
/* 800CD394  80 1C 07 70 */	lwz r0, 0x770(r28)
/* 800CD398  28 00 00 00 */	cmplwi r0, 0
/* 800CD39C  41 82 02 38 */	beq lbl_800CD5D4
/* 800CD3A0  2C 1E 00 00 */	cmpwi r30, 0
/* 800CD3A4  40 82 02 30 */	bne lbl_800CD5D4
/* 800CD3A8  A0 7C 2F DC */	lhz r3, 0x2fdc(r28)
/* 800CD3AC  48 09 18 0D */	bl checkHookshotItem__9daPy_py_cFi
/* 800CD3B0  2C 03 00 00 */	cmpwi r3, 0
/* 800CD3B4  41 82 01 FC */	beq lbl_800CD5B0
/* 800CD3B8  38 7C 37 E0 */	addi r3, r28, 0x37e0
/* 800CD3BC  38 9C 37 EC */	addi r4, r28, 0x37ec
/* 800CD3C0  48 27 9F DD */	bl PSVECSquareDistance
/* 800CD3C4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800CD3C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CD3CC  40 81 00 58 */	ble lbl_800CD424
/* 800CD3D0  FC 00 08 34 */	frsqrte f0, f1
/* 800CD3D4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800CD3D8  FC 44 00 32 */	fmul f2, f4, f0
/* 800CD3DC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800CD3E0  FC 00 00 32 */	fmul f0, f0, f0
/* 800CD3E4  FC 01 00 32 */	fmul f0, f1, f0
/* 800CD3E8  FC 03 00 28 */	fsub f0, f3, f0
/* 800CD3EC  FC 02 00 32 */	fmul f0, f2, f0
/* 800CD3F0  FC 44 00 32 */	fmul f2, f4, f0
/* 800CD3F4  FC 00 00 32 */	fmul f0, f0, f0
/* 800CD3F8  FC 01 00 32 */	fmul f0, f1, f0
/* 800CD3FC  FC 03 00 28 */	fsub f0, f3, f0
/* 800CD400  FC 02 00 32 */	fmul f0, f2, f0
/* 800CD404  FC 44 00 32 */	fmul f2, f4, f0
/* 800CD408  FC 00 00 32 */	fmul f0, f0, f0
/* 800CD40C  FC 01 00 32 */	fmul f0, f1, f0
/* 800CD410  FC 03 00 28 */	fsub f0, f3, f0
/* 800CD414  FC 02 00 32 */	fmul f0, f2, f0
/* 800CD418  FC 21 00 32 */	fmul f1, f1, f0
/* 800CD41C  FC 20 08 18 */	frsp f1, f1
/* 800CD420  48 00 00 88 */	b lbl_800CD4A8
lbl_800CD424:
/* 800CD424  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800CD428  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CD42C  40 80 00 10 */	bge lbl_800CD43C
/* 800CD430  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800CD434  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800CD438  48 00 00 70 */	b lbl_800CD4A8
lbl_800CD43C:
/* 800CD43C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800CD440  80 81 00 0C */	lwz r4, 0xc(r1)
/* 800CD444  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800CD448  3C 00 7F 80 */	lis r0, 0x7f80
/* 800CD44C  7C 03 00 00 */	cmpw r3, r0
/* 800CD450  41 82 00 14 */	beq lbl_800CD464
/* 800CD454  40 80 00 40 */	bge lbl_800CD494
/* 800CD458  2C 03 00 00 */	cmpwi r3, 0
/* 800CD45C  41 82 00 20 */	beq lbl_800CD47C
/* 800CD460  48 00 00 34 */	b lbl_800CD494
lbl_800CD464:
/* 800CD464  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800CD468  41 82 00 0C */	beq lbl_800CD474
/* 800CD46C  38 00 00 01 */	li r0, 1
/* 800CD470  48 00 00 28 */	b lbl_800CD498
lbl_800CD474:
/* 800CD474  38 00 00 02 */	li r0, 2
/* 800CD478  48 00 00 20 */	b lbl_800CD498
lbl_800CD47C:
/* 800CD47C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800CD480  41 82 00 0C */	beq lbl_800CD48C
/* 800CD484  38 00 00 05 */	li r0, 5
/* 800CD488  48 00 00 10 */	b lbl_800CD498
lbl_800CD48C:
/* 800CD48C  38 00 00 03 */	li r0, 3
/* 800CD490  48 00 00 08 */	b lbl_800CD498
lbl_800CD494:
/* 800CD494  38 00 00 04 */	li r0, 4
lbl_800CD498:
/* 800CD498  2C 00 00 01 */	cmpwi r0, 1
/* 800CD49C  40 82 00 0C */	bne lbl_800CD4A8
/* 800CD4A0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800CD4A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800CD4A8:
/* 800CD4A8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800CD4AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CD4B0  41 81 01 0C */	bgt lbl_800CD5BC
/* 800CD4B4  38 7C 38 10 */	addi r3, r28, 0x3810
/* 800CD4B8  38 9C 38 04 */	addi r4, r28, 0x3804
/* 800CD4BC  48 27 9E E1 */	bl PSVECSquareDistance
/* 800CD4C0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800CD4C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CD4C8  40 81 00 58 */	ble lbl_800CD520
/* 800CD4CC  FC 00 08 34 */	frsqrte f0, f1
/* 800CD4D0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800CD4D4  FC 44 00 32 */	fmul f2, f4, f0
/* 800CD4D8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800CD4DC  FC 00 00 32 */	fmul f0, f0, f0
/* 800CD4E0  FC 01 00 32 */	fmul f0, f1, f0
/* 800CD4E4  FC 03 00 28 */	fsub f0, f3, f0
/* 800CD4E8  FC 02 00 32 */	fmul f0, f2, f0
/* 800CD4EC  FC 44 00 32 */	fmul f2, f4, f0
/* 800CD4F0  FC 00 00 32 */	fmul f0, f0, f0
/* 800CD4F4  FC 01 00 32 */	fmul f0, f1, f0
/* 800CD4F8  FC 03 00 28 */	fsub f0, f3, f0
/* 800CD4FC  FC 02 00 32 */	fmul f0, f2, f0
/* 800CD500  FC 44 00 32 */	fmul f2, f4, f0
/* 800CD504  FC 00 00 32 */	fmul f0, f0, f0
/* 800CD508  FC 01 00 32 */	fmul f0, f1, f0
/* 800CD50C  FC 03 00 28 */	fsub f0, f3, f0
/* 800CD510  FC 02 00 32 */	fmul f0, f2, f0
/* 800CD514  FC 21 00 32 */	fmul f1, f1, f0
/* 800CD518  FC 20 08 18 */	frsp f1, f1
/* 800CD51C  48 00 00 88 */	b lbl_800CD5A4
lbl_800CD520:
/* 800CD520  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800CD524  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CD528  40 80 00 10 */	bge lbl_800CD538
/* 800CD52C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800CD530  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800CD534  48 00 00 70 */	b lbl_800CD5A4
lbl_800CD538:
/* 800CD538  D0 21 00 08 */	stfs f1, 8(r1)
/* 800CD53C  80 81 00 08 */	lwz r4, 8(r1)
/* 800CD540  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800CD544  3C 00 7F 80 */	lis r0, 0x7f80
/* 800CD548  7C 03 00 00 */	cmpw r3, r0
/* 800CD54C  41 82 00 14 */	beq lbl_800CD560
/* 800CD550  40 80 00 40 */	bge lbl_800CD590
/* 800CD554  2C 03 00 00 */	cmpwi r3, 0
/* 800CD558  41 82 00 20 */	beq lbl_800CD578
/* 800CD55C  48 00 00 34 */	b lbl_800CD590
lbl_800CD560:
/* 800CD560  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800CD564  41 82 00 0C */	beq lbl_800CD570
/* 800CD568  38 00 00 01 */	li r0, 1
/* 800CD56C  48 00 00 28 */	b lbl_800CD594
lbl_800CD570:
/* 800CD570  38 00 00 02 */	li r0, 2
/* 800CD574  48 00 00 20 */	b lbl_800CD594
lbl_800CD578:
/* 800CD578  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800CD57C  41 82 00 0C */	beq lbl_800CD588
/* 800CD580  38 00 00 05 */	li r0, 5
/* 800CD584  48 00 00 10 */	b lbl_800CD594
lbl_800CD588:
/* 800CD588  38 00 00 03 */	li r0, 3
/* 800CD58C  48 00 00 08 */	b lbl_800CD594
lbl_800CD590:
/* 800CD590  38 00 00 04 */	li r0, 4
lbl_800CD594:
/* 800CD594  2C 00 00 01 */	cmpwi r0, 1
/* 800CD598  40 82 00 0C */	bne lbl_800CD5A4
/* 800CD59C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800CD5A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800CD5A4:
/* 800CD5A4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800CD5A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CD5AC  41 81 00 10 */	bgt lbl_800CD5BC
lbl_800CD5B0:
/* 800CD5B0  A0 1C 2F DC */	lhz r0, 0x2fdc(r28)
/* 800CD5B4  28 00 00 42 */	cmplwi r0, 0x42
/* 800CD5B8  40 82 00 1C */	bne lbl_800CD5D4
lbl_800CD5BC:
/* 800CD5BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CD5C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CD5C4  80 63 5F 88 */	lwz r3, 0x5f88(r3)
/* 800CD5C8  80 9C 07 70 */	lwz r4, 0x770(r28)
/* 800CD5CC  38 A0 00 00 */	li r5, 0
/* 800CD5D0  48 25 7E BD */	bl entryImm__13J3DDrawBufferFP9J3DPacketUs
lbl_800CD5D4:
/* 800CD5D4  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 800CD5D8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800CD5DC  41 82 00 30 */	beq lbl_800CD60C
/* 800CD5E0  7F 83 E3 78 */	mr r3, r28
/* 800CD5E4  80 9C 06 FC */	lwz r4, 0x6fc(r28)
/* 800CD5E8  7F C5 F3 78 */	mr r5, r30
/* 800CD5EC  4B FF EC F5 */	bl modelDraw__9daAlink_cFP8J3DModeli
/* 800CD5F0  7F 83 E3 78 */	mr r3, r28
/* 800CD5F4  48 04 36 A1 */	bl preKandelaarDraw__9daAlink_cFv
/* 800CD5F8  7F 83 E3 78 */	mr r3, r28
/* 800CD5FC  80 9C 07 00 */	lwz r4, 0x700(r28)
/* 800CD600  7F C5 F3 78 */	mr r5, r30
/* 800CD604  4B FF EC DD */	bl modelDraw__9daAlink_cFP8J3DModeli
/* 800CD608  48 00 00 2C */	b lbl_800CD634
lbl_800CD60C:
/* 800CD60C  54 60 03 9D */	rlwinm. r0, r3, 0, 0xe, 0xe
/* 800CD610  41 82 00 24 */	beq lbl_800CD634
/* 800CD614  7F 83 E3 78 */	mr r3, r28
/* 800CD618  80 9C 06 FC */	lwz r4, 0x6fc(r28)
/* 800CD61C  4B FF EC 7D */	bl basicModelDraw__9daAlink_cFP8J3DModel
/* 800CD620  7F 83 E3 78 */	mr r3, r28
/* 800CD624  48 04 36 71 */	bl preKandelaarDraw__9daAlink_cFv
/* 800CD628  7F 83 E3 78 */	mr r3, r28
/* 800CD62C  80 9C 07 00 */	lwz r4, 0x700(r28)
/* 800CD630  4B FF EC 69 */	bl basicModelDraw__9daAlink_cFP8J3DModel
lbl_800CD634:
/* 800CD634  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800CD638  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CD63C  41 82 00 BC */	beq lbl_800CD6F8
/* 800CD640  80 7C 04 64 */	lwz r3, 0x464(r28)
/* 800CD644  80 1C 04 68 */	lwz r0, 0x468(r28)
/* 800CD648  90 61 00 10 */	stw r3, 0x10(r1)
/* 800CD64C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CD650  3A E0 00 00 */	li r23, 0
/* 800CD654  3B A0 00 00 */	li r29, 0
/* 800CD658  3B E0 00 00 */	li r31, 0
/* 800CD65C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CD660  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 800CD664  AB 41 00 12 */	lha r26, 0x12(r1)
/* 800CD668  AB 21 00 14 */	lha r25, 0x14(r1)
/* 800CD66C  AB 01 00 16 */	lha r24, 0x16(r1)
lbl_800CD670:
/* 800CD670  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 800CD674  38 63 02 10 */	addi r3, r3, 0x210
/* 800CD678  38 1F 32 28 */	addi r0, r31, 0x3228
/* 800CD67C  7C 9C 00 2E */	lwzx r4, r28, r0
/* 800CD680  4B F7 E2 99 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 800CD684  28 03 00 00 */	cmplwi r3, 0
/* 800CD688  41 82 00 20 */	beq lbl_800CD6A8
/* 800CD68C  38 00 00 05 */	li r0, 5
/* 800CD690  B0 1C 04 64 */	sth r0, 0x464(r28)
/* 800CD694  A8 1C 04 64 */	lha r0, 0x464(r28)
/* 800CD698  B0 1C 04 66 */	sth r0, 0x466(r28)
/* 800CD69C  A8 1C 04 64 */	lha r0, 0x464(r28)
/* 800CD6A0  B0 1C 04 68 */	sth r0, 0x468(r28)
/* 800CD6A4  48 00 00 18 */	b lbl_800CD6BC
lbl_800CD6A8:
/* 800CD6A8  A8 01 00 10 */	lha r0, 0x10(r1)
/* 800CD6AC  B0 1C 04 64 */	sth r0, 0x464(r28)
/* 800CD6B0  B3 5C 04 66 */	sth r26, 0x466(r28)
/* 800CD6B4  B3 3C 04 68 */	sth r25, 0x468(r28)
/* 800CD6B8  B3 1C 04 6A */	sth r24, 0x46a(r28)
lbl_800CD6BC:
/* 800CD6BC  7F 83 E3 78 */	mr r3, r28
/* 800CD6C0  38 1D 07 84 */	addi r0, r29, 0x784
/* 800CD6C4  7C 9C 00 2E */	lwzx r4, r28, r0
/* 800CD6C8  7F C5 F3 78 */	mr r5, r30
/* 800CD6CC  4B FF EC 15 */	bl modelDraw__9daAlink_cFP8J3DModeli
/* 800CD6D0  3A F7 00 01 */	addi r23, r23, 1
/* 800CD6D4  2C 17 00 02 */	cmpwi r23, 2
/* 800CD6D8  3B BD 00 04 */	addi r29, r29, 4
/* 800CD6DC  3B FF 00 0C */	addi r31, r31, 0xc
/* 800CD6E0  41 80 FF 90 */	blt lbl_800CD670
/* 800CD6E4  A8 01 00 10 */	lha r0, 0x10(r1)
/* 800CD6E8  B0 1C 04 64 */	sth r0, 0x464(r28)
/* 800CD6EC  B3 5C 04 66 */	sth r26, 0x466(r28)
/* 800CD6F0  B3 3C 04 68 */	sth r25, 0x468(r28)
/* 800CD6F4  B3 1C 04 6A */	sth r24, 0x46a(r28)
lbl_800CD6F8:
/* 800CD6F8  7F 83 E3 78 */	mr r3, r28
/* 800CD6FC  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800CD700  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800CD704  7D 89 03 A6 */	mtctr r12
/* 800CD708  4E 80 04 21 */	bctrl 
/* 800CD70C  28 03 00 00 */	cmplwi r3, 0
/* 800CD710  40 82 00 38 */	bne lbl_800CD748
/* 800CD714  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CD718  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CD71C  80 1C 31 7C */	lwz r0, 0x317c(r28)
/* 800CD720  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800CD724  7C 63 02 14 */	add r3, r3, r0
/* 800CD728  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 800CD72C  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800CD730  40 82 00 18 */	bne lbl_800CD748
/* 800CD734  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 800CD738  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800CD73C  40 82 00 0C */	bne lbl_800CD748
/* 800CD740  7F 83 E3 78 */	mr r3, r28
/* 800CD744  4B FF E4 D5 */	bl shadowDraw__9daAlink_cFv
lbl_800CD748:
/* 800CD748  80 1C 22 04 */	lwz r0, 0x2204(r28)
/* 800CD74C  2C 00 00 00 */	cmpwi r0, 0
/* 800CD750  40 81 00 20 */	ble lbl_800CD770
/* 800CD754  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CD758  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800CD75C  38 64 5F 64 */	addi r3, r4, 0x5f64
/* 800CD760  80 84 5F 84 */	lwz r4, 0x5f84(r4)
/* 800CD764  38 BC 21 F0 */	addi r5, r28, 0x21f0
/* 800CD768  38 DC 24 F8 */	addi r6, r28, 0x24f8
/* 800CD76C  4B F8 8E 81 */	bl entryZSortXluDrawList__12dDlst_list_cFP13J3DDrawBufferP9J3DPacketR4cXyz
lbl_800CD770:
/* 800CD770  38 60 00 01 */	li r3, 1
lbl_800CD774:
/* 800CD774  39 61 00 A0 */	addi r11, r1, 0xa0
/* 800CD778  48 29 4A 99 */	bl _restgpr_23
/* 800CD77C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800CD780  7C 08 03 A6 */	mtlr r0
/* 800CD784  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800CD788  4E 80 00 20 */	blr 
