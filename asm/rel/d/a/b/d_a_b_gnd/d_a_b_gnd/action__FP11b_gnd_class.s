lbl_805FA758:
/* 805FA758  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805FA75C  7C 08 02 A6 */	mflr r0
/* 805FA760  90 01 00 94 */	stw r0, 0x94(r1)
/* 805FA764  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 805FA768  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 805FA76C  39 61 00 80 */	addi r11, r1, 0x80
/* 805FA770  4B D6 7A 59 */	bl _savegpr_24
/* 805FA774  7C 7D 1B 78 */	mr r29, r3
/* 805FA778  3C 80 80 60 */	lis r4, lit_3815@ha /* 0x80602664@ha */
/* 805FA77C  3B C4 26 64 */	addi r30, r4, lit_3815@l /* 0x80602664@l */
/* 805FA780  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805FA784  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805FA788  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805FA78C  7C 9C 23 78 */	mr r28, r4
/* 805FA790  4B A2 01 D5 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805FA794  D0 3D 0C 38 */	stfs f1, 0xc38(r29)
/* 805FA798  7F A3 EB 78 */	mr r3, r29
/* 805FA79C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805FA7A0  4B A1 FF 71 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805FA7A4  B0 7D 0C 3C */	sth r3, 0xc3c(r29)
/* 805FA7A8  88 7D 1E 08 */	lbz r3, 0x1e08(r29)
/* 805FA7AC  28 03 00 00 */	cmplwi r3, 0
/* 805FA7B0  41 82 00 0C */	beq lbl_805FA7BC
/* 805FA7B4  38 03 FF FF */	addi r0, r3, -1
/* 805FA7B8  98 1D 1E 08 */	stb r0, 0x1e08(r29)
lbl_805FA7BC:
/* 805FA7BC  3B 60 00 01 */	li r27, 1
/* 805FA7C0  3B 40 00 00 */	li r26, 0
/* 805FA7C4  3B 20 00 00 */	li r25, 0
/* 805FA7C8  3B 00 00 01 */	li r24, 1
/* 805FA7CC  38 00 00 01 */	li r0, 1
/* 805FA7D0  98 1D 0C 7D */	stb r0, 0xc7d(r29)
/* 805FA7D4  38 00 00 00 */	li r0, 0
/* 805FA7D8  98 1D 27 40 */	stb r0, 0x2740(r29)
/* 805FA7DC  A8 1D 0A FE */	lha r0, 0xafe(r29)
/* 805FA7E0  28 00 00 16 */	cmplwi r0, 0x16
/* 805FA7E4  41 81 01 18 */	bgt lbl_805FA8FC
/* 805FA7E8  3C 60 80 60 */	lis r3, lit_6511@ha /* 0x80602AEC@ha */
/* 805FA7EC  38 63 2A EC */	addi r3, r3, lit_6511@l /* 0x80602AEC@l */
/* 805FA7F0  54 00 10 3A */	slwi r0, r0, 2
/* 805FA7F4  7C 03 00 2E */	lwzx r0, r3, r0
/* 805FA7F8  7C 09 03 A6 */	mtctr r0
/* 805FA7FC  4E 80 04 20 */	bctr 
lbl_805FA800:
/* 805FA800  7F A3 EB 78 */	mr r3, r29
/* 805FA804  4B FF B7 39 */	bl b_gnd_h_wait__FP11b_gnd_class
/* 805FA808  48 00 00 F4 */	b lbl_805FA8FC
lbl_805FA80C:
/* 805FA80C  7F A3 EB 78 */	mr r3, r29
/* 805FA810  4B FF B8 59 */	bl b_gnd_h_wait2__FP11b_gnd_class
/* 805FA814  48 00 00 E8 */	b lbl_805FA8FC
lbl_805FA818:
/* 805FA818  7F A3 EB 78 */	mr r3, r29
/* 805FA81C  4B FF BA 75 */	bl b_gnd_h_run_a__FP11b_gnd_class
/* 805FA820  3B 40 00 01 */	li r26, 1
/* 805FA824  48 00 00 D8 */	b lbl_805FA8FC
lbl_805FA828:
/* 805FA828  7F A3 EB 78 */	mr r3, r29
/* 805FA82C  4B FF C7 79 */	bl b_gnd_h_run_p__FP11b_gnd_class
/* 805FA830  3B 40 00 01 */	li r26, 1
/* 805FA834  48 00 00 C8 */	b lbl_805FA8FC
lbl_805FA838:
/* 805FA838  7F A3 EB 78 */	mr r3, r29
/* 805FA83C  4B FF CC B9 */	bl b_gnd_h_jump__FP11b_gnd_class
/* 805FA840  48 00 00 BC */	b lbl_805FA8FC
lbl_805FA844:
/* 805FA844  7F A3 EB 78 */	mr r3, r29
/* 805FA848  4B FF CE 7D */	bl b_gnd_h_end__FP11b_gnd_class
/* 805FA84C  3B 00 00 00 */	li r24, 0
/* 805FA850  3B 60 00 00 */	li r27, 0
/* 805FA854  38 00 00 00 */	li r0, 0
/* 805FA858  98 1D 0C 7D */	stb r0, 0xc7d(r29)
/* 805FA85C  48 00 00 A0 */	b lbl_805FA8FC
lbl_805FA860:
/* 805FA860  7F A3 EB 78 */	mr r3, r29
/* 805FA864  4B FF D1 AD */	bl b_gnd_g_wait__FP11b_gnd_class
/* 805FA868  3B 20 00 01 */	li r25, 1
/* 805FA86C  48 00 00 90 */	b lbl_805FA8FC
lbl_805FA870:
/* 805FA870  7F A3 EB 78 */	mr r3, r29
/* 805FA874  4B FF D6 15 */	bl b_gnd_g_attack__FP11b_gnd_class
/* 805FA878  7C 79 1B 78 */	mr r25, r3
/* 805FA87C  48 00 00 80 */	b lbl_805FA8FC
lbl_805FA880:
/* 805FA880  7F A3 EB 78 */	mr r3, r29
/* 805FA884  4B FF DF 09 */	bl b_gnd_g_defence__FP11b_gnd_class
/* 805FA888  48 00 00 74 */	b lbl_805FA8FC
lbl_805FA88C:
/* 805FA88C  7F A3 EB 78 */	mr r3, r29
/* 805FA890  4B FF E3 91 */	bl b_gnd_g_jump__FP11b_gnd_class
/* 805FA894  7C 7B 1B 78 */	mr r27, r3
/* 805FA898  3B 00 00 00 */	li r24, 0
/* 805FA89C  48 00 00 60 */	b lbl_805FA8FC
lbl_805FA8A0:
/* 805FA8A0  7F A3 EB 78 */	mr r3, r29
/* 805FA8A4  4B FF E6 E5 */	bl b_gnd_g_side__FP11b_gnd_class
/* 805FA8A8  3B 00 00 00 */	li r24, 0
/* 805FA8AC  48 00 00 50 */	b lbl_805FA8FC
lbl_805FA8B0:
/* 805FA8B0  7F A3 EB 78 */	mr r3, r29
/* 805FA8B4  4B FF E9 6D */	bl b_gnd_g_tuba__FP11b_gnd_class
/* 805FA8B8  48 00 00 44 */	b lbl_805FA8FC
lbl_805FA8BC:
/* 805FA8BC  7F A3 EB 78 */	mr r3, r29
/* 805FA8C0  4B FF EA 3D */	bl b_gnd_g_damage__FP11b_gnd_class
/* 805FA8C4  38 00 00 00 */	li r0, 0
/* 805FA8C8  98 1D 0C 7D */	stb r0, 0xc7d(r29)
/* 805FA8CC  48 00 00 30 */	b lbl_805FA8FC
lbl_805FA8D0:
/* 805FA8D0  7F A3 EB 78 */	mr r3, r29
/* 805FA8D4  4B FF EB D5 */	bl b_gnd_g_down__FP11b_gnd_class
/* 805FA8D8  3B 00 00 00 */	li r24, 0
/* 805FA8DC  38 00 00 00 */	li r0, 0
/* 805FA8E0  98 1D 0C 7D */	stb r0, 0xc7d(r29)
/* 805FA8E4  48 00 00 18 */	b lbl_805FA8FC
lbl_805FA8E8:
/* 805FA8E8  7F A3 EB 78 */	mr r3, r29
/* 805FA8EC  4B FF EF B5 */	bl b_gnd_g_end__FP11b_gnd_class
/* 805FA8F0  3B 00 00 00 */	li r24, 0
/* 805FA8F4  38 00 00 00 */	li r0, 0
/* 805FA8F8  98 1D 0C 7D */	stb r0, 0xc7d(r29)
lbl_805FA8FC:
/* 805FA8FC  38 7D 05 DC */	addi r3, r29, 0x5dc
/* 805FA900  38 80 00 01 */	li r4, 1
/* 805FA904  4B CC 72 79 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 805FA908  2C 1B 00 00 */	cmpwi r27, 0
/* 805FA90C  41 82 00 10 */	beq lbl_805FA91C
/* 805FA910  38 00 00 04 */	li r0, 4
/* 805FA914  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 805FA918  48 00 00 18 */	b lbl_805FA930
lbl_805FA91C:
/* 805FA91C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805FA920  54 00 00 3E */	slwi r0, r0, 0
/* 805FA924  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 805FA928  38 00 00 00 */	li r0, 0
/* 805FA92C  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_805FA930:
/* 805FA930  80 1D 1F C4 */	lwz r0, 0x1fc4(r29)
/* 805FA934  2C 00 00 00 */	cmpwi r0, 0
/* 805FA938  41 82 00 38 */	beq lbl_805FA970
/* 805FA93C  2C 1A 00 00 */	cmpwi r26, 0
/* 805FA940  41 82 04 84 */	beq lbl_805FADC4
/* 805FA944  7F A3 EB 78 */	mr r3, r29
/* 805FA948  4B FF B2 A1 */	bl saku_jump_check__FP11b_gnd_class
/* 805FA94C  2C 03 00 00 */	cmpwi r3, 0
/* 805FA950  41 82 04 74 */	beq lbl_805FADC4
/* 805FA954  A8 1D 0A FE */	lha r0, 0xafe(r29)
/* 805FA958  B0 1D 0B 00 */	sth r0, 0xb00(r29)
/* 805FA95C  38 00 00 05 */	li r0, 5
/* 805FA960  B0 1D 0A FE */	sth r0, 0xafe(r29)
/* 805FA964  38 00 00 00 */	li r0, 0
/* 805FA968  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 805FA96C  48 00 04 58 */	b lbl_805FADC4
lbl_805FA970:
/* 805FA970  4B B6 4A 29 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 805FA974  2C 03 00 00 */	cmpwi r3, 0
/* 805FA978  40 82 00 0C */	bne lbl_805FA984
/* 805FA97C  38 00 00 0A */	li r0, 0xa
/* 805FA980  B0 1D 0C 58 */	sth r0, 0xc58(r29)
lbl_805FA984:
/* 805FA984  A8 1D 0C 5A */	lha r0, 0xc5a(r29)
/* 805FA988  2C 00 00 00 */	cmpwi r0, 0
/* 805FA98C  41 82 00 08 */	beq lbl_805FA994
/* 805FA990  3B 20 00 00 */	li r25, 0
lbl_805FA994:
/* 805FA994  2C 19 00 00 */	cmpwi r25, 0
/* 805FA998  41 82 04 2C */	beq lbl_805FADC4
/* 805FA99C  3C 60 80 5F */	lis r3, shot_s_sub__FPvPv@ha /* 0x805F53E0@ha */
/* 805FA9A0  38 63 53 E0 */	addi r3, r3, shot_s_sub__FPvPv@l /* 0x805F53E0@l */
/* 805FA9A4  7F A4 EB 78 */	mr r4, r29
/* 805FA9A8  4B A2 69 91 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 805FA9AC  30 03 FF FF */	addic r0, r3, -1
/* 805FA9B0  7C 00 19 10 */	subfe r0, r0, r3
/* 805FA9B4  54 19 06 3E */	clrlwi r25, r0, 0x18
/* 805FA9B8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805FA9BC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805FA9C0  81 8C 02 50 */	lwz r12, 0x250(r12)
/* 805FA9C4  7D 89 03 A6 */	mtctr r12
/* 805FA9C8  4E 80 04 21 */	bctrl 
/* 805FA9CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805FA9D0  41 82 00 24 */	beq lbl_805FA9F4
/* 805FA9D4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805FA9D8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805FA9DC  81 8C 02 4C */	lwz r12, 0x24c(r12)
/* 805FA9E0  7D 89 03 A6 */	mtctr r12
/* 805FA9E4  4E 80 04 21 */	bctrl 
/* 805FA9E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805FA9EC  40 82 00 08 */	bne lbl_805FA9F4
/* 805FA9F0  3B 20 00 02 */	li r25, 2
lbl_805FA9F4:
/* 805FA9F4  7F 83 E3 78 */	mr r3, r28
/* 805FA9F8  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 805FA9FC  81 8C 02 00 */	lwz r12, 0x200(r12)
/* 805FAA00  7D 89 03 A6 */	mtctr r12
/* 805FAA04  4E 80 04 21 */	bctrl 
/* 805FAA08  7C 7A 1B 79 */	or. r26, r3, r3
/* 805FAA0C  41 82 02 64 */	beq lbl_805FAC70
/* 805FAA10  38 61 00 34 */	addi r3, r1, 0x34
/* 805FAA14  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805FAA18  7F 45 D3 78 */	mr r5, r26
/* 805FAA1C  4B C6 C1 19 */	bl __mi__4cXyzCFRC3Vec
/* 805FAA20  38 61 00 34 */	addi r3, r1, 0x34
/* 805FAA24  4B D4 C7 15 */	bl PSVECSquareMag
/* 805FAA28  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805FAA2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FAA30  40 81 00 58 */	ble lbl_805FAA88
/* 805FAA34  FC 00 08 34 */	frsqrte f0, f1
/* 805FAA38  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 805FAA3C  FC 44 00 32 */	fmul f2, f4, f0
/* 805FAA40  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 805FAA44  FC 00 00 32 */	fmul f0, f0, f0
/* 805FAA48  FC 01 00 32 */	fmul f0, f1, f0
/* 805FAA4C  FC 03 00 28 */	fsub f0, f3, f0
/* 805FAA50  FC 02 00 32 */	fmul f0, f2, f0
/* 805FAA54  FC 44 00 32 */	fmul f2, f4, f0
/* 805FAA58  FC 00 00 32 */	fmul f0, f0, f0
/* 805FAA5C  FC 01 00 32 */	fmul f0, f1, f0
/* 805FAA60  FC 03 00 28 */	fsub f0, f3, f0
/* 805FAA64  FC 02 00 32 */	fmul f0, f2, f0
/* 805FAA68  FC 44 00 32 */	fmul f2, f4, f0
/* 805FAA6C  FC 00 00 32 */	fmul f0, f0, f0
/* 805FAA70  FC 01 00 32 */	fmul f0, f1, f0
/* 805FAA74  FC 03 00 28 */	fsub f0, f3, f0
/* 805FAA78  FC 02 00 32 */	fmul f0, f2, f0
/* 805FAA7C  FC 21 00 32 */	fmul f1, f1, f0
/* 805FAA80  FC 20 08 18 */	frsp f1, f1
/* 805FAA84  48 00 00 88 */	b lbl_805FAB0C
lbl_805FAA88:
/* 805FAA88  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 805FAA8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FAA90  40 80 00 10 */	bge lbl_805FAAA0
/* 805FAA94  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805FAA98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805FAA9C  48 00 00 70 */	b lbl_805FAB0C
lbl_805FAAA0:
/* 805FAAA0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805FAAA4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805FAAA8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805FAAAC  3C 00 7F 80 */	lis r0, 0x7f80
/* 805FAAB0  7C 03 00 00 */	cmpw r3, r0
/* 805FAAB4  41 82 00 14 */	beq lbl_805FAAC8
/* 805FAAB8  40 80 00 40 */	bge lbl_805FAAF8
/* 805FAABC  2C 03 00 00 */	cmpwi r3, 0
/* 805FAAC0  41 82 00 20 */	beq lbl_805FAAE0
/* 805FAAC4  48 00 00 34 */	b lbl_805FAAF8
lbl_805FAAC8:
/* 805FAAC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805FAACC  41 82 00 0C */	beq lbl_805FAAD8
/* 805FAAD0  38 00 00 01 */	li r0, 1
/* 805FAAD4  48 00 00 28 */	b lbl_805FAAFC
lbl_805FAAD8:
/* 805FAAD8  38 00 00 02 */	li r0, 2
/* 805FAADC  48 00 00 20 */	b lbl_805FAAFC
lbl_805FAAE0:
/* 805FAAE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805FAAE4  41 82 00 0C */	beq lbl_805FAAF0
/* 805FAAE8  38 00 00 05 */	li r0, 5
/* 805FAAEC  48 00 00 10 */	b lbl_805FAAFC
lbl_805FAAF0:
/* 805FAAF0  38 00 00 03 */	li r0, 3
/* 805FAAF4  48 00 00 08 */	b lbl_805FAAFC
lbl_805FAAF8:
/* 805FAAF8  38 00 00 04 */	li r0, 4
lbl_805FAAFC:
/* 805FAAFC  2C 00 00 01 */	cmpwi r0, 1
/* 805FAB00  40 82 00 0C */	bne lbl_805FAB0C
/* 805FAB04  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805FAB08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805FAB0C:
/* 805FAB0C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 805FAB10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FAB14  40 81 01 5C */	ble lbl_805FAC70
/* 805FAB18  38 61 00 28 */	addi r3, r1, 0x28
/* 805FAB1C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805FAB20  7F 45 D3 78 */	mr r5, r26
/* 805FAB24  4B C6 C0 11 */	bl __mi__4cXyzCFRC3Vec
/* 805FAB28  38 61 00 28 */	addi r3, r1, 0x28
/* 805FAB2C  4B D4 C6 0D */	bl PSVECSquareMag
/* 805FAB30  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805FAB34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FAB38  40 81 00 58 */	ble lbl_805FAB90
/* 805FAB3C  FC 00 08 34 */	frsqrte f0, f1
/* 805FAB40  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 805FAB44  FC 44 00 32 */	fmul f2, f4, f0
/* 805FAB48  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 805FAB4C  FC 00 00 32 */	fmul f0, f0, f0
/* 805FAB50  FC 01 00 32 */	fmul f0, f1, f0
/* 805FAB54  FC 03 00 28 */	fsub f0, f3, f0
/* 805FAB58  FC 02 00 32 */	fmul f0, f2, f0
/* 805FAB5C  FC 44 00 32 */	fmul f2, f4, f0
/* 805FAB60  FC 00 00 32 */	fmul f0, f0, f0
/* 805FAB64  FC 01 00 32 */	fmul f0, f1, f0
/* 805FAB68  FC 03 00 28 */	fsub f0, f3, f0
/* 805FAB6C  FC 02 00 32 */	fmul f0, f2, f0
/* 805FAB70  FC 44 00 32 */	fmul f2, f4, f0
/* 805FAB74  FC 00 00 32 */	fmul f0, f0, f0
/* 805FAB78  FC 01 00 32 */	fmul f0, f1, f0
/* 805FAB7C  FC 03 00 28 */	fsub f0, f3, f0
/* 805FAB80  FC 02 00 32 */	fmul f0, f2, f0
/* 805FAB84  FC 21 00 32 */	fmul f1, f1, f0
/* 805FAB88  FC 20 08 18 */	frsp f1, f1
/* 805FAB8C  48 00 00 88 */	b lbl_805FAC14
lbl_805FAB90:
/* 805FAB90  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 805FAB94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FAB98  40 80 00 10 */	bge lbl_805FABA8
/* 805FAB9C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805FABA0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805FABA4  48 00 00 70 */	b lbl_805FAC14
lbl_805FABA8:
/* 805FABA8  D0 21 00 08 */	stfs f1, 8(r1)
/* 805FABAC  80 81 00 08 */	lwz r4, 8(r1)
/* 805FABB0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805FABB4  3C 00 7F 80 */	lis r0, 0x7f80
/* 805FABB8  7C 03 00 00 */	cmpw r3, r0
/* 805FABBC  41 82 00 14 */	beq lbl_805FABD0
/* 805FABC0  40 80 00 40 */	bge lbl_805FAC00
/* 805FABC4  2C 03 00 00 */	cmpwi r3, 0
/* 805FABC8  41 82 00 20 */	beq lbl_805FABE8
/* 805FABCC  48 00 00 34 */	b lbl_805FAC00
lbl_805FABD0:
/* 805FABD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805FABD4  41 82 00 0C */	beq lbl_805FABE0
/* 805FABD8  38 00 00 01 */	li r0, 1
/* 805FABDC  48 00 00 28 */	b lbl_805FAC04
lbl_805FABE0:
/* 805FABE0  38 00 00 02 */	li r0, 2
/* 805FABE4  48 00 00 20 */	b lbl_805FAC04
lbl_805FABE8:
/* 805FABE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805FABEC  41 82 00 0C */	beq lbl_805FABF8
/* 805FABF0  38 00 00 05 */	li r0, 5
/* 805FABF4  48 00 00 10 */	b lbl_805FAC04
lbl_805FABF8:
/* 805FABF8  38 00 00 03 */	li r0, 3
/* 805FABFC  48 00 00 08 */	b lbl_805FAC04
lbl_805FAC00:
/* 805FAC00  38 00 00 04 */	li r0, 4
lbl_805FAC04:
/* 805FAC04  2C 00 00 01 */	cmpwi r0, 1
/* 805FAC08  40 82 00 0C */	bne lbl_805FAC14
/* 805FAC0C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805FAC10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805FAC14:
/* 805FAC14  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 805FAC18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FAC1C  40 80 00 54 */	bge lbl_805FAC70
/* 805FAC20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805FAC24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805FAC28  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 805FAC2C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 805FAC30  40 82 00 40 */	bne lbl_805FAC70
/* 805FAC34  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805FAC38  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805FAC3C  81 8C 01 40 */	lwz r12, 0x140(r12)
/* 805FAC40  7D 89 03 A6 */	mtctr r12
/* 805FAC44  4E 80 04 21 */	bctrl 
/* 805FAC48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805FAC4C  40 82 00 24 */	bne lbl_805FAC70
/* 805FAC50  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805FAC54  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805FAC58  81 8C 01 44 */	lwz r12, 0x144(r12)
/* 805FAC5C  7D 89 03 A6 */	mtctr r12
/* 805FAC60  4E 80 04 21 */	bctrl 
/* 805FAC64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805FAC68  40 82 00 08 */	bne lbl_805FAC70
/* 805FAC6C  3B 20 00 02 */	li r25, 2
lbl_805FAC70:
/* 805FAC70  C3 FE 00 14 */	lfs f31, 0x14(r30)
/* 805FAC74  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805FAC78  88 03 05 68 */	lbz r0, 0x568(r3)
/* 805FAC7C  28 00 00 18 */	cmplwi r0, 0x18
/* 805FAC80  41 82 00 0C */	beq lbl_805FAC8C
/* 805FAC84  28 00 00 17 */	cmplwi r0, 0x17
/* 805FAC88  40 82 00 08 */	bne lbl_805FAC90
lbl_805FAC8C:
/* 805FAC8C  C3 FE 00 78 */	lfs f31, 0x78(r30)
lbl_805FAC90:
/* 805FAC90  4B A8 C7 45 */	bl cc_pl_cut_bit_get__Fv
/* 805FAC94  54 7A 04 3F */	clrlwi. r26, r3, 0x10
/* 805FAC98  40 82 00 0C */	bne lbl_805FACA4
/* 805FAC9C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805FACA0  8B 43 05 68 */	lbz r26, 0x568(r3)
lbl_805FACA4:
/* 805FACA4  2C 1A 04 00 */	cmpwi r26, 0x400
/* 805FACA8  41 82 00 1C */	beq lbl_805FACC4
/* 805FACAC  2C 1A 01 00 */	cmpwi r26, 0x100
/* 805FACB0  40 82 00 18 */	bne lbl_805FACC8
/* 805FACB4  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 805FACB8  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 805FACBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FACC0  40 81 00 08 */	ble lbl_805FACC8
lbl_805FACC4:
/* 805FACC4  3B 40 00 00 */	li r26, 0
lbl_805FACC8:
/* 805FACC8  7F A3 EB 78 */	mr r3, r29
/* 805FACCC  38 80 40 00 */	li r4, 0x4000
/* 805FACD0  4B A2 23 09 */	bl fopAcM_plAngleCheck__FPC10fopAc_ac_cs
/* 805FACD4  2C 03 00 00 */	cmpwi r3, 0
/* 805FACD8  40 82 00 08 */	bne lbl_805FACE0
/* 805FACDC  3B 40 00 00 */	li r26, 0
lbl_805FACE0:
/* 805FACE0  4B B6 46 B9 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 805FACE4  2C 03 00 00 */	cmpwi r3, 0
/* 805FACE8  40 82 00 08 */	bne lbl_805FACF0
/* 805FACEC  3B 40 00 00 */	li r26, 0
lbl_805FACF0:
/* 805FACF0  2C 1A 00 00 */	cmpwi r26, 0
/* 805FACF4  40 82 00 0C */	bne lbl_805FAD00
/* 805FACF8  2C 19 00 00 */	cmpwi r25, 0
/* 805FACFC  41 82 00 C8 */	beq lbl_805FADC4
lbl_805FAD00:
/* 805FAD00  2C 19 00 00 */	cmpwi r25, 0
/* 805FAD04  40 82 00 18 */	bne lbl_805FAD1C
/* 805FAD08  C0 3D 0C 38 */	lfs f1, 0xc38(r29)
/* 805FAD0C  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 805FAD10  EC 00 F8 2A */	fadds f0, f0, f31
/* 805FAD14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FAD18  40 80 00 AC */	bge lbl_805FADC4
lbl_805FAD1C:
/* 805FAD1C  2C 19 00 02 */	cmpwi r25, 2
/* 805FAD20  41 82 00 28 */	beq lbl_805FAD48
/* 805FAD24  2C 19 00 01 */	cmpwi r25, 1
/* 805FAD28  40 82 00 18 */	bne lbl_805FAD40
/* 805FAD2C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805FAD30  4B C6 CC 25 */	bl cM_rndF__Ff
/* 805FAD34  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 805FAD38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FAD3C  41 80 00 0C */	blt lbl_805FAD48
lbl_805FAD40:
/* 805FAD40  2C 1A 01 00 */	cmpwi r26, 0x100
/* 805FAD44  40 82 00 60 */	bne lbl_805FADA4
lbl_805FAD48:
/* 805FAD48  2C 19 00 02 */	cmpwi r25, 2
/* 805FAD4C  40 82 00 3C */	bne lbl_805FAD88
/* 805FAD50  C0 3D 0C 38 */	lfs f1, 0xc38(r29)
/* 805FAD54  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 805FAD58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FAD5C  40 81 00 2C */	ble lbl_805FAD88
/* 805FAD60  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805FAD64  4B C6 CB F1 */	bl cM_rndF__Ff
/* 805FAD68  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 805FAD6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FAD70  40 80 00 18 */	bge lbl_805FAD88
/* 805FAD74  38 00 00 0D */	li r0, 0xd
/* 805FAD78  B0 1D 0A FE */	sth r0, 0xafe(r29)
/* 805FAD7C  38 00 00 00 */	li r0, 0
/* 805FAD80  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 805FAD84  48 00 00 40 */	b lbl_805FADC4
lbl_805FAD88:
/* 805FAD88  38 00 00 0E */	li r0, 0xe
/* 805FAD8C  B0 1D 0A FE */	sth r0, 0xafe(r29)
/* 805FAD90  38 00 00 00 */	li r0, 0
/* 805FAD94  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 805FAD98  38 00 00 0F */	li r0, 0xf
/* 805FAD9C  B0 1D 0C 58 */	sth r0, 0xc58(r29)
/* 805FADA0  48 00 00 24 */	b lbl_805FADC4
lbl_805FADA4:
/* 805FADA4  38 00 00 0C */	li r0, 0xc
/* 805FADA8  B0 1D 0A FE */	sth r0, 0xafe(r29)
/* 805FADAC  38 00 00 00 */	li r0, 0
/* 805FADB0  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 805FADB4  38 00 00 0F */	li r0, 0xf
/* 805FADB8  B0 1D 0C 58 */	sth r0, 0xc58(r29)
/* 805FADBC  38 00 00 01 */	li r0, 1
/* 805FADC0  98 1D 0C 79 */	stb r0, 0xc79(r29)
lbl_805FADC4:
/* 805FADC4  3B 20 00 00 */	li r25, 0
/* 805FADC8  3B 40 00 00 */	li r26, 0
/* 805FADCC  88 7D 0C 7D */	lbz r3, 0xc7d(r29)
/* 805FADD0  7C 60 07 75 */	extsb. r0, r3
/* 805FADD4  41 82 01 20 */	beq lbl_805FAEF4
/* 805FADD8  7C 60 07 74 */	extsb r0, r3
/* 805FADDC  2C 00 00 01 */	cmpwi r0, 1
/* 805FADE0  40 82 00 30 */	bne lbl_805FAE10
/* 805FADE4  38 61 00 1C */	addi r3, r1, 0x1c
/* 805FADE8  38 9C 05 38 */	addi r4, r28, 0x538
/* 805FADEC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805FADF0  4B C6 BD 45 */	bl __mi__4cXyzCFRC3Vec
/* 805FADF4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805FADF8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805FADFC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805FAE00  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805FAE04  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805FAE08  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805FAE0C  48 00 00 2C */	b lbl_805FAE38
lbl_805FAE10:
/* 805FAE10  38 61 00 10 */	addi r3, r1, 0x10
/* 805FAE14  38 9D 0C 80 */	addi r4, r29, 0xc80
/* 805FAE18  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805FAE1C  4B C6 BD 19 */	bl __mi__4cXyzCFRC3Vec
/* 805FAE20  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805FAE24  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805FAE28  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805FAE2C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805FAE30  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805FAE34  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_805FAE38:
/* 805FAE38  80 1D 1F C4 */	lwz r0, 0x1fc4(r29)
/* 805FAE3C  2C 00 00 00 */	cmpwi r0, 0
/* 805FAE40  41 82 00 18 */	beq lbl_805FAE58
/* 805FAE44  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 805FAE48  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 805FAE4C  EC 01 00 2A */	fadds f0, f1, f0
/* 805FAE50  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805FAE54  48 00 00 14 */	b lbl_805FAE68
lbl_805FAE58:
/* 805FAE58  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 805FAE5C  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 805FAE60  EC 01 00 2A */	fadds f0, f1, f0
/* 805FAE64  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_805FAE68:
/* 805FAE68  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 805FAE6C  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 805FAE70  4B C6 C8 05 */	bl cM_atan2s__Fff
/* 805FAE74  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805FAE78  7C 00 18 50 */	subf r0, r0, r3
/* 805FAE7C  7C 19 07 34 */	extsh r25, r0
/* 805FAE80  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805FAE84  EC 20 00 32 */	fmuls f1, f0, f0
/* 805FAE88  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805FAE8C  EC 00 00 32 */	fmuls f0, f0, f0
/* 805FAE90  EC 41 00 2A */	fadds f2, f1, f0
/* 805FAE94  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805FAE98  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805FAE9C  40 81 00 0C */	ble lbl_805FAEA8
/* 805FAEA0  FC 00 10 34 */	frsqrte f0, f2
/* 805FAEA4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805FAEA8:
/* 805FAEA8  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 805FAEAC  4B C6 C7 C9 */	bl cM_atan2s__Fff
/* 805FAEB0  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 805FAEB4  7C 00 1A 14 */	add r0, r0, r3
/* 805FAEB8  7C 1A 07 34 */	extsh r26, r0
/* 805FAEBC  2C 19 2A F8 */	cmpwi r25, 0x2af8
/* 805FAEC0  40 81 00 0C */	ble lbl_805FAECC
/* 805FAEC4  3B 20 2A F8 */	li r25, 0x2af8
/* 805FAEC8  48 00 00 10 */	b lbl_805FAED8
lbl_805FAECC:
/* 805FAECC  2C 19 D5 08 */	cmpwi r25, -11000
/* 805FAED0  40 80 00 08 */	bge lbl_805FAED8
/* 805FAED4  3B 20 D5 08 */	li r25, -11000
lbl_805FAED8:
/* 805FAED8  2C 1A 0B B8 */	cmpwi r26, 0xbb8
/* 805FAEDC  40 81 00 0C */	ble lbl_805FAEE8
/* 805FAEE0  3B 40 0B B8 */	li r26, 0xbb8
/* 805FAEE4  48 00 00 10 */	b lbl_805FAEF4
lbl_805FAEE8:
/* 805FAEE8  2C 1A F4 48 */	cmpwi r26, -3000
/* 805FAEEC  40 80 00 08 */	bge lbl_805FAEF4
/* 805FAEF0  3B 40 F4 48 */	li r26, -3000
lbl_805FAEF4:
/* 805FAEF4  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 805FAEF8  7F 24 CB 78 */	mr r4, r25
/* 805FAEFC  38 A0 00 02 */	li r5, 2
/* 805FAF00  38 C0 10 00 */	li r6, 0x1000
/* 805FAF04  4B C7 57 05 */	bl cLib_addCalcAngleS2__FPssss
/* 805FAF08  38 7D 0C 8E */	addi r3, r29, 0xc8e
/* 805FAF0C  7F 44 D3 78 */	mr r4, r26
/* 805FAF10  38 A0 00 02 */	li r5, 2
/* 805FAF14  38 C0 10 00 */	li r6, 0x1000
/* 805FAF18  4B C7 56 F1 */	bl cLib_addCalcAngleS2__FPssss
/* 805FAF1C  2C 18 00 00 */	cmpwi r24, 0
/* 805FAF20  41 82 00 18 */	beq lbl_805FAF38
/* 805FAF24  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 805FAF28  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 805FAF2C  38 A0 00 02 */	li r5, 2
/* 805FAF30  38 C0 10 00 */	li r6, 0x1000
/* 805FAF34  4B C7 56 D5 */	bl cLib_addCalcAngleS2__FPssss
lbl_805FAF38:
/* 805FAF38  A8 7D 0C 70 */	lha r3, 0xc70(r29)
/* 805FAF3C  2C 03 00 00 */	cmpwi r3, 0
/* 805FAF40  41 82 00 4C */	beq lbl_805FAF8C
/* 805FAF44  38 03 FF FF */	addi r0, r3, -1
/* 805FAF48  B0 1D 0C 70 */	sth r0, 0xc70(r29)
/* 805FAF4C  A8 1D 0C 70 */	lha r0, 0xc70(r29)
/* 805FAF50  C8 3E 00 20 */	lfd f1, 0x20(r30)
/* 805FAF54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805FAF58  90 01 00 54 */	stw r0, 0x54(r1)
/* 805FAF5C  3C 00 43 30 */	lis r0, 0x4330
/* 805FAF60  90 01 00 50 */	stw r0, 0x50(r1)
/* 805FAF64  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 805FAF68  EC 00 08 28 */	fsubs f0, f0, f1
/* 805FAF6C  D0 1D 0C 6C */	stfs f0, 0xc6c(r29)
/* 805FAF70  C0 3D 0C 6C */	lfs f1, 0xc6c(r29)
/* 805FAF74  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 805FAF78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FAF7C  40 81 00 38 */	ble lbl_805FAFB4
/* 805FAF80  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805FAF84  D0 1D 0C 6C */	stfs f0, 0xc6c(r29)
/* 805FAF88  48 00 00 2C */	b lbl_805FAFB4
lbl_805FAF8C:
/* 805FAF8C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805FAF90  D0 1D 0C 6C */	stfs f0, 0xc6c(r29)
/* 805FAF94  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 805FAF98  4B C6 C9 BD */	bl cM_rndF__Ff
/* 805FAF9C  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 805FAFA0  EC 00 08 2A */	fadds f0, f0, f1
/* 805FAFA4  FC 00 00 1E */	fctiwz f0, f0
/* 805FAFA8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 805FAFAC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805FAFB0  B0 1D 0C 70 */	sth r0, 0xc70(r29)
lbl_805FAFB4:
/* 805FAFB4  38 7D 26 C0 */	addi r3, r29, 0x26c0
/* 805FAFB8  A8 9D 26 C2 */	lha r4, 0x26c2(r29)
/* 805FAFBC  38 A0 00 02 */	li r5, 2
/* 805FAFC0  38 C0 06 00 */	li r6, 0x600
/* 805FAFC4  4B C7 56 45 */	bl cLib_addCalcAngleS2__FPssss
/* 805FAFC8  38 00 00 00 */	li r0, 0
/* 805FAFCC  B0 1D 26 C2 */	sth r0, 0x26c2(r29)
/* 805FAFD0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 805FAFD4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 805FAFD8  39 61 00 80 */	addi r11, r1, 0x80
/* 805FAFDC  4B D6 72 39 */	bl _restgpr_24
/* 805FAFE0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805FAFE4  7C 08 03 A6 */	mtlr r0
/* 805FAFE8  38 21 00 90 */	addi r1, r1, 0x90
/* 805FAFEC  4E 80 00 20 */	blr 
