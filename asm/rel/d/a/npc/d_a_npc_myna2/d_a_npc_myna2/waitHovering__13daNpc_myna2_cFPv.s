lbl_80A85C60:
/* 80A85C60  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A85C64  7C 08 02 A6 */	mflr r0
/* 80A85C68  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A85C6C  39 61 00 70 */	addi r11, r1, 0x70
/* 80A85C70  4B 8D C5 69 */	bl _savegpr_28
/* 80A85C74  7C 7C 1B 78 */	mr r28, r3
/* 80A85C78  3C 80 80 A9 */	lis r4, m__19daNpc_myna2_Param_c@ha /* 0x80A88434@ha */
/* 80A85C7C  3B C4 84 34 */	addi r30, r4, m__19daNpc_myna2_Param_c@l /* 0x80A88434@l */
/* 80A85C80  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A85C84  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A85C88  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80A85C8C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A85C90  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A85C94  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A85C98  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A85C9C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A85CA0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A85CA4  A0 03 0E 0A */	lhz r0, 0xe0a(r3)
/* 80A85CA8  2C 00 00 02 */	cmpwi r0, 2
/* 80A85CAC  41 82 00 58 */	beq lbl_80A85D04
/* 80A85CB0  40 80 04 70 */	bge lbl_80A86120
/* 80A85CB4  2C 00 00 00 */	cmpwi r0, 0
/* 80A85CB8  41 82 00 0C */	beq lbl_80A85CC4
/* 80A85CBC  48 00 04 64 */	b lbl_80A86120
/* 80A85CC0  48 00 04 60 */	b lbl_80A86120
lbl_80A85CC4:
/* 80A85CC4  38 80 00 07 */	li r4, 7
/* 80A85CC8  C0 3E 01 8C */	lfs f1, 0x18c(r30)
/* 80A85CCC  38 A0 00 00 */	li r5, 0
/* 80A85CD0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A85CD4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A85CD8  7D 89 03 A6 */	mtctr r12
/* 80A85CDC  4E 80 04 21 */	bctrl 
/* 80A85CE0  7F 83 E3 78 */	mr r3, r28
/* 80A85CE4  38 80 00 00 */	li r4, 0
/* 80A85CE8  4B FF FE BD */	bl setLookMode__13daNpc_myna2_cFi
/* 80A85CEC  38 00 00 00 */	li r0, 0
/* 80A85CF0  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80A85CF4  38 00 00 01 */	li r0, 1
/* 80A85CF8  98 1C 09 EA */	stb r0, 0x9ea(r28)
/* 80A85CFC  38 00 00 02 */	li r0, 2
/* 80A85D00  B0 1C 0E 0A */	sth r0, 0xe0a(r28)
lbl_80A85D04:
/* 80A85D04  38 61 00 44 */	addi r3, r1, 0x44
/* 80A85D08  38 81 00 50 */	addi r4, r1, 0x50
/* 80A85D0C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80A85D10  4B 7E 0E 25 */	bl __mi__4cXyzCFRC3Vec
/* 80A85D14  38 61 00 44 */	addi r3, r1, 0x44
/* 80A85D18  4B 8C 14 21 */	bl PSVECSquareMag
/* 80A85D1C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80A85D20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A85D24  40 81 00 58 */	ble lbl_80A85D7C
/* 80A85D28  FC 00 08 34 */	frsqrte f0, f1
/* 80A85D2C  C8 9E 01 90 */	lfd f4, 0x190(r30)
/* 80A85D30  FC 44 00 32 */	fmul f2, f4, f0
/* 80A85D34  C8 7E 01 98 */	lfd f3, 0x198(r30)
/* 80A85D38  FC 00 00 32 */	fmul f0, f0, f0
/* 80A85D3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A85D40  FC 03 00 28 */	fsub f0, f3, f0
/* 80A85D44  FC 02 00 32 */	fmul f0, f2, f0
/* 80A85D48  FC 44 00 32 */	fmul f2, f4, f0
/* 80A85D4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A85D50  FC 01 00 32 */	fmul f0, f1, f0
/* 80A85D54  FC 03 00 28 */	fsub f0, f3, f0
/* 80A85D58  FC 02 00 32 */	fmul f0, f2, f0
/* 80A85D5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A85D60  FC 00 00 32 */	fmul f0, f0, f0
/* 80A85D64  FC 01 00 32 */	fmul f0, f1, f0
/* 80A85D68  FC 03 00 28 */	fsub f0, f3, f0
/* 80A85D6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A85D70  FC 21 00 32 */	fmul f1, f1, f0
/* 80A85D74  FC 20 08 18 */	frsp f1, f1
/* 80A85D78  48 00 00 88 */	b lbl_80A85E00
lbl_80A85D7C:
/* 80A85D7C  C8 1E 01 A0 */	lfd f0, 0x1a0(r30)
/* 80A85D80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A85D84  40 80 00 10 */	bge lbl_80A85D94
/* 80A85D88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A85D8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A85D90  48 00 00 70 */	b lbl_80A85E00
lbl_80A85D94:
/* 80A85D94  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80A85D98  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80A85D9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A85DA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A85DA4  7C 03 00 00 */	cmpw r3, r0
/* 80A85DA8  41 82 00 14 */	beq lbl_80A85DBC
/* 80A85DAC  40 80 00 40 */	bge lbl_80A85DEC
/* 80A85DB0  2C 03 00 00 */	cmpwi r3, 0
/* 80A85DB4  41 82 00 20 */	beq lbl_80A85DD4
/* 80A85DB8  48 00 00 34 */	b lbl_80A85DEC
lbl_80A85DBC:
/* 80A85DBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A85DC0  41 82 00 0C */	beq lbl_80A85DCC
/* 80A85DC4  38 00 00 01 */	li r0, 1
/* 80A85DC8  48 00 00 28 */	b lbl_80A85DF0
lbl_80A85DCC:
/* 80A85DCC  38 00 00 02 */	li r0, 2
/* 80A85DD0  48 00 00 20 */	b lbl_80A85DF0
lbl_80A85DD4:
/* 80A85DD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A85DD8  41 82 00 0C */	beq lbl_80A85DE4
/* 80A85DDC  38 00 00 05 */	li r0, 5
/* 80A85DE0  48 00 00 10 */	b lbl_80A85DF0
lbl_80A85DE4:
/* 80A85DE4  38 00 00 03 */	li r0, 3
/* 80A85DE8  48 00 00 08 */	b lbl_80A85DF0
lbl_80A85DEC:
/* 80A85DEC  38 00 00 04 */	li r0, 4
lbl_80A85DF0:
/* 80A85DF0  2C 00 00 01 */	cmpwi r0, 1
/* 80A85DF4  40 82 00 0C */	bne lbl_80A85E00
/* 80A85DF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A85DFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A85E00:
/* 80A85E00  4B 8D C2 AD */	bl __cvt_fp2unsigned
/* 80A85E04  7C 64 1B 78 */	mr r4, r3
/* 80A85E08  38 7C 0B E8 */	addi r3, r28, 0xbe8
/* 80A85E0C  4B 83 BE 19 */	bl playSumomoBgm__16Z2CreatureSumomoFUl
/* 80A85E10  7F 83 E3 78 */	mr r3, r28
/* 80A85E14  38 80 00 00 */	li r4, 0
/* 80A85E18  38 A0 00 00 */	li r5, 0
/* 80A85E1C  48 00 10 71 */	bl calcHovering__13daNpc_myna2_cFii
/* 80A85E20  38 61 00 38 */	addi r3, r1, 0x38
/* 80A85E24  38 81 00 50 */	addi r4, r1, 0x50
/* 80A85E28  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80A85E2C  4B 7E 0D 09 */	bl __mi__4cXyzCFRC3Vec
/* 80A85E30  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80A85E34  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A85E38  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80A85E3C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A85E40  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80A85E44  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A85E48  38 61 00 20 */	addi r3, r1, 0x20
/* 80A85E4C  4B 8C 12 ED */	bl PSVECSquareMag
/* 80A85E50  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80A85E54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A85E58  40 81 00 58 */	ble lbl_80A85EB0
/* 80A85E5C  FC 00 08 34 */	frsqrte f0, f1
/* 80A85E60  C8 9E 01 90 */	lfd f4, 0x190(r30)
/* 80A85E64  FC 44 00 32 */	fmul f2, f4, f0
/* 80A85E68  C8 7E 01 98 */	lfd f3, 0x198(r30)
/* 80A85E6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A85E70  FC 01 00 32 */	fmul f0, f1, f0
/* 80A85E74  FC 03 00 28 */	fsub f0, f3, f0
/* 80A85E78  FC 02 00 32 */	fmul f0, f2, f0
/* 80A85E7C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A85E80  FC 00 00 32 */	fmul f0, f0, f0
/* 80A85E84  FC 01 00 32 */	fmul f0, f1, f0
/* 80A85E88  FC 03 00 28 */	fsub f0, f3, f0
/* 80A85E8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A85E90  FC 44 00 32 */	fmul f2, f4, f0
/* 80A85E94  FC 00 00 32 */	fmul f0, f0, f0
/* 80A85E98  FC 01 00 32 */	fmul f0, f1, f0
/* 80A85E9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A85EA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A85EA4  FC 21 00 32 */	fmul f1, f1, f0
/* 80A85EA8  FC 20 08 18 */	frsp f1, f1
/* 80A85EAC  48 00 00 88 */	b lbl_80A85F34
lbl_80A85EB0:
/* 80A85EB0  C8 1E 01 A0 */	lfd f0, 0x1a0(r30)
/* 80A85EB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A85EB8  40 80 00 10 */	bge lbl_80A85EC8
/* 80A85EBC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A85EC0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A85EC4  48 00 00 70 */	b lbl_80A85F34
lbl_80A85EC8:
/* 80A85EC8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A85ECC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A85ED0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A85ED4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A85ED8  7C 03 00 00 */	cmpw r3, r0
/* 80A85EDC  41 82 00 14 */	beq lbl_80A85EF0
/* 80A85EE0  40 80 00 40 */	bge lbl_80A85F20
/* 80A85EE4  2C 03 00 00 */	cmpwi r3, 0
/* 80A85EE8  41 82 00 20 */	beq lbl_80A85F08
/* 80A85EEC  48 00 00 34 */	b lbl_80A85F20
lbl_80A85EF0:
/* 80A85EF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A85EF4  41 82 00 0C */	beq lbl_80A85F00
/* 80A85EF8  38 00 00 01 */	li r0, 1
/* 80A85EFC  48 00 00 28 */	b lbl_80A85F24
lbl_80A85F00:
/* 80A85F00  38 00 00 02 */	li r0, 2
/* 80A85F04  48 00 00 20 */	b lbl_80A85F24
lbl_80A85F08:
/* 80A85F08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A85F0C  41 82 00 0C */	beq lbl_80A85F18
/* 80A85F10  38 00 00 05 */	li r0, 5
/* 80A85F14  48 00 00 10 */	b lbl_80A85F24
lbl_80A85F18:
/* 80A85F18  38 00 00 03 */	li r0, 3
/* 80A85F1C  48 00 00 08 */	b lbl_80A85F24
lbl_80A85F20:
/* 80A85F20  38 00 00 04 */	li r0, 4
lbl_80A85F24:
/* 80A85F24  2C 00 00 01 */	cmpwi r0, 1
/* 80A85F28  40 82 00 0C */	bne lbl_80A85F34
/* 80A85F2C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A85F30  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A85F34:
/* 80A85F34  38 7E 00 00 */	addi r3, r30, 0
/* 80A85F38  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 80A85F3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A85F40  4C 41 13 82 */	cror 2, 1, 2
/* 80A85F44  40 82 00 40 */	bne lbl_80A85F84
/* 80A85F48  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80A85F4C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80A85F50  41 82 00 34 */	beq lbl_80A85F84
/* 80A85F54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A85F58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A85F5C  88 9C 0E 0D */	lbz r4, 0xe0d(r28)
/* 80A85F60  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80A85F64  7C 05 07 74 */	extsb r5, r0
/* 80A85F68  4B 5A F3 49 */	bl offSwitch__10dSv_info_cFii
/* 80A85F6C  38 60 00 4A */	li r3, 0x4a
/* 80A85F70  4B 6C F7 C5 */	bl daNpcF_offTmpBit__FUl
/* 80A85F74  7F 83 E3 78 */	mr r3, r28
/* 80A85F78  4B 59 3D 05 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80A85F7C  38 60 00 01 */	li r3, 1
/* 80A85F80  48 00 01 A4 */	b lbl_80A86124
lbl_80A85F84:
/* 80A85F84  38 60 01 1D */	li r3, 0x11d
/* 80A85F88  4B 6C F6 AD */	bl daNpcF_chkEvtBit__FUl
/* 80A85F8C  2C 03 00 00 */	cmpwi r3, 0
/* 80A85F90  40 82 01 90 */	bne lbl_80A86120
/* 80A85F94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A85F98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A85F9C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80A85FA0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80A85FA4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80A85FA8  41 82 01 78 */	beq lbl_80A86120
/* 80A85FAC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A85FB0  38 81 00 50 */	addi r4, r1, 0x50
/* 80A85FB4  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80A85FB8  4B 7E 0B 7D */	bl __mi__4cXyzCFRC3Vec
/* 80A85FBC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A85FC0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A85FC4  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80A85FC8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A85FCC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80A85FD0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A85FD4  38 61 00 14 */	addi r3, r1, 0x14
/* 80A85FD8  4B 8C 11 61 */	bl PSVECSquareMag
/* 80A85FDC  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80A85FE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A85FE4  40 81 00 58 */	ble lbl_80A8603C
/* 80A85FE8  FC 00 08 34 */	frsqrte f0, f1
/* 80A85FEC  C8 9E 01 90 */	lfd f4, 0x190(r30)
/* 80A85FF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A85FF4  C8 7E 01 98 */	lfd f3, 0x198(r30)
/* 80A85FF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A85FFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A86000  FC 03 00 28 */	fsub f0, f3, f0
/* 80A86004  FC 02 00 32 */	fmul f0, f2, f0
/* 80A86008  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8600C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A86010  FC 01 00 32 */	fmul f0, f1, f0
/* 80A86014  FC 03 00 28 */	fsub f0, f3, f0
/* 80A86018  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8601C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A86020  FC 00 00 32 */	fmul f0, f0, f0
/* 80A86024  FC 01 00 32 */	fmul f0, f1, f0
/* 80A86028  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8602C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A86030  FC 21 00 32 */	fmul f1, f1, f0
/* 80A86034  FC 20 08 18 */	frsp f1, f1
/* 80A86038  48 00 00 88 */	b lbl_80A860C0
lbl_80A8603C:
/* 80A8603C  C8 1E 01 A0 */	lfd f0, 0x1a0(r30)
/* 80A86040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A86044  40 80 00 10 */	bge lbl_80A86054
/* 80A86048  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A8604C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A86050  48 00 00 70 */	b lbl_80A860C0
lbl_80A86054:
/* 80A86054  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A86058  80 81 00 08 */	lwz r4, 8(r1)
/* 80A8605C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A86060  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A86064  7C 03 00 00 */	cmpw r3, r0
/* 80A86068  41 82 00 14 */	beq lbl_80A8607C
/* 80A8606C  40 80 00 40 */	bge lbl_80A860AC
/* 80A86070  2C 03 00 00 */	cmpwi r3, 0
/* 80A86074  41 82 00 20 */	beq lbl_80A86094
/* 80A86078  48 00 00 34 */	b lbl_80A860AC
lbl_80A8607C:
/* 80A8607C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A86080  41 82 00 0C */	beq lbl_80A8608C
/* 80A86084  38 00 00 01 */	li r0, 1
/* 80A86088  48 00 00 28 */	b lbl_80A860B0
lbl_80A8608C:
/* 80A8608C  38 00 00 02 */	li r0, 2
/* 80A86090  48 00 00 20 */	b lbl_80A860B0
lbl_80A86094:
/* 80A86094  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A86098  41 82 00 0C */	beq lbl_80A860A4
/* 80A8609C  38 00 00 05 */	li r0, 5
/* 80A860A0  48 00 00 10 */	b lbl_80A860B0
lbl_80A860A4:
/* 80A860A4  38 00 00 03 */	li r0, 3
/* 80A860A8  48 00 00 08 */	b lbl_80A860B0
lbl_80A860AC:
/* 80A860AC  38 00 00 04 */	li r0, 4
lbl_80A860B0:
/* 80A860B0  2C 00 00 01 */	cmpwi r0, 1
/* 80A860B4  40 82 00 0C */	bne lbl_80A860C0
/* 80A860B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A860BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A860C0:
/* 80A860C0  38 7E 00 00 */	addi r3, r30, 0
/* 80A860C4  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A860C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A860CC  4C 40 13 82 */	cror 2, 0, 2
/* 80A860D0  40 82 00 50 */	bne lbl_80A86120
/* 80A860D4  C0 3C 04 AC */	lfs f1, 0x4ac(r28)
/* 80A860D8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80A860DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A860E0  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 80A860E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A860E8  40 80 00 38 */	bge lbl_80A86120
/* 80A860EC  7F A3 EB 78 */	mr r3, r29
/* 80A860F0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80A860F4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80A860F8  7D 89 03 A6 */	mtctr r12
/* 80A860FC  4E 80 04 21 */	bctrl 
/* 80A86100  28 03 00 00 */	cmplwi r3, 0
/* 80A86104  40 82 00 1C */	bne lbl_80A86120
/* 80A86108  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A8610C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80A86110  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80A86114  41 82 00 0C */	beq lbl_80A86120
/* 80A86118  38 00 00 01 */	li r0, 1
/* 80A8611C  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
lbl_80A86120:
/* 80A86120  38 60 00 01 */	li r3, 1
lbl_80A86124:
/* 80A86124  39 61 00 70 */	addi r11, r1, 0x70
/* 80A86128  4B 8D C0 FD */	bl _restgpr_28
/* 80A8612C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A86130  7C 08 03 A6 */	mtlr r0
/* 80A86134  38 21 00 70 */	addi r1, r1, 0x70
/* 80A86138  4E 80 00 20 */	blr 
