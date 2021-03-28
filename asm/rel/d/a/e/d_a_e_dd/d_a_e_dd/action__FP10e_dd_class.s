lbl_806A4D98:
/* 806A4D98  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 806A4D9C  7C 08 02 A6 */	mflr r0
/* 806A4DA0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806A4DA4  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 806A4DA8  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 806A4DAC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 806A4DB0  4B CB D4 24 */	b _savegpr_27
/* 806A4DB4  7C 7E 1B 78 */	mr r30, r3
/* 806A4DB8  3C 80 80 6A */	lis r4, lit_3903@ha
/* 806A4DBC  3B E4 71 C4 */	addi r31, r4, lit_3903@l
/* 806A4DC0  88 03 06 D4 */	lbz r0, 0x6d4(r3)
/* 806A4DC4  7C 00 07 75 */	extsb. r0, r0
/* 806A4DC8  41 82 00 90 */	beq lbl_806A4E58
/* 806A4DCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806A4DD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806A4DD4  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 806A4DD8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806A4DDC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806A4DE0  80 63 00 00 */	lwz r3, 0(r3)
/* 806A4DE4  A8 1E 06 D6 */	lha r0, 0x6d6(r30)
/* 806A4DE8  7C 00 00 D0 */	neg r0, r0
/* 806A4DEC  7C 04 07 34 */	extsh r4, r0
/* 806A4DF0  4B 96 75 54 */	b mDoMtx_XrotS__FPA4_fs
/* 806A4DF4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806A4DF8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806A4DFC  80 63 00 00 */	lwz r3, 0(r3)
/* 806A4E00  A8 1E 06 D8 */	lha r0, 0x6d8(r30)
/* 806A4E04  7C 00 00 D0 */	neg r0, r0
/* 806A4E08  7C 04 07 34 */	extsh r4, r0
/* 806A4E0C  4B 96 76 28 */	b mDoMtx_YrotM__FPA4_fs
/* 806A4E10  38 61 00 08 */	addi r3, r1, 8
/* 806A4E14  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806A4E18  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806A4E1C  4B BC 1D 18 */	b __mi__4cXyzCFRC3Vec
/* 806A4E20  C0 01 00 08 */	lfs f0, 8(r1)
/* 806A4E24  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806A4E28  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806A4E2C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806A4E30  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806A4E34  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806A4E38  38 61 00 2C */	addi r3, r1, 0x2c
/* 806A4E3C  38 81 00 20 */	addi r4, r1, 0x20
/* 806A4E40  4B BC C0 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 806A4E44  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 806A4E48  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 806A4E4C  4B BC 28 28 */	b cM_atan2s__Fff
/* 806A4E50  B0 7E 06 A0 */	sth r3, 0x6a0(r30)
/* 806A4E54  48 00 00 18 */	b lbl_806A4E6C
lbl_806A4E58:
/* 806A4E58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806A4E5C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806A4E60  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806A4E64  4B 97 58 AC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806A4E68  B0 7E 06 A0 */	sth r3, 0x6a0(r30)
lbl_806A4E6C:
/* 806A4E6C  7F C3 F3 78 */	mr r3, r30
/* 806A4E70  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806A4E74  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806A4E78  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806A4E7C  4B 97 59 64 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806A4E80  D0 3E 06 A4 */	stfs f1, 0x6a4(r30)
/* 806A4E84  7F C3 F3 78 */	mr r3, r30
/* 806A4E88  4B FF DA 21 */	bl damage_check__FP10e_dd_class
/* 806A4E8C  38 00 00 00 */	li r0, 0
/* 806A4E90  98 1E 0E 5A */	stb r0, 0xe5a(r30)
/* 806A4E94  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 806A4E98  B0 1E 06 BA */	sth r0, 0x6ba(r30)
/* 806A4E9C  38 00 00 40 */	li r0, 0x40
/* 806A4EA0  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 806A4EA4  3B 80 00 01 */	li r28, 1
/* 806A4EA8  3B 60 00 00 */	li r27, 0
/* 806A4EAC  3B A0 00 00 */	li r29, 0
/* 806A4EB0  A8 1E 06 8A */	lha r0, 0x68a(r30)
/* 806A4EB4  28 00 00 0A */	cmplwi r0, 0xa
/* 806A4EB8  41 81 00 AC */	bgt lbl_806A4F64
/* 806A4EBC  3C 60 80 6A */	lis r3, lit_5001@ha
/* 806A4EC0  38 63 72 F8 */	addi r3, r3, lit_5001@l
/* 806A4EC4  54 00 10 3A */	slwi r0, r0, 2
/* 806A4EC8  7C 03 00 2E */	lwzx r0, r3, r0
/* 806A4ECC  7C 09 03 A6 */	mtctr r0
/* 806A4ED0  4E 80 04 20 */	bctr 
lbl_806A4ED4:
/* 806A4ED4  7F C3 F3 78 */	mr r3, r30
/* 806A4ED8  4B FF E6 05 */	bl e_dd_normal__FP10e_dd_class
/* 806A4EDC  3B A0 00 01 */	li r29, 1
/* 806A4EE0  48 00 00 84 */	b lbl_806A4F64
lbl_806A4EE4:
/* 806A4EE4  7F C3 F3 78 */	mr r3, r30
/* 806A4EE8  4B FF EC 01 */	bl e_dd_run__FP10e_dd_class
/* 806A4EEC  3B A0 00 01 */	li r29, 1
/* 806A4EF0  48 00 00 74 */	b lbl_806A4F64
lbl_806A4EF4:
/* 806A4EF4  7F C3 F3 78 */	mr r3, r30
/* 806A4EF8  4B FF F0 A1 */	bl e_dd_attack__FP10e_dd_class
/* 806A4EFC  3B 60 00 01 */	li r27, 1
/* 806A4F00  3B A0 00 01 */	li r29, 1
/* 806A4F04  48 00 00 60 */	b lbl_806A4F64
lbl_806A4F08:
/* 806A4F08  7F C3 F3 78 */	mr r3, r30
/* 806A4F0C  4B FF F3 E5 */	bl e_dd_guard__FP10e_dd_class
/* 806A4F10  3B 60 00 01 */	li r27, 1
/* 806A4F14  3B A0 00 01 */	li r29, 1
/* 806A4F18  48 00 00 4C */	b lbl_806A4F64
lbl_806A4F1C:
/* 806A4F1C  7F C3 F3 78 */	mr r3, r30
/* 806A4F20  4B FF F4 A1 */	bl e_dd_bombdamage__FP10e_dd_class
/* 806A4F24  3B 80 00 00 */	li r28, 0
/* 806A4F28  48 00 00 3C */	b lbl_806A4F64
lbl_806A4F2C:
/* 806A4F2C  7F C3 F3 78 */	mr r3, r30
/* 806A4F30  4B FF F6 DD */	bl e_dd_taildamage__FP10e_dd_class
/* 806A4F34  48 00 00 30 */	b lbl_806A4F64
lbl_806A4F38:
/* 806A4F38  7F C3 F3 78 */	mr r3, r30
/* 806A4F3C  4B FF FC 25 */	bl e_dd_arrowdamage__FP10e_dd_class
/* 806A4F40  3B 80 00 00 */	li r28, 0
/* 806A4F44  48 00 00 20 */	b lbl_806A4F64
lbl_806A4F48:
/* 806A4F48  7F C3 F3 78 */	mr r3, r30
/* 806A4F4C  4B FF FB 0D */	bl e_dd_dead__FP10e_dd_class
/* 806A4F50  3B 80 00 00 */	li r28, 0
/* 806A4F54  48 00 00 10 */	b lbl_806A4F64
lbl_806A4F58:
/* 806A4F58  7F C3 F3 78 */	mr r3, r30
/* 806A4F5C  4B FF F9 81 */	bl e_dd_fall__FP10e_dd_class
/* 806A4F60  3B 80 00 00 */	li r28, 0
lbl_806A4F64:
/* 806A4F64  7F 60 07 75 */	extsb. r0, r27
/* 806A4F68  41 82 00 14 */	beq lbl_806A4F7C
/* 806A4F6C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806A4F70  38 80 00 01 */	li r4, 1
/* 806A4F74  4B C1 CC 08 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 806A4F78  48 00 00 10 */	b lbl_806A4F88
lbl_806A4F7C:
/* 806A4F7C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806A4F80  38 80 00 00 */	li r4, 0
/* 806A4F84  4B C1 CB F8 */	b setLinkSearch__15Z2CreatureEnemyFb
lbl_806A4F88:
/* 806A4F88  7F 80 07 75 */	extsb. r0, r28
/* 806A4F8C  41 82 00 10 */	beq lbl_806A4F9C
/* 806A4F90  38 00 00 04 */	li r0, 4
/* 806A4F94  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806A4F98  48 00 00 18 */	b lbl_806A4FB0
lbl_806A4F9C:
/* 806A4F9C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806A4FA0  54 00 00 3E */	slwi r0, r0, 0
/* 806A4FA4  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 806A4FA8  38 00 00 00 */	li r0, 0
/* 806A4FAC  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_806A4FB0:
/* 806A4FB0  88 1E 06 D4 */	lbz r0, 0x6d4(r30)
/* 806A4FB4  7C 00 07 75 */	extsb. r0, r0
/* 806A4FB8  41 82 00 84 */	beq lbl_806A503C
/* 806A4FBC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806A4FC0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806A4FC4  80 63 00 00 */	lwz r3, 0(r3)
/* 806A4FC8  A8 9E 06 D8 */	lha r4, 0x6d8(r30)
/* 806A4FCC  4B 96 74 10 */	b mDoMtx_YrotS__FPA4_fs
/* 806A4FD0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806A4FD4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806A4FD8  80 63 00 00 */	lwz r3, 0(r3)
/* 806A4FDC  A8 9E 06 D6 */	lha r4, 0x6d6(r30)
/* 806A4FE0  4B 96 73 BC */	b mDoMtx_XrotM__FPA4_fs
/* 806A4FE4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806A4FE8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806A4FEC  80 63 00 00 */	lwz r3, 0(r3)
/* 806A4FF0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806A4FF4  4B 96 74 40 */	b mDoMtx_YrotM__FPA4_fs
/* 806A4FF8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A4FFC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806A5000  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806A5004  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806A5008  3C 60 80 6A */	lis r3, l_HIO@ha
/* 806A500C  38 63 74 C8 */	addi r3, r3, l_HIO@l
/* 806A5010  C0 03 00 08 */	lfs f0, 8(r3)
/* 806A5014  EC 01 00 32 */	fmuls f0, f1, f0
/* 806A5018  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806A501C  38 61 00 2C */	addi r3, r1, 0x2c
/* 806A5020  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 806A5024  4B BC BE C8 */	b MtxPosition__FP4cXyzP4cXyz
/* 806A5028  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806A502C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 806A5030  7C 65 1B 78 */	mr r5, r3
/* 806A5034  4B CA 20 5C */	b PSVECAdd
/* 806A5038  48 00 01 C0 */	b lbl_806A51F8
lbl_806A503C:
/* 806A503C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806A5040  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806A5044  80 63 00 00 */	lwz r3, 0(r3)
/* 806A5048  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806A504C  4B 96 73 90 */	b mDoMtx_YrotS__FPA4_fs
/* 806A5050  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806A5054  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 806A5058  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 806A505C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806A5060  3C 60 80 6A */	lis r3, l_HIO@ha
/* 806A5064  3B 83 74 C8 */	addi r28, r3, l_HIO@l
/* 806A5068  C0 1C 00 08 */	lfs f0, 8(r28)
/* 806A506C  EC 01 00 32 */	fmuls f0, f1, f0
/* 806A5070  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806A5074  88 1E 06 D0 */	lbz r0, 0x6d0(r30)
/* 806A5078  7C 00 07 75 */	extsb. r0, r0
/* 806A507C  41 82 00 08 */	beq lbl_806A5084
/* 806A5080  D0 41 00 34 */	stfs f2, 0x34(r1)
lbl_806A5084:
/* 806A5084  38 61 00 2C */	addi r3, r1, 0x2c
/* 806A5088  38 81 00 20 */	addi r4, r1, 0x20
/* 806A508C  4B BC BE 60 */	b MtxPosition__FP4cXyzP4cXyz
/* 806A5090  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806A5094  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 806A5098  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806A509C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 806A50A0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806A50A4  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 806A50A8  7C 65 1B 78 */	mr r5, r3
/* 806A50AC  4B CA 1F E4 */	b PSVECAdd
/* 806A50B0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806A50B4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806A50B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 806A50BC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806A50C0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806A50C4  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806A50C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A50CC  40 80 00 08 */	bge lbl_806A50D4
/* 806A50D0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_806A50D4:
/* 806A50D4  34 7E 09 00 */	addic. r3, r30, 0x900
/* 806A50D8  41 82 00 34 */	beq lbl_806A510C
/* 806A50DC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 806A50E0  C0 03 00 00 */	lfs f0, 0(r3)
/* 806A50E4  EC 01 00 2A */	fadds f0, f1, f0
/* 806A50E8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 806A50EC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806A50F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 806A50F4  EC 01 00 2A */	fadds f0, f1, f0
/* 806A50F8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806A50FC  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 806A5100  C0 03 00 08 */	lfs f0, 8(r3)
/* 806A5104  EC 01 00 2A */	fadds f0, f1, f0
/* 806A5108  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_806A510C:
/* 806A510C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 806A5110  A8 1E 06 D6 */	lha r0, 0x6d6(r30)
/* 806A5114  2C 00 00 00 */	cmpwi r0, 0
/* 806A5118  41 82 00 10 */	beq lbl_806A5128
/* 806A511C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 806A5120  C0 1C 00 08 */	lfs f0, 8(r28)
/* 806A5124  EF E1 00 32 */	fmuls f31, f1, f0
lbl_806A5128:
/* 806A5128  7F A0 07 75 */	extsb. r0, r29
/* 806A512C  41 82 00 14 */	beq lbl_806A5140
/* 806A5130  7F C3 F3 78 */	mr r3, r30
/* 806A5134  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806A5138  4B FF D6 71 */	bl way_gake_check__FP10e_dd_classf
/* 806A513C  48 00 00 0C */	b lbl_806A5148
lbl_806A5140:
/* 806A5140  38 00 00 00 */	li r0, 0
/* 806A5144  98 1E 06 D0 */	stb r0, 0x6d0(r30)
lbl_806A5148:
/* 806A5148  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806A514C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 806A5150  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806A5154  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 806A5158  EC 00 F8 28 */	fsubs f0, f0, f31
/* 806A515C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 806A5160  38 7E 07 28 */	addi r3, r30, 0x728
/* 806A5164  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806A5168  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806A516C  3B 84 0F 38 */	addi r28, r4, 0xf38
/* 806A5170  7F 84 E3 78 */	mr r4, r28
/* 806A5174  4B 9D 19 38 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806A5178  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806A517C  EC 00 F8 2A */	fadds f0, f0, f31
/* 806A5180  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806A5184  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 806A5188  EC 00 F8 2A */	fadds f0, f0, f31
/* 806A518C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 806A5190  38 61 00 38 */	addi r3, r1, 0x38
/* 806A5194  4B 9D 26 1C */	b __ct__18dBgS_ObjGndChk_SplFv
/* 806A5198  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806A519C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806A51A0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806A51A4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806A51A8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806A51AC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806A51B0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806A51B4  EC 01 00 2A */	fadds f0, f1, f0
/* 806A51B8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806A51BC  38 61 00 38 */	addi r3, r1, 0x38
/* 806A51C0  38 81 00 2C */	addi r4, r1, 0x2c
/* 806A51C4  4B BC 2B 64 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 806A51C8  7F 83 E3 78 */	mr r3, r28
/* 806A51CC  38 81 00 38 */	addi r4, r1, 0x38
/* 806A51D0  4B 9C F2 D0 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806A51D4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806A51D8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806A51DC  40 80 00 10 */	bge lbl_806A51EC
/* 806A51E0  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 806A51E4  38 00 00 01 */	li r0, 1
/* 806A51E8  98 1E 05 B6 */	stb r0, 0x5b6(r30)
lbl_806A51EC:
/* 806A51EC  38 61 00 38 */	addi r3, r1, 0x38
/* 806A51F0  38 80 FF FF */	li r4, -1
/* 806A51F4  4B 9D 26 54 */	b __dt__18dBgS_ObjGndChk_SplFv
lbl_806A51F8:
/* 806A51F8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806A51FC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806A5200  38 A0 00 02 */	li r5, 2
/* 806A5204  38 C0 20 00 */	li r6, 0x2000
/* 806A5208  4B BC B4 00 */	b cLib_addCalcAngleS2__FPssss
/* 806A520C  38 7E 06 BC */	addi r3, r30, 0x6bc
/* 806A5210  A8 9E 06 BE */	lha r4, 0x6be(r30)
/* 806A5214  38 A0 00 02 */	li r5, 2
/* 806A5218  A8 DE 06 C0 */	lha r6, 0x6c0(r30)
/* 806A521C  4B BC B3 EC */	b cLib_addCalcAngleS2__FPssss
/* 806A5220  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 806A5224  3C 60 80 6A */	lis r3, l_HIO@ha
/* 806A5228  38 63 74 C8 */	addi r3, r3, l_HIO@l
/* 806A522C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806A5230  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 806A5234  EC 01 00 24 */	fdivs f0, f1, f0
/* 806A5238  EC 02 00 32 */	fmuls f0, f2, f0
/* 806A523C  FC 00 00 1E */	fctiwz f0, f0
/* 806A5240  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 806A5244  80 81 00 94 */	lwz r4, 0x94(r1)
/* 806A5248  A8 7E 06 BA */	lha r3, 0x6ba(r30)
/* 806A524C  7C 80 07 34 */	extsh r0, r4
/* 806A5250  7C 03 00 00 */	cmpw r3, r0
/* 806A5254  40 81 00 0C */	ble lbl_806A5260
/* 806A5258  B0 9E 06 BA */	sth r4, 0x6ba(r30)
/* 806A525C  48 00 00 18 */	b lbl_806A5274
lbl_806A5260:
/* 806A5260  7C 80 00 D0 */	neg r4, r0
/* 806A5264  7C 80 07 34 */	extsh r0, r4
/* 806A5268  7C 03 00 00 */	cmpw r3, r0
/* 806A526C  40 80 00 08 */	bge lbl_806A5274
/* 806A5270  B0 9E 06 BA */	sth r4, 0x6ba(r30)
lbl_806A5274:
/* 806A5274  38 7E 06 B8 */	addi r3, r30, 0x6b8
/* 806A5278  A8 9E 06 BA */	lha r4, 0x6ba(r30)
/* 806A527C  38 A0 00 02 */	li r5, 2
/* 806A5280  38 C0 02 00 */	li r6, 0x200
/* 806A5284  4B BC B3 84 */	b cLib_addCalcAngleS2__FPssss
/* 806A5288  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806A528C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A5290  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A5294  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806A5298  7F C3 F3 78 */	mr r3, r30
/* 806A529C  38 9E 05 C4 */	addi r4, r30, 0x5c4
/* 806A52A0  38 BE 05 38 */	addi r5, r30, 0x538
/* 806A52A4  38 C1 00 14 */	addi r6, r1, 0x14
/* 806A52A8  48 00 1A F5 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 806A52AC  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 806A52B0  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 806A52B4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 806A52B8  4B CB CF 68 */	b _restgpr_27
/* 806A52BC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806A52C0  7C 08 03 A6 */	mtlr r0
/* 806A52C4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806A52C8  4E 80 00 20 */	blr 
