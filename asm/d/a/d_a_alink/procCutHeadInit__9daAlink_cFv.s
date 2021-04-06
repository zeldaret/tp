lbl_800D5C88:
/* 800D5C88  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800D5C8C  7C 08 02 A6 */	mflr r0
/* 800D5C90  90 01 00 54 */	stw r0, 0x54(r1)
/* 800D5C94  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800D5C98  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800D5C9C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800D5CA0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800D5CA4  7C 7F 1B 78 */	mr r31, r3
/* 800D5CA8  83 C3 27 EC */	lwz r30, 0x27ec(r3)
/* 800D5CAC  80 03 06 14 */	lwz r0, 0x614(r3)
/* 800D5CB0  28 00 00 53 */	cmplwi r0, 0x53
/* 800D5CB4  40 82 00 20 */	bne lbl_800D5CD4
/* 800D5CB8  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800D5CBC  28 00 00 2D */	cmplwi r0, 0x2d
/* 800D5CC0  41 82 00 0C */	beq lbl_800D5CCC
/* 800D5CC4  28 00 00 2E */	cmplwi r0, 0x2e
/* 800D5CC8  40 82 00 0C */	bne lbl_800D5CD4
lbl_800D5CCC:
/* 800D5CCC  38 60 00 01 */	li r3, 1
/* 800D5CD0  48 00 02 D8 */	b lbl_800D5FA8
lbl_800D5CD4:
/* 800D5CD4  7F E3 FB 78 */	mr r3, r31
/* 800D5CD8  38 80 00 2D */	li r4, 0x2d
/* 800D5CDC  4B FE C2 91 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D5CE0  7F E3 FB 78 */	mr r3, r31
/* 800D5CE4  38 80 00 01 */	li r4, 1
/* 800D5CE8  4B FF B7 49 */	bl resetCombo__9daAlink_cFi
/* 800D5CEC  7F E3 FB 78 */	mr r3, r31
/* 800D5CF0  38 80 00 7C */	li r4, 0x7c
/* 800D5CF4  3C A0 80 39 */	lis r5, m__21daAlinkHIO_cutHead_c0@ha /* 0x8038DDB8@ha */
/* 800D5CF8  38 A5 DD B8 */	addi r5, r5, m__21daAlinkHIO_cutHead_c0@l /* 0x8038DDB8@l */
/* 800D5CFC  4B FD 73 F9 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D5D00  7F E3 FB 78 */	mr r3, r31
/* 800D5D04  3C 80 80 39 */	lis r4, m__21daAlinkHIO_cutHead_c0@ha /* 0x8038DDB8@ha */
/* 800D5D08  38 84 DD B8 */	addi r4, r4, m__21daAlinkHIO_cutHead_c0@l /* 0x8038DDB8@l */
/* 800D5D0C  C0 24 00 3C */	lfs f1, 0x3c(r4)
/* 800D5D10  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 800D5D14  38 80 00 00 */	li r4, 0
/* 800D5D18  4B FE 5A 59 */	bl setSpecialGravity__9daAlink_cFffi
/* 800D5D1C  28 1E 00 00 */	cmplwi r30, 0
/* 800D5D20  41 82 00 3C */	beq lbl_800D5D5C
/* 800D5D24  38 61 00 18 */	addi r3, r1, 0x18
/* 800D5D28  38 9E 05 74 */	addi r4, r30, 0x574
/* 800D5D2C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800D5D30  48 19 0E 05 */	bl __mi__4cXyzCFRC3Vec
/* 800D5D34  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800D5D38  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800D5D3C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800D5D40  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800D5D44  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800D5D48  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800D5D4C  38 7F 28 0C */	addi r3, r31, 0x280c
/* 800D5D50  7F C4 F3 78 */	mr r4, r30
/* 800D5D54  48 08 8F 65 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800D5D58  48 00 00 40 */	b lbl_800D5D98
lbl_800D5D5C:
/* 800D5D5C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800D5D60  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800D5D64  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800D5D68  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800D5D6C  7C 64 02 14 */	add r3, r4, r0
/* 800D5D70  C0 43 00 04 */	lfs f2, 4(r3)
/* 800D5D74  7C 04 04 2E */	lfsx f0, r4, r0
/* 800D5D78  C0 22 93 68 */	lfs f1, lit_8472(r2)
/* 800D5D7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D5D80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800D5D84  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 800D5D88  EC 01 00 B2 */	fmuls f0, f1, f2
/* 800D5D8C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800D5D90  38 7F 28 0C */	addi r3, r31, 0x280c
/* 800D5D94  48 08 8F 69 */	bl clearData__16daPy_actorKeep_cFv
lbl_800D5D98:
/* 800D5D98  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutHead_c0@ha /* 0x8038DDB8@ha */
/* 800D5D9C  38 63 DD B8 */	addi r3, r3, m__21daAlinkHIO_cutHead_c0@l /* 0x8038DDB8@l */
/* 800D5DA0  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 800D5DA4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800D5DA8  C0 42 92 E0 */	lfs f2, lit_6845(r2)
/* 800D5DAC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800D5DB0  40 80 00 08 */	bge lbl_800D5DB8
/* 800D5DB4  48 00 00 18 */	b lbl_800D5DCC
lbl_800D5DB8:
/* 800D5DB8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800D5DBC  40 81 00 0C */	ble lbl_800D5DC8
/* 800D5DC0  FC 40 08 90 */	fmr f2, f1
/* 800D5DC4  48 00 00 08 */	b lbl_800D5DCC
lbl_800D5DC8:
/* 800D5DC8  FC 40 00 90 */	fmr f2, f0
lbl_800D5DCC:
/* 800D5DCC  C0 02 93 6C */	lfs f0, lit_8473(r2)
/* 800D5DD0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800D5DD4  C0 3F 05 30 */	lfs f1, 0x530(r31)
/* 800D5DD8  EF E0 08 24 */	fdivs f31, f0, f1
/* 800D5DDC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D5DE0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800D5DE4  40 81 00 0C */	ble lbl_800D5DF0
/* 800D5DE8  FC 00 F8 34 */	frsqrte f0, f31
/* 800D5DEC  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_800D5DF0:
/* 800D5DF0  FC 00 08 50 */	fneg f0, f1
/* 800D5DF4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800D5DF8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800D5DFC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800D5E00  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800D5E04  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D5E08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800D5E0C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800D5E10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800D5E14  38 61 00 0C */	addi r3, r1, 0xc
/* 800D5E18  48 27 13 21 */	bl PSVECSquareMag
/* 800D5E1C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D5E20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D5E24  40 81 00 58 */	ble lbl_800D5E7C
/* 800D5E28  FC 00 08 34 */	frsqrte f0, f1
/* 800D5E2C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800D5E30  FC 44 00 32 */	fmul f2, f4, f0
/* 800D5E34  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800D5E38  FC 00 00 32 */	fmul f0, f0, f0
/* 800D5E3C  FC 01 00 32 */	fmul f0, f1, f0
/* 800D5E40  FC 03 00 28 */	fsub f0, f3, f0
/* 800D5E44  FC 02 00 32 */	fmul f0, f2, f0
/* 800D5E48  FC 44 00 32 */	fmul f2, f4, f0
/* 800D5E4C  FC 00 00 32 */	fmul f0, f0, f0
/* 800D5E50  FC 01 00 32 */	fmul f0, f1, f0
/* 800D5E54  FC 03 00 28 */	fsub f0, f3, f0
/* 800D5E58  FC 02 00 32 */	fmul f0, f2, f0
/* 800D5E5C  FC 44 00 32 */	fmul f2, f4, f0
/* 800D5E60  FC 00 00 32 */	fmul f0, f0, f0
/* 800D5E64  FC 01 00 32 */	fmul f0, f1, f0
/* 800D5E68  FC 03 00 28 */	fsub f0, f3, f0
/* 800D5E6C  FC 02 00 32 */	fmul f0, f2, f0
/* 800D5E70  FC 21 00 32 */	fmul f1, f1, f0
/* 800D5E74  FC 20 08 18 */	frsp f1, f1
/* 800D5E78  48 00 00 88 */	b lbl_800D5F00
lbl_800D5E7C:
/* 800D5E7C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800D5E80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D5E84  40 80 00 10 */	bge lbl_800D5E94
/* 800D5E88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800D5E8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800D5E90  48 00 00 70 */	b lbl_800D5F00
lbl_800D5E94:
/* 800D5E94  D0 21 00 08 */	stfs f1, 8(r1)
/* 800D5E98  80 81 00 08 */	lwz r4, 8(r1)
/* 800D5E9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800D5EA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 800D5EA4  7C 03 00 00 */	cmpw r3, r0
/* 800D5EA8  41 82 00 14 */	beq lbl_800D5EBC
/* 800D5EAC  40 80 00 40 */	bge lbl_800D5EEC
/* 800D5EB0  2C 03 00 00 */	cmpwi r3, 0
/* 800D5EB4  41 82 00 20 */	beq lbl_800D5ED4
/* 800D5EB8  48 00 00 34 */	b lbl_800D5EEC
lbl_800D5EBC:
/* 800D5EBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800D5EC0  41 82 00 0C */	beq lbl_800D5ECC
/* 800D5EC4  38 00 00 01 */	li r0, 1
/* 800D5EC8  48 00 00 28 */	b lbl_800D5EF0
lbl_800D5ECC:
/* 800D5ECC  38 00 00 02 */	li r0, 2
/* 800D5ED0  48 00 00 20 */	b lbl_800D5EF0
lbl_800D5ED4:
/* 800D5ED4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800D5ED8  41 82 00 0C */	beq lbl_800D5EE4
/* 800D5EDC  38 00 00 05 */	li r0, 5
/* 800D5EE0  48 00 00 10 */	b lbl_800D5EF0
lbl_800D5EE4:
/* 800D5EE4  38 00 00 03 */	li r0, 3
/* 800D5EE8  48 00 00 08 */	b lbl_800D5EF0
lbl_800D5EEC:
/* 800D5EEC  38 00 00 04 */	li r0, 4
lbl_800D5EF0:
/* 800D5EF0  2C 00 00 01 */	cmpwi r0, 1
/* 800D5EF4  40 82 00 0C */	bne lbl_800D5F00
/* 800D5EF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800D5EFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800D5F00:
/* 800D5F00  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutHead_c0@ha /* 0x8038DDB8@ha */
/* 800D5F04  38 63 DD B8 */	addi r3, r3, m__21daAlinkHIO_cutHead_c0@l /* 0x8038DDB8@l */
/* 800D5F08  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 800D5F0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D5F10  40 81 00 08 */	ble lbl_800D5F18
/* 800D5F14  FC 20 00 90 */	fmr f1, f0
lbl_800D5F18:
/* 800D5F18  C0 42 93 14 */	lfs f2, lit_7307(r2)
/* 800D5F1C  EC 22 00 72 */	fmuls f1, f2, f1
/* 800D5F20  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 800D5F24  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800D5F28  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800D5F2C  EC 01 00 24 */	fdivs f0, f1, f0
/* 800D5F30  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800D5F34  C0 1F 34 78 */	lfs f0, 0x3478(r31)
/* 800D5F38  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800D5F3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800D5F40  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D5F44  38 00 00 00 */	li r0, 0
/* 800D5F48  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800D5F4C  38 61 00 24 */	addi r3, r1, 0x24
/* 800D5F50  48 19 11 D9 */	bl atan2sX_Z__4cXyzCFv
/* 800D5F54  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 800D5F58  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800D5F5C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800D5F60  7F E3 FB 78 */	mr r3, r31
/* 800D5F64  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010098@ha */
/* 800D5F68  38 84 00 98 */	addi r4, r4, 0x0098 /* 0x00010098@l */
/* 800D5F6C  4B FF C3 19 */	bl setSwordVoiceSe__9daAlink_cFUl
/* 800D5F70  7F E3 FB 78 */	mr r3, r31
/* 800D5F74  38 80 00 01 */	li r4, 1
/* 800D5F78  38 A0 00 03 */	li r5, 3
/* 800D5F7C  38 C0 00 01 */	li r6, 1
/* 800D5F80  38 E0 00 03 */	li r7, 3
/* 800D5F84  3D 00 80 39 */	lis r8, m__21daAlinkHIO_cutHead_c0@ha /* 0x8038DDB8@ha */
/* 800D5F88  39 08 DD B8 */	addi r8, r8, m__21daAlinkHIO_cutHead_c0@l /* 0x8038DDB8@l */
/* 800D5F8C  C0 28 00 5C */	lfs f1, 0x5c(r8)
/* 800D5F90  C0 48 00 58 */	lfs f2, 0x58(r8)
/* 800D5F94  4B FF B6 F5 */	bl setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff
/* 800D5F98  7F E3 FB 78 */	mr r3, r31
/* 800D5F9C  38 80 00 05 */	li r4, 5
/* 800D5FA0  4B FF B5 8D */	bl setCutType__9daAlink_cFUc
/* 800D5FA4  38 60 00 01 */	li r3, 1
lbl_800D5FA8:
/* 800D5FA8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800D5FAC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800D5FB0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800D5FB4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800D5FB8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800D5FBC  7C 08 03 A6 */	mtlr r0
/* 800D5FC0  38 21 00 50 */	addi r1, r1, 0x50
/* 800D5FC4  4E 80 00 20 */	blr 
