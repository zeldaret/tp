lbl_80D13B58:
/* 80D13B58  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80D13B5C  7C 08 02 A6 */	mflr r0
/* 80D13B60  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80D13B64  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80D13B68  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80D13B6C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80D13B70  4B 64 E6 60 */	b _savegpr_26
/* 80D13B74  7C 7F 1B 78 */	mr r31, r3
/* 80D13B78  7C 9A 23 78 */	mr r26, r4
/* 80D13B7C  3C 60 80 D1 */	lis r3, lit_1109@ha
/* 80D13B80  3B 83 58 B8 */	addi r28, r3, lit_1109@l
/* 80D13B84  3C 60 80 D1 */	lis r3, lit_3806@ha
/* 80D13B88  3B A3 55 E8 */	addi r29, r3, lit_3806@l
/* 80D13B8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D13B90  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80D13B94  83 7E 5D AC */	lwz r27, 0x5dac(r30)
/* 80D13B98  88 1F 05 77 */	lbz r0, 0x577(r31)
/* 80D13B9C  28 00 00 01 */	cmplwi r0, 1
/* 80D13BA0  40 82 01 80 */	bne lbl_80D13D20
/* 80D13BA4  3C 60 80 D1 */	lis r3, s_bomb_sub__FPvPv@ha
/* 80D13BA8  38 63 38 70 */	addi r3, r3, s_bomb_sub__FPvPv@l
/* 80D13BAC  4B 30 D7 8C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80D13BB0  7C 65 1B 79 */	or. r5, r3, r3
/* 80D13BB4  41 82 00 3C */	beq lbl_80D13BF0
/* 80D13BB8  38 61 00 50 */	addi r3, r1, 0x50
/* 80D13BBC  38 9A 00 08 */	addi r4, r26, 8
/* 80D13BC0  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80D13BC4  4B 55 2F 70 */	b __mi__4cXyzCFRC3Vec
/* 80D13BC8  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80D13BCC  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80D13BD0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80D13BD4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80D13BD8  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 80D13BDC  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80D13BE0  4B 55 3A 94 */	b cM_atan2s__Fff
/* 80D13BE4  B0 7A 00 22 */	sth r3, 0x22(r26)
/* 80D13BE8  38 00 00 02 */	li r0, 2
/* 80D13BEC  98 1A 00 39 */	stb r0, 0x39(r26)
lbl_80D13BF0:
/* 80D13BF0  38 61 00 44 */	addi r3, r1, 0x44
/* 80D13BF4  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80D13BF8  38 BA 00 08 */	addi r5, r26, 8
/* 80D13BFC  4B 55 2F 38 */	b __mi__4cXyzCFRC3Vec
/* 80D13C00  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80D13C04  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80D13C08  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80D13C0C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80D13C10  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80D13C14  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80D13C18  38 61 00 68 */	addi r3, r1, 0x68
/* 80D13C1C  4B 63 35 1C */	b PSVECSquareMag
/* 80D13C20  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80D13C24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D13C28  40 81 00 58 */	ble lbl_80D13C80
/* 80D13C2C  FC 00 08 34 */	frsqrte f0, f1
/* 80D13C30  C8 9D 00 08 */	lfd f4, 8(r29)
/* 80D13C34  FC 44 00 32 */	fmul f2, f4, f0
/* 80D13C38  C8 7D 00 10 */	lfd f3, 0x10(r29)
/* 80D13C3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D13C40  FC 01 00 32 */	fmul f0, f1, f0
/* 80D13C44  FC 03 00 28 */	fsub f0, f3, f0
/* 80D13C48  FC 02 00 32 */	fmul f0, f2, f0
/* 80D13C4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D13C50  FC 00 00 32 */	fmul f0, f0, f0
/* 80D13C54  FC 01 00 32 */	fmul f0, f1, f0
/* 80D13C58  FC 03 00 28 */	fsub f0, f3, f0
/* 80D13C5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D13C60  FC 44 00 32 */	fmul f2, f4, f0
/* 80D13C64  FC 00 00 32 */	fmul f0, f0, f0
/* 80D13C68  FC 01 00 32 */	fmul f0, f1, f0
/* 80D13C6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D13C70  FC 02 00 32 */	fmul f0, f2, f0
/* 80D13C74  FC 21 00 32 */	fmul f1, f1, f0
/* 80D13C78  FC 20 08 18 */	frsp f1, f1
/* 80D13C7C  48 00 00 88 */	b lbl_80D13D04
lbl_80D13C80:
/* 80D13C80  C8 1D 00 18 */	lfd f0, 0x18(r29)
/* 80D13C84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D13C88  40 80 00 10 */	bge lbl_80D13C98
/* 80D13C8C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D13C90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D13C94  48 00 00 70 */	b lbl_80D13D04
lbl_80D13C98:
/* 80D13C98  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80D13C9C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80D13CA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D13CA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D13CA8  7C 03 00 00 */	cmpw r3, r0
/* 80D13CAC  41 82 00 14 */	beq lbl_80D13CC0
/* 80D13CB0  40 80 00 40 */	bge lbl_80D13CF0
/* 80D13CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80D13CB8  41 82 00 20 */	beq lbl_80D13CD8
/* 80D13CBC  48 00 00 34 */	b lbl_80D13CF0
lbl_80D13CC0:
/* 80D13CC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D13CC4  41 82 00 0C */	beq lbl_80D13CD0
/* 80D13CC8  38 00 00 01 */	li r0, 1
/* 80D13CCC  48 00 00 28 */	b lbl_80D13CF4
lbl_80D13CD0:
/* 80D13CD0  38 00 00 02 */	li r0, 2
/* 80D13CD4  48 00 00 20 */	b lbl_80D13CF4
lbl_80D13CD8:
/* 80D13CD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D13CDC  41 82 00 0C */	beq lbl_80D13CE8
/* 80D13CE0  38 00 00 05 */	li r0, 5
/* 80D13CE4  48 00 00 10 */	b lbl_80D13CF4
lbl_80D13CE8:
/* 80D13CE8  38 00 00 03 */	li r0, 3
/* 80D13CEC  48 00 00 08 */	b lbl_80D13CF4
lbl_80D13CF0:
/* 80D13CF0  38 00 00 04 */	li r0, 4
lbl_80D13CF4:
/* 80D13CF4  2C 00 00 01 */	cmpwi r0, 1
/* 80D13CF8  40 82 00 0C */	bne lbl_80D13D04
/* 80D13CFC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D13D00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D13D04:
/* 80D13D04  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80D13D08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D13D0C  40 80 00 44 */	bge lbl_80D13D50
/* 80D13D10  80 1B 05 88 */	lwz r0, 0x588(r27)
/* 80D13D14  64 00 00 20 */	oris r0, r0, 0x20
/* 80D13D18  90 1B 05 88 */	stw r0, 0x588(r27)
/* 80D13D1C  48 00 00 34 */	b lbl_80D13D50
lbl_80D13D20:
/* 80D13D20  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80D13D24  D0 1C 00 58 */	stfs f0, 0x58(r28)
/* 80D13D28  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 80D13D2C  D0 1C 00 5C */	stfs f0, 0x5c(r28)
/* 80D13D30  3C 60 80 D1 */	lis r3, s_hz_sub__FPvPv@ha
/* 80D13D34  38 63 3A BC */	addi r3, r3, s_hz_sub__FPvPv@l
/* 80D13D38  7F E4 FB 78 */	mr r4, r31
/* 80D13D3C  4B 30 D5 FC */	b fpcEx_Search__FPFPvPv_PvPv
/* 80D13D40  28 03 00 00 */	cmplwi r3, 0
/* 80D13D44  41 82 00 0C */	beq lbl_80D13D50
/* 80D13D48  38 00 00 00 */	li r0, 0
/* 80D13D4C  98 1A 00 34 */	stb r0, 0x34(r26)
lbl_80D13D50:
/* 80D13D50  88 7A 00 3A */	lbz r3, 0x3a(r26)
/* 80D13D54  7C 60 07 75 */	extsb. r0, r3
/* 80D13D58  40 82 00 80 */	bne lbl_80D13DD8
/* 80D13D5C  88 1F 05 77 */	lbz r0, 0x577(r31)
/* 80D13D60  28 00 00 01 */	cmplwi r0, 1
/* 80D13D64  40 82 00 2C */	bne lbl_80D13D90
/* 80D13D68  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80D13D6C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80D13D70  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 80D13D74  7D 89 03 A6 */	mtctr r12
/* 80D13D78  4E 80 04 21 */	bctrl 
/* 80D13D7C  2C 03 00 00 */	cmpwi r3, 0
/* 80D13D80  41 82 00 10 */	beq lbl_80D13D90
/* 80D13D84  38 00 00 14 */	li r0, 0x14
/* 80D13D88  98 1A 00 3A */	stb r0, 0x3a(r26)
/* 80D13D8C  48 00 01 E0 */	b lbl_80D13F6C
lbl_80D13D90:
/* 80D13D90  3C 60 80 D1 */	lis r3, shot_b_sub__FPvPv@ha
/* 80D13D94  38 63 3A 38 */	addi r3, r3, shot_b_sub__FPvPv@l
/* 80D13D98  7F E4 FB 78 */	mr r4, r31
/* 80D13D9C  4B 30 D5 9C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80D13DA0  7C 64 1B 79 */	or. r4, r3, r3
/* 80D13DA4  41 82 03 B8 */	beq lbl_80D1415C
/* 80D13DA8  38 61 00 38 */	addi r3, r1, 0x38
/* 80D13DAC  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80D13DB0  38 BA 00 08 */	addi r5, r26, 8
/* 80D13DB4  4B 55 2D 80 */	b __mi__4cXyzCFRC3Vec
/* 80D13DB8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80D13DBC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80D13DC0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80D13DC4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80D13DC8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80D13DCC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80D13DD0  C3 FD 00 2C */	lfs f31, 0x2c(r29)
/* 80D13DD4  48 00 01 98 */	b lbl_80D13F6C
lbl_80D13DD8:
/* 80D13DD8  38 03 FF FF */	addi r0, r3, -1
/* 80D13DDC  98 1A 00 3A */	stb r0, 0x3a(r26)
/* 80D13DE0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80D13DE4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D13DE8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D13DEC  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80D13DF0  48 00 17 C9 */	bl getLeftHandPos__9daPy_py_cCFv
/* 80D13DF4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D13DF8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80D13DFC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80D13E00  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80D13E04  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80D13E08  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80D13E0C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80D13E10  38 9A 00 08 */	addi r4, r26, 8
/* 80D13E14  7C 65 1B 78 */	mr r5, r3
/* 80D13E18  4B 63 32 9C */	b PSVECSubtract
/* 80D13E1C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80D13E20  EC 20 00 32 */	fmuls f1, f0, f0
/* 80D13E24  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80D13E28  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D13E2C  EC 21 00 2A */	fadds f1, f1, f0
/* 80D13E30  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80D13E34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D13E38  40 81 00 0C */	ble lbl_80D13E44
/* 80D13E3C  FC 00 08 34 */	frsqrte f0, f1
/* 80D13E40  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80D13E44:
/* 80D13E44  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80D13E48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D13E4C  40 80 03 10 */	bge lbl_80D1415C
/* 80D13E50  88 1A 00 3A */	lbz r0, 0x3a(r26)
/* 80D13E54  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80D13E58  40 82 00 1C */	bne lbl_80D13E74
/* 80D13E5C  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 80D13E60  4B 55 3A F4 */	b cM_rndF__Ff
/* 80D13E64  FC 00 08 1E */	fctiwz f0, f1
/* 80D13E68  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80D13E6C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80D13E70  B0 1A 00 22 */	sth r0, 0x22(r26)
lbl_80D13E74:
/* 80D13E74  88 1A 00 3A */	lbz r0, 0x3a(r26)
/* 80D13E78  2C 00 00 13 */	cmpwi r0, 0x13
/* 80D13E7C  40 82 00 D8 */	bne lbl_80D13F54
/* 80D13E80  C0 1A 00 30 */	lfs f0, 0x30(r26)
/* 80D13E84  88 1C 00 6C */	lbz r0, 0x6c(r28)
/* 80D13E88  7C 00 07 75 */	extsb. r0, r0
/* 80D13E8C  40 82 00 2C */	bne lbl_80D13EB8
/* 80D13E90  D0 1C 00 70 */	stfs f0, 0x70(r28)
/* 80D13E94  38 7C 00 70 */	addi r3, r28, 0x70
/* 80D13E98  D0 03 00 04 */	stfs f0, 4(r3)
/* 80D13E9C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80D13EA0  3C 80 80 D1 */	lis r4, __dt__4cXyzFv@ha
/* 80D13EA4  38 84 39 FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80D13EA8  38 BC 00 60 */	addi r5, r28, 0x60
/* 80D13EAC  4B FF F8 6D */	bl __register_global_object
/* 80D13EB0  38 00 00 01 */	li r0, 1
/* 80D13EB4  98 1C 00 6C */	stb r0, 0x6c(r28)
lbl_80D13EB8:
/* 80D13EB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D13EBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D13EC0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D13EC4  38 80 00 00 */	li r4, 0
/* 80D13EC8  90 81 00 08 */	stw r4, 8(r1)
/* 80D13ECC  38 00 FF FF */	li r0, -1
/* 80D13ED0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D13ED4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D13ED8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D13EDC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D13EE0  38 80 00 00 */	li r4, 0
/* 80D13EE4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008272@ha */
/* 80D13EE8  38 A5 82 72 */	addi r5, r5, 0x8272 /* 0x00008272@l */
/* 80D13EEC  38 DA 00 08 */	addi r6, r26, 8
/* 80D13EF0  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80D13EF4  39 1B 04 E4 */	addi r8, r27, 0x4e4
/* 80D13EF8  39 3C 00 70 */	addi r9, r28, 0x70
/* 80D13EFC  39 40 00 FF */	li r10, 0xff
/* 80D13F00  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80D13F04  4B 33 8B 8C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D13F08  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D13F0C  7C 03 07 74 */	extsb r3, r0
/* 80D13F10  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800BA@ha */
/* 80D13F14  38 04 00 BA */	addi r0, r4, 0x00BA /* 0x000800BA@l */
/* 80D13F18  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D13F1C  3C 80 80 45 */	lis r4, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D13F20  83 64 13 68 */	lwz r27, mAudioMgrPtr__10Z2AudioMgr@l(r4)
/* 80D13F24  4B 31 91 48 */	b dComIfGp_getReverb__Fi
/* 80D13F28  7C 67 1B 78 */	mr r7, r3
/* 80D13F2C  7F 63 DB 78 */	mr r3, r27
/* 80D13F30  38 81 00 28 */	addi r4, r1, 0x28
/* 80D13F34  38 BA 00 08 */	addi r5, r26, 8
/* 80D13F38  38 C0 00 00 */	li r6, 0
/* 80D13F3C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80D13F40  FC 40 08 90 */	fmr f2, f1
/* 80D13F44  C0 7D 00 38 */	lfs f3, 0x38(r29)
/* 80D13F48  FC 80 18 90 */	fmr f4, f3
/* 80D13F4C  39 00 00 00 */	li r8, 0
/* 80D13F50  4B 59 7A 34 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D13F54:
/* 80D13F54  88 1A 00 3A */	lbz r0, 0x3a(r26)
/* 80D13F58  7C 00 07 75 */	extsb. r0, r0
/* 80D13F5C  40 82 02 00 */	bne lbl_80D1415C
/* 80D13F60  38 00 00 00 */	li r0, 0
/* 80D13F64  98 1A 00 34 */	stb r0, 0x34(r26)
/* 80D13F68  48 00 01 F4 */	b lbl_80D1415C
lbl_80D13F6C:
/* 80D13F6C  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80D13F70  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80D13F74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D13F78  40 81 01 E4 */	ble lbl_80D1415C
/* 80D13F7C  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80D13F80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D13F84  40 80 01 D8 */	bge lbl_80D1415C
/* 80D13F88  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80D13F8C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80D13F90  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80D13F94  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D13F98  EC 21 00 2A */	fadds f1, f1, f0
/* 80D13F9C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80D13FA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D13FA4  40 81 00 0C */	ble lbl_80D13FB0
/* 80D13FA8  FC 00 08 34 */	frsqrte f0, f1
/* 80D13FAC  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80D13FB0:
/* 80D13FB0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80D13FB4  40 80 01 A8 */	bge lbl_80D1415C
/* 80D13FB8  88 1F 05 77 */	lbz r0, 0x577(r31)
/* 80D13FBC  28 00 00 01 */	cmplwi r0, 1
/* 80D13FC0  40 82 00 74 */	bne lbl_80D14034
/* 80D13FC4  88 9F 05 78 */	lbz r4, 0x578(r31)
/* 80D13FC8  28 04 00 FF */	cmplwi r4, 0xff
/* 80D13FCC  41 82 00 5C */	beq lbl_80D14028
/* 80D13FD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D13FD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D13FD8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D13FDC  7C 05 07 74 */	extsb r5, r0
/* 80D13FE0  4B 32 12 20 */	b onSwitch__10dSv_info_cFii
/* 80D13FE4  38 C0 00 00 */	li r6, 0
/* 80D13FE8  38 60 00 00 */	li r3, 0
/* 80D13FEC  38 80 00 01 */	li r4, 1
/* 80D13FF0  48 00 00 20 */	b lbl_80D14010
lbl_80D13FF4:
/* 80D13FF4  7C BF 1A 14 */	add r5, r31, r3
/* 80D13FF8  88 05 05 C0 */	lbz r0, 0x5c0(r5)
/* 80D13FFC  7C 00 07 75 */	extsb. r0, r0
/* 80D14000  41 82 00 08 */	beq lbl_80D14008
/* 80D14004  98 85 05 C5 */	stb r4, 0x5c5(r5)
lbl_80D14008:
/* 80D14008  38 C6 00 01 */	addi r6, r6, 1
/* 80D1400C  38 63 00 78 */	addi r3, r3, 0x78
lbl_80D14010:
/* 80D14010  80 1F 63 4C */	lwz r0, 0x634c(r31)
/* 80D14014  7C 06 00 00 */	cmpw r6, r0
/* 80D14018  41 80 FF DC */	blt lbl_80D13FF4
/* 80D1401C  38 00 00 01 */	li r0, 1
/* 80D14020  B0 1F 63 50 */	sth r0, 0x6350(r31)
/* 80D14024  48 00 01 38 */	b lbl_80D1415C
lbl_80D14028:
/* 80D14028  38 00 00 01 */	li r0, 1
/* 80D1402C  98 1A 00 39 */	stb r0, 0x39(r26)
/* 80D14030  48 00 01 2C */	b lbl_80D1415C
lbl_80D14034:
/* 80D14034  38 00 00 02 */	li r0, 2
/* 80D14038  98 1A 00 34 */	stb r0, 0x34(r26)
/* 80D1403C  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 80D14040  4B 55 39 14 */	b cM_rndF__Ff
/* 80D14044  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 80D14048  EC 00 08 2A */	fadds f0, f0, f1
/* 80D1404C  FC 00 00 1E */	fctiwz f0, f0
/* 80D14050  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80D14054  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80D14058  98 1A 00 38 */	stb r0, 0x38(r26)
/* 80D1405C  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80D14060  4B 55 38 F4 */	b cM_rndF__Ff
/* 80D14064  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80D14068  EC 00 08 2A */	fadds f0, f0, f1
/* 80D1406C  FC 00 00 50 */	fneg f0, f0
/* 80D14070  FC 00 00 1E */	fctiwz f0, f0
/* 80D14074  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 80D14078  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80D1407C  B0 1A 00 28 */	sth r0, 0x28(r26)
/* 80D14080  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 80D14084  4B 55 39 08 */	b cM_rndFX__Ff
/* 80D14088  FC 00 08 1E */	fctiwz f0, f1
/* 80D1408C  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 80D14090  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80D14094  B0 1A 00 26 */	sth r0, 0x26(r26)
/* 80D14098  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 80D1409C  4B 55 38 F0 */	b cM_rndFX__Ff
/* 80D140A0  FC 00 08 1E */	fctiwz f0, f1
/* 80D140A4  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 80D140A8  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 80D140AC  B0 1A 00 2A */	sth r0, 0x2a(r26)
/* 80D140B0  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 80D140B4  4B 55 38 D8 */	b cM_rndFX__Ff
/* 80D140B8  D0 3A 00 14 */	stfs f1, 0x14(r26)
/* 80D140BC  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80D140C0  4B 55 38 94 */	b cM_rndF__Ff
/* 80D140C4  D0 3A 00 18 */	stfs f1, 0x18(r26)
/* 80D140C8  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 80D140CC  4B 55 38 C0 */	b cM_rndFX__Ff
/* 80D140D0  D0 3A 00 1C */	stfs f1, 0x1c(r26)
/* 80D140D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D140D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D140DC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D140E0  80 9A 00 70 */	lwz r4, 0x70(r26)
/* 80D140E4  4B 36 01 6C */	b Release__4cBgSFP9dBgW_Base
/* 80D140E8  38 00 00 00 */	li r0, 0
/* 80D140EC  90 1A 00 70 */	stw r0, 0x70(r26)
/* 80D140F0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D140F4  7C 03 07 74 */	extsb r3, r0
/* 80D140F8  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800AC@ha */
/* 80D140FC  38 04 00 AC */	addi r0, r4, 0x00AC /* 0x000800AC@l */
/* 80D14100  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D14104  3C 80 80 45 */	lis r4, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D14108  83 64 13 68 */	lwz r27, mAudioMgrPtr__10Z2AudioMgr@l(r4)
/* 80D1410C  4B 31 8F 60 */	b dComIfGp_getReverb__Fi
/* 80D14110  7C 67 1B 78 */	mr r7, r3
/* 80D14114  7F 63 DB 78 */	mr r3, r27
/* 80D14118  38 81 00 24 */	addi r4, r1, 0x24
/* 80D1411C  38 BA 00 08 */	addi r5, r26, 8
/* 80D14120  38 C0 00 00 */	li r6, 0
/* 80D14124  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80D14128  FC 40 08 90 */	fmr f2, f1
/* 80D1412C  C0 7D 00 38 */	lfs f3, 0x38(r29)
/* 80D14130  FC 80 18 90 */	fmr f4, f3
/* 80D14134  39 00 00 00 */	li r8, 0
/* 80D14138  4B 59 78 4C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D1413C  88 9F 05 78 */	lbz r4, 0x578(r31)
/* 80D14140  28 04 00 FF */	cmplwi r4, 0xff
/* 80D14144  41 82 00 18 */	beq lbl_80D1415C
/* 80D14148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1414C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D14150  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D14154  7C 05 07 74 */	extsb r5, r0
/* 80D14158  4B 32 10 A8 */	b onSwitch__10dSv_info_cFii
lbl_80D1415C:
/* 80D1415C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80D14160  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80D14164  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80D14168  4B 64 E0 B4 */	b _restgpr_26
/* 80D1416C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80D14170  7C 08 03 A6 */	mtlr r0
/* 80D14174  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80D14178  4E 80 00 20 */	blr 
