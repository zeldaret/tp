lbl_807DB7E4:
/* 807DB7E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807DB7E8  7C 08 02 A6 */	mflr r0
/* 807DB7EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 807DB7F0  39 61 00 40 */	addi r11, r1, 0x40
/* 807DB7F4  4B B8 69 E5 */	bl _savegpr_28
/* 807DB7F8  7C 7D 1B 78 */	mr r29, r3
/* 807DB7FC  3C 60 80 7E */	lis r3, lit_1109@ha /* 0x807E3578@ha */
/* 807DB800  3B C3 35 78 */	addi r30, r3, lit_1109@l /* 0x807E3578@l */
/* 807DB804  3C 60 80 7E */	lis r3, lit_3882@ha /* 0x807E298C@ha */
/* 807DB808  3B E3 29 8C */	addi r31, r3, lit_3882@l /* 0x807E298C@l */
/* 807DB80C  38 7D 07 9A */	addi r3, r29, 0x79a
/* 807DB810  38 80 00 00 */	li r4, 0
/* 807DB814  38 A0 00 08 */	li r5, 8
/* 807DB818  38 C0 01 00 */	li r6, 0x100
/* 807DB81C  4B A9 4D ED */	bl cLib_addCalcAngleS2__FPssss
/* 807DB820  A8 1D 06 90 */	lha r0, 0x690(r29)
/* 807DB824  2C 00 00 67 */	cmpwi r0, 0x67
/* 807DB828  41 82 00 0C */	beq lbl_807DB834
/* 807DB82C  7F A3 EB 78 */	mr r3, r29
/* 807DB830  4B FF E0 A5 */	bl damage_check__FP10e_wb_class
lbl_807DB834:
/* 807DB834  3B 80 00 00 */	li r28, 0
/* 807DB838  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 807DB83C  38 00 FF E8 */	li r0, -24
/* 807DB840  7C 60 00 38 */	and r0, r3, r0
/* 807DB844  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 807DB848  88 1E 00 3D */	lbz r0, 0x3d(r30)
/* 807DB84C  7C 00 07 75 */	extsb. r0, r0
/* 807DB850  40 82 00 10 */	bne lbl_807DB860
/* 807DB854  88 1E 00 3E */	lbz r0, 0x3e(r30)
/* 807DB858  7C 00 07 75 */	extsb. r0, r0
/* 807DB85C  41 82 00 10 */	beq lbl_807DB86C
lbl_807DB860:
/* 807DB860  7F A3 EB 78 */	mr r3, r29
/* 807DB864  4B FF 80 19 */	bl gake_check__FP10e_wb_class
/* 807DB868  98 7D 14 2F */	stb r3, 0x142f(r29)
lbl_807DB86C:
/* 807DB86C  A8 1D 06 90 */	lha r0, 0x690(r29)
/* 807DB870  28 00 00 6E */	cmplwi r0, 0x6e
/* 807DB874  41 81 01 E8 */	bgt lbl_807DBA5C
/* 807DB878  3C 60 80 7E */	lis r3, lit_8377@ha /* 0x807E3080@ha */
/* 807DB87C  38 63 30 80 */	addi r3, r3, lit_8377@l /* 0x807E3080@l */
/* 807DB880  54 00 10 3A */	slwi r0, r0, 2
/* 807DB884  7C 03 00 2E */	lwzx r0, r3, r0
/* 807DB888  7C 09 03 A6 */	mtctr r0
/* 807DB88C  4E 80 04 20 */	bctr 
lbl_807DB890:
/* 807DB890  7F A3 EB 78 */	mr r3, r29
/* 807DB894  4B FF 87 1D */	bl e_wb_wait__FP10e_wb_class
/* 807DB898  A8 1D 06 A0 */	lha r0, 0x6a0(r29)
/* 807DB89C  2C 00 00 00 */	cmpwi r0, 0
/* 807DB8A0  40 82 01 BC */	bne lbl_807DBA5C
/* 807DB8A4  3B 80 00 01 */	li r28, 1
/* 807DB8A8  48 00 01 B4 */	b lbl_807DBA5C
lbl_807DB8AC:
/* 807DB8AC  7F A3 EB 78 */	mr r3, r29
/* 807DB8B0  4B FF 87 F9 */	bl e_wb_ride__FP10e_wb_class
/* 807DB8B4  48 00 01 A8 */	b lbl_807DBA5C
lbl_807DB8B8:
/* 807DB8B8  7F A3 EB 78 */	mr r3, r29
/* 807DB8BC  4B FF 90 05 */	bl e_wb_f_wait__FP10e_wb_class
/* 807DB8C0  48 00 01 9C */	b lbl_807DBA5C
lbl_807DB8C4:
/* 807DB8C4  88 1D 05 BC */	lbz r0, 0x5bc(r29)
/* 807DB8C8  28 00 00 0A */	cmplwi r0, 0xa
/* 807DB8CC  40 82 00 34 */	bne lbl_807DB900
/* 807DB8D0  7F A3 EB 78 */	mr r3, r29
/* 807DB8D4  4B FF F1 2D */	bl e_wb_c_run__FP10e_wb_class
/* 807DB8D8  7C 7C 1B 78 */	mr r28, r3
/* 807DB8DC  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 807DB8E0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807DB8E4  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DB8E8  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 807DB8EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DB8F0  40 81 01 6C */	ble lbl_807DBA5C
/* 807DB8F4  7F A3 EB 78 */	mr r3, r29
/* 807DB8F8  4B 83 E3 85 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 807DB8FC  48 00 01 60 */	b lbl_807DBA5C
lbl_807DB900:
/* 807DB900  7F A3 EB 78 */	mr r3, r29
/* 807DB904  4B FF 93 81 */	bl e_wb_f_run__FP10e_wb_class
/* 807DB908  48 00 01 54 */	b lbl_807DBA5C
lbl_807DB90C:
/* 807DB90C  7F A3 EB 78 */	mr r3, r29
/* 807DB910  4B FF CF C9 */	bl e_wb_a_run__FP10e_wb_class
/* 807DB914  48 00 01 48 */	b lbl_807DBA5C
lbl_807DB918:
/* 807DB918  7F A3 EB 78 */	mr r3, r29
/* 807DB91C  4B FF 9A ED */	bl e_wb_b_wait__FP10e_wb_class
/* 807DB920  48 00 01 3C */	b lbl_807DBA5C
lbl_807DB924:
/* 807DB924  7F A3 EB 78 */	mr r3, r29
/* 807DB928  4B FF A5 95 */	bl e_wb_b_wait2__FP10e_wb_class
/* 807DB92C  48 00 01 30 */	b lbl_807DBA5C
lbl_807DB930:
/* 807DB930  7F A3 EB 78 */	mr r3, r29
/* 807DB934  4B FF A7 25 */	bl e_wb_b_run__FP10e_wb_class
/* 807DB938  48 00 01 24 */	b lbl_807DBA5C
lbl_807DB93C:
/* 807DB93C  7F A3 EB 78 */	mr r3, r29
/* 807DB940  4B FF 9C F5 */	bl e_wb_b_run2__FP10e_wb_class
/* 807DB944  48 00 01 18 */	b lbl_807DBA5C
lbl_807DB948:
/* 807DB948  7F A3 EB 78 */	mr r3, r29
/* 807DB94C  4B FF B3 95 */	bl e_wb_b_ikki__FP10e_wb_class
/* 807DB950  48 00 01 0C */	b lbl_807DBA5C
lbl_807DB954:
/* 807DB954  7F A3 EB 78 */	mr r3, r29
/* 807DB958  4B FF C0 95 */	bl e_wb_b_ikki_end__FP10e_wb_class
/* 807DB95C  48 00 01 00 */	b lbl_807DBA5C
lbl_807DB960:
/* 807DB960  7F A3 EB 78 */	mr r3, r29
/* 807DB964  4B FF C1 71 */	bl e_wb_b_ikki2__FP10e_wb_class
/* 807DB968  48 00 00 F4 */	b lbl_807DBA5C
lbl_807DB96C:
/* 807DB96C  7F A3 EB 78 */	mr r3, r29
/* 807DB970  4B FF CB 21 */	bl e_wb_b_ikki2_end__FP10e_wb_class
/* 807DB974  48 00 00 E8 */	b lbl_807DBA5C
lbl_807DB978:
/* 807DB978  7F A3 EB 78 */	mr r3, r29
/* 807DB97C  4B FF CC CD */	bl e_wb_b_lv9_end__FP10e_wb_class
/* 807DB980  48 00 00 DC */	b lbl_807DBA5C
lbl_807DB984:
/* 807DB984  7F A3 EB 78 */	mr r3, r29
/* 807DB988  4B FF D0 F1 */	bl e_wb_s_damage__FP10e_wb_class
/* 807DB98C  48 00 00 D0 */	b lbl_807DBA5C
lbl_807DB990:
/* 807DB990  7F A3 EB 78 */	mr r3, r29
/* 807DB994  4B FF D2 A9 */	bl e_wb_damage__FP10e_wb_class
/* 807DB998  2C 03 00 00 */	cmpwi r3, 0
/* 807DB99C  41 82 00 10 */	beq lbl_807DB9AC
/* 807DB9A0  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 807DB9A4  60 00 00 01 */	ori r0, r0, 1
/* 807DB9A8  B0 1D 05 8E */	sth r0, 0x58e(r29)
lbl_807DB9AC:
/* 807DB9AC  3B 80 00 01 */	li r28, 1
/* 807DB9B0  48 00 00 AC */	b lbl_807DBA5C
lbl_807DB9B4:
/* 807DB9B4  7F A3 EB 78 */	mr r3, r29
/* 807DB9B8  4B FF D6 65 */	bl e_wb_bg_damage__FP10e_wb_class
/* 807DB9BC  2C 03 00 00 */	cmpwi r3, 0
/* 807DB9C0  41 82 00 10 */	beq lbl_807DB9D0
/* 807DB9C4  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 807DB9C8  60 00 00 01 */	ori r0, r0, 1
/* 807DB9CC  B0 1D 05 8E */	sth r0, 0x58e(r29)
lbl_807DB9D0:
/* 807DB9D0  3B 80 00 01 */	li r28, 1
/* 807DB9D4  48 00 00 88 */	b lbl_807DBA5C
lbl_807DB9D8:
/* 807DB9D8  7F A3 EB 78 */	mr r3, r29
/* 807DB9DC  4B FF D8 11 */	bl e_wb_lr_damage__FP10e_wb_class
/* 807DB9E0  2C 03 00 00 */	cmpwi r3, 0
/* 807DB9E4  41 82 00 10 */	beq lbl_807DB9F4
/* 807DB9E8  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 807DB9EC  60 00 00 01 */	ori r0, r0, 1
/* 807DB9F0  B0 1D 05 8E */	sth r0, 0x58e(r29)
lbl_807DB9F4:
/* 807DB9F4  3B 80 00 01 */	li r28, 1
/* 807DB9F8  48 00 00 64 */	b lbl_807DBA5C
lbl_807DB9FC:
/* 807DB9FC  7F A3 EB 78 */	mr r3, r29
/* 807DBA00  4B FF DC 09 */	bl e_wb_kiba_start__FP10e_wb_class
/* 807DBA04  48 00 00 58 */	b lbl_807DBA5C
lbl_807DBA08:
/* 807DBA08  7F A3 EB 78 */	mr r3, r29
/* 807DBA0C  4B FF DC 8D */	bl e_wb_kiba_end__FP10e_wb_class
/* 807DBA10  48 00 00 4C */	b lbl_807DBA5C
lbl_807DBA14:
/* 807DBA14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807DBA18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807DBA1C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 807DBA20  28 00 00 00 */	cmplwi r0, 0
/* 807DBA24  40 82 00 38 */	bne lbl_807DBA5C
/* 807DBA28  3B 80 00 01 */	li r28, 1
/* 807DBA2C  48 00 00 30 */	b lbl_807DBA5C
lbl_807DBA30:
/* 807DBA30  7F A3 EB 78 */	mr r3, r29
/* 807DBA34  4B FF 86 DD */	bl e_wb_pl_ride_now__FP10e_wb_class
/* 807DBA38  48 00 00 24 */	b lbl_807DBA5C
lbl_807DBA3C:
/* 807DBA3C  7F A3 EB 78 */	mr r3, r29
/* 807DBA40  4B FF 87 15 */	bl e_wb_pl_ride__FP10e_wb_class
/* 807DBA44  48 00 00 18 */	b lbl_807DBA5C
lbl_807DBA48:
/* 807DBA48  7F A3 EB 78 */	mr r3, r29
/* 807DBA4C  4B FF 87 09 */	bl e_wb_pl_ride__FP10e_wb_class
/* 807DBA50  48 00 00 0C */	b lbl_807DBA5C
lbl_807DBA54:
/* 807DBA54  7F A3 EB 78 */	mr r3, r29
/* 807DBA58  4B FF EE 89 */	bl e_wb_crv_wait__FP10e_wb_class
lbl_807DBA5C:
/* 807DBA5C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807DBA60  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 807DBA64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DBA68  40 81 00 30 */	ble lbl_807DBA98
/* 807DBA6C  88 1D 13 E4 */	lbz r0, 0x13e4(r29)
/* 807DBA70  28 00 00 FD */	cmplwi r0, 0xfd
/* 807DBA74  41 82 00 4C */	beq lbl_807DBAC0
/* 807DBA78  38 00 00 FD */	li r0, 0xfd
/* 807DBA7C  98 1D 13 E4 */	stb r0, 0x13e4(r29)
/* 807DBA80  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 807DBA84  38 80 00 FD */	li r4, 0xfd
/* 807DBA88  38 A0 00 00 */	li r5, 0
/* 807DBA8C  7F A6 EB 78 */	mr r6, r29
/* 807DBA90  4B 8A 7D D1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807DBA94  48 00 00 2C */	b lbl_807DBAC0
lbl_807DBA98:
/* 807DBA98  88 1D 13 E4 */	lbz r0, 0x13e4(r29)
/* 807DBA9C  28 00 00 DC */	cmplwi r0, 0xdc
/* 807DBAA0  41 82 00 20 */	beq lbl_807DBAC0
/* 807DBAA4  38 00 00 DC */	li r0, 0xdc
/* 807DBAA8  98 1D 13 E4 */	stb r0, 0x13e4(r29)
/* 807DBAAC  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 807DBAB0  38 80 00 DC */	li r4, 0xdc
/* 807DBAB4  38 A0 00 00 */	li r5, 0
/* 807DBAB8  7F A6 EB 78 */	mr r6, r29
/* 807DBABC  4B 8A 7D A5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
lbl_807DBAC0:
/* 807DBAC0  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 807DBAC4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 807DBAC8  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 807DBACC  88 1E 00 3D */	lbz r0, 0x3d(r30)
/* 807DBAD0  7C 00 07 75 */	extsb. r0, r0
/* 807DBAD4  41 82 00 E0 */	beq lbl_807DBBB4
/* 807DBAD8  88 1D 07 A7 */	lbz r0, 0x7a7(r29)
/* 807DBADC  7C 00 07 75 */	extsb. r0, r0
/* 807DBAE0  40 82 00 68 */	bne lbl_807DBB48
/* 807DBAE4  7F 80 07 75 */	extsb. r0, r28
/* 807DBAE8  41 82 00 CC */	beq lbl_807DBBB4
/* 807DBAEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807DBAF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807DBAF4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807DBAF8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807DBAFC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807DBB00  7D 89 03 A6 */	mtctr r12
/* 807DBB04  4E 80 04 21 */	bctrl 
/* 807DBB08  28 03 00 00 */	cmplwi r3, 0
/* 807DBB0C  41 82 00 A8 */	beq lbl_807DBBB4
/* 807DBB10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807DBB14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807DBB18  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 807DBB1C  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 807DBB20  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807DBB24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DBB28  4C 41 13 82 */	cror 2, 1, 2
/* 807DBB2C  41 82 00 10 */	beq lbl_807DBB3C
/* 807DBB30  88 1D 07 A6 */	lbz r0, 0x7a6(r29)
/* 807DBB34  7C 00 07 75 */	extsb. r0, r0
/* 807DBB38  41 82 00 7C */	beq lbl_807DBBB4
lbl_807DBB3C:
/* 807DBB3C  88 1D 05 BF */	lbz r0, 0x5bf(r29)
/* 807DBB40  28 00 00 00 */	cmplwi r0, 0
/* 807DBB44  41 82 00 70 */	beq lbl_807DBBB4
lbl_807DBB48:
/* 807DBB48  3C 60 80 7E */	lis r3, s_rddel2_sub__FPvPv@ha /* 0x807DA868@ha */
/* 807DBB4C  38 63 A8 68 */	addi r3, r3, s_rddel2_sub__FPvPv@l /* 0x807DA868@l */
/* 807DBB50  7F A4 EB 78 */	mr r4, r29
/* 807DBB54  4B 84 57 E5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807DBB58  38 00 00 00 */	li r0, 0
/* 807DBB5C  90 1E 02 88 */	stw r0, 0x288(r30)
/* 807DBB60  3C 60 80 7E */	lis r3, s_rdcount_sub__FPvPv@ha /* 0x807DA7F0@ha */
/* 807DBB64  38 63 A7 F0 */	addi r3, r3, s_rdcount_sub__FPvPv@l /* 0x807DA7F0@l */
/* 807DBB68  7F A4 EB 78 */	mr r4, r29
/* 807DBB6C  4B 84 57 CD */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807DBB70  80 1E 02 88 */	lwz r0, 0x288(r30)
/* 807DBB74  2C 00 00 08 */	cmpwi r0, 8
/* 807DBB78  41 81 00 3C */	bgt lbl_807DBBB4
/* 807DBB7C  38 60 00 00 */	li r3, 0
/* 807DBB80  98 7D 07 A7 */	stb r3, 0x7a7(r29)
/* 807DBB84  38 00 00 01 */	li r0, 1
/* 807DBB88  B0 1D 06 90 */	sth r0, 0x690(r29)
/* 807DBB8C  B0 7D 05 B4 */	sth r3, 0x5b4(r29)
/* 807DBB90  38 00 00 1E */	li r0, 0x1e
/* 807DBB94  B0 1D 06 A0 */	sth r0, 0x6a0(r29)
/* 807DBB98  38 00 00 03 */	li r0, 3
/* 807DBB9C  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 807DBBA0  B0 7D 06 AE */	sth r3, 0x6ae(r29)
/* 807DBBA4  B0 7D 06 B0 */	sth r3, 0x6b0(r29)
/* 807DBBA8  B0 7D 06 B2 */	sth r3, 0x6b2(r29)
/* 807DBBAC  7F A3 EB 78 */	mr r3, r29
/* 807DBBB0  4B FF EA 29 */	bl wb_rd_reset__FP10e_wb_class
lbl_807DBBB4:
/* 807DBBB4  88 1E 00 3F */	lbz r0, 0x3f(r30)
/* 807DBBB8  7C 00 07 75 */	extsb. r0, r0
/* 807DBBBC  41 82 00 EC */	beq lbl_807DBCA8
/* 807DBBC0  88 1D 07 A6 */	lbz r0, 0x7a6(r29)
/* 807DBBC4  7C 00 07 75 */	extsb. r0, r0
/* 807DBBC8  40 82 00 5C */	bne lbl_807DBC24
/* 807DBBCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807DBBD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807DBBD4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807DBBD8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807DBBDC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807DBBE0  7D 89 03 A6 */	mtctr r12
/* 807DBBE4  4E 80 04 21 */	bctrl 
/* 807DBBE8  28 03 00 00 */	cmplwi r3, 0
/* 807DBBEC  41 82 00 BC */	beq lbl_807DBCA8
/* 807DBBF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807DBBF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807DBBF8  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 807DBBFC  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 807DBC00  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 807DBC04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DBC08  4C 41 13 82 */	cror 2, 1, 2
/* 807DBC0C  40 82 00 9C */	bne lbl_807DBCA8
/* 807DBC10  7F 80 07 75 */	extsb. r0, r28
/* 807DBC14  41 82 00 94 */	beq lbl_807DBCA8
/* 807DBC18  88 1D 05 BF */	lbz r0, 0x5bf(r29)
/* 807DBC1C  28 00 00 00 */	cmplwi r0, 0
/* 807DBC20  41 82 00 88 */	beq lbl_807DBCA8
lbl_807DBC24:
/* 807DBC24  3C 60 80 7E */	lis r3, s_rddel2_sub__FPvPv@ha /* 0x807DA868@ha */
/* 807DBC28  38 63 A8 68 */	addi r3, r3, s_rddel2_sub__FPvPv@l /* 0x807DA868@l */
/* 807DBC2C  7F A4 EB 78 */	mr r4, r29
/* 807DBC30  4B 84 57 09 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807DBC34  38 00 00 00 */	li r0, 0
/* 807DBC38  90 1E 02 88 */	stw r0, 0x288(r30)
/* 807DBC3C  3C 60 80 7E */	lis r3, s_rdcount_sub__FPvPv@ha /* 0x807DA7F0@ha */
/* 807DBC40  38 63 A7 F0 */	addi r3, r3, s_rdcount_sub__FPvPv@l /* 0x807DA7F0@l */
/* 807DBC44  7F A4 EB 78 */	mr r4, r29
/* 807DBC48  4B 84 56 F1 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807DBC4C  80 1E 02 88 */	lwz r0, 0x288(r30)
/* 807DBC50  2C 00 00 04 */	cmpwi r0, 4
/* 807DBC54  41 81 00 54 */	bgt lbl_807DBCA8
/* 807DBC58  38 60 00 00 */	li r3, 0
/* 807DBC5C  98 7D 07 A6 */	stb r3, 0x7a6(r29)
/* 807DBC60  38 00 00 01 */	li r0, 1
/* 807DBC64  B0 1D 06 90 */	sth r0, 0x690(r29)
/* 807DBC68  B0 7D 05 B4 */	sth r3, 0x5b4(r29)
/* 807DBC6C  38 00 00 1E */	li r0, 0x1e
/* 807DBC70  B0 1D 06 A0 */	sth r0, 0x6a0(r29)
/* 807DBC74  38 00 00 03 */	li r0, 3
/* 807DBC78  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 807DBC7C  B0 7D 06 AE */	sth r3, 0x6ae(r29)
/* 807DBC80  B0 7D 06 B0 */	sth r3, 0x6b0(r29)
/* 807DBC84  B0 7D 06 B2 */	sth r3, 0x6b2(r29)
/* 807DBC88  7F A3 EB 78 */	mr r3, r29
/* 807DBC8C  4B FF EA 61 */	bl wb_c_rd_reset__FP10e_wb_class
/* 807DBC90  C0 3F 02 38 */	lfs f1, 0x238(r31)
/* 807DBC94  4B A8 BC C1 */	bl cM_rndF__Ff
/* 807DBC98  FC 00 08 1E */	fctiwz f0, f1
/* 807DBC9C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807DBCA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807DBCA4  B0 1D 06 8E */	sth r0, 0x68e(r29)
lbl_807DBCA8:
/* 807DBCA8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807DBCAC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807DBCB0  80 63 00 00 */	lwz r3, 0(r3)
/* 807DBCB4  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 807DBCB8  4B 83 07 25 */	bl mDoMtx_YrotS__FPA4_fs
/* 807DBCBC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807DBCC0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807DBCC4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807DBCC8  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807DBCCC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807DBCD0  38 61 00 14 */	addi r3, r1, 0x14
/* 807DBCD4  38 81 00 08 */	addi r4, r1, 8
/* 807DBCD8  4B A9 52 15 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807DBCDC  C0 01 00 08 */	lfs f0, 8(r1)
/* 807DBCE0  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 807DBCE4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807DBCE8  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 807DBCEC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807DBCF0  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 807DBCF4  7C 65 1B 78 */	mr r5, r3
/* 807DBCF8  4B B6 B3 99 */	bl PSVECAdd
/* 807DBCFC  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 807DBD00  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 807DBD04  EC 01 00 28 */	fsubs f0, f1, f0
/* 807DBD08  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807DBD0C  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 807DBD10  C0 1F 02 3C */	lfs f0, 0x23c(r31)
/* 807DBD14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DBD18  40 80 00 08 */	bge lbl_807DBD20
/* 807DBD1C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_807DBD20:
/* 807DBD20  A8 1D 06 90 */	lha r0, 0x690(r29)
/* 807DBD24  2C 00 00 00 */	cmpwi r0, 0
/* 807DBD28  40 82 00 D0 */	bne lbl_807DBDF8
/* 807DBD2C  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 807DBD30  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 807DBD34  40 82 00 C4 */	bne lbl_807DBDF8
/* 807DBD38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807DBD3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807DBD40  3B 83 4E 00 */	addi r28, r3, 0x4e00
/* 807DBD44  7F 83 E3 78 */	mr r3, r28
/* 807DBD48  3C 80 80 7E */	lis r4, d_a_e_wb__stringBase0@ha /* 0x807E2F0C@ha */
/* 807DBD4C  38 84 2F 0C */	addi r4, r4, d_a_e_wb__stringBase0@l /* 0x807E2F0C@l */
/* 807DBD50  4B B8 CC 45 */	bl strcmp
/* 807DBD54  2C 03 00 00 */	cmpwi r3, 0
/* 807DBD58  41 82 00 48 */	beq lbl_807DBDA0
/* 807DBD5C  7F 83 E3 78 */	mr r3, r28
/* 807DBD60  3C 80 80 7E */	lis r4, d_a_e_wb__stringBase0@ha /* 0x807E2F0C@ha */
/* 807DBD64  38 84 2F 0C */	addi r4, r4, d_a_e_wb__stringBase0@l /* 0x807E2F0C@l */
/* 807DBD68  38 84 00 19 */	addi r4, r4, 0x19
/* 807DBD6C  4B B8 CC 29 */	bl strcmp
/* 807DBD70  2C 03 00 00 */	cmpwi r3, 0
/* 807DBD74  41 82 00 2C */	beq lbl_807DBDA0
/* 807DBD78  88 1E 00 3E */	lbz r0, 0x3e(r30)
/* 807DBD7C  7C 00 07 75 */	extsb. r0, r0
/* 807DBD80  40 82 00 20 */	bne lbl_807DBDA0
/* 807DBD84  7F 83 E3 78 */	mr r3, r28
/* 807DBD88  3C 80 80 7E */	lis r4, d_a_e_wb__stringBase0@ha /* 0x807E2F0C@ha */
/* 807DBD8C  38 84 2F 0C */	addi r4, r4, d_a_e_wb__stringBase0@l /* 0x807E2F0C@l */
/* 807DBD90  38 84 00 21 */	addi r4, r4, 0x21
/* 807DBD94  4B B8 CC 01 */	bl strcmp
/* 807DBD98  2C 03 00 00 */	cmpwi r3, 0
/* 807DBD9C  40 82 00 5C */	bne lbl_807DBDF8
lbl_807DBDA0:
/* 807DBDA0  38 7D 05 50 */	addi r3, r29, 0x550
/* 807DBDA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807DBDA8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807DBDAC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807DBDB0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 807DBDB4  4B A9 4E 51 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807DBDB8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807DBDBC  7C 00 18 50 */	subf r0, r0, r3
/* 807DBDC0  7C 03 07 34 */	extsh r3, r0
/* 807DBDC4  4B B8 93 0D */	bl abs
/* 807DBDC8  2C 03 60 00 */	cmpwi r3, 0x6000
/* 807DBDCC  40 80 00 1C */	bge lbl_807DBDE8
/* 807DBDD0  2C 03 30 00 */	cmpwi r3, 0x3000
/* 807DBDD4  40 81 00 14 */	ble lbl_807DBDE8
/* 807DBDD8  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 807DBDDC  60 00 00 80 */	ori r0, r0, 0x80
/* 807DBDE0  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 807DBDE4  48 00 00 20 */	b lbl_807DBE04
lbl_807DBDE8:
/* 807DBDE8  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 807DBDEC  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 807DBDF0  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 807DBDF4  48 00 00 10 */	b lbl_807DBE04
lbl_807DBDF8:
/* 807DBDF8  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 807DBDFC  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 807DBE00  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_807DBE04:
/* 807DBE04  38 80 00 00 */	li r4, 0
/* 807DBE08  80 1D 05 E8 */	lwz r0, 0x5e8(r29)
/* 807DBE0C  2C 00 00 28 */	cmpwi r0, 0x28
/* 807DBE10  40 82 00 18 */	bne lbl_807DBE28
/* 807DBE14  A8 7D 04 CA */	lha r3, 0x4ca(r29)
/* 807DBE18  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807DBE1C  7C 03 00 50 */	subf r0, r3, r0
/* 807DBE20  1C 00 00 07 */	mulli r0, r0, 7
/* 807DBE24  7C 04 07 34 */	extsh r4, r0
lbl_807DBE28:
/* 807DBE28  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 807DBE2C  38 A0 00 08 */	li r5, 8
/* 807DBE30  38 C0 04 00 */	li r6, 0x400
/* 807DBE34  4B A9 47 D5 */	bl cLib_addCalcAngleS2__FPssss
/* 807DBE38  88 1E 00 3D */	lbz r0, 0x3d(r30)
/* 807DBE3C  7C 00 07 75 */	extsb. r0, r0
/* 807DBE40  41 82 00 90 */	beq lbl_807DBED0
/* 807DBE44  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 807DBE48  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807DBE4C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DBE50  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 807DBE54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DBE58  40 81 00 78 */	ble lbl_807DBED0
/* 807DBE5C  38 00 00 32 */	li r0, 0x32
/* 807DBE60  B0 1D 06 90 */	sth r0, 0x690(r29)
/* 807DBE64  38 00 00 00 */	li r0, 0
/* 807DBE68  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807DBE6C  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 807DBE70  60 00 00 40 */	ori r0, r0, 0x40
/* 807DBE74  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 807DBE78  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 807DBE7C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 807DBE80  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 807DBE84  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807DBE88  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 807DBE8C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 807DBE90  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807DBE94  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 807DBE98  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807DBE9C  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 807DBEA0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807DBEA4  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 807DBEA8  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 807DBEAC  B0 1D 04 C8 */	sth r0, 0x4c8(r29)
/* 807DBEB0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807DBEB4  B0 1D 04 CA */	sth r0, 0x4ca(r29)
/* 807DBEB8  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 807DBEBC  B0 1D 04 CC */	sth r0, 0x4cc(r29)
/* 807DBEC0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807DBEC4  98 1D 04 CE */	stb r0, 0x4ce(r29)
/* 807DBEC8  88 1D 04 E3 */	lbz r0, 0x4e3(r29)
/* 807DBECC  98 1D 04 CF */	stb r0, 0x4cf(r29)
lbl_807DBED0:
/* 807DBED0  39 61 00 40 */	addi r11, r1, 0x40
/* 807DBED4  4B B8 63 51 */	bl _restgpr_28
/* 807DBED8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807DBEDC  7C 08 03 A6 */	mtlr r0
/* 807DBEE0  38 21 00 40 */	addi r1, r1, 0x40
/* 807DBEE4  4E 80 00 20 */	blr 
