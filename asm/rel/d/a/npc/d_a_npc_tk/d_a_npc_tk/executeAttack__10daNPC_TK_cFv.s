lbl_80B03A70:
/* 80B03A70  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80B03A74  7C 08 02 A6 */	mflr r0
/* 80B03A78  90 01 01 54 */	stw r0, 0x154(r1)
/* 80B03A7C  39 61 01 50 */	addi r11, r1, 0x150
/* 80B03A80  4B 85 E7 45 */	bl _savegpr_23
/* 80B03A84  7C 7B 1B 78 */	mr r27, r3
/* 80B03A88  3C 80 80 B1 */	lis r4, lit_1109@ha /* 0x80B0C5B8@ha */
/* 80B03A8C  3B A4 C5 B8 */	addi r29, r4, lit_1109@l /* 0x80B0C5B8@l */
/* 80B03A90  3C 80 80 B1 */	lis r4, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B03A94  3B C4 C1 C4 */	addi r30, r4, lit_3999@l /* 0x80B0C1C4@l */
/* 80B03A98  38 00 00 01 */	li r0, 1
/* 80B03A9C  98 03 06 BD */	stb r0, 0x6bd(r3)
/* 80B03AA0  80 03 06 94 */	lwz r0, 0x694(r3)
/* 80B03AA4  2C 00 00 01 */	cmpwi r0, 1
/* 80B03AA8  41 82 06 24 */	beq lbl_80B040CC
/* 80B03AAC  40 80 00 10 */	bge lbl_80B03ABC
/* 80B03AB0  2C 00 00 00 */	cmpwi r0, 0
/* 80B03AB4  40 80 00 14 */	bge lbl_80B03AC8
/* 80B03AB8  48 00 0D EC */	b lbl_80B048A4
lbl_80B03ABC:
/* 80B03ABC  2C 00 00 03 */	cmpwi r0, 3
/* 80B03AC0  40 80 0D E4 */	bge lbl_80B048A4
/* 80B03AC4  48 00 0B AC */	b lbl_80B04670
lbl_80B03AC8:
/* 80B03AC8  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80B03ACC  28 00 00 02 */	cmplwi r0, 2
/* 80B03AD0  41 82 00 28 */	beq lbl_80B03AF8
/* 80B03AD4  38 80 00 02 */	li r4, 2
/* 80B03AD8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80B03ADC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80B03AE0  38 C0 00 00 */	li r6, 0
/* 80B03AE4  4B 51 7E 25 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80B03AE8  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80B03AEC  60 00 00 02 */	ori r0, r0, 2
/* 80B03AF0  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 80B03AF4  48 00 0D B0 */	b lbl_80B048A4
lbl_80B03AF8:
/* 80B03AF8  80 1B 07 DC */	lwz r0, 0x7dc(r27)
/* 80B03AFC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B03B00  90 1B 07 DC */	stw r0, 0x7dc(r27)
/* 80B03B04  80 1B 07 DC */	lwz r0, 0x7dc(r27)
/* 80B03B08  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80B03B0C  90 1B 07 DC */	stw r0, 0x7dc(r27)
/* 80B03B10  38 7B 09 C4 */	addi r3, r27, 0x9c4
/* 80B03B14  81 9B 0A 00 */	lwz r12, 0xa00(r27)
/* 80B03B18  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B03B1C  7D 89 03 A6 */	mtctr r12
/* 80B03B20  4E 80 04 21 */	bctrl 
/* 80B03B24  7F 63 DB 78 */	mr r3, r27
/* 80B03B28  38 80 00 06 */	li r4, 6
/* 80B03B2C  38 A0 00 02 */	li r5, 2
/* 80B03B30  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80B03B34  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 80B03B38  4B FF D9 61 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B03B3C  38 00 00 01 */	li r0, 1
/* 80B03B40  90 1B 06 94 */	stw r0, 0x694(r27)
/* 80B03B44  38 00 00 1E */	li r0, 0x1e
/* 80B03B48  90 1B 06 B0 */	stw r0, 0x6b0(r27)
/* 80B03B4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B03B50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B03B54  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80B03B58  A8 04 05 9C */	lha r0, 0x59c(r4)
/* 80B03B5C  7C 00 00 D0 */	neg r0, r0
/* 80B03B60  7C 1F 07 34 */	extsh r31, r0
/* 80B03B64  A8 64 04 E6 */	lha r3, 0x4e6(r4)
/* 80B03B68  A8 04 05 9E */	lha r0, 0x59e(r4)
/* 80B03B6C  7C 03 02 14 */	add r0, r3, r0
/* 80B03B70  7C 1C 07 34 */	extsh r28, r0
/* 80B03B74  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80B03B78  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80B03B7C  38 9D 00 54 */	addi r4, r29, 0x54
/* 80B03B80  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80B03B84  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B03B88  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B03B8C  38 A3 00 04 */	addi r5, r3, 4
/* 80B03B90  57 E0 04 38 */	rlwinm r0, r31, 0, 0x10, 0x1c
/* 80B03B94  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B03B98  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B03B9C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80B03BA0  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80B03BA4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80B03BA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B03BAC  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80B03BB0  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80B03BB4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B03BB8  7C 43 04 2E */	lfsx f2, r3, r0
/* 80B03BBC  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B03BC0  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B03BC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B03BC8  D0 1B 06 1C */	stfs f0, 0x61c(r27)
/* 80B03BCC  D0 3B 06 20 */	stfs f1, 0x620(r27)
/* 80B03BD0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80B03BD4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B03BD8  D0 1B 06 24 */	stfs f0, 0x624(r27)
/* 80B03BDC  38 7B 07 B0 */	addi r3, r27, 0x7b0
/* 80B03BE0  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 80B03BE4  4B 57 35 31 */	bl SetGroundUpY__9dBgS_AcchFf
/* 80B03BE8  4B 67 DA 59 */	bl dCam_getBody__Fv
/* 80B03BEC  7C 78 1B 78 */	mr r24, r3
/* 80B03BF0  4B 65 D8 E1 */	bl Stop__9dCamera_cFv
/* 80B03BF4  38 00 00 01 */	li r0, 1
/* 80B03BF8  B0 1B 07 10 */	sth r0, 0x710(r27)
/* 80B03BFC  7F 63 DB 78 */	mr r3, r27
/* 80B03C00  7F 64 DB 78 */	mr r4, r27
/* 80B03C04  48 00 68 FD */	bl setHawkCamera__10daNPC_TK_cFP10fopAc_ac_c
/* 80B03C08  38 61 00 50 */	addi r3, r1, 0x50
/* 80B03C0C  7F 04 C3 78 */	mr r4, r24
/* 80B03C10  4B 67 E2 89 */	bl Center__9dCamera_cFv
/* 80B03C14  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B03C18  D0 1B 06 FC */	stfs f0, 0x6fc(r27)
/* 80B03C1C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80B03C20  D0 1B 07 00 */	stfs f0, 0x700(r27)
/* 80B03C24  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80B03C28  D0 1B 07 04 */	stfs f0, 0x704(r27)
/* 80B03C2C  38 61 00 44 */	addi r3, r1, 0x44
/* 80B03C30  7F 04 C3 78 */	mr r4, r24
/* 80B03C34  4B 67 E2 31 */	bl Eye__9dCamera_cFv
/* 80B03C38  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B03C3C  D0 1B 06 F0 */	stfs f0, 0x6f0(r27)
/* 80B03C40  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B03C44  D0 1B 06 F4 */	stfs f0, 0x6f4(r27)
/* 80B03C48  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B03C4C  D0 1B 06 F8 */	stfs f0, 0x6f8(r27)
/* 80B03C50  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80B03C54  D0 1B 06 04 */	stfs f0, 0x604(r27)
/* 80B03C58  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80B03C5C  D0 1B 06 08 */	stfs f0, 0x608(r27)
/* 80B03C60  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80B03C64  D0 1B 06 0C */	stfs f0, 0x60c(r27)
/* 80B03C68  7F 03 C3 78 */	mr r3, r24
/* 80B03C6C  38 80 00 03 */	li r4, 3
/* 80B03C70  4B 65 F3 9D */	bl SetTrimSize__9dCamera_cFl
/* 80B03C74  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050027@ha */
/* 80B03C78  38 03 00 27 */	addi r0, r3, 0x0027 /* 0x00050027@l */
/* 80B03C7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B03C80  38 7B 05 74 */	addi r3, r27, 0x574
/* 80B03C84  38 81 00 34 */	addi r4, r1, 0x34
/* 80B03C88  38 A0 FF FF */	li r5, -1
/* 80B03C8C  81 9B 05 74 */	lwz r12, 0x574(r27)
/* 80B03C90  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B03C94  7D 89 03 A6 */	mtctr r12
/* 80B03C98  4E 80 04 21 */	bctrl 
/* 80B03C9C  38 00 00 00 */	li r0, 0
/* 80B03CA0  98 1B 07 19 */	stb r0, 0x719(r27)
/* 80B03CA4  3C 60 80 B1 */	lis r3, d_a_npc_tk__stringBase0@ha /* 0x80B0C3A0@ha */
/* 80B03CA8  38 63 C3 A0 */	addi r3, r3, d_a_npc_tk__stringBase0@l /* 0x80B0C3A0@l */
/* 80B03CAC  38 63 00 26 */	addi r3, r3, 0x26
/* 80B03CB0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B03CB4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B03CB8  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80B03CBC  4B 86 4C D9 */	bl strcmp
/* 80B03CC0  2C 03 00 00 */	cmpwi r3, 0
/* 80B03CC4  40 82 0B E0 */	bne lbl_80B048A4
/* 80B03CC8  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80B03CCC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80B03CD0  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80B03CD4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80B03CD8  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B03CDC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80B03CE0  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80B03CE4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80B03CE8  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80B03CEC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B03CF0  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80B03CF4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80B03CF8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80B03CFC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80B03D00  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B03D04  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80B03D08  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80B03D0C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B03D10  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B03D14  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80B03D18  4B 84 36 85 */	bl PSVECSquareDistance
/* 80B03D1C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B03D20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B03D24  40 81 00 58 */	ble lbl_80B03D7C
/* 80B03D28  FC 00 08 34 */	frsqrte f0, f1
/* 80B03D2C  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B03D30  FC 44 00 32 */	fmul f2, f4, f0
/* 80B03D34  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B03D38  FC 00 00 32 */	fmul f0, f0, f0
/* 80B03D3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B03D40  FC 03 00 28 */	fsub f0, f3, f0
/* 80B03D44  FC 02 00 32 */	fmul f0, f2, f0
/* 80B03D48  FC 44 00 32 */	fmul f2, f4, f0
/* 80B03D4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B03D50  FC 01 00 32 */	fmul f0, f1, f0
/* 80B03D54  FC 03 00 28 */	fsub f0, f3, f0
/* 80B03D58  FC 02 00 32 */	fmul f0, f2, f0
/* 80B03D5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B03D60  FC 00 00 32 */	fmul f0, f0, f0
/* 80B03D64  FC 01 00 32 */	fmul f0, f1, f0
/* 80B03D68  FC 03 00 28 */	fsub f0, f3, f0
/* 80B03D6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B03D70  FC 21 00 32 */	fmul f1, f1, f0
/* 80B03D74  FC 20 08 18 */	frsp f1, f1
/* 80B03D78  48 00 00 88 */	b lbl_80B03E00
lbl_80B03D7C:
/* 80B03D7C  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B03D80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B03D84  40 80 00 10 */	bge lbl_80B03D94
/* 80B03D88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B03D8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B03D90  48 00 00 70 */	b lbl_80B03E00
lbl_80B03D94:
/* 80B03D94  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80B03D98  80 81 00 30 */	lwz r4, 0x30(r1)
/* 80B03D9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B03DA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B03DA4  7C 03 00 00 */	cmpw r3, r0
/* 80B03DA8  41 82 00 14 */	beq lbl_80B03DBC
/* 80B03DAC  40 80 00 40 */	bge lbl_80B03DEC
/* 80B03DB0  2C 03 00 00 */	cmpwi r3, 0
/* 80B03DB4  41 82 00 20 */	beq lbl_80B03DD4
/* 80B03DB8  48 00 00 34 */	b lbl_80B03DEC
lbl_80B03DBC:
/* 80B03DBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B03DC0  41 82 00 0C */	beq lbl_80B03DCC
/* 80B03DC4  38 00 00 01 */	li r0, 1
/* 80B03DC8  48 00 00 28 */	b lbl_80B03DF0
lbl_80B03DCC:
/* 80B03DCC  38 00 00 02 */	li r0, 2
/* 80B03DD0  48 00 00 20 */	b lbl_80B03DF0
lbl_80B03DD4:
/* 80B03DD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B03DD8  41 82 00 0C */	beq lbl_80B03DE4
/* 80B03DDC  38 00 00 05 */	li r0, 5
/* 80B03DE0  48 00 00 10 */	b lbl_80B03DF0
lbl_80B03DE4:
/* 80B03DE4  38 00 00 03 */	li r0, 3
/* 80B03DE8  48 00 00 08 */	b lbl_80B03DF0
lbl_80B03DEC:
/* 80B03DEC  38 00 00 04 */	li r0, 4
lbl_80B03DF0:
/* 80B03DF0  2C 00 00 01 */	cmpwi r0, 1
/* 80B03DF4  40 82 00 0C */	bne lbl_80B03E00
/* 80B03DF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B03DFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B03E00:
/* 80B03E00  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80B03E04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B03E08  40 80 00 74 */	bge lbl_80B03E7C
/* 80B03E0C  2C 1C 50 00 */	cmpwi r28, 0x5000
/* 80B03E10  40 81 00 18 */	ble lbl_80B03E28
/* 80B03E14  2C 1C 68 00 */	cmpwi r28, 0x6800
/* 80B03E18  40 80 00 10 */	bge lbl_80B03E28
/* 80B03E1C  38 00 00 00 */	li r0, 0
/* 80B03E20  98 1B 07 19 */	stb r0, 0x719(r27)
/* 80B03E24  48 00 0A 80 */	b lbl_80B048A4
lbl_80B03E28:
/* 80B03E28  2C 1C 20 00 */	cmpwi r28, 0x2000
/* 80B03E2C  40 81 00 18 */	ble lbl_80B03E44
/* 80B03E30  2C 1C 50 00 */	cmpwi r28, 0x5000
/* 80B03E34  40 80 00 10 */	bge lbl_80B03E44
/* 80B03E38  38 00 00 01 */	li r0, 1
/* 80B03E3C  98 1B 07 19 */	stb r0, 0x719(r27)
/* 80B03E40  48 00 0A 64 */	b lbl_80B048A4
lbl_80B03E44:
/* 80B03E44  2C 1C A8 00 */	cmpwi r28, -22528
/* 80B03E48  40 81 00 0C */	ble lbl_80B03E54
/* 80B03E4C  2C 1C C8 00 */	cmpwi r28, -14336
/* 80B03E50  41 80 00 14 */	blt lbl_80B03E64
lbl_80B03E54:
/* 80B03E54  2C 1C A0 00 */	cmpwi r28, -24576
/* 80B03E58  41 80 00 0C */	blt lbl_80B03E64
/* 80B03E5C  2C 1C 68 00 */	cmpwi r28, 0x6800
/* 80B03E60  40 81 00 10 */	ble lbl_80B03E70
lbl_80B03E64:
/* 80B03E64  38 00 00 02 */	li r0, 2
/* 80B03E68  98 1B 07 19 */	stb r0, 0x719(r27)
/* 80B03E6C  48 00 0A 38 */	b lbl_80B048A4
lbl_80B03E70:
/* 80B03E70  38 00 00 03 */	li r0, 3
/* 80B03E74  98 1B 07 19 */	stb r0, 0x719(r27)
/* 80B03E78  48 00 0A 2C */	b lbl_80B048A4
lbl_80B03E7C:
/* 80B03E7C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B03E80  38 81 00 98 */	addi r4, r1, 0x98
/* 80B03E84  4B 84 35 19 */	bl PSVECSquareDistance
/* 80B03E88  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B03E8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B03E90  40 81 00 58 */	ble lbl_80B03EE8
/* 80B03E94  FC 00 08 34 */	frsqrte f0, f1
/* 80B03E98  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B03E9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B03EA0  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B03EA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B03EA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B03EAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B03EB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B03EB4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B03EB8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B03EBC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B03EC0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B03EC4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B03EC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B03ECC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B03ED0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B03ED4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B03ED8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B03EDC  FC 21 00 32 */	fmul f1, f1, f0
/* 80B03EE0  FC 20 08 18 */	frsp f1, f1
/* 80B03EE4  48 00 00 88 */	b lbl_80B03F6C
lbl_80B03EE8:
/* 80B03EE8  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B03EEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B03EF0  40 80 00 10 */	bge lbl_80B03F00
/* 80B03EF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B03EF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B03EFC  48 00 00 70 */	b lbl_80B03F6C
lbl_80B03F00:
/* 80B03F00  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B03F04  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80B03F08  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B03F0C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B03F10  7C 03 00 00 */	cmpw r3, r0
/* 80B03F14  41 82 00 14 */	beq lbl_80B03F28
/* 80B03F18  40 80 00 40 */	bge lbl_80B03F58
/* 80B03F1C  2C 03 00 00 */	cmpwi r3, 0
/* 80B03F20  41 82 00 20 */	beq lbl_80B03F40
/* 80B03F24  48 00 00 34 */	b lbl_80B03F58
lbl_80B03F28:
/* 80B03F28  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B03F2C  41 82 00 0C */	beq lbl_80B03F38
/* 80B03F30  38 00 00 01 */	li r0, 1
/* 80B03F34  48 00 00 28 */	b lbl_80B03F5C
lbl_80B03F38:
/* 80B03F38  38 00 00 02 */	li r0, 2
/* 80B03F3C  48 00 00 20 */	b lbl_80B03F5C
lbl_80B03F40:
/* 80B03F40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B03F44  41 82 00 0C */	beq lbl_80B03F50
/* 80B03F48  38 00 00 05 */	li r0, 5
/* 80B03F4C  48 00 00 10 */	b lbl_80B03F5C
lbl_80B03F50:
/* 80B03F50  38 00 00 03 */	li r0, 3
/* 80B03F54  48 00 00 08 */	b lbl_80B03F5C
lbl_80B03F58:
/* 80B03F58  38 00 00 04 */	li r0, 4
lbl_80B03F5C:
/* 80B03F5C  2C 00 00 01 */	cmpwi r0, 1
/* 80B03F60  40 82 00 0C */	bne lbl_80B03F6C
/* 80B03F64  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B03F68  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B03F6C:
/* 80B03F6C  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80B03F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B03F74  40 80 00 2C */	bge lbl_80B03FA0
/* 80B03F78  2C 1C 28 00 */	cmpwi r28, 0x2800
/* 80B03F7C  40 81 00 10 */	ble lbl_80B03F8C
/* 80B03F80  38 00 00 03 */	li r0, 3
/* 80B03F84  98 1B 07 19 */	stb r0, 0x719(r27)
/* 80B03F88  48 00 09 1C */	b lbl_80B048A4
lbl_80B03F8C:
/* 80B03F8C  2C 1C B0 00 */	cmpwi r28, -20480
/* 80B03F90  40 80 09 14 */	bge lbl_80B048A4
/* 80B03F94  38 00 00 02 */	li r0, 2
/* 80B03F98  98 1B 07 19 */	stb r0, 0x719(r27)
/* 80B03F9C  48 00 09 08 */	b lbl_80B048A4
lbl_80B03FA0:
/* 80B03FA0  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B03FA4  38 81 00 8C */	addi r4, r1, 0x8c
/* 80B03FA8  4B 84 33 F5 */	bl PSVECSquareDistance
/* 80B03FAC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B03FB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B03FB4  40 81 00 58 */	ble lbl_80B0400C
/* 80B03FB8  FC 00 08 34 */	frsqrte f0, f1
/* 80B03FBC  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B03FC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B03FC4  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B03FC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B03FCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B03FD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B03FD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B03FD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B03FDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B03FE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B03FE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B03FE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B03FEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B03FF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B03FF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B03FF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B03FFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B04000  FC 21 00 32 */	fmul f1, f1, f0
/* 80B04004  FC 20 08 18 */	frsp f1, f1
/* 80B04008  48 00 00 88 */	b lbl_80B04090
lbl_80B0400C:
/* 80B0400C  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B04010  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B04014  40 80 00 10 */	bge lbl_80B04024
/* 80B04018  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B0401C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B04020  48 00 00 70 */	b lbl_80B04090
lbl_80B04024:
/* 80B04024  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80B04028  80 81 00 28 */	lwz r4, 0x28(r1)
/* 80B0402C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B04030  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B04034  7C 03 00 00 */	cmpw r3, r0
/* 80B04038  41 82 00 14 */	beq lbl_80B0404C
/* 80B0403C  40 80 00 40 */	bge lbl_80B0407C
/* 80B04040  2C 03 00 00 */	cmpwi r3, 0
/* 80B04044  41 82 00 20 */	beq lbl_80B04064
/* 80B04048  48 00 00 34 */	b lbl_80B0407C
lbl_80B0404C:
/* 80B0404C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B04050  41 82 00 0C */	beq lbl_80B0405C
/* 80B04054  38 00 00 01 */	li r0, 1
/* 80B04058  48 00 00 28 */	b lbl_80B04080
lbl_80B0405C:
/* 80B0405C  38 00 00 02 */	li r0, 2
/* 80B04060  48 00 00 20 */	b lbl_80B04080
lbl_80B04064:
/* 80B04064  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B04068  41 82 00 0C */	beq lbl_80B04074
/* 80B0406C  38 00 00 05 */	li r0, 5
/* 80B04070  48 00 00 10 */	b lbl_80B04080
lbl_80B04074:
/* 80B04074  38 00 00 03 */	li r0, 3
/* 80B04078  48 00 00 08 */	b lbl_80B04080
lbl_80B0407C:
/* 80B0407C  38 00 00 04 */	li r0, 4
lbl_80B04080:
/* 80B04080  2C 00 00 01 */	cmpwi r0, 1
/* 80B04084  40 82 00 0C */	bne lbl_80B04090
/* 80B04088  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B0408C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B04090:
/* 80B04090  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80B04094  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B04098  40 80 08 0C */	bge lbl_80B048A4
/* 80B0409C  2C 1F 04 00 */	cmpwi r31, 0x400
/* 80B040A0  40 81 08 04 */	ble lbl_80B048A4
/* 80B040A4  2C 1C F0 60 */	cmpwi r28, -4000
/* 80B040A8  40 80 00 10 */	bge lbl_80B040B8
/* 80B040AC  38 00 00 03 */	li r0, 3
/* 80B040B0  98 1B 07 19 */	stb r0, 0x719(r27)
/* 80B040B4  48 00 07 F0 */	b lbl_80B048A4
lbl_80B040B8:
/* 80B040B8  2C 1C 40 00 */	cmpwi r28, 0x4000
/* 80B040BC  40 80 07 E8 */	bge lbl_80B048A4
/* 80B040C0  38 00 00 02 */	li r0, 2
/* 80B040C4  98 1B 07 19 */	stb r0, 0x719(r27)
/* 80B040C8  48 00 07 DC */	b lbl_80B048A4
lbl_80B040CC:
/* 80B040CC  80 1B 09 C4 */	lwz r0, 0x9c4(r27)
/* 80B040D0  60 00 00 01 */	ori r0, r0, 1
/* 80B040D4  90 1B 09 C4 */	stw r0, 0x9c4(r27)
/* 80B040D8  38 00 00 00 */	li r0, 0
/* 80B040DC  98 1B 0A 3B */	stb r0, 0xa3b(r27)
/* 80B040E0  38 00 00 1F */	li r0, 0x1f
/* 80B040E4  90 1B 09 C4 */	stw r0, 0x9c4(r27)
/* 80B040E8  38 7B 06 1C */	addi r3, r27, 0x61c
/* 80B040EC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B040F0  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 80B040F4  4B 76 C6 4D */	bl cLib_chaseF__FPfff
/* 80B040F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B040FC  40 82 00 38 */	bne lbl_80B04134
/* 80B04100  C0 3B 06 1C */	lfs f1, 0x61c(r27)
/* 80B04104  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B04108  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0410C  40 80 00 18 */	bge lbl_80B04124
/* 80B04110  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 80B04114  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80B04118  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B0411C  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80B04120  48 00 00 14 */	b lbl_80B04134
lbl_80B04124:
/* 80B04124  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 80B04128  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80B0412C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B04130  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
lbl_80B04134:
/* 80B04134  38 7B 06 20 */	addi r3, r27, 0x620
/* 80B04138  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B0413C  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 80B04140  4B 76 C6 01 */	bl cLib_chaseF__FPfff
/* 80B04144  2C 03 00 00 */	cmpwi r3, 0
/* 80B04148  40 82 00 38 */	bne lbl_80B04180
/* 80B0414C  C0 3B 06 20 */	lfs f1, 0x620(r27)
/* 80B04150  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B04154  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B04158  40 80 00 18 */	bge lbl_80B04170
/* 80B0415C  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80B04160  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80B04164  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B04168  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80B0416C  48 00 00 14 */	b lbl_80B04180
lbl_80B04170:
/* 80B04170  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80B04174  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80B04178  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0417C  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
lbl_80B04180:
/* 80B04180  38 7B 06 24 */	addi r3, r27, 0x624
/* 80B04184  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B04188  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 80B0418C  4B 76 C5 B5 */	bl cLib_chaseF__FPfff
/* 80B04190  2C 03 00 00 */	cmpwi r3, 0
/* 80B04194  40 82 00 38 */	bne lbl_80B041CC
/* 80B04198  C0 3B 06 24 */	lfs f1, 0x624(r27)
/* 80B0419C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B041A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B041A4  40 80 00 18 */	bge lbl_80B041BC
/* 80B041A8  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 80B041AC  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80B041B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B041B4  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80B041B8  48 00 00 14 */	b lbl_80B041CC
lbl_80B041BC:
/* 80B041BC  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 80B041C0  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80B041C4  EC 01 00 2A */	fadds f0, f1, f0
/* 80B041C8  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
lbl_80B041CC:
/* 80B041CC  38 00 00 01 */	li r0, 1
/* 80B041D0  98 1B 06 AE */	stb r0, 0x6ae(r27)
/* 80B041D4  80 1B 06 B0 */	lwz r0, 0x6b0(r27)
/* 80B041D8  2C 00 00 00 */	cmpwi r0, 0
/* 80B041DC  40 82 00 64 */	bne lbl_80B04240
/* 80B041E0  7F 63 DB 78 */	mr r3, r27
/* 80B041E4  38 80 00 08 */	li r4, 8
/* 80B041E8  4B FF D3 55 */	bl checkBck__10daNPC_TK_cFi
/* 80B041EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B041F0  40 82 00 50 */	bne lbl_80B04240
/* 80B041F4  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 80B041F8  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80B041FC  C8 3E 00 A8 */	lfd f1, 0xa8(r30)
/* 80B04200  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B04204  90 01 01 24 */	stw r0, 0x124(r1)
/* 80B04208  3C 00 43 30 */	lis r0, 0x4330
/* 80B0420C  90 01 01 20 */	stw r0, 0x120(r1)
/* 80B04210  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 80B04214  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B04218  38 63 00 0C */	addi r3, r3, 0xc
/* 80B0421C  4B 82 42 11 */	bl checkPass__12J3DFrameCtrlFf
/* 80B04220  2C 03 00 00 */	cmpwi r3, 0
/* 80B04224  41 82 00 1C */	beq lbl_80B04240
/* 80B04228  7F 63 DB 78 */	mr r3, r27
/* 80B0422C  38 80 00 08 */	li r4, 8
/* 80B04230  38 A0 00 02 */	li r5, 2
/* 80B04234  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80B04238  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B0423C  4B FF D2 5D */	bl setBck__10daNPC_TK_cFiUcff
lbl_80B04240:
/* 80B04240  38 61 00 38 */	addi r3, r1, 0x38
/* 80B04244  38 9B 06 04 */	addi r4, r27, 0x604
/* 80B04248  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80B0424C  4B 76 28 E9 */	bl __mi__4cXyzCFRC3Vec
/* 80B04250  38 61 00 38 */	addi r3, r1, 0x38
/* 80B04254  4B 84 2E E5 */	bl PSVECSquareMag
/* 80B04258  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B0425C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B04260  40 81 00 58 */	ble lbl_80B042B8
/* 80B04264  FC 00 08 34 */	frsqrte f0, f1
/* 80B04268  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B0426C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B04270  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B04274  FC 00 00 32 */	fmul f0, f0, f0
/* 80B04278  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0427C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B04280  FC 02 00 32 */	fmul f0, f2, f0
/* 80B04284  FC 44 00 32 */	fmul f2, f4, f0
/* 80B04288  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0428C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B04290  FC 03 00 28 */	fsub f0, f3, f0
/* 80B04294  FC 02 00 32 */	fmul f0, f2, f0
/* 80B04298  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0429C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B042A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B042A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B042A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B042AC  FC 21 00 32 */	fmul f1, f1, f0
/* 80B042B0  FC 20 08 18 */	frsp f1, f1
/* 80B042B4  48 00 00 88 */	b lbl_80B0433C
lbl_80B042B8:
/* 80B042B8  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B042BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B042C0  40 80 00 10 */	bge lbl_80B042D0
/* 80B042C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B042C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B042CC  48 00 00 70 */	b lbl_80B0433C
lbl_80B042D0:
/* 80B042D0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B042D4  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80B042D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B042DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B042E0  7C 03 00 00 */	cmpw r3, r0
/* 80B042E4  41 82 00 14 */	beq lbl_80B042F8
/* 80B042E8  40 80 00 40 */	bge lbl_80B04328
/* 80B042EC  2C 03 00 00 */	cmpwi r3, 0
/* 80B042F0  41 82 00 20 */	beq lbl_80B04310
/* 80B042F4  48 00 00 34 */	b lbl_80B04328
lbl_80B042F8:
/* 80B042F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B042FC  41 82 00 0C */	beq lbl_80B04308
/* 80B04300  38 00 00 01 */	li r0, 1
/* 80B04304  48 00 00 28 */	b lbl_80B0432C
lbl_80B04308:
/* 80B04308  38 00 00 02 */	li r0, 2
/* 80B0430C  48 00 00 20 */	b lbl_80B0432C
lbl_80B04310:
/* 80B04310  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B04314  41 82 00 0C */	beq lbl_80B04320
/* 80B04318  38 00 00 05 */	li r0, 5
/* 80B0431C  48 00 00 10 */	b lbl_80B0432C
lbl_80B04320:
/* 80B04320  38 00 00 03 */	li r0, 3
/* 80B04324  48 00 00 08 */	b lbl_80B0432C
lbl_80B04328:
/* 80B04328  38 00 00 04 */	li r0, 4
lbl_80B0432C:
/* 80B0432C  2C 00 00 01 */	cmpwi r0, 1
/* 80B04330  40 82 00 0C */	bne lbl_80B0433C
/* 80B04334  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B04338  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B0433C:
/* 80B0433C  88 1B 07 19 */	lbz r0, 0x719(r27)
/* 80B04340  54 00 10 3A */	slwi r0, r0, 2
/* 80B04344  3C 60 80 B1 */	lis r3, taka_attack_dist@ha /* 0x80B0C40C@ha */
/* 80B04348  38 63 C4 0C */	addi r3, r3, taka_attack_dist@l /* 0x80B0C40C@l */
/* 80B0434C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80B04350  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B04354  4C 41 13 82 */	cror 2, 1, 2
/* 80B04358  40 82 00 30 */	bne lbl_80B04388
/* 80B0435C  80 7B 07 DC */	lwz r3, 0x7dc(r27)
/* 80B04360  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80B04364  40 82 00 24 */	bne lbl_80B04388
/* 80B04368  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80B0436C  40 82 00 1C */	bne lbl_80B04388
/* 80B04370  38 00 00 02 */	li r0, 2
/* 80B04374  90 1B 06 98 */	stw r0, 0x698(r27)
/* 80B04378  7F 63 DB 78 */	mr r3, r27
/* 80B0437C  38 80 00 04 */	li r4, 4
/* 80B04380  4B FF D4 F9 */	bl setActionMode__10daNPC_TK_cFi
/* 80B04384  48 00 05 20 */	b lbl_80B048A4
lbl_80B04388:
/* 80B04388  80 7B 07 DC */	lwz r3, 0x7dc(r27)
/* 80B0438C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80B04390  41 82 00 34 */	beq lbl_80B043C4
/* 80B04394  7F 63 DB 78 */	mr r3, r27
/* 80B04398  38 80 00 00 */	li r4, 0
/* 80B0439C  4B FF DA AD */	bl setAwayAction__10daNPC_TK_cFi
/* 80B043A0  A8 7B 07 AC */	lha r3, 0x7ac(r27)
/* 80B043A4  3C 63 00 01 */	addis r3, r3, 1
/* 80B043A8  38 03 80 00 */	addi r0, r3, -32768
/* 80B043AC  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80B043B0  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80B043B4  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80B043B8  38 00 00 00 */	li r0, 0
/* 80B043BC  98 1B 06 C3 */	stb r0, 0x6c3(r27)
/* 80B043C0  48 00 00 4C */	b lbl_80B0440C
lbl_80B043C4:
/* 80B043C4  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80B043C8  41 82 00 1C */	beq lbl_80B043E4
/* 80B043CC  7F 63 DB 78 */	mr r3, r27
/* 80B043D0  38 80 00 00 */	li r4, 0
/* 80B043D4  4B FF DA 75 */	bl setAwayAction__10daNPC_TK_cFi
/* 80B043D8  38 00 00 01 */	li r0, 1
/* 80B043DC  98 1B 06 C3 */	stb r0, 0x6c3(r27)
/* 80B043E0  48 00 00 2C */	b lbl_80B0440C
lbl_80B043E4:
/* 80B043E4  7F 63 DB 78 */	mr r3, r27
/* 80B043E8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80B043EC  4B FF F5 BD */	bl checkWaterSurface__10daNPC_TK_cFf
/* 80B043F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B043F4  41 82 00 18 */	beq lbl_80B0440C
/* 80B043F8  7F 63 DB 78 */	mr r3, r27
/* 80B043FC  38 80 00 00 */	li r4, 0
/* 80B04400  4B FF DA 49 */	bl setAwayAction__10daNPC_TK_cFi
/* 80B04404  38 00 00 02 */	li r0, 2
/* 80B04408  98 1B 06 C3 */	stb r0, 0x6c3(r27)
lbl_80B0440C:
/* 80B0440C  38 7B 09 C4 */	addi r3, r27, 0x9c4
/* 80B04410  4B 57 FE B1 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80B04414  28 03 00 00 */	cmplwi r3, 0
/* 80B04418  41 82 00 38 */	beq lbl_80B04450
/* 80B0441C  38 7B 09 C4 */	addi r3, r27, 0x9c4
/* 80B04420  4B 57 FF 39 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 80B04424  4B 75 F6 25 */	bl GetAc__8cCcD_ObjFv
/* 80B04428  A8 03 00 08 */	lha r0, 8(r3)
/* 80B0442C  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80B04430  41 82 00 20 */	beq lbl_80B04450
/* 80B04434  2C 00 02 E5 */	cmpwi r0, 0x2e5
/* 80B04438  41 82 00 18 */	beq lbl_80B04450
/* 80B0443C  7F 63 DB 78 */	mr r3, r27
/* 80B04440  38 80 00 00 */	li r4, 0
/* 80B04444  4B FF DA 05 */	bl setAwayAction__10daNPC_TK_cFi
/* 80B04448  38 00 00 00 */	li r0, 0
/* 80B0444C  98 1B 06 C3 */	stb r0, 0x6c3(r27)
lbl_80B04450:
/* 80B04450  C0 1B 06 28 */	lfs f0, 0x628(r27)
/* 80B04454  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B04458  C0 7B 06 2C */	lfs f3, 0x62c(r27)
/* 80B0445C  D0 61 00 84 */	stfs f3, 0x84(r1)
/* 80B04460  C0 1B 06 30 */	lfs f0, 0x630(r27)
/* 80B04464  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80B04468  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80B0446C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B04470  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 80B04474  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80B04478  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80B0447C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B04480  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 80B04484  EC 03 08 2A */	fadds f0, f3, f1
/* 80B04488  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B0448C  EC 02 08 2A */	fadds f0, f2, f1
/* 80B04490  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B04494  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80B04498  4B 57 37 D1 */	bl __ct__11dBgS_LinChkFv
/* 80B0449C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80B044A0  38 81 00 80 */	addi r4, r1, 0x80
/* 80B044A4  38 A1 00 74 */	addi r5, r1, 0x74
/* 80B044A8  38 C0 00 00 */	li r6, 0
/* 80B044AC  4B 57 38 B9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80B044B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B044B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B044B8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80B044BC  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80B044C0  4B 56 FE F5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80B044C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B044C8  41 82 00 18 */	beq lbl_80B044E0
/* 80B044CC  7F 63 DB 78 */	mr r3, r27
/* 80B044D0  38 80 00 00 */	li r4, 0
/* 80B044D4  4B FF D9 75 */	bl setAwayAction__10daNPC_TK_cFi
/* 80B044D8  38 00 00 00 */	li r0, 0
/* 80B044DC  98 1B 06 C3 */	stb r0, 0x6c3(r27)
lbl_80B044E0:
/* 80B044E0  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80B044E4  38 80 FF FF */	li r4, -1
/* 80B044E8  4B 57 37 F5 */	bl __dt__11dBgS_LinChkFv
/* 80B044EC  38 00 20 00 */	li r0, 0x2000
/* 80B044F0  B0 1D 00 3E */	sth r0, 0x3e(r29)
/* 80B044F4  38 00 00 00 */	li r0, 0
/* 80B044F8  90 1D 00 40 */	stw r0, 0x40(r29)
/* 80B044FC  3C 60 80 B0 */	lis r3, s_obj_sub__FPvPv@ha /* 0x80B021A0@ha */
/* 80B04500  38 63 21 A0 */	addi r3, r3, s_obj_sub__FPvPv@l /* 0x80B021A0@l */
/* 80B04504  7F 64 DB 78 */	mr r4, r27
/* 80B04508  4B 51 CE 31 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80B0450C  80 1D 00 40 */	lwz r0, 0x40(r29)
/* 80B04510  90 1B 06 34 */	stw r0, 0x634(r27)
/* 80B04514  80 9B 06 34 */	lwz r4, 0x634(r27)
/* 80B04518  28 04 00 00 */	cmplwi r4, 0
/* 80B0451C  41 82 03 88 */	beq lbl_80B048A4
/* 80B04520  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B04524  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B04528  4B 84 2E 75 */	bl PSVECSquareDistance
/* 80B0452C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B04530  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B04534  40 81 00 58 */	ble lbl_80B0458C
/* 80B04538  FC 00 08 34 */	frsqrte f0, f1
/* 80B0453C  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B04540  FC 44 00 32 */	fmul f2, f4, f0
/* 80B04544  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B04548  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0454C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B04550  FC 03 00 28 */	fsub f0, f3, f0
/* 80B04554  FC 02 00 32 */	fmul f0, f2, f0
/* 80B04558  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0455C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B04560  FC 01 00 32 */	fmul f0, f1, f0
/* 80B04564  FC 03 00 28 */	fsub f0, f3, f0
/* 80B04568  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0456C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B04570  FC 00 00 32 */	fmul f0, f0, f0
/* 80B04574  FC 01 00 32 */	fmul f0, f1, f0
/* 80B04578  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0457C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B04580  FC 21 00 32 */	fmul f1, f1, f0
/* 80B04584  FC 20 08 18 */	frsp f1, f1
/* 80B04588  48 00 00 88 */	b lbl_80B04610
lbl_80B0458C:
/* 80B0458C  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B04590  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B04594  40 80 00 10 */	bge lbl_80B045A4
/* 80B04598  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B0459C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B045A0  48 00 00 70 */	b lbl_80B04610
lbl_80B045A4:
/* 80B045A4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B045A8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80B045AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B045B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B045B4  7C 03 00 00 */	cmpw r3, r0
/* 80B045B8  41 82 00 14 */	beq lbl_80B045CC
/* 80B045BC  40 80 00 40 */	bge lbl_80B045FC
/* 80B045C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B045C4  41 82 00 20 */	beq lbl_80B045E4
/* 80B045C8  48 00 00 34 */	b lbl_80B045FC
lbl_80B045CC:
/* 80B045CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B045D0  41 82 00 0C */	beq lbl_80B045DC
/* 80B045D4  38 00 00 01 */	li r0, 1
/* 80B045D8  48 00 00 28 */	b lbl_80B04600
lbl_80B045DC:
/* 80B045DC  38 00 00 02 */	li r0, 2
/* 80B045E0  48 00 00 20 */	b lbl_80B04600
lbl_80B045E4:
/* 80B045E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B045E8  41 82 00 0C */	beq lbl_80B045F4
/* 80B045EC  38 00 00 05 */	li r0, 5
/* 80B045F0  48 00 00 10 */	b lbl_80B04600
lbl_80B045F4:
/* 80B045F4  38 00 00 03 */	li r0, 3
/* 80B045F8  48 00 00 08 */	b lbl_80B04600
lbl_80B045FC:
/* 80B045FC  38 00 00 04 */	li r0, 4
lbl_80B04600:
/* 80B04600  2C 00 00 01 */	cmpwi r0, 1
/* 80B04604  40 82 00 0C */	bne lbl_80B04610
/* 80B04608  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B0460C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B04610:
/* 80B04610  38 7D 00 54 */	addi r3, r29, 0x54
/* 80B04614  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80B04618  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0461C  40 80 02 88 */	bge lbl_80B048A4
/* 80B04620  80 7B 06 34 */	lwz r3, 0x634(r27)
/* 80B04624  A8 03 00 08 */	lha r0, 8(r3)
/* 80B04628  2C 00 01 08 */	cmpwi r0, 0x108
/* 80B0462C  40 82 00 10 */	bne lbl_80B0463C
/* 80B04630  38 00 00 00 */	li r0, 0
/* 80B04634  98 1B 06 AC */	stb r0, 0x6ac(r27)
/* 80B04638  48 00 00 28 */	b lbl_80B04660
lbl_80B0463C:
/* 80B0463C  2C 00 02 FB */	cmpwi r0, 0x2fb
/* 80B04640  40 82 00 10 */	bne lbl_80B04650
/* 80B04644  38 00 00 02 */	li r0, 2
/* 80B04648  98 1B 06 AC */	stb r0, 0x6ac(r27)
/* 80B0464C  48 00 00 14 */	b lbl_80B04660
lbl_80B04650:
/* 80B04650  2C 00 02 F8 */	cmpwi r0, 0x2f8
/* 80B04654  40 82 00 0C */	bne lbl_80B04660
/* 80B04658  38 00 00 01 */	li r0, 1
/* 80B0465C  98 1B 06 AC */	stb r0, 0x6ac(r27)
lbl_80B04660:
/* 80B04660  7F 63 DB 78 */	mr r3, r27
/* 80B04664  38 80 00 05 */	li r4, 5
/* 80B04668  4B FF D2 11 */	bl setActionMode__10daNPC_TK_cFi
/* 80B0466C  48 00 02 38 */	b lbl_80B048A4
lbl_80B04670:
/* 80B04670  A8 1B 04 E4 */	lha r0, 0x4e4(r27)
/* 80B04674  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B04678  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B0467C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B04680  7C 23 04 2E */	lfsx f1, r3, r0
/* 80B04684  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80B04688  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B0468C  FC 00 02 10 */	fabs f0, f0
/* 80B04690  FC 20 00 18 */	frsp f1, f0
/* 80B04694  38 7B 07 B0 */	addi r3, r27, 0x7b0
/* 80B04698  4B 57 2A 7D */	bl SetGroundUpY__9dBgS_AcchFf
/* 80B0469C  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 80B046A0  80 63 00 04 */	lwz r3, 4(r3)
/* 80B046A4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B046A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B046AC  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 80B046B0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B046B4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B046B8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B046BC  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80B046C0  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80B046C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B046C8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B046CC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80B046D0  38 00 00 FF */	li r0, 0xff
/* 80B046D4  90 01 00 08 */	stw r0, 8(r1)
/* 80B046D8  38 80 00 00 */	li r4, 0
/* 80B046DC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80B046E0  38 00 FF FF */	li r0, -1
/* 80B046E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B046E8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B046EC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B046F0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80B046F4  80 9B 0B 3C */	lwz r4, 0xb3c(r27)
/* 80B046F8  38 A0 00 00 */	li r5, 0
/* 80B046FC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000832B@ha */
/* 80B04700  38 C6 83 2B */	addi r6, r6, 0x832B /* 0x0000832B@l */
/* 80B04704  38 E1 00 68 */	addi r7, r1, 0x68
/* 80B04708  39 1B 01 0C */	addi r8, r27, 0x10c
/* 80B0470C  39 3B 04 E4 */	addi r9, r27, 0x4e4
/* 80B04710  39 40 00 00 */	li r10, 0
/* 80B04714  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80B04718  4B 54 8D B5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B0471C  90 7B 0B 3C */	stw r3, 0xb3c(r27)
/* 80B04720  88 1B 06 C3 */	lbz r0, 0x6c3(r27)
/* 80B04724  28 00 00 01 */	cmplwi r0, 1
/* 80B04728  40 82 00 28 */	bne lbl_80B04750
/* 80B0472C  38 7B 0B 20 */	addi r3, r27, 0xb20
/* 80B04730  38 9B 0B 24 */	addi r4, r27, 0xb24
/* 80B04734  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80B04738  38 C0 00 00 */	li r6, 0
/* 80B0473C  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80B04740  38 FB 01 0C */	addi r7, r27, 0x10c
/* 80B04744  39 00 00 00 */	li r8, 0
/* 80B04748  4B 51 88 D9 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80B0474C  48 00 01 00 */	b lbl_80B0484C
lbl_80B04750:
/* 80B04750  28 00 00 02 */	cmplwi r0, 2
/* 80B04754  40 82 00 F8 */	bne lbl_80B0484C
/* 80B04758  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 80B0475C  C0 3B 06 84 */	lfs f1, 0x684(r27)
/* 80B04760  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80B04764  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B04768  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80B0476C  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80B04770  80 1B 06 B4 */	lwz r0, 0x6b4(r27)
/* 80B04774  2C 00 00 00 */	cmpwi r0, 0
/* 80B04778  40 82 00 C0 */	bne lbl_80B04838
/* 80B0477C  88 1D 00 A0 */	lbz r0, 0xa0(r29)
/* 80B04780  7C 00 07 75 */	extsb. r0, r0
/* 80B04784  40 82 00 30 */	bne lbl_80B047B4
/* 80B04788  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80B0478C  D0 1D 00 A4 */	stfs f0, 0xa4(r29)
/* 80B04790  38 7D 00 A4 */	addi r3, r29, 0xa4
/* 80B04794  D0 03 00 04 */	stfs f0, 4(r3)
/* 80B04798  D0 03 00 08 */	stfs f0, 8(r3)
/* 80B0479C  3C 80 80 B0 */	lis r4, __dt__4cXyzFv@ha /* 0x80B01678@ha */
/* 80B047A0  38 84 16 78 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B01678@l */
/* 80B047A4  38 BD 00 94 */	addi r5, r29, 0x94
/* 80B047A8  4B FF CB F1 */	bl __register_global_object
/* 80B047AC  38 00 00 01 */	li r0, 1
/* 80B047B0  98 1D 00 A0 */	stb r0, 0xa0(r29)
lbl_80B047B4:
/* 80B047B4  3A E0 00 00 */	li r23, 0
/* 80B047B8  3B 80 00 00 */	li r28, 0
/* 80B047BC  3B 40 00 00 */	li r26, 0
/* 80B047C0  3C 60 80 B1 */	lis r3, w_eff_id@ha /* 0x80B0C41C@ha */
/* 80B047C4  3B 23 C4 1C */	addi r25, r3, w_eff_id@l /* 0x80B0C41C@l */
lbl_80B047C8:
/* 80B047C8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80B047CC  38 00 00 FF */	li r0, 0xff
/* 80B047D0  90 01 00 08 */	stw r0, 8(r1)
/* 80B047D4  38 80 00 00 */	li r4, 0
/* 80B047D8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80B047DC  38 00 FF FF */	li r0, -1
/* 80B047E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B047E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B047E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B047EC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80B047F0  3B 1A 0B 28 */	addi r24, r26, 0xb28
/* 80B047F4  7C 9B C0 2E */	lwzx r4, r27, r24
/* 80B047F8  38 A0 00 00 */	li r5, 0
/* 80B047FC  7C D9 E2 2E */	lhzx r6, r25, r28
/* 80B04800  38 E1 00 5C */	addi r7, r1, 0x5c
/* 80B04804  39 1B 01 0C */	addi r8, r27, 0x10c
/* 80B04808  39 3B 04 E4 */	addi r9, r27, 0x4e4
/* 80B0480C  39 5D 00 A4 */	addi r10, r29, 0xa4
/* 80B04810  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80B04814  4B 54 8C B9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B04818  7C 7B C1 2E */	stwx r3, r27, r24
/* 80B0481C  3A F7 00 01 */	addi r23, r23, 1
/* 80B04820  2C 17 00 04 */	cmpwi r23, 4
/* 80B04824  3B 9C 00 02 */	addi r28, r28, 2
/* 80B04828  3B 5A 00 04 */	addi r26, r26, 4
/* 80B0482C  41 80 FF 9C */	blt lbl_80B047C8
/* 80B04830  38 00 00 0A */	li r0, 0xa
/* 80B04834  90 1B 06 B4 */	stw r0, 0x6b4(r27)
lbl_80B04838:
/* 80B04838  38 7B 0B 38 */	addi r3, r27, 0xb38
/* 80B0483C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80B04840  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80B04844  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 80B04848  4B 51 88 C5 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_80B0484C:
/* 80B0484C  A8 1B 04 E4 */	lha r0, 0x4e4(r27)
/* 80B04850  2C 00 E0 00 */	cmpwi r0, -8192
/* 80B04854  40 80 00 0C */	bge lbl_80B04860
/* 80B04858  38 00 E0 00 */	li r0, -8192
/* 80B0485C  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
lbl_80B04860:
/* 80B04860  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80B04864  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B04868  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B0486C  4B 76 BE D5 */	bl cLib_chaseF__FPfff
/* 80B04870  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 80B04874  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B04878  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B0487C  4B 76 BE C5 */	bl cLib_chaseF__FPfff
/* 80B04880  80 1B 06 B0 */	lwz r0, 0x6b0(r27)
/* 80B04884  2C 00 00 00 */	cmpwi r0, 0
/* 80B04888  40 82 00 1C */	bne lbl_80B048A4
/* 80B0488C  7F 63 DB 78 */	mr r3, r27
/* 80B04890  38 80 00 04 */	li r4, 4
/* 80B04894  4B FF CF E5 */	bl setActionMode__10daNPC_TK_cFi
/* 80B04898  38 7B 07 B0 */	addi r3, r27, 0x7b0
/* 80B0489C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B048A0  4B 57 28 75 */	bl SetGroundUpY__9dBgS_AcchFf
lbl_80B048A4:
/* 80B048A4  39 61 01 50 */	addi r11, r1, 0x150
/* 80B048A8  4B 85 D9 69 */	bl _restgpr_23
/* 80B048AC  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80B048B0  7C 08 03 A6 */	mtlr r0
/* 80B048B4  38 21 01 50 */	addi r1, r1, 0x150
/* 80B048B8  4E 80 00 20 */	blr 
