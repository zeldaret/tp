lbl_80CE9CF8:
/* 80CE9CF8  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80CE9CFC  7C 08 02 A6 */	mflr r0
/* 80CE9D00  90 01 01 64 */	stw r0, 0x164(r1)
/* 80CE9D04  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 80CE9D08  F3 E1 01 58 */	psq_st f31, 344(r1), 0, 0 /* qr0 */
/* 80CE9D0C  39 61 01 50 */	addi r11, r1, 0x150
/* 80CE9D10  4B 67 84 A5 */	bl _savegpr_19
/* 80CE9D14  7C 7F 1B 78 */	mr r31, r3
/* 80CE9D18  3C 60 80 CF */	lis r3, cNullVec__6Z2Calc@ha /* 0x80CECC54@ha */
/* 80CE9D1C  3B A3 CC 54 */	addi r29, r3, cNullVec__6Z2Calc@l /* 0x80CECC54@l */
/* 80CE9D20  3C 60 80 CF */	lis r3, l_bmdIdx@ha /* 0x80CECAB4@ha */
/* 80CE9D24  3B C3 CA B4 */	addi r30, r3, l_bmdIdx@l /* 0x80CECAB4@l */
/* 80CE9D28  3C 60 80 CF */	lis r3, data_80CECE10@ha /* 0x80CECE10@ha */
/* 80CE9D2C  8C 03 CE 10 */	lbzu r0, data_80CECE10@l(r3)  /* 0x80CECE10@l */
/* 80CE9D30  7C 00 07 75 */	extsb. r0, r0
/* 80CE9D34  40 82 00 B8 */	bne lbl_80CE9DEC
/* 80CE9D38  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 80CE9D3C  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 80CE9D40  90 9D 00 7C */	stw r4, 0x7c(r29)
/* 80CE9D44  90 1D 00 80 */	stw r0, 0x80(r29)
/* 80CE9D48  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 80CE9D4C  90 1D 00 84 */	stw r0, 0x84(r29)
/* 80CE9D50  38 BD 00 7C */	addi r5, r29, 0x7c
/* 80CE9D54  80 9D 00 34 */	lwz r4, 0x34(r29)
/* 80CE9D58  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 80CE9D5C  90 85 00 0C */	stw r4, 0xc(r5)
/* 80CE9D60  90 05 00 10 */	stw r0, 0x10(r5)
/* 80CE9D64  80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 80CE9D68  90 05 00 14 */	stw r0, 0x14(r5)
/* 80CE9D6C  80 9D 00 40 */	lwz r4, 0x40(r29)
/* 80CE9D70  80 1D 00 44 */	lwz r0, 0x44(r29)
/* 80CE9D74  90 85 00 18 */	stw r4, 0x18(r5)
/* 80CE9D78  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80CE9D7C  80 1D 00 48 */	lwz r0, 0x48(r29)
/* 80CE9D80  90 05 00 20 */	stw r0, 0x20(r5)
/* 80CE9D84  80 9D 00 4C */	lwz r4, 0x4c(r29)
/* 80CE9D88  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 80CE9D8C  90 85 00 24 */	stw r4, 0x24(r5)
/* 80CE9D90  90 05 00 28 */	stw r0, 0x28(r5)
/* 80CE9D94  80 1D 00 54 */	lwz r0, 0x54(r29)
/* 80CE9D98  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80CE9D9C  80 9D 00 58 */	lwz r4, 0x58(r29)
/* 80CE9DA0  80 1D 00 5C */	lwz r0, 0x5c(r29)
/* 80CE9DA4  90 85 00 30 */	stw r4, 0x30(r5)
/* 80CE9DA8  90 05 00 34 */	stw r0, 0x34(r5)
/* 80CE9DAC  80 1D 00 60 */	lwz r0, 0x60(r29)
/* 80CE9DB0  90 05 00 38 */	stw r0, 0x38(r5)
/* 80CE9DB4  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 80CE9DB8  80 1D 00 68 */	lwz r0, 0x68(r29)
/* 80CE9DBC  90 85 00 3C */	stw r4, 0x3c(r5)
/* 80CE9DC0  90 05 00 40 */	stw r0, 0x40(r5)
/* 80CE9DC4  80 1D 00 6C */	lwz r0, 0x6c(r29)
/* 80CE9DC8  90 05 00 44 */	stw r0, 0x44(r5)
/* 80CE9DCC  80 9D 00 70 */	lwz r4, 0x70(r29)
/* 80CE9DD0  80 1D 00 74 */	lwz r0, 0x74(r29)
/* 80CE9DD4  90 85 00 48 */	stw r4, 0x48(r5)
/* 80CE9DD8  90 05 00 4C */	stw r0, 0x4c(r5)
/* 80CE9DDC  80 1D 00 78 */	lwz r0, 0x78(r29)
/* 80CE9DE0  90 05 00 50 */	stw r0, 0x50(r5)
/* 80CE9DE4  38 00 00 01 */	li r0, 1
/* 80CE9DE8  98 03 00 00 */	stb r0, 0(r3)
lbl_80CE9DEC:
/* 80CE9DEC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CE9DF0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CE9DF4  41 82 00 3C */	beq lbl_80CE9E30
/* 80CE9DF8  88 1F 09 07 */	lbz r0, 0x907(r31)
/* 80CE9DFC  28 00 00 02 */	cmplwi r0, 2
/* 80CE9E00  41 82 00 30 */	beq lbl_80CE9E30
/* 80CE9E04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE9E08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE9E0C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CE9E10  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80CE9E14  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80CE9E18  41 82 00 10 */	beq lbl_80CE9E28
/* 80CE9E1C  7F E3 FB 78 */	mr r3, r31
/* 80CE9E20  48 00 1E BD */	bl init_modePushWolfNonBreak__12daObjStone_cFv
/* 80CE9E24  48 00 00 0C */	b lbl_80CE9E30
lbl_80CE9E28:
/* 80CE9E28  7F E3 FB 78 */	mr r3, r31
/* 80CE9E2C  48 00 15 31 */	bl init_modeCarry__12daObjStone_cFv
lbl_80CE9E30:
/* 80CE9E30  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80CE9E34  4B 39 A6 2D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CE9E38  28 03 00 00 */	cmplwi r3, 0
/* 80CE9E3C  41 82 00 8C */	beq lbl_80CE9EC8
/* 80CE9E40  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80CE9E44  4B 39 A6 B5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80CE9E48  7C 75 1B 79 */	or. r21, r3, r3
/* 80CE9E4C  41 82 00 7C */	beq lbl_80CE9EC8
/* 80CE9E50  38 7F 08 64 */	addi r3, r31, 0x864
/* 80CE9E54  4B 39 98 35 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80CE9E58  7C 74 1B 78 */	mr r20, r3
/* 80CE9E5C  A8 03 00 08 */	lha r0, 8(r3)
/* 80CE9E60  2C 00 00 21 */	cmpwi r0, 0x21
/* 80CE9E64  40 82 00 10 */	bne lbl_80CE9E74
/* 80CE9E68  7F E3 FB 78 */	mr r3, r31
/* 80CE9E6C  48 00 20 B1 */	bl init_modeBreak__12daObjStone_cFv
/* 80CE9E70  48 00 00 58 */	b lbl_80CE9EC8
lbl_80CE9E74:
/* 80CE9E74  80 15 00 10 */	lwz r0, 0x10(r21)
/* 80CE9E78  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80CE9E7C  41 82 00 0C */	beq lbl_80CE9E88
/* 80CE9E80  7F E3 FB 78 */	mr r3, r31
/* 80CE9E84  48 00 20 99 */	bl init_modeBreak__12daObjStone_cFv
lbl_80CE9E88:
/* 80CE9E88  80 75 00 10 */	lwz r3, 0x10(r21)
/* 80CE9E8C  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 80CE9E90  41 82 00 1C */	beq lbl_80CE9EAC
/* 80CE9E94  88 15 00 14 */	lbz r0, 0x14(r21)
/* 80CE9E98  28 00 00 01 */	cmplwi r0, 1
/* 80CE9E9C  41 82 00 10 */	beq lbl_80CE9EAC
/* 80CE9EA0  7F E3 FB 78 */	mr r3, r31
/* 80CE9EA4  48 00 20 79 */	bl init_modeBreak__12daObjStone_cFv
/* 80CE9EA8  48 00 00 20 */	b lbl_80CE9EC8
lbl_80CE9EAC:
/* 80CE9EAC  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 80CE9EB0  41 82 00 18 */	beq lbl_80CE9EC8
/* 80CE9EB4  A8 14 00 08 */	lha r0, 8(r20)
/* 80CE9EB8  2C 00 00 E1 */	cmpwi r0, 0xe1
/* 80CE9EBC  40 82 00 0C */	bne lbl_80CE9EC8
/* 80CE9EC0  7F E3 FB 78 */	mr r3, r31
/* 80CE9EC4  48 00 20 59 */	bl init_modeBreak__12daObjStone_cFv
lbl_80CE9EC8:
/* 80CE9EC8  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80CE9ECC  4B 39 A3 F5 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80CE9ED0  28 03 00 00 */	cmplwi r3, 0
/* 80CE9ED4  41 82 00 0C */	beq lbl_80CE9EE0
/* 80CE9ED8  7F E3 FB 78 */	mr r3, r31
/* 80CE9EDC  48 00 20 41 */	bl init_modeBreak__12daObjStone_cFv
lbl_80CE9EE0:
/* 80CE9EE0  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80CE9EE4  54 1B CF FE */	rlwinm r27, r0, 0x19, 0x1f, 0x1f
/* 80CE9EE8  54 1C 06 F6 */	rlwinm r28, r0, 0, 0x1b, 0x1b
/* 80CE9EEC  54 19 DF FE */	rlwinm r25, r0, 0x1b, 0x1f, 0x1f
/* 80CE9EF0  54 1A AF FE */	rlwinm r26, r0, 0x15, 0x1f, 0x1f
/* 80CE9EF4  54 18 A7 FE */	rlwinm r24, r0, 0x14, 0x1f, 0x1f
/* 80CE9EF8  88 1F 09 07 */	lbz r0, 0x907(r31)
/* 80CE9EFC  28 00 00 01 */	cmplwi r0, 1
/* 80CE9F00  40 82 05 2C */	bne lbl_80CEA42C
/* 80CE9F04  28 1B 00 00 */	cmplwi r27, 0
/* 80CE9F08  41 82 02 88 */	beq lbl_80CEA190
/* 80CE9F0C  28 18 00 00 */	cmplwi r24, 0
/* 80CE9F10  40 82 02 80 */	bne lbl_80CEA190
/* 80CE9F14  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80CE9F18  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CE9F1C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CE9F20  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CE9F24  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CE9F28  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80CE9F2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CE9F30  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80CE9F34  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80CE9F38  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CE9F3C  7C 63 02 14 */	add r3, r3, r0
/* 80CE9F40  C0 23 00 04 */	lfs f1, 4(r3)
/* 80CE9F44  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80CE9F48  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CE9F4C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80CE9F50  C0 1F 09 48 */	lfs f0, 0x948(r31)
/* 80CE9F54  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CE9F58  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 80CE9F5C  4B 65 D1 DD */	bl PSVECSquareMag
/* 80CE9F60  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CE9F64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE9F68  40 81 00 58 */	ble lbl_80CE9FC0
/* 80CE9F6C  FC 00 08 34 */	frsqrte f0, f1
/* 80CE9F70  C8 9E 00 E8 */	lfd f4, 0xe8(r30)
/* 80CE9F74  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE9F78  C8 7E 00 F0 */	lfd f3, 0xf0(r30)
/* 80CE9F7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE9F80  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE9F84  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE9F88  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE9F8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE9F90  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE9F94  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE9F98  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE9F9C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE9FA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE9FA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE9FA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE9FAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE9FB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE9FB4  FC 21 00 32 */	fmul f1, f1, f0
/* 80CE9FB8  FC 20 08 18 */	frsp f1, f1
/* 80CE9FBC  48 00 00 88 */	b lbl_80CEA044
lbl_80CE9FC0:
/* 80CE9FC0  C8 1E 00 F8 */	lfd f0, 0xf8(r30)
/* 80CE9FC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE9FC8  40 80 00 10 */	bge lbl_80CE9FD8
/* 80CE9FCC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CE9FD0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CE9FD4  48 00 00 70 */	b lbl_80CEA044
lbl_80CE9FD8:
/* 80CE9FD8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80CE9FDC  80 81 00 34 */	lwz r4, 0x34(r1)
/* 80CE9FE0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CE9FE4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CE9FE8  7C 03 00 00 */	cmpw r3, r0
/* 80CE9FEC  41 82 00 14 */	beq lbl_80CEA000
/* 80CE9FF0  40 80 00 40 */	bge lbl_80CEA030
/* 80CE9FF4  2C 03 00 00 */	cmpwi r3, 0
/* 80CE9FF8  41 82 00 20 */	beq lbl_80CEA018
/* 80CE9FFC  48 00 00 34 */	b lbl_80CEA030
lbl_80CEA000:
/* 80CEA000  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEA004  41 82 00 0C */	beq lbl_80CEA010
/* 80CEA008  38 00 00 01 */	li r0, 1
/* 80CEA00C  48 00 00 28 */	b lbl_80CEA034
lbl_80CEA010:
/* 80CEA010  38 00 00 02 */	li r0, 2
/* 80CEA014  48 00 00 20 */	b lbl_80CEA034
lbl_80CEA018:
/* 80CEA018  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEA01C  41 82 00 0C */	beq lbl_80CEA028
/* 80CEA020  38 00 00 05 */	li r0, 5
/* 80CEA024  48 00 00 10 */	b lbl_80CEA034
lbl_80CEA028:
/* 80CEA028  38 00 00 03 */	li r0, 3
/* 80CEA02C  48 00 00 08 */	b lbl_80CEA034
lbl_80CEA030:
/* 80CEA030  38 00 00 04 */	li r0, 4
lbl_80CEA034:
/* 80CEA034  2C 00 00 01 */	cmpwi r0, 1
/* 80CEA038  40 82 00 0C */	bne lbl_80CEA044
/* 80CEA03C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CEA040  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CEA044:
/* 80CEA044  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 80CEA048  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA04C  40 81 00 18 */	ble lbl_80CEA064
/* 80CEA050  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 80CEA054  38 9F 06 64 */	addi r4, r31, 0x664
/* 80CEA058  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 80CEA05C  4B FF F0 1D */	bl bound__FP4cXyzRC13cBgS_PolyInfof
/* 80CEA060  48 00 00 14 */	b lbl_80CEA074
lbl_80CEA064:
/* 80CEA064  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CEA068  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80CEA06C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CEA070  D0 1F 05 00 */	stfs f0, 0x500(r31)
lbl_80CEA074:
/* 80CEA074  C0 3F 05 00 */	lfs f1, 0x500(r31)
/* 80CEA078  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80CEA07C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80CEA080  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CEA084  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80CEA088  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80CEA08C  38 61 00 7C */	addi r3, r1, 0x7c
/* 80CEA090  4B 65 D0 A9 */	bl PSVECSquareMag
/* 80CEA094  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CEA098  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA09C  40 81 00 58 */	ble lbl_80CEA0F4
/* 80CEA0A0  FC 00 08 34 */	frsqrte f0, f1
/* 80CEA0A4  C8 9E 00 E8 */	lfd f4, 0xe8(r30)
/* 80CEA0A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA0AC  C8 7E 00 F0 */	lfd f3, 0xf0(r30)
/* 80CEA0B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA0B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA0B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA0BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA0C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA0C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA0C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA0CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA0D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA0D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA0D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA0DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA0E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA0E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA0E8  FC 21 00 32 */	fmul f1, f1, f0
/* 80CEA0EC  FC 20 08 18 */	frsp f1, f1
/* 80CEA0F0  48 00 00 88 */	b lbl_80CEA178
lbl_80CEA0F4:
/* 80CEA0F4  C8 1E 00 F8 */	lfd f0, 0xf8(r30)
/* 80CEA0F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA0FC  40 80 00 10 */	bge lbl_80CEA10C
/* 80CEA100  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CEA104  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CEA108  48 00 00 70 */	b lbl_80CEA178
lbl_80CEA10C:
/* 80CEA10C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80CEA110  80 81 00 30 */	lwz r4, 0x30(r1)
/* 80CEA114  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CEA118  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CEA11C  7C 03 00 00 */	cmpw r3, r0
/* 80CEA120  41 82 00 14 */	beq lbl_80CEA134
/* 80CEA124  40 80 00 40 */	bge lbl_80CEA164
/* 80CEA128  2C 03 00 00 */	cmpwi r3, 0
/* 80CEA12C  41 82 00 20 */	beq lbl_80CEA14C
/* 80CEA130  48 00 00 34 */	b lbl_80CEA164
lbl_80CEA134:
/* 80CEA134  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEA138  41 82 00 0C */	beq lbl_80CEA144
/* 80CEA13C  38 00 00 01 */	li r0, 1
/* 80CEA140  48 00 00 28 */	b lbl_80CEA168
lbl_80CEA144:
/* 80CEA144  38 00 00 02 */	li r0, 2
/* 80CEA148  48 00 00 20 */	b lbl_80CEA168
lbl_80CEA14C:
/* 80CEA14C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEA150  41 82 00 0C */	beq lbl_80CEA15C
/* 80CEA154  38 00 00 05 */	li r0, 5
/* 80CEA158  48 00 00 10 */	b lbl_80CEA168
lbl_80CEA15C:
/* 80CEA15C  38 00 00 03 */	li r0, 3
/* 80CEA160  48 00 00 08 */	b lbl_80CEA168
lbl_80CEA164:
/* 80CEA164  38 00 00 04 */	li r0, 4
lbl_80CEA168:
/* 80CEA168  2C 00 00 01 */	cmpwi r0, 1
/* 80CEA16C  40 82 00 0C */	bne lbl_80CEA178
/* 80CEA170  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CEA174  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CEA178:
/* 80CEA178  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 80CEA17C  C0 3F 04 F8 */	lfs f1, 0x4f8(r31)
/* 80CEA180  C0 5F 05 00 */	lfs f2, 0x500(r31)
/* 80CEA184  4B 57 D4 F1 */	bl cM_atan2s__Fff
/* 80CEA188  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80CEA18C  48 00 02 A0 */	b lbl_80CEA42C
lbl_80CEA190:
/* 80CEA190  28 1C 00 00 */	cmplwi r28, 0
/* 80CEA194  41 82 02 98 */	beq lbl_80CEA42C
/* 80CEA198  88 1F 09 51 */	lbz r0, 0x951(r31)
/* 80CEA19C  28 00 00 00 */	cmplwi r0, 0
/* 80CEA1A0  40 82 02 8C */	bne lbl_80CEA42C
/* 80CEA1A4  28 18 00 00 */	cmplwi r24, 0
/* 80CEA1A8  41 82 02 84 */	beq lbl_80CEA42C
/* 80CEA1AC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80CEA1B0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEA1B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CEA1B8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CEA1BC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CEA1C0  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80CEA1C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CEA1C8  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80CEA1CC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80CEA1D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEA1D4  7C 63 02 14 */	add r3, r3, r0
/* 80CEA1D8  C0 23 00 04 */	lfs f1, 4(r3)
/* 80CEA1DC  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80CEA1E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CEA1E4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80CEA1E8  C0 1F 09 48 */	lfs f0, 0x948(r31)
/* 80CEA1EC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CEA1F0  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 80CEA1F4  4B 65 CF 45 */	bl PSVECSquareMag
/* 80CEA1F8  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CEA1FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA200  40 81 00 58 */	ble lbl_80CEA258
/* 80CEA204  FC 00 08 34 */	frsqrte f0, f1
/* 80CEA208  C8 9E 00 E8 */	lfd f4, 0xe8(r30)
/* 80CEA20C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA210  C8 7E 00 F0 */	lfd f3, 0xf0(r30)
/* 80CEA214  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA218  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA21C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA220  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA224  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA228  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA22C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA230  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA234  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA238  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA23C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA240  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA244  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA248  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA24C  FC 21 00 32 */	fmul f1, f1, f0
/* 80CEA250  FC 20 08 18 */	frsp f1, f1
/* 80CEA254  48 00 00 88 */	b lbl_80CEA2DC
lbl_80CEA258:
/* 80CEA258  C8 1E 00 F8 */	lfd f0, 0xf8(r30)
/* 80CEA25C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA260  40 80 00 10 */	bge lbl_80CEA270
/* 80CEA264  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CEA268  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CEA26C  48 00 00 70 */	b lbl_80CEA2DC
lbl_80CEA270:
/* 80CEA270  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80CEA274  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80CEA278  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CEA27C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CEA280  7C 03 00 00 */	cmpw r3, r0
/* 80CEA284  41 82 00 14 */	beq lbl_80CEA298
/* 80CEA288  40 80 00 40 */	bge lbl_80CEA2C8
/* 80CEA28C  2C 03 00 00 */	cmpwi r3, 0
/* 80CEA290  41 82 00 20 */	beq lbl_80CEA2B0
/* 80CEA294  48 00 00 34 */	b lbl_80CEA2C8
lbl_80CEA298:
/* 80CEA298  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEA29C  41 82 00 0C */	beq lbl_80CEA2A8
/* 80CEA2A0  38 00 00 01 */	li r0, 1
/* 80CEA2A4  48 00 00 28 */	b lbl_80CEA2CC
lbl_80CEA2A8:
/* 80CEA2A8  38 00 00 02 */	li r0, 2
/* 80CEA2AC  48 00 00 20 */	b lbl_80CEA2CC
lbl_80CEA2B0:
/* 80CEA2B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEA2B4  41 82 00 0C */	beq lbl_80CEA2C0
/* 80CEA2B8  38 00 00 05 */	li r0, 5
/* 80CEA2BC  48 00 00 10 */	b lbl_80CEA2CC
lbl_80CEA2C0:
/* 80CEA2C0  38 00 00 03 */	li r0, 3
/* 80CEA2C4  48 00 00 08 */	b lbl_80CEA2CC
lbl_80CEA2C8:
/* 80CEA2C8  38 00 00 04 */	li r0, 4
lbl_80CEA2CC:
/* 80CEA2CC  2C 00 00 01 */	cmpwi r0, 1
/* 80CEA2D0  40 82 00 0C */	bne lbl_80CEA2DC
/* 80CEA2D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CEA2D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CEA2DC:
/* 80CEA2DC  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 80CEA2E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA2E4  40 81 00 18 */	ble lbl_80CEA2FC
/* 80CEA2E8  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 80CEA2EC  38 9F 07 4C */	addi r4, r31, 0x74c
/* 80CEA2F0  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 80CEA2F4  4B FF ED 85 */	bl bound__FP4cXyzRC13cBgS_PolyInfof
/* 80CEA2F8  48 00 00 14 */	b lbl_80CEA30C
lbl_80CEA2FC:
/* 80CEA2FC  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CEA300  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80CEA304  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CEA308  D0 1F 05 00 */	stfs f0, 0x500(r31)
lbl_80CEA30C:
/* 80CEA30C  C0 1F 09 48 */	lfs f0, 0x948(r31)
/* 80CEA310  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CEA314  C0 3F 05 00 */	lfs f1, 0x500(r31)
/* 80CEA318  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80CEA31C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80CEA320  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CEA324  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80CEA328  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80CEA32C  38 61 00 70 */	addi r3, r1, 0x70
/* 80CEA330  4B 65 CE 09 */	bl PSVECSquareMag
/* 80CEA334  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CEA338  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA33C  40 81 00 58 */	ble lbl_80CEA394
/* 80CEA340  FC 00 08 34 */	frsqrte f0, f1
/* 80CEA344  C8 9E 00 E8 */	lfd f4, 0xe8(r30)
/* 80CEA348  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA34C  C8 7E 00 F0 */	lfd f3, 0xf0(r30)
/* 80CEA350  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA354  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA358  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA35C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA360  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA364  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA368  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA36C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA370  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA374  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA378  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA37C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA380  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA384  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA388  FC 21 00 32 */	fmul f1, f1, f0
/* 80CEA38C  FC 20 08 18 */	frsp f1, f1
/* 80CEA390  48 00 00 88 */	b lbl_80CEA418
lbl_80CEA394:
/* 80CEA394  C8 1E 00 F8 */	lfd f0, 0xf8(r30)
/* 80CEA398  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA39C  40 80 00 10 */	bge lbl_80CEA3AC
/* 80CEA3A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CEA3A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CEA3A8  48 00 00 70 */	b lbl_80CEA418
lbl_80CEA3AC:
/* 80CEA3AC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80CEA3B0  80 81 00 28 */	lwz r4, 0x28(r1)
/* 80CEA3B4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CEA3B8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CEA3BC  7C 03 00 00 */	cmpw r3, r0
/* 80CEA3C0  41 82 00 14 */	beq lbl_80CEA3D4
/* 80CEA3C4  40 80 00 40 */	bge lbl_80CEA404
/* 80CEA3C8  2C 03 00 00 */	cmpwi r3, 0
/* 80CEA3CC  41 82 00 20 */	beq lbl_80CEA3EC
/* 80CEA3D0  48 00 00 34 */	b lbl_80CEA404
lbl_80CEA3D4:
/* 80CEA3D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEA3D8  41 82 00 0C */	beq lbl_80CEA3E4
/* 80CEA3DC  38 00 00 01 */	li r0, 1
/* 80CEA3E0  48 00 00 28 */	b lbl_80CEA408
lbl_80CEA3E4:
/* 80CEA3E4  38 00 00 02 */	li r0, 2
/* 80CEA3E8  48 00 00 20 */	b lbl_80CEA408
lbl_80CEA3EC:
/* 80CEA3EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEA3F0  41 82 00 0C */	beq lbl_80CEA3FC
/* 80CEA3F4  38 00 00 05 */	li r0, 5
/* 80CEA3F8  48 00 00 10 */	b lbl_80CEA408
lbl_80CEA3FC:
/* 80CEA3FC  38 00 00 03 */	li r0, 3
/* 80CEA400  48 00 00 08 */	b lbl_80CEA408
lbl_80CEA404:
/* 80CEA404  38 00 00 04 */	li r0, 4
lbl_80CEA408:
/* 80CEA408  2C 00 00 01 */	cmpwi r0, 1
/* 80CEA40C  40 82 00 0C */	bne lbl_80CEA418
/* 80CEA410  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CEA414  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CEA418:
/* 80CEA418  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 80CEA41C  C0 3F 04 F8 */	lfs f1, 0x4f8(r31)
/* 80CEA420  C0 5F 05 00 */	lfs f2, 0x500(r31)
/* 80CEA424  4B 57 D2 51 */	bl cM_atan2s__Fff
/* 80CEA428  B0 7F 04 DE */	sth r3, 0x4de(r31)
lbl_80CEA42C:
/* 80CEA42C  88 1F 09 07 */	lbz r0, 0x907(r31)
/* 80CEA430  28 00 00 04 */	cmplwi r0, 4
/* 80CEA434  40 82 02 7C */	bne lbl_80CEA6B0
/* 80CEA438  28 1C 00 00 */	cmplwi r28, 0
/* 80CEA43C  41 82 02 74 */	beq lbl_80CEA6B0
/* 80CEA440  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80CEA444  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEA448  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CEA44C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CEA450  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CEA454  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80CEA458  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CEA45C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80CEA460  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80CEA464  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEA468  7C 63 02 14 */	add r3, r3, r0
/* 80CEA46C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80CEA470  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80CEA474  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CEA478  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80CEA47C  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 80CEA480  4B 65 CC B9 */	bl PSVECSquareMag
/* 80CEA484  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CEA488  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA48C  40 81 00 58 */	ble lbl_80CEA4E4
/* 80CEA490  FC 00 08 34 */	frsqrte f0, f1
/* 80CEA494  C8 9E 00 E8 */	lfd f4, 0xe8(r30)
/* 80CEA498  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA49C  C8 7E 00 F0 */	lfd f3, 0xf0(r30)
/* 80CEA4A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA4A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA4A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA4AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA4B0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA4B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA4B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA4BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA4C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA4C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA4C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA4CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA4D0  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA4D4  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA4D8  FC 21 00 32 */	fmul f1, f1, f0
/* 80CEA4DC  FC 20 08 18 */	frsp f1, f1
/* 80CEA4E0  48 00 00 88 */	b lbl_80CEA568
lbl_80CEA4E4:
/* 80CEA4E4  C8 1E 00 F8 */	lfd f0, 0xf8(r30)
/* 80CEA4E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA4EC  40 80 00 10 */	bge lbl_80CEA4FC
/* 80CEA4F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CEA4F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CEA4F8  48 00 00 70 */	b lbl_80CEA568
lbl_80CEA4FC:
/* 80CEA4FC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CEA500  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80CEA504  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CEA508  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CEA50C  7C 03 00 00 */	cmpw r3, r0
/* 80CEA510  41 82 00 14 */	beq lbl_80CEA524
/* 80CEA514  40 80 00 40 */	bge lbl_80CEA554
/* 80CEA518  2C 03 00 00 */	cmpwi r3, 0
/* 80CEA51C  41 82 00 20 */	beq lbl_80CEA53C
/* 80CEA520  48 00 00 34 */	b lbl_80CEA554
lbl_80CEA524:
/* 80CEA524  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEA528  41 82 00 0C */	beq lbl_80CEA534
/* 80CEA52C  38 00 00 01 */	li r0, 1
/* 80CEA530  48 00 00 28 */	b lbl_80CEA558
lbl_80CEA534:
/* 80CEA534  38 00 00 02 */	li r0, 2
/* 80CEA538  48 00 00 20 */	b lbl_80CEA558
lbl_80CEA53C:
/* 80CEA53C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEA540  41 82 00 0C */	beq lbl_80CEA54C
/* 80CEA544  38 00 00 05 */	li r0, 5
/* 80CEA548  48 00 00 10 */	b lbl_80CEA558
lbl_80CEA54C:
/* 80CEA54C  38 00 00 03 */	li r0, 3
/* 80CEA550  48 00 00 08 */	b lbl_80CEA558
lbl_80CEA554:
/* 80CEA554  38 00 00 04 */	li r0, 4
lbl_80CEA558:
/* 80CEA558  2C 00 00 01 */	cmpwi r0, 1
/* 80CEA55C  40 82 00 0C */	bne lbl_80CEA568
/* 80CEA560  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CEA564  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CEA568:
/* 80CEA568  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 80CEA56C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA570  40 81 00 18 */	ble lbl_80CEA588
/* 80CEA574  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 80CEA578  38 9F 07 4C */	addi r4, r31, 0x74c
/* 80CEA57C  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 80CEA580  4B FF EA F9 */	bl bound__FP4cXyzRC13cBgS_PolyInfof
/* 80CEA584  48 00 00 14 */	b lbl_80CEA598
lbl_80CEA588:
/* 80CEA588  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CEA58C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80CEA590  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CEA594  D0 1F 05 00 */	stfs f0, 0x500(r31)
lbl_80CEA598:
/* 80CEA598  C0 3F 05 00 */	lfs f1, 0x500(r31)
/* 80CEA59C  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80CEA5A0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80CEA5A4  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CEA5A8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80CEA5AC  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80CEA5B0  38 61 00 64 */	addi r3, r1, 0x64
/* 80CEA5B4  4B 65 CB 85 */	bl PSVECSquareMag
/* 80CEA5B8  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CEA5BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA5C0  40 81 00 58 */	ble lbl_80CEA618
/* 80CEA5C4  FC 00 08 34 */	frsqrte f0, f1
/* 80CEA5C8  C8 9E 00 E8 */	lfd f4, 0xe8(r30)
/* 80CEA5CC  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA5D0  C8 7E 00 F0 */	lfd f3, 0xf0(r30)
/* 80CEA5D4  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA5D8  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA5DC  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA5E0  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA5E4  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA5E8  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA5EC  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA5F0  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA5F4  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA5F8  FC 44 00 32 */	fmul f2, f4, f0
/* 80CEA5FC  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEA600  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEA604  FC 03 00 28 */	fsub f0, f3, f0
/* 80CEA608  FC 02 00 32 */	fmul f0, f2, f0
/* 80CEA60C  FC 21 00 32 */	fmul f1, f1, f0
/* 80CEA610  FC 20 08 18 */	frsp f1, f1
/* 80CEA614  48 00 00 88 */	b lbl_80CEA69C
lbl_80CEA618:
/* 80CEA618  C8 1E 00 F8 */	lfd f0, 0xf8(r30)
/* 80CEA61C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA620  40 80 00 10 */	bge lbl_80CEA630
/* 80CEA624  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CEA628  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CEA62C  48 00 00 70 */	b lbl_80CEA69C
lbl_80CEA630:
/* 80CEA630  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CEA634  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80CEA638  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CEA63C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CEA640  7C 03 00 00 */	cmpw r3, r0
/* 80CEA644  41 82 00 14 */	beq lbl_80CEA658
/* 80CEA648  40 80 00 40 */	bge lbl_80CEA688
/* 80CEA64C  2C 03 00 00 */	cmpwi r3, 0
/* 80CEA650  41 82 00 20 */	beq lbl_80CEA670
/* 80CEA654  48 00 00 34 */	b lbl_80CEA688
lbl_80CEA658:
/* 80CEA658  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEA65C  41 82 00 0C */	beq lbl_80CEA668
/* 80CEA660  38 00 00 01 */	li r0, 1
/* 80CEA664  48 00 00 28 */	b lbl_80CEA68C
lbl_80CEA668:
/* 80CEA668  38 00 00 02 */	li r0, 2
/* 80CEA66C  48 00 00 20 */	b lbl_80CEA68C
lbl_80CEA670:
/* 80CEA670  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEA674  41 82 00 0C */	beq lbl_80CEA680
/* 80CEA678  38 00 00 05 */	li r0, 5
/* 80CEA67C  48 00 00 10 */	b lbl_80CEA68C
lbl_80CEA680:
/* 80CEA680  38 00 00 03 */	li r0, 3
/* 80CEA684  48 00 00 08 */	b lbl_80CEA68C
lbl_80CEA688:
/* 80CEA688  38 00 00 04 */	li r0, 4
lbl_80CEA68C:
/* 80CEA68C  2C 00 00 01 */	cmpwi r0, 1
/* 80CEA690  40 82 00 0C */	bne lbl_80CEA69C
/* 80CEA694  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CEA698  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CEA69C:
/* 80CEA69C  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 80CEA6A0  C0 3F 04 F8 */	lfs f1, 0x4f8(r31)
/* 80CEA6A4  C0 5F 05 00 */	lfs f2, 0x500(r31)
/* 80CEA6A8  4B 57 CF CD */	bl cM_atan2s__Fff
/* 80CEA6AC  B0 7F 04 DE */	sth r3, 0x4de(r31)
lbl_80CEA6B0:
/* 80CEA6B0  38 00 00 00 */	li r0, 0
/* 80CEA6B4  98 1F 09 4E */	stb r0, 0x94e(r31)
/* 80CEA6B8  28 1A 00 00 */	cmplwi r26, 0
/* 80CEA6BC  40 82 00 0C */	bne lbl_80CEA6C8
/* 80CEA6C0  28 18 00 00 */	cmplwi r24, 0
/* 80CEA6C4  41 82 03 80 */	beq lbl_80CEAA44
lbl_80CEA6C8:
/* 80CEA6C8  C3 FF 07 40 */	lfs f31, 0x740(r31)
/* 80CEA6CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CEA6D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CEA6D4  3A 83 0F 38 */	addi r20, r3, 0xf38
/* 80CEA6D8  7E 83 A3 78 */	mr r3, r20
/* 80CEA6DC  38 9F 06 F4 */	addi r4, r31, 0x6f4
/* 80CEA6E0  4B 38 A7 71 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80CEA6E4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CEA6E8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80CEA6EC  40 81 03 58 */	ble lbl_80CEAA44
/* 80CEA6F0  2C 03 00 07 */	cmpwi r3, 7
/* 80CEA6F4  41 82 00 18 */	beq lbl_80CEA70C
/* 80CEA6F8  40 80 00 10 */	bge lbl_80CEA708
/* 80CEA6FC  2C 03 00 06 */	cmpwi r3, 6
/* 80CEA700  40 80 02 68 */	bge lbl_80CEA968
/* 80CEA704  48 00 00 08 */	b lbl_80CEA70C
lbl_80CEA708:
/* 80CEA708  2C 03 00 0B */	cmpwi r3, 0xb
lbl_80CEA70C:
/* 80CEA70C  38 00 00 01 */	li r0, 1
/* 80CEA710  98 1F 09 4E */	stb r0, 0x94e(r31)
/* 80CEA714  88 1F 09 4F */	lbz r0, 0x94f(r31)
/* 80CEA718  28 00 00 00 */	cmplwi r0, 0
/* 80CEA71C  40 82 01 94 */	bne lbl_80CEA8B0
/* 80CEA720  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CEA724  88 1F 09 06 */	lbz r0, 0x906(r31)
/* 80CEA728  54 00 10 3A */	slwi r0, r0, 2
/* 80CEA72C  38 9E 00 B4 */	addi r4, r30, 0xb4
/* 80CEA730  7C 24 04 2E */	lfsx f1, r4, r0
/* 80CEA734  38 80 00 00 */	li r4, 0
/* 80CEA738  4B 33 51 45 */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 80CEA73C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80CEA740  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CEA744  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80CEA748  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80CEA74C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80CEA750  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80CEA754  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 80CEA758  3A 61 00 B8 */	addi r19, r1, 0xb8
/* 80CEA75C  7E 63 9B 78 */	mr r3, r19
/* 80CEA760  4B 38 CE 1D */	bl __ct__11dBgS_GndChkFv
/* 80CEA764  3C 60 80 CF */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80CECD74@ha */
/* 80CEA768  38 63 CD 74 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x80CECD74@l */
/* 80CEA76C  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 80CEA770  3A E3 00 0C */	addi r23, r3, 0xc
/* 80CEA774  92 E1 00 D8 */	stw r23, 0xd8(r1)
/* 80CEA778  3A C3 00 18 */	addi r22, r3, 0x18
/* 80CEA77C  92 C1 00 F4 */	stw r22, 0xf4(r1)
/* 80CEA780  3A A3 00 24 */	addi r21, r3, 0x24
/* 80CEA784  92 A1 01 04 */	stw r21, 0x104(r1)
/* 80CEA788  38 73 00 3C */	addi r3, r19, 0x3c
/* 80CEA78C  4B 38 E6 DD */	bl SetObj__16dBgS_PolyPassChkFv
/* 80CEA790  7E 63 9B 78 */	mr r3, r19
/* 80CEA794  38 81 00 AC */	addi r4, r1, 0xac
/* 80CEA798  4B 57 D5 91 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80CEA79C  7E 83 A3 78 */	mr r3, r20
/* 80CEA7A0  7E 64 9B 78 */	mr r4, r19
/* 80CEA7A4  4B 38 9C FD */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80CEA7A8  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80CEA7AC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CEA7B0  40 82 00 08 */	bne lbl_80CEA7B8
/* 80CEA7B4  C0 3E 01 1C */	lfs f1, 0x11c(r30)
lbl_80CEA7B8:
/* 80CEA7B8  EC 1F 08 28 */	fsubs f0, f31, f1
/* 80CEA7BC  FC 00 02 10 */	fabs f0, f0
/* 80CEA7C0  FC 20 00 18 */	frsp f1, f0
/* 80CEA7C4  88 1F 09 06 */	lbz r0, 0x906(r31)
/* 80CEA7C8  28 00 00 00 */	cmplwi r0, 0
/* 80CEA7CC  40 82 00 10 */	bne lbl_80CEA7DC
/* 80CEA7D0  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80CEA7D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA7D8  41 80 00 18 */	blt lbl_80CEA7F0
lbl_80CEA7DC:
/* 80CEA7DC  28 00 00 01 */	cmplwi r0, 1
/* 80CEA7E0  40 82 00 60 */	bne lbl_80CEA840
/* 80CEA7E4  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 80CEA7E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA7EC  40 80 00 54 */	bge lbl_80CEA840
lbl_80CEA7F0:
/* 80CEA7F0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEA7F4  7C 03 07 74 */	extsb r3, r0
/* 80CEA7F8  4B 34 28 75 */	bl dComIfGp_getReverb__Fi
/* 80CEA7FC  7C 67 1B 78 */	mr r7, r3
/* 80CEA800  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802F2@ha */
/* 80CEA804  38 03 02 F2 */	addi r0, r3, 0x02F2 /* 0x000802F2@l */
/* 80CEA808  90 01 00 60 */	stw r0, 0x60(r1)
/* 80CEA80C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEA810  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEA814  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEA818  38 81 00 60 */	addi r4, r1, 0x60
/* 80CEA81C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEA820  38 C0 00 00 */	li r6, 0
/* 80CEA824  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80CEA828  FC 40 08 90 */	fmr f2, f1
/* 80CEA82C  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 80CEA830  FC 80 18 90 */	fmr f4, f3
/* 80CEA834  39 00 00 00 */	li r8, 0
/* 80CEA838  4B 5C 11 4D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CEA83C  48 00 00 50 */	b lbl_80CEA88C
lbl_80CEA840:
/* 80CEA840  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEA844  7C 03 07 74 */	extsb r3, r0
/* 80CEA848  4B 34 28 25 */	bl dComIfGp_getReverb__Fi
/* 80CEA84C  7C 67 1B 78 */	mr r7, r3
/* 80CEA850  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802F3@ha */
/* 80CEA854  38 03 02 F3 */	addi r0, r3, 0x02F3 /* 0x000802F3@l */
/* 80CEA858  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80CEA85C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEA860  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEA864  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEA868  38 81 00 5C */	addi r4, r1, 0x5c
/* 80CEA86C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEA870  38 C0 00 00 */	li r6, 0
/* 80CEA874  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80CEA878  FC 40 08 90 */	fmr f2, f1
/* 80CEA87C  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 80CEA880  FC 80 18 90 */	fmr f4, f3
/* 80CEA884  39 00 00 00 */	li r8, 0
/* 80CEA888  4B 5C 10 FD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEA88C:
/* 80CEA88C  3C 60 80 CF */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80CECD74@ha */
/* 80CEA890  38 03 CD 74 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x80CECD74@l */
/* 80CEA894  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80CEA898  92 E1 00 D8 */	stw r23, 0xd8(r1)
/* 80CEA89C  92 C1 00 F4 */	stw r22, 0xf4(r1)
/* 80CEA8A0  92 A1 01 04 */	stw r21, 0x104(r1)
/* 80CEA8A4  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80CEA8A8  38 80 00 00 */	li r4, 0
/* 80CEA8AC  4B 38 CD 45 */	bl __dt__11dBgS_GndChkFv
lbl_80CEA8B0:
/* 80CEA8B0  28 19 00 00 */	cmplwi r25, 0
/* 80CEA8B4  41 82 00 74 */	beq lbl_80CEA928
/* 80CEA8B8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CEA8BC  EC 3F 00 28 */	fsubs f1, f31, f0
/* 80CEA8C0  88 1F 09 06 */	lbz r0, 0x906(r31)
/* 80CEA8C4  28 00 00 00 */	cmplwi r0, 0
/* 80CEA8C8  40 82 00 10 */	bne lbl_80CEA8D8
/* 80CEA8CC  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80CEA8D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA8D4  41 80 00 18 */	blt lbl_80CEA8EC
lbl_80CEA8D8:
/* 80CEA8D8  28 00 00 01 */	cmplwi r0, 1
/* 80CEA8DC  40 82 00 4C */	bne lbl_80CEA928
/* 80CEA8E0  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 80CEA8E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA8E8  40 80 00 40 */	bge lbl_80CEA928
lbl_80CEA8EC:
/* 80CEA8EC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CEA8F0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80CEA8F4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CEA8F8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80CEA8FC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CEA900  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80CEA904  D3 E1 00 A4 */	stfs f31, 0xa4(r1)
/* 80CEA908  38 7F 09 54 */	addi r3, r31, 0x954
/* 80CEA90C  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80CEA910  88 1F 09 06 */	lbz r0, 0x906(r31)
/* 80CEA914  54 00 10 3A */	slwi r0, r0, 2
/* 80CEA918  38 BE 00 BC */	addi r5, r30, 0xbc
/* 80CEA91C  7C 25 04 2E */	lfsx f1, r5, r0
/* 80CEA920  C0 5E 01 18 */	lfs f2, 0x118(r30)
/* 80CEA924  4B 33 27 E9 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_80CEA928:
/* 80CEA928  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80CEA92C  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 80CEA930  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA934  40 80 00 08 */	bge lbl_80CEA93C
/* 80CEA938  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_80CEA93C:
/* 80CEA93C  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80CEA940  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 80CEA944  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA948  40 81 00 08 */	ble lbl_80CEA950
/* 80CEA94C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_80CEA950:
/* 80CEA950  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80CEA954  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 80CEA958  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEA95C  40 81 00 E8 */	ble lbl_80CEAA44
/* 80CEA960  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CEA964  48 00 00 E0 */	b lbl_80CEAA44
lbl_80CEA968:
/* 80CEA968  88 1F 09 07 */	lbz r0, 0x907(r31)
/* 80CEA96C  28 00 00 06 */	cmplwi r0, 6
/* 80CEA970  41 82 00 D4 */	beq lbl_80CEAA44
/* 80CEA974  7F E3 FB 78 */	mr r3, r31
/* 80CEA978  48 00 14 AD */	bl init_modeYogan__12daObjStone_cFv
/* 80CEA97C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80CEA980  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CEA984  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80CEA988  D3 E1 00 98 */	stfs f31, 0x98(r1)
/* 80CEA98C  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 80CEA990  88 1F 09 06 */	lbz r0, 0x906(r31)
/* 80CEA994  54 00 10 3A */	slwi r0, r0, 2
/* 80CEA998  38 7E 00 C4 */	addi r3, r30, 0xc4
/* 80CEA99C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CEA9A0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80CEA9A4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80CEA9A8  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80CEA9AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CEA9B0  3A 83 61 C0 */	addi r20, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CEA9B4  80 74 5D 3C */	lwz r3, 0x5d3c(r20)
/* 80CEA9B8  38 80 00 00 */	li r4, 0
/* 80CEA9BC  90 81 00 08 */	stw r4, 8(r1)
/* 80CEA9C0  38 00 FF FF */	li r0, -1
/* 80CEA9C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CEA9C8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CEA9CC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CEA9D0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CEA9D4  38 80 00 00 */	li r4, 0
/* 80CEA9D8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008757@ha */
/* 80CEA9DC  38 A5 87 57 */	addi r5, r5, 0x8757 /* 0x00008757@l */
/* 80CEA9E0  38 C1 00 94 */	addi r6, r1, 0x94
/* 80CEA9E4  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80CEA9E8  39 00 00 00 */	li r8, 0
/* 80CEA9EC  39 21 00 88 */	addi r9, r1, 0x88
/* 80CEA9F0  39 40 00 FF */	li r10, 0xff
/* 80CEA9F4  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80CEA9F8  4B 36 20 99 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CEA9FC  80 74 5D 3C */	lwz r3, 0x5d3c(r20)
/* 80CEAA00  38 80 00 00 */	li r4, 0
/* 80CEAA04  90 81 00 08 */	stw r4, 8(r1)
/* 80CEAA08  38 00 FF FF */	li r0, -1
/* 80CEAA0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CEAA10  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CEAA14  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CEAA18  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CEAA1C  38 80 00 00 */	li r4, 0
/* 80CEAA20  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008758@ha */
/* 80CEAA24  38 A5 87 58 */	addi r5, r5, 0x8758 /* 0x00008758@l */
/* 80CEAA28  38 C1 00 94 */	addi r6, r1, 0x94
/* 80CEAA2C  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80CEAA30  39 00 00 00 */	li r8, 0
/* 80CEAA34  39 21 00 88 */	addi r9, r1, 0x88
/* 80CEAA38  39 40 00 FF */	li r10, 0xff
/* 80CEAA3C  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80CEAA40  4B 36 20 51 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80CEAA44:
/* 80CEAA44  88 1F 09 07 */	lbz r0, 0x907(r31)
/* 80CEAA48  28 00 00 01 */	cmplwi r0, 1
/* 80CEAA4C  40 82 01 E0 */	bne lbl_80CEAC2C
/* 80CEAA50  88 1F 09 4E */	lbz r0, 0x94e(r31)
/* 80CEAA54  28 00 00 00 */	cmplwi r0, 0
/* 80CEAA58  41 82 00 64 */	beq lbl_80CEAABC
/* 80CEAA5C  28 1B 00 00 */	cmplwi r27, 0
/* 80CEAA60  41 82 03 98 */	beq lbl_80CEADF8
/* 80CEAA64  7F E3 FB 78 */	mr r3, r31
/* 80CEAA68  48 00 0C 81 */	bl init_modeWalk__12daObjStone_cFv
/* 80CEAA6C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEAA70  7C 03 07 74 */	extsb r3, r0
/* 80CEAA74  4B 34 25 F9 */	bl dComIfGp_getReverb__Fi
/* 80CEAA78  7C 67 1B 78 */	mr r7, r3
/* 80CEAA7C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802F4@ha */
/* 80CEAA80  38 03 02 F4 */	addi r0, r3, 0x02F4 /* 0x000802F4@l */
/* 80CEAA84  90 01 00 58 */	stw r0, 0x58(r1)
/* 80CEAA88  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEAA8C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEAA90  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEAA94  38 81 00 58 */	addi r4, r1, 0x58
/* 80CEAA98  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEAA9C  38 C0 00 00 */	li r6, 0
/* 80CEAAA0  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80CEAAA4  FC 40 08 90 */	fmr f2, f1
/* 80CEAAA8  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 80CEAAAC  FC 80 18 90 */	fmr f4, f3
/* 80CEAAB0  39 00 00 00 */	li r8, 0
/* 80CEAAB4  4B 5C 0E D1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CEAAB8  48 00 03 40 */	b lbl_80CEADF8
lbl_80CEAABC:
/* 80CEAABC  28 1B 00 00 */	cmplwi r27, 0
/* 80CEAAC0  41 82 01 58 */	beq lbl_80CEAC18
/* 80CEAAC4  28 18 00 00 */	cmplwi r24, 0
/* 80CEAAC8  40 82 01 04 */	bne lbl_80CEABCC
/* 80CEAACC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CEAAD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CEAAD4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CEAAD8  38 9F 06 64 */	addi r4, r31, 0x664
/* 80CEAADC  4B 38 A3 75 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80CEAAE0  2C 03 00 01 */	cmpwi r3, 1
/* 80CEAAE4  41 82 00 14 */	beq lbl_80CEAAF8
/* 80CEAAE8  2C 03 00 03 */	cmpwi r3, 3
/* 80CEAAEC  41 82 00 0C */	beq lbl_80CEAAF8
/* 80CEAAF0  2C 03 00 04 */	cmpwi r3, 4
/* 80CEAAF4  40 82 00 CC */	bne lbl_80CEABC0
lbl_80CEAAF8:
/* 80CEAAF8  88 1F 09 06 */	lbz r0, 0x906(r31)
/* 80CEAAFC  54 00 10 3A */	slwi r0, r0, 2
/* 80CEAB00  38 7E 00 68 */	addi r3, r30, 0x68
/* 80CEAB04  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CEAB08  D0 1F 09 40 */	stfs f0, 0x940(r31)
/* 80CEAB0C  88 1F 09 06 */	lbz r0, 0x906(r31)
/* 80CEAB10  28 00 00 01 */	cmplwi r0, 1
/* 80CEAB14  40 82 00 54 */	bne lbl_80CEAB68
/* 80CEAB18  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEAB1C  7C 03 07 74 */	extsb r3, r0
/* 80CEAB20  4B 34 25 4D */	bl dComIfGp_getReverb__Fi
/* 80CEAB24  7C 67 1B 78 */	mr r7, r3
/* 80CEAB28  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008022F@ha */
/* 80CEAB2C  38 03 02 2F */	addi r0, r3, 0x022F /* 0x0008022F@l */
/* 80CEAB30  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CEAB34  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEAB38  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEAB3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEAB40  38 81 00 54 */	addi r4, r1, 0x54
/* 80CEAB44  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEAB48  38 C0 00 00 */	li r6, 0
/* 80CEAB4C  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80CEAB50  FC 40 08 90 */	fmr f2, f1
/* 80CEAB54  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 80CEAB58  FC 80 18 90 */	fmr f4, f3
/* 80CEAB5C  39 00 00 00 */	li r8, 0
/* 80CEAB60  4B 5C 0E 25 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CEAB64  48 00 00 50 */	b lbl_80CEABB4
lbl_80CEAB68:
/* 80CEAB68  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEAB6C  7C 03 07 74 */	extsb r3, r0
/* 80CEAB70  4B 34 24 FD */	bl dComIfGp_getReverb__Fi
/* 80CEAB74  7C 67 1B 78 */	mr r7, r3
/* 80CEAB78  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080227@ha */
/* 80CEAB7C  38 03 02 27 */	addi r0, r3, 0x0227 /* 0x00080227@l */
/* 80CEAB80  90 01 00 50 */	stw r0, 0x50(r1)
/* 80CEAB84  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEAB88  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEAB8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEAB90  38 81 00 50 */	addi r4, r1, 0x50
/* 80CEAB94  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEAB98  38 C0 00 00 */	li r6, 0
/* 80CEAB9C  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80CEABA0  FC 40 08 90 */	fmr f2, f1
/* 80CEABA4  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 80CEABA8  FC 80 18 90 */	fmr f4, f3
/* 80CEABAC  39 00 00 00 */	li r8, 0
/* 80CEABB0  4B 5C 0D D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEABB4:
/* 80CEABB4  7F E3 FB 78 */	mr r3, r31
/* 80CEABB8  48 00 0B 31 */	bl init_modeWalk__12daObjStone_cFv
/* 80CEABBC  48 00 00 5C */	b lbl_80CEAC18
lbl_80CEABC0:
/* 80CEABC0  7F E3 FB 78 */	mr r3, r31
/* 80CEABC4  48 00 13 59 */	bl init_modeBreak__12daObjStone_cFv
/* 80CEABC8  48 00 00 50 */	b lbl_80CEAC18
lbl_80CEABCC:
/* 80CEABCC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEABD0  7C 03 07 74 */	extsb r3, r0
/* 80CEABD4  4B 34 24 99 */	bl dComIfGp_getReverb__Fi
/* 80CEABD8  7C 67 1B 78 */	mr r7, r3
/* 80CEABDC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802F4@ha */
/* 80CEABE0  38 03 02 F4 */	addi r0, r3, 0x02F4 /* 0x000802F4@l */
/* 80CEABE4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80CEABE8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEABEC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEABF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEABF4  38 81 00 4C */	addi r4, r1, 0x4c
/* 80CEABF8  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEABFC  38 C0 00 00 */	li r6, 0
/* 80CEAC00  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80CEAC04  FC 40 08 90 */	fmr f2, f1
/* 80CEAC08  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 80CEAC0C  FC 80 18 90 */	fmr f4, f3
/* 80CEAC10  39 00 00 00 */	li r8, 0
/* 80CEAC14  4B 5C 0D 71 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEAC18:
/* 80CEAC18  28 1C 00 00 */	cmplwi r28, 0
/* 80CEAC1C  41 82 01 DC */	beq lbl_80CEADF8
/* 80CEAC20  7F E3 FB 78 */	mr r3, r31
/* 80CEAC24  48 00 12 F9 */	bl init_modeBreak__12daObjStone_cFv
/* 80CEAC28  48 00 01 D0 */	b lbl_80CEADF8
lbl_80CEAC2C:
/* 80CEAC2C  28 00 00 00 */	cmplwi r0, 0
/* 80CEAC30  40 82 01 C8 */	bne lbl_80CEADF8
/* 80CEAC34  28 1B 00 00 */	cmplwi r27, 0
/* 80CEAC38  41 82 01 C0 */	beq lbl_80CEADF8
/* 80CEAC3C  28 18 00 00 */	cmplwi r24, 0
/* 80CEAC40  40 82 01 6C */	bne lbl_80CEADAC
/* 80CEAC44  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 80CEAC48  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80CEAC4C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CEAC50  40 82 00 B0 */	bne lbl_80CEAD00
/* 80CEAC54  88 1F 09 06 */	lbz r0, 0x906(r31)
/* 80CEAC58  28 00 00 01 */	cmplwi r0, 1
/* 80CEAC5C  40 82 00 54 */	bne lbl_80CEACB0
/* 80CEAC60  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEAC64  7C 03 07 74 */	extsb r3, r0
/* 80CEAC68  4B 34 24 05 */	bl dComIfGp_getReverb__Fi
/* 80CEAC6C  7C 67 1B 78 */	mr r7, r3
/* 80CEAC70  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080230@ha */
/* 80CEAC74  38 03 02 30 */	addi r0, r3, 0x0230 /* 0x00080230@l */
/* 80CEAC78  90 01 00 48 */	stw r0, 0x48(r1)
/* 80CEAC7C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEAC80  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEAC84  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEAC88  38 81 00 48 */	addi r4, r1, 0x48
/* 80CEAC8C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEAC90  38 C0 00 00 */	li r6, 0
/* 80CEAC94  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80CEAC98  FC 40 08 90 */	fmr f2, f1
/* 80CEAC9C  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 80CEACA0  FC 80 18 90 */	fmr f4, f3
/* 80CEACA4  39 00 00 00 */	li r8, 0
/* 80CEACA8  4B 5C 0C DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CEACAC  48 00 01 4C */	b lbl_80CEADF8
lbl_80CEACB0:
/* 80CEACB0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEACB4  7C 03 07 74 */	extsb r3, r0
/* 80CEACB8  4B 34 23 B5 */	bl dComIfGp_getReverb__Fi
/* 80CEACBC  7C 67 1B 78 */	mr r7, r3
/* 80CEACC0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080228@ha */
/* 80CEACC4  38 03 02 28 */	addi r0, r3, 0x0228 /* 0x00080228@l */
/* 80CEACC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CEACCC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEACD0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEACD4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEACD8  38 81 00 44 */	addi r4, r1, 0x44
/* 80CEACDC  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEACE0  38 C0 00 00 */	li r6, 0
/* 80CEACE4  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80CEACE8  FC 40 08 90 */	fmr f2, f1
/* 80CEACEC  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 80CEACF0  FC 80 18 90 */	fmr f4, f3
/* 80CEACF4  39 00 00 00 */	li r8, 0
/* 80CEACF8  4B 5C 0C 8D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CEACFC  48 00 00 FC */	b lbl_80CEADF8
lbl_80CEAD00:
/* 80CEAD00  88 1F 09 06 */	lbz r0, 0x906(r31)
/* 80CEAD04  28 00 00 01 */	cmplwi r0, 1
/* 80CEAD08  40 82 00 54 */	bne lbl_80CEAD5C
/* 80CEAD0C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEAD10  7C 03 07 74 */	extsb r3, r0
/* 80CEAD14  4B 34 23 59 */	bl dComIfGp_getReverb__Fi
/* 80CEAD18  7C 67 1B 78 */	mr r7, r3
/* 80CEAD1C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008022F@ha */
/* 80CEAD20  38 03 02 2F */	addi r0, r3, 0x022F /* 0x0008022F@l */
/* 80CEAD24  90 01 00 40 */	stw r0, 0x40(r1)
/* 80CEAD28  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEAD2C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEAD30  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEAD34  38 81 00 40 */	addi r4, r1, 0x40
/* 80CEAD38  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEAD3C  38 C0 00 00 */	li r6, 0
/* 80CEAD40  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80CEAD44  FC 40 08 90 */	fmr f2, f1
/* 80CEAD48  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 80CEAD4C  FC 80 18 90 */	fmr f4, f3
/* 80CEAD50  39 00 00 00 */	li r8, 0
/* 80CEAD54  4B 5C 0C 31 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CEAD58  48 00 00 A0 */	b lbl_80CEADF8
lbl_80CEAD5C:
/* 80CEAD5C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEAD60  7C 03 07 74 */	extsb r3, r0
/* 80CEAD64  4B 34 23 09 */	bl dComIfGp_getReverb__Fi
/* 80CEAD68  7C 67 1B 78 */	mr r7, r3
/* 80CEAD6C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080227@ha */
/* 80CEAD70  38 03 02 27 */	addi r0, r3, 0x0227 /* 0x00080227@l */
/* 80CEAD74  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80CEAD78  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEAD7C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEAD80  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEAD84  38 81 00 3C */	addi r4, r1, 0x3c
/* 80CEAD88  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEAD8C  38 C0 00 00 */	li r6, 0
/* 80CEAD90  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80CEAD94  FC 40 08 90 */	fmr f2, f1
/* 80CEAD98  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 80CEAD9C  FC 80 18 90 */	fmr f4, f3
/* 80CEADA0  39 00 00 00 */	li r8, 0
/* 80CEADA4  4B 5C 0B E1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CEADA8  48 00 00 50 */	b lbl_80CEADF8
lbl_80CEADAC:
/* 80CEADAC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEADB0  7C 03 07 74 */	extsb r3, r0
/* 80CEADB4  4B 34 22 B9 */	bl dComIfGp_getReverb__Fi
/* 80CEADB8  7C 67 1B 78 */	mr r7, r3
/* 80CEADBC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802F4@ha */
/* 80CEADC0  38 03 02 F4 */	addi r0, r3, 0x02F4 /* 0x000802F4@l */
/* 80CEADC4  90 01 00 38 */	stw r0, 0x38(r1)
/* 80CEADC8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEADCC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEADD0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEADD4  38 81 00 38 */	addi r4, r1, 0x38
/* 80CEADD8  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEADDC  38 C0 00 00 */	li r6, 0
/* 80CEADE0  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80CEADE4  FC 40 08 90 */	fmr f2, f1
/* 80CEADE8  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 80CEADEC  FC 80 18 90 */	fmr f4, f3
/* 80CEADF0  39 00 00 00 */	li r8, 0
/* 80CEADF4  4B 5C 0B 91 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEADF8:
/* 80CEADF8  88 7F 09 4D */	lbz r3, 0x94d(r31)
/* 80CEADFC  28 03 00 00 */	cmplwi r3, 0
/* 80CEAE00  41 82 00 10 */	beq lbl_80CEAE10
/* 80CEAE04  38 03 FF FF */	addi r0, r3, -1
/* 80CEAE08  98 1F 09 4D */	stb r0, 0x94d(r31)
/* 80CEAE0C  48 00 00 A4 */	b lbl_80CEAEB0
lbl_80CEAE10:
/* 80CEAE10  88 1F 09 07 */	lbz r0, 0x907(r31)
/* 80CEAE14  28 00 00 02 */	cmplwi r0, 2
/* 80CEAE18  41 82 00 98 */	beq lbl_80CEAEB0
/* 80CEAE1C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80CEAE20  C0 1F 09 44 */	lfs f0, 0x944(r31)
/* 80CEAE24  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CEAE28  FC 00 02 10 */	fabs f0, f0
/* 80CEAE2C  FC 20 00 18 */	frsp f1, f0
/* 80CEAE30  28 1B 00 00 */	cmplwi r27, 0
/* 80CEAE34  41 82 00 7C */	beq lbl_80CEAEB0
/* 80CEAE38  28 1A 00 00 */	cmplwi r26, 0
/* 80CEAE3C  40 82 00 74 */	bne lbl_80CEAEB0
/* 80CEAE40  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80CEAE44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEAE48  40 81 00 68 */	ble lbl_80CEAEB0
/* 80CEAE4C  38 7F 09 5C */	addi r3, r31, 0x95c
/* 80CEAE50  38 9F 09 60 */	addi r4, r31, 0x960
/* 80CEAE54  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CEAE58  38 C0 00 00 */	li r6, 0
/* 80CEAE5C  88 1F 09 06 */	lbz r0, 0x906(r31)
/* 80CEAE60  54 00 10 3A */	slwi r0, r0, 2
/* 80CEAE64  38 FE 00 48 */	addi r7, r30, 0x48
/* 80CEAE68  7C 27 04 2E */	lfsx f1, r7, r0
/* 80CEAE6C  C0 07 00 04 */	lfs f0, 4(r7)
/* 80CEAE70  EC 21 00 24 */	fdivs f1, f1, f0
/* 80CEAE74  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80CEAE78  39 00 00 01 */	li r8, 1
/* 80CEAE7C  4B 33 21 A5 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80CEAE80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CEAE84  3A 83 61 C0 */	addi r20, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CEAE88  80 74 5D 3C */	lwz r3, 0x5d3c(r20)
/* 80CEAE8C  38 63 02 10 */	addi r3, r3, 0x210
/* 80CEAE90  80 9F 09 5C */	lwz r4, 0x95c(r31)
/* 80CEAE94  4B 36 0A 21 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80CEAE98  80 74 5D 3C */	lwz r3, 0x5d3c(r20)
/* 80CEAE9C  38 63 02 10 */	addi r3, r3, 0x210
/* 80CEAEA0  80 9F 09 60 */	lwz r4, 0x960(r31)
/* 80CEAEA4  4B 36 0A 11 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80CEAEA8  38 00 00 1E */	li r0, 0x1e
/* 80CEAEAC  98 1F 09 4D */	stb r0, 0x94d(r31)
lbl_80CEAEB0:
/* 80CEAEB0  28 19 00 00 */	cmplwi r25, 0
/* 80CEAEB4  41 82 00 0C */	beq lbl_80CEAEC0
/* 80CEAEB8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CEAEBC  D0 1F 09 44 */	stfs f0, 0x944(r31)
lbl_80CEAEC0:
/* 80CEAEC0  7F E3 FB 78 */	mr r3, r31
/* 80CEAEC4  88 1F 09 07 */	lbz r0, 0x907(r31)
/* 80CEAEC8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CEAECC  39 9D 00 7C */	addi r12, r29, 0x7c
/* 80CEAED0  7D 8C 02 14 */	add r12, r12, r0
/* 80CEAED4  4B 67 71 B1 */	bl __ptmf_scall
/* 80CEAED8  60 00 00 00 */	nop 
/* 80CEAEDC  7F E3 FB 78 */	mr r3, r31
/* 80CEAEE0  48 00 12 CD */	bl CrrPos__12daObjStone_cFv
/* 80CEAEE4  30 1C FF FF */	addic r0, r28, -1
/* 80CEAEE8  7C 00 E1 10 */	subfe r0, r0, r28
/* 80CEAEEC  98 1F 09 51 */	stb r0, 0x951(r31)
/* 80CEAEF0  E3 E1 01 58 */	psq_l f31, 344(r1), 0, 0 /* qr0 */
/* 80CEAEF4  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 80CEAEF8  39 61 01 50 */	addi r11, r1, 0x150
/* 80CEAEFC  4B 67 73 05 */	bl _restgpr_19
/* 80CEAF00  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80CEAF04  7C 08 03 A6 */	mtlr r0
/* 80CEAF08  38 21 01 60 */	addi r1, r1, 0x160
/* 80CEAF0C  4E 80 00 20 */	blr 
