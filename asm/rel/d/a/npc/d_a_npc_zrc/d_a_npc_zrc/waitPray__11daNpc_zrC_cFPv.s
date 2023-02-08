lbl_80B91808:
/* 80B91808  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B9180C  7C 08 02 A6 */	mflr r0
/* 80B91810  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B91814  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B91818  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B9181C  39 61 00 50 */	addi r11, r1, 0x50
/* 80B91820  4B 7D 09 B9 */	bl _savegpr_28
/* 80B91824  7C 7D 1B 78 */	mr r29, r3
/* 80B91828  3C 60 80 B9 */	lis r3, m__17daNpc_zrC_Param_c@ha /* 0x80B931FC@ha */
/* 80B9182C  3B C3 31 FC */	addi r30, r3, m__17daNpc_zrC_Param_c@l /* 0x80B931FC@l */
/* 80B91830  38 61 00 18 */	addi r3, r1, 0x18
/* 80B91834  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B91838  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9183C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B91840  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B91844  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B91848  4B 6D 52 ED */	bl __mi__4cXyzCFRC3Vec
/* 80B9184C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B91850  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B91854  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80B91858  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B9185C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B91860  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B91864  38 61 00 0C */	addi r3, r1, 0xc
/* 80B91868  4B 7B 58 D1 */	bl PSVECSquareMag
/* 80B9186C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80B91870  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B91874  40 81 00 58 */	ble lbl_80B918CC
/* 80B91878  FC 00 08 34 */	frsqrte f0, f1
/* 80B9187C  C8 9E 00 C0 */	lfd f4, 0xc0(r30)
/* 80B91880  FC 44 00 32 */	fmul f2, f4, f0
/* 80B91884  C8 7E 00 C8 */	lfd f3, 0xc8(r30)
/* 80B91888  FC 00 00 32 */	fmul f0, f0, f0
/* 80B9188C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B91890  FC 03 00 28 */	fsub f0, f3, f0
/* 80B91894  FC 02 00 32 */	fmul f0, f2, f0
/* 80B91898  FC 44 00 32 */	fmul f2, f4, f0
/* 80B9189C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B918A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B918A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B918A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B918AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B918B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B918B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B918B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B918BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B918C0  FF E1 00 32 */	fmul f31, f1, f0
/* 80B918C4  FF E0 F8 18 */	frsp f31, f31
/* 80B918C8  48 00 00 90 */	b lbl_80B91958
lbl_80B918CC:
/* 80B918CC  C8 1E 00 D0 */	lfd f0, 0xd0(r30)
/* 80B918D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B918D4  40 80 00 10 */	bge lbl_80B918E4
/* 80B918D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B918DC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B918E0  48 00 00 78 */	b lbl_80B91958
lbl_80B918E4:
/* 80B918E4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B918E8  80 81 00 08 */	lwz r4, 8(r1)
/* 80B918EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B918F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B918F4  7C 03 00 00 */	cmpw r3, r0
/* 80B918F8  41 82 00 14 */	beq lbl_80B9190C
/* 80B918FC  40 80 00 40 */	bge lbl_80B9193C
/* 80B91900  2C 03 00 00 */	cmpwi r3, 0
/* 80B91904  41 82 00 20 */	beq lbl_80B91924
/* 80B91908  48 00 00 34 */	b lbl_80B9193C
lbl_80B9190C:
/* 80B9190C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B91910  41 82 00 0C */	beq lbl_80B9191C
/* 80B91914  38 00 00 01 */	li r0, 1
/* 80B91918  48 00 00 28 */	b lbl_80B91940
lbl_80B9191C:
/* 80B9191C  38 00 00 02 */	li r0, 2
/* 80B91920  48 00 00 20 */	b lbl_80B91940
lbl_80B91924:
/* 80B91924  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B91928  41 82 00 0C */	beq lbl_80B91934
/* 80B9192C  38 00 00 05 */	li r0, 5
/* 80B91930  48 00 00 10 */	b lbl_80B91940
lbl_80B91934:
/* 80B91934  38 00 00 03 */	li r0, 3
/* 80B91938  48 00 00 08 */	b lbl_80B91940
lbl_80B9193C:
/* 80B9193C  38 00 00 04 */	li r0, 4
lbl_80B91940:
/* 80B91940  2C 00 00 01 */	cmpwi r0, 1
/* 80B91944  40 82 00 10 */	bne lbl_80B91954
/* 80B91948  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B9194C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B91950  48 00 00 08 */	b lbl_80B91958
lbl_80B91954:
/* 80B91954  FF E0 08 90 */	fmr f31, f1
lbl_80B91958:
/* 80B91958  A0 1D 0E 26 */	lhz r0, 0xe26(r29)
/* 80B9195C  2C 00 00 02 */	cmpwi r0, 2
/* 80B91960  41 82 00 C4 */	beq lbl_80B91A24
/* 80B91964  40 80 05 F0 */	bge lbl_80B91F54
/* 80B91968  2C 00 00 00 */	cmpwi r0, 0
/* 80B9196C  41 82 00 0C */	beq lbl_80B91978
/* 80B91970  48 00 05 E4 */	b lbl_80B91F54
/* 80B91974  48 00 05 E0 */	b lbl_80B91F54
lbl_80B91978:
/* 80B91978  88 1D 0E 30 */	lbz r0, 0xe30(r29)
/* 80B9197C  28 00 00 00 */	cmplwi r0, 0
/* 80B91980  40 82 00 58 */	bne lbl_80B919D8
/* 80B91984  80 1D 0E 2C */	lwz r0, 0xe2c(r29)
/* 80B91988  2C 00 00 13 */	cmpwi r0, 0x13
/* 80B9198C  41 82 00 88 */	beq lbl_80B91A14
/* 80B91990  2C 00 00 14 */	cmpwi r0, 0x14
/* 80B91994  41 82 00 80 */	beq lbl_80B91A14
/* 80B91998  7F A3 EB 78 */	mr r3, r29
/* 80B9199C  38 80 00 0D */	li r4, 0xd
/* 80B919A0  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B919A4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B919A8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B919AC  7D 89 03 A6 */	mtctr r12
/* 80B919B0  4E 80 04 21 */	bctrl 
/* 80B919B4  7F A3 EB 78 */	mr r3, r29
/* 80B919B8  38 80 00 0A */	li r4, 0xa
/* 80B919BC  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B919C0  38 A0 00 00 */	li r5, 0
/* 80B919C4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B919C8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B919CC  7D 89 03 A6 */	mtctr r12
/* 80B919D0  4E 80 04 21 */	bctrl 
/* 80B919D4  48 00 00 40 */	b lbl_80B91A14
lbl_80B919D8:
/* 80B919D8  7F A3 EB 78 */	mr r3, r29
/* 80B919DC  38 80 00 11 */	li r4, 0x11
/* 80B919E0  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B919E4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B919E8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B919EC  7D 89 03 A6 */	mtctr r12
/* 80B919F0  4E 80 04 21 */	bctrl 
/* 80B919F4  7F A3 EB 78 */	mr r3, r29
/* 80B919F8  38 80 00 00 */	li r4, 0
/* 80B919FC  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91A00  38 A0 00 00 */	li r5, 0
/* 80B91A04  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91A08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B91A0C  7D 89 03 A6 */	mtctr r12
/* 80B91A10  4E 80 04 21 */	bctrl 
lbl_80B91A14:
/* 80B91A14  38 00 00 00 */	li r0, 0
/* 80B91A18  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B91A1C  38 00 00 02 */	li r0, 2
/* 80B91A20  B0 1D 0E 26 */	sth r0, 0xe26(r29)
lbl_80B91A24:
/* 80B91A24  38 60 01 DF */	li r3, 0x1df
/* 80B91A28  4B 5C 3C 0D */	bl daNpcF_chkEvtBit__FUl
/* 80B91A2C  2C 03 00 00 */	cmpwi r3, 0
/* 80B91A30  40 82 00 CC */	bne lbl_80B91AFC
/* 80B91A34  88 1D 0E 30 */	lbz r0, 0xe30(r29)
/* 80B91A38  28 00 00 00 */	cmplwi r0, 0
/* 80B91A3C  41 82 00 C0 */	beq lbl_80B91AFC
/* 80B91A40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B91A44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B91A48  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B91A4C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B91A50  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B91A54  40 82 00 A8 */	bne lbl_80B91AFC
/* 80B91A58  38 7E 00 00 */	addi r3, r30, 0
/* 80B91A5C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B91A60  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B91A64  4C 40 13 82 */	cror 2, 0, 2
/* 80B91A68  40 82 00 94 */	bne lbl_80B91AFC
/* 80B91A6C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B91A70  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B91A74  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80B91A78  7D 89 03 A6 */	mtctr r12
/* 80B91A7C  4E 80 04 21 */	bctrl 
/* 80B91A80  28 03 00 00 */	cmplwi r3, 0
/* 80B91A84  40 82 00 78 */	bne lbl_80B91AFC
/* 80B91A88  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B91A8C  80 04 05 70 */	lwz r0, 0x570(r4)
/* 80B91A90  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B91A94  41 82 00 68 */	beq lbl_80B91AFC
/* 80B91A98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B91A9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B91AA0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80B91AA4  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B91AA8  40 82 00 54 */	bne lbl_80B91AFC
/* 80B91AAC  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80B91AB0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B91AB4  C0 24 04 D4 */	lfs f1, 0x4d4(r4)
/* 80B91AB8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80B91ABC  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80B91AC0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B91AC4  C0 1E 04 8C */	lfs f0, 0x48c(r30)
/* 80B91AC8  EC 01 00 2A */	fadds f0, f1, f0
/* 80B91ACC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B91AD0  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80B91AD4  38 81 00 24 */	addi r4, r1, 0x24
/* 80B91AD8  7F A5 EB 78 */	mr r5, r29
/* 80B91ADC  4B 48 C1 8D */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80B91AE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B91AE4  40 82 00 18 */	bne lbl_80B91AFC
/* 80B91AE8  38 00 00 01 */	li r0, 1
/* 80B91AEC  98 1D 0E 38 */	stb r0, 0xe38(r29)
/* 80B91AF0  38 00 00 34 */	li r0, 0x34
/* 80B91AF4  90 1D 0E 20 */	stw r0, 0xe20(r29)
/* 80B91AF8  48 00 04 5C */	b lbl_80B91F54
lbl_80B91AFC:
/* 80B91AFC  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80B91B00  28 00 00 00 */	cmplwi r0, 0
/* 80B91B04  40 82 04 50 */	bne lbl_80B91F54
/* 80B91B08  88 1D 0E 30 */	lbz r0, 0xe30(r29)
/* 80B91B0C  28 00 00 01 */	cmplwi r0, 1
/* 80B91B10  40 82 00 B8 */	bne lbl_80B91BC8
/* 80B91B14  38 7E 00 00 */	addi r3, r30, 0
/* 80B91B18  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 80B91B1C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B91B20  40 81 01 F0 */	ble lbl_80B91D10
/* 80B91B24  7F A3 EB 78 */	mr r3, r29
/* 80B91B28  38 80 00 00 */	li r4, 0
/* 80B91B2C  4B FF F6 11 */	bl setLookMode__11daNpc_zrC_cFi
/* 80B91B30  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80B91B34  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B91B38  7C 04 00 00 */	cmpw r4, r0
/* 80B91B3C  41 82 00 2C */	beq lbl_80B91B68
/* 80B91B40  7F A3 EB 78 */	mr r3, r29
/* 80B91B44  38 A0 00 0D */	li r5, 0xd
/* 80B91B48  38 C0 00 0A */	li r6, 0xa
/* 80B91B4C  38 E0 00 1E */	li r7, 0x1e
/* 80B91B50  4B 5C 25 55 */	bl step__8daNpcF_cFsiii
/* 80B91B54  2C 03 00 00 */	cmpwi r3, 0
/* 80B91B58  41 82 00 60 */	beq lbl_80B91BB8
/* 80B91B5C  38 00 00 00 */	li r0, 0
/* 80B91B60  B0 1D 0E 26 */	sth r0, 0xe26(r29)
/* 80B91B64  48 00 00 54 */	b lbl_80B91BB8
lbl_80B91B68:
/* 80B91B68  80 1D 0E 2C */	lwz r0, 0xe2c(r29)
/* 80B91B6C  2C 00 00 13 */	cmpwi r0, 0x13
/* 80B91B70  41 82 00 48 */	beq lbl_80B91BB8
/* 80B91B74  2C 00 00 14 */	cmpwi r0, 0x14
/* 80B91B78  41 82 00 40 */	beq lbl_80B91BB8
/* 80B91B7C  7F A3 EB 78 */	mr r3, r29
/* 80B91B80  38 80 00 0D */	li r4, 0xd
/* 80B91B84  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91B88  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91B8C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B91B90  7D 89 03 A6 */	mtctr r12
/* 80B91B94  4E 80 04 21 */	bctrl 
/* 80B91B98  7F A3 EB 78 */	mr r3, r29
/* 80B91B9C  38 80 00 0A */	li r4, 0xa
/* 80B91BA0  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91BA4  38 A0 00 00 */	li r5, 0
/* 80B91BA8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91BAC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B91BB0  7D 89 03 A6 */	mtctr r12
/* 80B91BB4  4E 80 04 21 */	bctrl 
lbl_80B91BB8:
/* 80B91BB8  38 00 00 00 */	li r0, 0
/* 80B91BBC  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B91BC0  98 1D 0E 30 */	stb r0, 0xe30(r29)
/* 80B91BC4  48 00 01 4C */	b lbl_80B91D10
lbl_80B91BC8:
/* 80B91BC8  A8 1D 0E 24 */	lha r0, 0xe24(r29)
/* 80B91BCC  2C 00 00 02 */	cmpwi r0, 2
/* 80B91BD0  41 82 00 0C */	beq lbl_80B91BDC
/* 80B91BD4  2C 00 00 03 */	cmpwi r0, 3
/* 80B91BD8  40 82 00 60 */	bne lbl_80B91C38
lbl_80B91BDC:
/* 80B91BDC  38 7E 00 00 */	addi r3, r30, 0
/* 80B91BE0  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 80B91BE4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B91BE8  40 81 01 28 */	ble lbl_80B91D10
/* 80B91BEC  7F A3 EB 78 */	mr r3, r29
/* 80B91BF0  38 80 00 00 */	li r4, 0
/* 80B91BF4  4B FF F5 49 */	bl setLookMode__11daNpc_zrC_cFi
/* 80B91BF8  7F A3 EB 78 */	mr r3, r29
/* 80B91BFC  38 80 00 02 */	li r4, 2
/* 80B91C00  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91C04  38 A0 00 00 */	li r5, 0
/* 80B91C08  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91C0C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B91C10  7D 89 03 A6 */	mtctr r12
/* 80B91C14  4E 80 04 21 */	bctrl 
/* 80B91C18  7F A3 EB 78 */	mr r3, r29
/* 80B91C1C  38 80 00 02 */	li r4, 2
/* 80B91C20  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91C24  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91C28  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B91C2C  7D 89 03 A6 */	mtctr r12
/* 80B91C30  4E 80 04 21 */	bctrl 
/* 80B91C34  48 00 00 DC */	b lbl_80B91D10
lbl_80B91C38:
/* 80B91C38  38 7E 00 00 */	addi r3, r30, 0
/* 80B91C3C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B91C40  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B91C44  40 81 00 9C */	ble lbl_80B91CE0
/* 80B91C48  7F A3 EB 78 */	mr r3, r29
/* 80B91C4C  38 80 00 00 */	li r4, 0
/* 80B91C50  4B FF F4 ED */	bl setLookMode__11daNpc_zrC_cFi
/* 80B91C54  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80B91C58  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B91C5C  7C 04 00 00 */	cmpw r4, r0
/* 80B91C60  41 82 00 2C */	beq lbl_80B91C8C
/* 80B91C64  7F A3 EB 78 */	mr r3, r29
/* 80B91C68  38 A0 FF FF */	li r5, -1
/* 80B91C6C  38 C0 FF FF */	li r6, -1
/* 80B91C70  38 E0 00 1E */	li r7, 0x1e
/* 80B91C74  4B 5C 24 31 */	bl step__8daNpcF_cFsiii
/* 80B91C78  2C 03 00 00 */	cmpwi r3, 0
/* 80B91C7C  41 82 00 94 */	beq lbl_80B91D10
/* 80B91C80  38 00 00 00 */	li r0, 0
/* 80B91C84  B0 1D 0E 26 */	sth r0, 0xe26(r29)
/* 80B91C88  48 00 00 88 */	b lbl_80B91D10
lbl_80B91C8C:
/* 80B91C8C  80 1D 0E 2C */	lwz r0, 0xe2c(r29)
/* 80B91C90  2C 00 00 13 */	cmpwi r0, 0x13
/* 80B91C94  41 82 00 7C */	beq lbl_80B91D10
/* 80B91C98  2C 00 00 14 */	cmpwi r0, 0x14
/* 80B91C9C  41 82 00 74 */	beq lbl_80B91D10
/* 80B91CA0  7F A3 EB 78 */	mr r3, r29
/* 80B91CA4  38 80 00 0D */	li r4, 0xd
/* 80B91CA8  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91CAC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91CB0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B91CB4  7D 89 03 A6 */	mtctr r12
/* 80B91CB8  4E 80 04 21 */	bctrl 
/* 80B91CBC  7F A3 EB 78 */	mr r3, r29
/* 80B91CC0  38 80 00 0A */	li r4, 0xa
/* 80B91CC4  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91CC8  38 A0 00 00 */	li r5, 0
/* 80B91CCC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91CD0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B91CD4  7D 89 03 A6 */	mtctr r12
/* 80B91CD8  4E 80 04 21 */	bctrl 
/* 80B91CDC  48 00 00 34 */	b lbl_80B91D10
lbl_80B91CE0:
/* 80B91CE0  38 00 00 00 */	li r0, 0
/* 80B91CE4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B91CE8  7F A3 EB 78 */	mr r3, r29
/* 80B91CEC  38 80 00 02 */	li r4, 2
/* 80B91CF0  4B FF F4 4D */	bl setLookMode__11daNpc_zrC_cFi
/* 80B91CF4  7F A3 EB 78 */	mr r3, r29
/* 80B91CF8  38 80 00 11 */	li r4, 0x11
/* 80B91CFC  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91D00  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91D04  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B91D08  7D 89 03 A6 */	mtctr r12
/* 80B91D0C  4E 80 04 21 */	bctrl 
lbl_80B91D10:
/* 80B91D10  A8 1D 0E 24 */	lha r0, 0xe24(r29)
/* 80B91D14  2C 00 00 02 */	cmpwi r0, 2
/* 80B91D18  41 82 00 0C */	beq lbl_80B91D24
/* 80B91D1C  2C 00 00 03 */	cmpwi r0, 3
/* 80B91D20  40 82 02 34 */	bne lbl_80B91F54
lbl_80B91D24:
/* 80B91D24  7F A3 EB 78 */	mr r3, r29
/* 80B91D28  38 80 00 00 */	li r4, 0
/* 80B91D2C  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80B91D30  4B 5C 2C B1 */	bl chkFindPlayer2__8daNpcF_cFis
/* 80B91D34  7C 7C 1B 79 */	or. r28, r3, r3
/* 80B91D38  40 82 00 10 */	bne lbl_80B91D48
/* 80B91D3C  88 1D 0E 30 */	lbz r0, 0xe30(r29)
/* 80B91D40  28 00 00 00 */	cmplwi r0, 0
/* 80B91D44  41 82 02 10 */	beq lbl_80B91F54
lbl_80B91D48:
/* 80B91D48  7F A3 EB 78 */	mr r3, r29
/* 80B91D4C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B91D50  4B 48 89 C1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B91D54  7C 7F 1B 78 */	mr r31, r3
/* 80B91D58  2C 1C 00 00 */	cmpwi r28, 0
/* 80B91D5C  41 82 00 CC */	beq lbl_80B91E28
/* 80B91D60  88 1D 0E 30 */	lbz r0, 0xe30(r29)
/* 80B91D64  28 00 00 00 */	cmplwi r0, 0
/* 80B91D68  40 82 00 C0 */	bne lbl_80B91E28
/* 80B91D6C  7F A3 EB 78 */	mr r3, r29
/* 80B91D70  38 80 00 0E */	li r4, 0xe
/* 80B91D74  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91D78  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91D7C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B91D80  7D 89 03 A6 */	mtctr r12
/* 80B91D84  4E 80 04 21 */	bctrl 
/* 80B91D88  7F A3 EB 78 */	mr r3, r29
/* 80B91D8C  38 80 00 0B */	li r4, 0xb
/* 80B91D90  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91D94  38 A0 00 00 */	li r5, 0
/* 80B91D98  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91D9C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B91DA0  7D 89 03 A6 */	mtctr r12
/* 80B91DA4  4E 80 04 21 */	bctrl 
/* 80B91DA8  38 00 00 01 */	li r0, 1
/* 80B91DAC  98 1D 0E 30 */	stb r0, 0xe30(r29)
/* 80B91DB0  7F E3 07 34 */	extsh r3, r31
/* 80B91DB4  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B91DB8  7C 03 00 00 */	cmpw r3, r0
/* 80B91DBC  41 82 01 98 */	beq lbl_80B91F54
/* 80B91DC0  7F A3 EB 78 */	mr r3, r29
/* 80B91DC4  7F E4 FB 78 */	mr r4, r31
/* 80B91DC8  38 A0 FF FF */	li r5, -1
/* 80B91DCC  38 C0 FF FF */	li r6, -1
/* 80B91DD0  38 E0 00 1E */	li r7, 0x1e
/* 80B91DD4  4B 5C 22 D1 */	bl step__8daNpcF_cFsiii
/* 80B91DD8  2C 03 00 00 */	cmpwi r3, 0
/* 80B91DDC  41 82 01 78 */	beq lbl_80B91F54
/* 80B91DE0  7F A3 EB 78 */	mr r3, r29
/* 80B91DE4  38 80 00 11 */	li r4, 0x11
/* 80B91DE8  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91DEC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91DF0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B91DF4  7D 89 03 A6 */	mtctr r12
/* 80B91DF8  4E 80 04 21 */	bctrl 
/* 80B91DFC  7F A3 EB 78 */	mr r3, r29
/* 80B91E00  38 80 00 00 */	li r4, 0
/* 80B91E04  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91E08  38 A0 00 00 */	li r5, 0
/* 80B91E0C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91E10  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B91E14  7D 89 03 A6 */	mtctr r12
/* 80B91E18  4E 80 04 21 */	bctrl 
/* 80B91E1C  38 00 00 00 */	li r0, 0
/* 80B91E20  B0 1D 0E 26 */	sth r0, 0xe26(r29)
/* 80B91E24  48 00 01 30 */	b lbl_80B91F54
lbl_80B91E28:
/* 80B91E28  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80B91E2C  2C 00 00 00 */	cmpwi r0, 0
/* 80B91E30  41 82 00 7C */	beq lbl_80B91EAC
/* 80B91E34  38 E0 00 0F */	li r7, 0xf
/* 80B91E38  80 1D 0E 2C */	lwz r0, 0xe2c(r29)
/* 80B91E3C  2C 00 00 15 */	cmpwi r0, 0x15
/* 80B91E40  40 82 00 08 */	bne lbl_80B91E48
/* 80B91E44  38 E0 00 1E */	li r7, 0x1e
lbl_80B91E48:
/* 80B91E48  7F A3 EB 78 */	mr r3, r29
/* 80B91E4C  7F E4 FB 78 */	mr r4, r31
/* 80B91E50  38 A0 FF FF */	li r5, -1
/* 80B91E54  38 C0 FF FF */	li r6, -1
/* 80B91E58  4B 5C 22 4D */	bl step__8daNpcF_cFsiii
/* 80B91E5C  2C 03 00 00 */	cmpwi r3, 0
/* 80B91E60  41 82 00 F4 */	beq lbl_80B91F54
/* 80B91E64  7F A3 EB 78 */	mr r3, r29
/* 80B91E68  38 80 00 11 */	li r4, 0x11
/* 80B91E6C  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91E70  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91E74  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B91E78  7D 89 03 A6 */	mtctr r12
/* 80B91E7C  4E 80 04 21 */	bctrl 
/* 80B91E80  7F A3 EB 78 */	mr r3, r29
/* 80B91E84  38 80 00 00 */	li r4, 0
/* 80B91E88  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91E8C  38 A0 00 00 */	li r5, 0
/* 80B91E90  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91E94  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B91E98  7D 89 03 A6 */	mtctr r12
/* 80B91E9C  4E 80 04 21 */	bctrl 
/* 80B91EA0  38 00 00 00 */	li r0, 0
/* 80B91EA4  B0 1D 0E 26 */	sth r0, 0xe26(r29)
/* 80B91EA8  48 00 00 AC */	b lbl_80B91F54
lbl_80B91EAC:
/* 80B91EAC  88 1D 0E 30 */	lbz r0, 0xe30(r29)
/* 80B91EB0  28 00 00 00 */	cmplwi r0, 0
/* 80B91EB4  41 82 00 A0 */	beq lbl_80B91F54
/* 80B91EB8  C0 3E 04 90 */	lfs f1, 0x490(r30)
/* 80B91EBC  38 7E 00 00 */	addi r3, r30, 0
/* 80B91EC0  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80B91EC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B91EC8  FC 00 00 1E */	fctiwz f0, f0
/* 80B91ECC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B91ED0  83 81 00 34 */	lwz r28, 0x34(r1)
/* 80B91ED4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B91ED8  7C 00 F8 50 */	subf r0, r0, r31
/* 80B91EDC  7C 03 07 34 */	extsh r3, r0
/* 80B91EE0  4B 7D 31 F1 */	bl abs
/* 80B91EE4  7F 80 07 34 */	extsh r0, r28
/* 80B91EE8  7C 03 00 00 */	cmpw r3, r0
/* 80B91EEC  40 81 00 68 */	ble lbl_80B91F54
/* 80B91EF0  7F A3 EB 78 */	mr r3, r29
/* 80B91EF4  7F E4 FB 78 */	mr r4, r31
/* 80B91EF8  38 A0 00 11 */	li r5, 0x11
/* 80B91EFC  38 C0 00 0C */	li r6, 0xc
/* 80B91F00  38 E0 00 0F */	li r7, 0xf
/* 80B91F04  4B 5C 21 A1 */	bl step__8daNpcF_cFsiii
/* 80B91F08  2C 03 00 00 */	cmpwi r3, 0
/* 80B91F0C  41 82 00 48 */	beq lbl_80B91F54
/* 80B91F10  7F A3 EB 78 */	mr r3, r29
/* 80B91F14  38 80 00 11 */	li r4, 0x11
/* 80B91F18  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91F1C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91F20  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B91F24  7D 89 03 A6 */	mtctr r12
/* 80B91F28  4E 80 04 21 */	bctrl 
/* 80B91F2C  7F A3 EB 78 */	mr r3, r29
/* 80B91F30  38 80 00 00 */	li r4, 0
/* 80B91F34  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B91F38  38 A0 00 00 */	li r5, 0
/* 80B91F3C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B91F40  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B91F44  7D 89 03 A6 */	mtctr r12
/* 80B91F48  4E 80 04 21 */	bctrl 
/* 80B91F4C  38 00 00 00 */	li r0, 0
/* 80B91F50  B0 1D 0E 26 */	sth r0, 0xe26(r29)
lbl_80B91F54:
/* 80B91F54  38 60 00 01 */	li r3, 1
/* 80B91F58  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B91F5C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B91F60  39 61 00 50 */	addi r11, r1, 0x50
/* 80B91F64  4B 7D 02 C1 */	bl _restgpr_28
/* 80B91F68  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B91F6C  7C 08 03 A6 */	mtlr r0
/* 80B91F70  38 21 00 60 */	addi r1, r1, 0x60
/* 80B91F74  4E 80 00 20 */	blr 
