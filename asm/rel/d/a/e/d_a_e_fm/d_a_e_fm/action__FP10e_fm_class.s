lbl_804F6500:
/* 804F6500  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804F6504  7C 08 02 A6 */	mflr r0
/* 804F6508  90 01 00 74 */	stw r0, 0x74(r1)
/* 804F650C  39 61 00 70 */	addi r11, r1, 0x70
/* 804F6510  4B E6 BC B4 */	b _savegpr_23
/* 804F6514  7C 7E 1B 78 */	mr r30, r3
/* 804F6518  3C 80 80 50 */	lis r4, lit_3777@ha
/* 804F651C  3B 64 A6 BC */	addi r27, r4, lit_3777@l
/* 804F6520  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804F6524  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 804F6528  83 5C 5D AC */	lwz r26, 0x5dac(r28)
/* 804F652C  7F 44 D3 78 */	mr r4, r26
/* 804F6530  4B B2 41 E0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804F6534  B0 7E 05 C6 */	sth r3, 0x5c6(r30)
/* 804F6538  3B 00 00 00 */	li r24, 0
/* 804F653C  3A E0 00 01 */	li r23, 1
/* 804F6540  7F C3 F3 78 */	mr r3, r30
/* 804F6544  4B FF E8 31 */	bl damage_check__FP10e_fm_class
/* 804F6548  3B E0 00 01 */	li r31, 1
/* 804F654C  38 00 00 01 */	li r0, 1
/* 804F6550  3C 7E 00 02 */	addis r3, r30, 2
/* 804F6554  90 03 B0 7C */	stw r0, -0x4f84(r3)
/* 804F6558  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F655C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F6560  3B 23 07 F0 */	addi r25, r3, 0x7f0
/* 804F6564  7F 23 CB 78 */	mr r3, r25
/* 804F6568  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804F656C  3B A4 72 88 */	addi r29, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804F6570  A0 9D 01 FE */	lhz r4, 0x1fe(r29)
/* 804F6574  4B B3 E4 30 */	b offEventBit__11dSv_event_cFUs
/* 804F6578  7F 23 CB 78 */	mr r3, r25
/* 804F657C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804F6580  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804F6584  A0 84 02 02 */	lhz r4, 0x202(r4)
/* 804F6588  4B B3 E4 1C */	b offEventBit__11dSv_event_cFUs
/* 804F658C  A8 1E 07 A2 */	lha r0, 0x7a2(r30)
/* 804F6590  28 00 00 0C */	cmplwi r0, 0xc
/* 804F6594  41 81 01 20 */	bgt lbl_804F66B4
/* 804F6598  3C 60 80 50 */	lis r3, lit_7067@ha
/* 804F659C  38 63 AA 50 */	addi r3, r3, lit_7067@l
/* 804F65A0  54 00 10 3A */	slwi r0, r0, 2
/* 804F65A4  7C 03 00 2E */	lwzx r0, r3, r0
/* 804F65A8  7C 09 03 A6 */	mtctr r0
/* 804F65AC  4E 80 04 20 */	bctr 
lbl_804F65B0:
/* 804F65B0  7F C3 F3 78 */	mr r3, r30
/* 804F65B4  4B FF 9B 31 */	bl e_fm_normal__FP10e_fm_class
/* 804F65B8  38 00 00 00 */	li r0, 0
/* 804F65BC  3C 7E 00 02 */	addis r3, r30, 2
/* 804F65C0  90 03 B0 7C */	stw r0, -0x4f84(r3)
/* 804F65C4  48 00 00 F0 */	b lbl_804F66B4
lbl_804F65C8:
/* 804F65C8  7F C3 F3 78 */	mr r3, r30
/* 804F65CC  4B FF 9F 65 */	bl e_fm_fight_run__FP10e_fm_class
/* 804F65D0  38 00 00 00 */	li r0, 0
/* 804F65D4  3C 7E 00 02 */	addis r3, r30, 2
/* 804F65D8  90 03 B0 7C */	stw r0, -0x4f84(r3)
/* 804F65DC  48 00 00 D8 */	b lbl_804F66B4
lbl_804F65E0:
/* 804F65E0  7F C3 F3 78 */	mr r3, r30
/* 804F65E4  4B FF A4 95 */	bl e_fm_n_fight__FP10e_fm_class
/* 804F65E8  38 00 00 00 */	li r0, 0
/* 804F65EC  3C 7E 00 02 */	addis r3, r30, 2
/* 804F65F0  90 03 B0 7C */	stw r0, -0x4f84(r3)
/* 804F65F4  48 00 00 C0 */	b lbl_804F66B4
lbl_804F65F8:
/* 804F65F8  7F C3 F3 78 */	mr r3, r30
/* 804F65FC  4B FF A9 85 */	bl e_fm_f_fight__FP10e_fm_class
/* 804F6600  38 00 00 00 */	li r0, 0
/* 804F6604  3C 7E 00 02 */	addis r3, r30, 2
/* 804F6608  90 03 B0 7C */	stw r0, -0x4f84(r3)
/* 804F660C  48 00 00 A8 */	b lbl_804F66B4
lbl_804F6610:
/* 804F6610  7F C3 F3 78 */	mr r3, r30
/* 804F6614  4B FF B3 05 */	bl e_fm_damage_run__FP10e_fm_class
/* 804F6618  7F 23 CB 78 */	mr r3, r25
/* 804F661C  A0 9D 01 FE */	lhz r4, 0x1fe(r29)
/* 804F6620  4B B3 E3 6C */	b onEventBit__11dSv_event_cFUs
/* 804F6624  48 00 00 90 */	b lbl_804F66B4
lbl_804F6628:
/* 804F6628  7F C3 F3 78 */	mr r3, r30
/* 804F662C  4B FF AD D1 */	bl e_fm_animal__FP10e_fm_class
/* 804F6630  38 00 00 00 */	li r0, 0
/* 804F6634  3C 7E 00 02 */	addis r3, r30, 2
/* 804F6638  90 03 B0 7C */	stw r0, -0x4f84(r3)
/* 804F663C  48 00 00 78 */	b lbl_804F66B4
lbl_804F6640:
/* 804F6640  7F C3 F3 78 */	mr r3, r30
/* 804F6644  4B FF AE 85 */	bl e_fm_fire__FP10e_fm_class
/* 804F6648  38 00 00 00 */	li r0, 0
/* 804F664C  3C 7E 00 02 */	addis r3, r30, 2
/* 804F6650  90 03 B0 7C */	stw r0, -0x4f84(r3)
/* 804F6654  48 00 00 60 */	b lbl_804F66B4
lbl_804F6658:
/* 804F6658  7F C3 F3 78 */	mr r3, r30
/* 804F665C  4B FF B0 69 */	bl e_fm_stop__FP10e_fm_class
/* 804F6660  38 00 00 00 */	li r0, 0
/* 804F6664  3C 7E 00 02 */	addis r3, r30, 2
/* 804F6668  90 03 B0 7C */	stw r0, -0x4f84(r3)
/* 804F666C  48 00 00 48 */	b lbl_804F66B4
lbl_804F6670:
/* 804F6670  7F C3 F3 78 */	mr r3, r30
/* 804F6674  4B FF D8 01 */	bl e_fm_down__FP10e_fm_class
/* 804F6678  7C 78 1B 78 */	mr r24, r3
/* 804F667C  48 00 00 38 */	b lbl_804F66B4
lbl_804F6680:
/* 804F6680  7F C3 F3 78 */	mr r3, r30
/* 804F6684  4B FF DE 09 */	bl e_fm_a_down__FP10e_fm_class
/* 804F6688  7C 78 1B 78 */	mr r24, r3
/* 804F668C  48 00 00 28 */	b lbl_804F66B4
lbl_804F6690:
/* 804F6690  7F C3 F3 78 */	mr r3, r30
/* 804F6694  4B FF E0 AD */	bl e_fm_start__FP10e_fm_class
/* 804F6698  7C 7F 1B 78 */	mr r31, r3
/* 804F669C  48 00 00 18 */	b lbl_804F66B4
lbl_804F66A0:
/* 804F66A0  7F C3 F3 78 */	mr r3, r30
/* 804F66A4  4B FF E5 39 */	bl e_fm_end__FP10e_fm_class
/* 804F66A8  7C 78 1B 78 */	mr r24, r3
/* 804F66AC  3B E0 00 00 */	li r31, 0
/* 804F66B0  3A E0 00 00 */	li r23, 0
lbl_804F66B4:
/* 804F66B4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 804F66B8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804F66BC  38 A0 00 02 */	li r5, 2
/* 804F66C0  38 C0 10 00 */	li r6, 0x1000
/* 804F66C4  4B D7 9F 44 */	b cLib_addCalcAngleS2__FPssss
/* 804F66C8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804F66CC  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 804F66D0  38 A0 00 02 */	li r5, 2
/* 804F66D4  38 C0 10 00 */	li r6, 0x1000
/* 804F66D8  4B D7 9F 30 */	b cLib_addCalcAngleS2__FPssss
/* 804F66DC  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 804F66E0  A8 9E 04 E0 */	lha r4, 0x4e0(r30)
/* 804F66E4  38 A0 00 02 */	li r5, 2
/* 804F66E8  38 C0 10 00 */	li r6, 0x1000
/* 804F66EC  4B D7 9F 1C */	b cLib_addCalcAngleS2__FPssss
/* 804F66F0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F66F4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F66F8  80 63 00 00 */	lwz r3, 0(r3)
/* 804F66FC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804F6700  4B B1 5C DC */	b mDoMtx_YrotS__FPA4_fs
/* 804F6704  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804F6708  38 63 AE A4 */	addi r3, r3, l_HIO@l
/* 804F670C  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 804F6710  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 804F6714  C0 03 00 08 */	lfs f0, 8(r3)
/* 804F6718  EC 01 00 32 */	fmuls f0, f1, f0
/* 804F671C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804F6720  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804F6724  C0 1B 02 1C */	lfs f0, 0x21c(r27)
/* 804F6728  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 804F672C  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 804F6730  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804F6734  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804F6738  38 61 00 34 */	addi r3, r1, 0x34
/* 804F673C  38 81 00 28 */	addi r4, r1, 0x28
/* 804F6740  4B D7 A7 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 804F6744  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804F6748  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 804F674C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804F6750  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 804F6754  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804F6758  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 804F675C  7C 65 1B 78 */	mr r5, r3
/* 804F6760  4B E5 09 30 */	b PSVECAdd
/* 804F6764  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804F6768  4B E5 09 D0 */	b PSVECSquareMag
/* 804F676C  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 804F6770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F6774  40 81 00 58 */	ble lbl_804F67CC
/* 804F6778  FC 00 08 34 */	frsqrte f0, f1
/* 804F677C  C8 9B 00 70 */	lfd f4, 0x70(r27)
/* 804F6780  FC 44 00 32 */	fmul f2, f4, f0
/* 804F6784  C8 7B 00 78 */	lfd f3, 0x78(r27)
/* 804F6788  FC 00 00 32 */	fmul f0, f0, f0
/* 804F678C  FC 01 00 32 */	fmul f0, f1, f0
/* 804F6790  FC 03 00 28 */	fsub f0, f3, f0
/* 804F6794  FC 02 00 32 */	fmul f0, f2, f0
/* 804F6798  FC 44 00 32 */	fmul f2, f4, f0
/* 804F679C  FC 00 00 32 */	fmul f0, f0, f0
/* 804F67A0  FC 01 00 32 */	fmul f0, f1, f0
/* 804F67A4  FC 03 00 28 */	fsub f0, f3, f0
/* 804F67A8  FC 02 00 32 */	fmul f0, f2, f0
/* 804F67AC  FC 44 00 32 */	fmul f2, f4, f0
/* 804F67B0  FC 00 00 32 */	fmul f0, f0, f0
/* 804F67B4  FC 01 00 32 */	fmul f0, f1, f0
/* 804F67B8  FC 03 00 28 */	fsub f0, f3, f0
/* 804F67BC  FC 02 00 32 */	fmul f0, f2, f0
/* 804F67C0  FC 21 00 32 */	fmul f1, f1, f0
/* 804F67C4  FC 20 08 18 */	frsp f1, f1
/* 804F67C8  48 00 00 88 */	b lbl_804F6850
lbl_804F67CC:
/* 804F67CC  C8 1B 00 80 */	lfd f0, 0x80(r27)
/* 804F67D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F67D4  40 80 00 10 */	bge lbl_804F67E4
/* 804F67D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804F67DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804F67E0  48 00 00 70 */	b lbl_804F6850
lbl_804F67E4:
/* 804F67E4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804F67E8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 804F67EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804F67F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 804F67F4  7C 03 00 00 */	cmpw r3, r0
/* 804F67F8  41 82 00 14 */	beq lbl_804F680C
/* 804F67FC  40 80 00 40 */	bge lbl_804F683C
/* 804F6800  2C 03 00 00 */	cmpwi r3, 0
/* 804F6804  41 82 00 20 */	beq lbl_804F6824
/* 804F6808  48 00 00 34 */	b lbl_804F683C
lbl_804F680C:
/* 804F680C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804F6810  41 82 00 0C */	beq lbl_804F681C
/* 804F6814  38 00 00 01 */	li r0, 1
/* 804F6818  48 00 00 28 */	b lbl_804F6840
lbl_804F681C:
/* 804F681C  38 00 00 02 */	li r0, 2
/* 804F6820  48 00 00 20 */	b lbl_804F6840
lbl_804F6824:
/* 804F6824  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804F6828  41 82 00 0C */	beq lbl_804F6834
/* 804F682C  38 00 00 05 */	li r0, 5
/* 804F6830  48 00 00 10 */	b lbl_804F6840
lbl_804F6834:
/* 804F6834  38 00 00 03 */	li r0, 3
/* 804F6838  48 00 00 08 */	b lbl_804F6840
lbl_804F683C:
/* 804F683C  38 00 00 04 */	li r0, 4
lbl_804F6840:
/* 804F6840  2C 00 00 01 */	cmpwi r0, 1
/* 804F6844  40 82 00 0C */	bne lbl_804F6850
/* 804F6848  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804F684C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804F6850:
/* 804F6850  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804F6854  38 63 AE A4 */	addi r3, r3, l_HIO@l
/* 804F6858  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 804F685C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F6860  40 81 00 78 */	ble lbl_804F68D8
/* 804F6864  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804F6868  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804F686C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804F6870  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804F6874  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804F6878  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804F687C  FC 20 08 50 */	fneg f1, f1
/* 804F6880  FC 40 00 50 */	fneg f2, f0
/* 804F6884  4B D7 0D F0 */	b cM_atan2s__Fff
/* 804F6888  7C 64 1B 78 */	mr r4, r3
/* 804F688C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F6890  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F6894  80 63 00 00 */	lwz r3, 0(r3)
/* 804F6898  4B B1 5B 44 */	b mDoMtx_YrotS__FPA4_fs
/* 804F689C  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 804F68A0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804F68A4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804F68A8  C0 1B 00 C0 */	lfs f0, 0xc0(r27)
/* 804F68AC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804F68B0  38 61 00 34 */	addi r3, r1, 0x34
/* 804F68B4  38 81 00 28 */	addi r4, r1, 0x28
/* 804F68B8  4B D7 A6 34 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F68BC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804F68C0  38 81 00 28 */	addi r4, r1, 0x28
/* 804F68C4  7C 65 1B 78 */	mr r5, r3
/* 804F68C8  4B E5 07 C8 */	b PSVECAdd
/* 804F68CC  38 00 00 01 */	li r0, 1
/* 804F68D0  98 1E 08 09 */	stb r0, 0x809(r30)
/* 804F68D4  48 00 00 0C */	b lbl_804F68E0
lbl_804F68D8:
/* 804F68D8  38 00 00 00 */	li r0, 0
/* 804F68DC  98 1E 08 09 */	stb r0, 0x809(r30)
lbl_804F68E0:
/* 804F68E0  34 7E 0A 24 */	addic. r3, r30, 0xa24
/* 804F68E4  41 82 00 24 */	beq lbl_804F6908
/* 804F68E8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804F68EC  C0 03 00 00 */	lfs f0, 0(r3)
/* 804F68F0  EC 01 00 2A */	fadds f0, f1, f0
/* 804F68F4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804F68F8  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 804F68FC  C0 03 00 08 */	lfs f0, 8(r3)
/* 804F6900  EC 01 00 2A */	fadds f0, f1, f0
/* 804F6904  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_804F6908:
/* 804F6908  C0 3E 07 FC */	lfs f1, 0x7fc(r30)
/* 804F690C  C0 1B 01 20 */	lfs f0, 0x120(r27)
/* 804F6910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F6914  40 81 00 58 */	ble lbl_804F696C
/* 804F6918  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 804F691C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804F6920  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804F6924  FC 00 08 50 */	fneg f0, f1
/* 804F6928  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804F692C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F6930  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F6934  80 63 00 00 */	lwz r3, 0(r3)
/* 804F6938  A8 9E 08 00 */	lha r4, 0x800(r30)
/* 804F693C  4B B1 5A A0 */	b mDoMtx_YrotS__FPA4_fs
/* 804F6940  38 61 00 34 */	addi r3, r1, 0x34
/* 804F6944  38 81 00 28 */	addi r4, r1, 0x28
/* 804F6948  4B D7 A5 A4 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F694C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804F6950  38 81 00 28 */	addi r4, r1, 0x28
/* 804F6954  7C 65 1B 78 */	mr r5, r3
/* 804F6958  4B E5 07 38 */	b PSVECAdd
/* 804F695C  38 7E 07 FC */	addi r3, r30, 0x7fc
/* 804F6960  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804F6964  C0 5B 02 18 */	lfs f2, 0x218(r27)
/* 804F6968  4B D7 91 18 */	b cLib_addCalc0__FPfff
lbl_804F696C:
/* 804F696C  3B 20 00 00 */	li r25, 0
/* 804F6970  3B A0 00 00 */	li r29, 0
/* 804F6974  88 7E 07 C0 */	lbz r3, 0x7c0(r30)
/* 804F6978  7C 60 07 75 */	extsb. r0, r3
/* 804F697C  41 82 00 F0 */	beq lbl_804F6A6C
/* 804F6980  7C 60 07 74 */	extsb r0, r3
/* 804F6984  2C 00 00 01 */	cmpwi r0, 1
/* 804F6988  40 82 00 C0 */	bne lbl_804F6A48
/* 804F698C  38 61 00 1C */	addi r3, r1, 0x1c
/* 804F6990  38 9A 05 38 */	addi r4, r26, 0x538
/* 804F6994  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804F6998  4B D7 01 9C */	b __mi__4cXyzCFRC3Vec
/* 804F699C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 804F69A0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804F69A4  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 804F69A8  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 804F69AC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 804F69B0  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 804F69B4  C0 1B 02 24 */	lfs f0, 0x224(r27)
/* 804F69B8  EC 03 00 2A */	fadds f0, f3, f0
/* 804F69BC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804F69C0  4B D7 0C B4 */	b cM_atan2s__Fff
/* 804F69C4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804F69C8  7C 00 18 50 */	subf r0, r0, r3
/* 804F69CC  7C 19 07 34 */	extsh r25, r0
/* 804F69D0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804F69D4  EC 20 00 32 */	fmuls f1, f0, f0
/* 804F69D8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804F69DC  EC 00 00 32 */	fmuls f0, f0, f0
/* 804F69E0  EC 41 00 2A */	fadds f2, f1, f0
/* 804F69E4  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 804F69E8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804F69EC  40 81 00 0C */	ble lbl_804F69F8
/* 804F69F0  FC 00 10 34 */	frsqrte f0, f2
/* 804F69F4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804F69F8:
/* 804F69F8  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 804F69FC  4B D7 0C 78 */	b cM_atan2s__Fff
/* 804F6A00  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 804F6A04  7C 03 00 50 */	subf r0, r3, r0
/* 804F6A08  7C 1D 07 34 */	extsh r29, r0
/* 804F6A0C  2C 19 1B 58 */	cmpwi r25, 0x1b58
/* 804F6A10  40 81 00 0C */	ble lbl_804F6A1C
/* 804F6A14  3B 20 1B 58 */	li r25, 0x1b58
/* 804F6A18  48 00 00 10 */	b lbl_804F6A28
lbl_804F6A1C:
/* 804F6A1C  2C 19 E4 A8 */	cmpwi r25, -7000
/* 804F6A20  40 80 00 08 */	bge lbl_804F6A28
/* 804F6A24  3B 20 E4 A8 */	li r25, -7000
lbl_804F6A28:
/* 804F6A28  2C 1D 03 E8 */	cmpwi r29, 0x3e8
/* 804F6A2C  40 81 00 0C */	ble lbl_804F6A38
/* 804F6A30  3B A0 03 E8 */	li r29, 0x3e8
/* 804F6A34  48 00 00 30 */	b lbl_804F6A64
lbl_804F6A38:
/* 804F6A38  2C 1D FC 18 */	cmpwi r29, -1000
/* 804F6A3C  40 80 00 28 */	bge lbl_804F6A64
/* 804F6A40  3B A0 FC 18 */	li r29, -1000
/* 804F6A44  48 00 00 20 */	b lbl_804F6A64
lbl_804F6A48:
/* 804F6A48  88 1E 08 08 */	lbz r0, 0x808(r30)
/* 804F6A4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804F6A50  38 00 36 B0 */	li r0, 0x36b0
/* 804F6A54  41 82 00 08 */	beq lbl_804F6A5C
/* 804F6A58  38 00 C9 50 */	li r0, -14000
lbl_804F6A5C:
/* 804F6A5C  7C 19 03 78 */	mr r25, r0
/* 804F6A60  3B A0 07 D0 */	li r29, 0x7d0
lbl_804F6A64:
/* 804F6A64  38 00 00 00 */	li r0, 0
/* 804F6A68  98 1E 07 C0 */	stb r0, 0x7c0(r30)
lbl_804F6A6C:
/* 804F6A6C  38 7E 07 C2 */	addi r3, r30, 0x7c2
/* 804F6A70  7F 20 07 34 */	extsh r0, r25
/* 804F6A74  7C 00 0E 70 */	srawi r0, r0, 1
/* 804F6A78  7C 00 01 94 */	addze r0, r0
/* 804F6A7C  7C 04 07 34 */	extsh r4, r0
/* 804F6A80  38 A0 00 10 */	li r5, 0x10
/* 804F6A84  38 C0 02 00 */	li r6, 0x200
/* 804F6A88  4B D7 9B 80 */	b cLib_addCalcAngleS2__FPssss
/* 804F6A8C  38 7E 07 C4 */	addi r3, r30, 0x7c4
/* 804F6A90  7F A4 EB 78 */	mr r4, r29
/* 804F6A94  38 A0 00 10 */	li r5, 0x10
/* 804F6A98  38 C0 02 00 */	li r6, 0x200
/* 804F6A9C  4B D7 9B 6C */	b cLib_addCalcAngleS2__FPssss
/* 804F6AA0  7F 00 07 75 */	extsb. r0, r24
/* 804F6AA4  41 82 00 10 */	beq lbl_804F6AB4
/* 804F6AA8  38 00 00 04 */	li r0, 4
/* 804F6AAC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 804F6AB0  48 00 00 18 */	b lbl_804F6AC8
lbl_804F6AB4:
/* 804F6AB4  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 804F6AB8  54 00 00 3E */	slwi r0, r0, 0
/* 804F6ABC  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 804F6AC0  38 00 00 00 */	li r0, 0
/* 804F6AC4  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_804F6AC8:
/* 804F6AC8  7E E0 07 75 */	extsb. r0, r23
/* 804F6ACC  41 82 00 0C */	beq lbl_804F6AD8
/* 804F6AD0  38 7E 05 38 */	addi r3, r30, 0x538
/* 804F6AD4  4B C6 8A 1C */	b setLookPos__9daPy_py_cFP4cXyz
lbl_804F6AD8:
/* 804F6AD8  88 1E 07 72 */	lbz r0, 0x772(r30)
/* 804F6ADC  7C 00 07 75 */	extsb. r0, r0
/* 804F6AE0  41 82 00 B8 */	beq lbl_804F6B98
/* 804F6AE4  38 00 00 00 */	li r0, 0
/* 804F6AE8  98 1E 07 72 */	stb r0, 0x772(r30)
/* 804F6AEC  3C 60 80 50 */	lis r3, ba_count@ha
/* 804F6AF0  90 03 AF 80 */	stw r0, ba_count@l(r3)
/* 804F6AF4  3C 60 80 4F */	lis r3, s_ba_sub__FPvPv@ha
/* 804F6AF8  38 63 64 A8 */	addi r3, r3, s_ba_sub__FPvPv@l
/* 804F6AFC  7F C4 F3 78 */	mr r4, r30
/* 804F6B00  4B B2 A8 38 */	b fpcEx_Search__FPFPvPv_PvPv
/* 804F6B04  3C 60 80 50 */	lis r3, ba_count@ha
/* 804F6B08  80 03 AF 80 */	lwz r0, ba_count@l(r3)
/* 804F6B0C  23 40 00 04 */	subfic r26, r0, 4
/* 804F6B10  38 61 00 14 */	addi r3, r1, 0x14
/* 804F6B14  38 80 00 00 */	li r4, 0
/* 804F6B18  38 A0 00 00 */	li r5, 0
/* 804F6B1C  38 C0 00 00 */	li r6, 0
/* 804F6B20  4B D7 08 D4 */	b __ct__5csXyzFsss
/* 804F6B24  3B 20 00 00 */	li r25, 0
/* 804F6B28  B3 21 00 14 */	sth r25, 0x14(r1)
/* 804F6B2C  3B 60 00 00 */	li r27, 0
/* 804F6B30  3F 00 FF FF */	lis r24, 0xffff
/* 804F6B34  3C 00 00 01 */	lis r0, 1
/* 804F6B38  7C 00 D3 D6 */	divw r0, r0, r26
/* 804F6B3C  7C 17 07 34 */	extsh r23, r0
/* 804F6B40  48 00 00 50 */	b lbl_804F6B90
lbl_804F6B44:
/* 804F6B44  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804F6B48  7C 07 07 74 */	extsb r7, r0
/* 804F6B4C  93 21 00 08 */	stw r25, 8(r1)
/* 804F6B50  38 60 01 EA */	li r3, 0x1ea
/* 804F6B54  28 1E 00 00 */	cmplwi r30, 0
/* 804F6B58  41 82 00 0C */	beq lbl_804F6B64
/* 804F6B5C  80 9E 00 04 */	lwz r4, 4(r30)
/* 804F6B60  48 00 00 08 */	b lbl_804F6B68
lbl_804F6B64:
/* 804F6B64  38 80 FF FF */	li r4, -1
lbl_804F6B68:
/* 804F6B68  38 B8 1F 02 */	addi r5, r24, 0x1f02
/* 804F6B6C  38 DE 05 38 */	addi r6, r30, 0x538
/* 804F6B70  39 01 00 14 */	addi r8, r1, 0x14
/* 804F6B74  39 20 00 00 */	li r9, 0
/* 804F6B78  39 40 FF FF */	li r10, -1
/* 804F6B7C  4B B2 33 74 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 804F6B80  A8 01 00 16 */	lha r0, 0x16(r1)
/* 804F6B84  7C 00 BA 14 */	add r0, r0, r23
/* 804F6B88  B0 01 00 16 */	sth r0, 0x16(r1)
/* 804F6B8C  3B 7B 00 01 */	addi r27, r27, 1
lbl_804F6B90:
/* 804F6B90  7C 1B D0 00 */	cmpw r27, r26
/* 804F6B94  41 80 FF B0 */	blt lbl_804F6B44
lbl_804F6B98:
/* 804F6B98  7F C3 F3 78 */	mr r3, r30
/* 804F6B9C  4B FF B6 55 */	bl demo_camera__FP10e_fm_class
/* 804F6BA0  7F E0 07 75 */	extsb. r0, r31
/* 804F6BA4  41 82 00 14 */	beq lbl_804F6BB8
/* 804F6BA8  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 804F6BAC  80 03 05 88 */	lwz r0, 0x588(r3)
/* 804F6BB0  64 00 02 00 */	oris r0, r0, 0x200
/* 804F6BB4  90 03 05 88 */	stw r0, 0x588(r3)
lbl_804F6BB8:
/* 804F6BB8  39 61 00 70 */	addi r11, r1, 0x70
/* 804F6BBC  4B E6 B6 54 */	b _restgpr_23
/* 804F6BC0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804F6BC4  7C 08 03 A6 */	mtlr r0
/* 804F6BC8  38 21 00 70 */	addi r1, r1, 0x70
/* 804F6BCC  4E 80 00 20 */	blr 
