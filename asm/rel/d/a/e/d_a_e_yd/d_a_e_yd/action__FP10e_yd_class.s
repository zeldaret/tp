lbl_807F5B5C:
/* 807F5B5C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807F5B60  7C 08 02 A6 */	mflr r0
/* 807F5B64  90 01 00 94 */	stw r0, 0x94(r1)
/* 807F5B68  39 61 00 90 */	addi r11, r1, 0x90
/* 807F5B6C  4B B6 C6 59 */	bl _savegpr_23
/* 807F5B70  7C 7D 1B 78 */	mr r29, r3
/* 807F5B74  3C 80 80 7F */	lis r4, lit_3788@ha /* 0x807F7A00@ha */
/* 807F5B78  3B C4 7A 00 */	addi r30, r4, lit_3788@l /* 0x807F7A00@l */
/* 807F5B7C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F5B80  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F5B84  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 807F5B88  7F 64 DB 78 */	mr r4, r27
/* 807F5B8C  4B 82 4B 85 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807F5B90  B0 7D 06 88 */	sth r3, 0x688(r29)
/* 807F5B94  38 61 00 2C */	addi r3, r1, 0x2c
/* 807F5B98  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 807F5B9C  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 807F5BA0  4B A7 0F 95 */	bl __mi__4cXyzCFRC3Vec
/* 807F5BA4  38 61 00 2C */	addi r3, r1, 0x2c
/* 807F5BA8  4B B5 15 91 */	bl PSVECSquareMag
/* 807F5BAC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F5BB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F5BB4  40 81 00 58 */	ble lbl_807F5C0C
/* 807F5BB8  FC 00 08 34 */	frsqrte f0, f1
/* 807F5BBC  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807F5BC0  FC 44 00 32 */	fmul f2, f4, f0
/* 807F5BC4  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807F5BC8  FC 00 00 32 */	fmul f0, f0, f0
/* 807F5BCC  FC 01 00 32 */	fmul f0, f1, f0
/* 807F5BD0  FC 03 00 28 */	fsub f0, f3, f0
/* 807F5BD4  FC 02 00 32 */	fmul f0, f2, f0
/* 807F5BD8  FC 44 00 32 */	fmul f2, f4, f0
/* 807F5BDC  FC 00 00 32 */	fmul f0, f0, f0
/* 807F5BE0  FC 01 00 32 */	fmul f0, f1, f0
/* 807F5BE4  FC 03 00 28 */	fsub f0, f3, f0
/* 807F5BE8  FC 02 00 32 */	fmul f0, f2, f0
/* 807F5BEC  FC 44 00 32 */	fmul f2, f4, f0
/* 807F5BF0  FC 00 00 32 */	fmul f0, f0, f0
/* 807F5BF4  FC 01 00 32 */	fmul f0, f1, f0
/* 807F5BF8  FC 03 00 28 */	fsub f0, f3, f0
/* 807F5BFC  FC 02 00 32 */	fmul f0, f2, f0
/* 807F5C00  FC 21 00 32 */	fmul f1, f1, f0
/* 807F5C04  FC 20 08 18 */	frsp f1, f1
/* 807F5C08  48 00 00 88 */	b lbl_807F5C90
lbl_807F5C0C:
/* 807F5C0C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807F5C10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F5C14  40 80 00 10 */	bge lbl_807F5C24
/* 807F5C18  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807F5C1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807F5C20  48 00 00 70 */	b lbl_807F5C90
lbl_807F5C24:
/* 807F5C24  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807F5C28  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807F5C2C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807F5C30  3C 00 7F 80 */	lis r0, 0x7f80
/* 807F5C34  7C 03 00 00 */	cmpw r3, r0
/* 807F5C38  41 82 00 14 */	beq lbl_807F5C4C
/* 807F5C3C  40 80 00 40 */	bge lbl_807F5C7C
/* 807F5C40  2C 03 00 00 */	cmpwi r3, 0
/* 807F5C44  41 82 00 20 */	beq lbl_807F5C64
/* 807F5C48  48 00 00 34 */	b lbl_807F5C7C
lbl_807F5C4C:
/* 807F5C4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F5C50  41 82 00 0C */	beq lbl_807F5C5C
/* 807F5C54  38 00 00 01 */	li r0, 1
/* 807F5C58  48 00 00 28 */	b lbl_807F5C80
lbl_807F5C5C:
/* 807F5C5C  38 00 00 02 */	li r0, 2
/* 807F5C60  48 00 00 20 */	b lbl_807F5C80
lbl_807F5C64:
/* 807F5C64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F5C68  41 82 00 0C */	beq lbl_807F5C74
/* 807F5C6C  38 00 00 05 */	li r0, 5
/* 807F5C70  48 00 00 10 */	b lbl_807F5C80
lbl_807F5C74:
/* 807F5C74  38 00 00 03 */	li r0, 3
/* 807F5C78  48 00 00 08 */	b lbl_807F5C80
lbl_807F5C7C:
/* 807F5C7C  38 00 00 04 */	li r0, 4
lbl_807F5C80:
/* 807F5C80  2C 00 00 01 */	cmpwi r0, 1
/* 807F5C84  40 82 00 0C */	bne lbl_807F5C90
/* 807F5C88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807F5C8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807F5C90:
/* 807F5C90  D0 3D 06 8C */	stfs f1, 0x68c(r29)
/* 807F5C94  38 00 00 00 */	li r0, 0
/* 807F5C98  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807F5C9C  38 00 00 01 */	li r0, 1
/* 807F5CA0  98 1D 12 35 */	stb r0, 0x1235(r29)
/* 807F5CA4  7F A3 EB 78 */	mr r3, r29
/* 807F5CA8  4B FF D5 19 */	bl damage_check__FP10e_yd_class
/* 807F5CAC  A8 1D 06 A2 */	lha r0, 0x6a2(r29)
/* 807F5CB0  2C 00 00 00 */	cmpwi r0, 0
/* 807F5CB4  41 82 00 30 */	beq lbl_807F5CE4
/* 807F5CB8  88 1D 08 56 */	lbz r0, 0x856(r29)
/* 807F5CBC  7C 00 07 75 */	extsb. r0, r0
/* 807F5CC0  41 82 00 24 */	beq lbl_807F5CE4
/* 807F5CC4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807F5CC8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807F5CCC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807F5CD0  90 03 05 74 */	stw r0, 0x574(r3)
/* 807F5CD4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807F5CD8  80 03 05 70 */	lwz r0, 0x570(r3)
/* 807F5CDC  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 807F5CE0  90 03 05 70 */	stw r0, 0x570(r3)
lbl_807F5CE4:
/* 807F5CE4  3B E0 00 00 */	li r31, 0
/* 807F5CE8  3B 80 00 00 */	li r28, 0
/* 807F5CEC  3B 40 00 00 */	li r26, 0
/* 807F5CF0  80 1D 08 CC */	lwz r0, 0x8cc(r29)
/* 807F5CF4  60 00 00 01 */	ori r0, r0, 1
/* 807F5CF8  90 1D 08 CC */	stw r0, 0x8cc(r29)
/* 807F5CFC  38 00 00 00 */	li r0, 0
/* 807F5D00  98 1D 08 56 */	stb r0, 0x856(r29)
/* 807F5D04  A8 1D 06 6E */	lha r0, 0x66e(r29)
/* 807F5D08  28 00 00 08 */	cmplwi r0, 8
/* 807F5D0C  41 81 00 FC */	bgt lbl_807F5E08
/* 807F5D10  3C 60 80 7F */	lis r3, lit_5007@ha /* 0x807F7B8C@ha */
/* 807F5D14  38 63 7B 8C */	addi r3, r3, lit_5007@l /* 0x807F7B8C@l */
/* 807F5D18  54 00 10 3A */	slwi r0, r0, 2
/* 807F5D1C  7C 03 00 2E */	lwzx r0, r3, r0
/* 807F5D20  7C 09 03 A6 */	mtctr r0
/* 807F5D24  4E 80 04 20 */	bctr 
lbl_807F5D28:
/* 807F5D28  7F A3 EB 78 */	mr r3, r29
/* 807F5D2C  4B FF D7 01 */	bl e_yd_stay__FP10e_yd_class
/* 807F5D30  38 00 00 00 */	li r0, 0
/* 807F5D34  98 1D 12 35 */	stb r0, 0x1235(r29)
/* 807F5D38  48 00 00 D0 */	b lbl_807F5E08
lbl_807F5D3C:
/* 807F5D3C  7F A3 EB 78 */	mr r3, r29
/* 807F5D40  4B FF DA 45 */	bl e_yd_appear__FP10e_yd_class
/* 807F5D44  3B E0 00 01 */	li r31, 1
/* 807F5D48  3B 80 00 01 */	li r28, 1
/* 807F5D4C  38 00 00 01 */	li r0, 1
/* 807F5D50  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807F5D54  3B 40 00 01 */	li r26, 1
/* 807F5D58  48 00 00 B0 */	b lbl_807F5E08
lbl_807F5D5C:
/* 807F5D5C  7F A3 EB 78 */	mr r3, r29
/* 807F5D60  4B FF DC E5 */	bl e_yd_appear_v__FP10e_yd_class
/* 807F5D64  3B E0 00 01 */	li r31, 1
/* 807F5D68  3B 80 00 01 */	li r28, 1
/* 807F5D6C  38 00 00 01 */	li r0, 1
/* 807F5D70  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807F5D74  3B 40 00 01 */	li r26, 1
/* 807F5D78  48 00 00 90 */	b lbl_807F5E08
lbl_807F5D7C:
/* 807F5D7C  7F A3 EB 78 */	mr r3, r29
/* 807F5D80  4B FF DE 91 */	bl e_yd_wait__FP10e_yd_class
/* 807F5D84  3B E0 00 01 */	li r31, 1
/* 807F5D88  3B 80 00 01 */	li r28, 1
/* 807F5D8C  38 00 00 01 */	li r0, 1
/* 807F5D90  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807F5D94  3B 40 00 01 */	li r26, 1
/* 807F5D98  48 00 00 70 */	b lbl_807F5E08
lbl_807F5D9C:
/* 807F5D9C  7F A3 EB 78 */	mr r3, r29
/* 807F5DA0  4B FF E3 B9 */	bl e_yd_attack__FP10e_yd_class
/* 807F5DA4  3B E0 00 01 */	li r31, 1
/* 807F5DA8  3B 80 00 01 */	li r28, 1
/* 807F5DAC  38 00 00 01 */	li r0, 1
/* 807F5DB0  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807F5DB4  3B 40 00 01 */	li r26, 1
/* 807F5DB8  48 00 00 50 */	b lbl_807F5E08
lbl_807F5DBC:
/* 807F5DBC  7F A3 EB 78 */	mr r3, r29
/* 807F5DC0  4B FF ED F9 */	bl e_yd_chance__FP10e_yd_class
/* 807F5DC4  3B E0 00 01 */	li r31, 1
/* 807F5DC8  3B 80 00 01 */	li r28, 1
/* 807F5DCC  38 00 00 01 */	li r0, 1
/* 807F5DD0  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807F5DD4  3B 40 00 01 */	li r26, 1
/* 807F5DD8  48 00 00 30 */	b lbl_807F5E08
lbl_807F5DDC:
/* 807F5DDC  7F A3 EB 78 */	mr r3, r29
/* 807F5DE0  4B FF F0 D9 */	bl e_yd_s_damage__FP10e_yd_class
/* 807F5DE4  3B E0 00 01 */	li r31, 1
/* 807F5DE8  3B 80 00 01 */	li r28, 1
/* 807F5DEC  38 00 00 01 */	li r0, 1
/* 807F5DF0  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807F5DF4  3B 40 00 01 */	li r26, 1
/* 807F5DF8  48 00 00 10 */	b lbl_807F5E08
lbl_807F5DFC:
/* 807F5DFC  7F A3 EB 78 */	mr r3, r29
/* 807F5E00  4B FF F3 11 */	bl e_yd_damage__FP10e_yd_class
/* 807F5E04  3B E0 00 01 */	li r31, 1
lbl_807F5E08:
/* 807F5E08  7F 40 07 75 */	extsb. r0, r26
/* 807F5E0C  41 82 00 14 */	beq lbl_807F5E20
/* 807F5E10  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F5E14  38 80 00 01 */	li r4, 1
/* 807F5E18  4B AC BD 65 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 807F5E1C  48 00 00 10 */	b lbl_807F5E2C
lbl_807F5E20:
/* 807F5E20  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F5E24  38 80 00 00 */	li r4, 0
/* 807F5E28  4B AC BD 55 */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_807F5E2C:
/* 807F5E2C  7F E0 07 75 */	extsb. r0, r31
/* 807F5E30  41 82 00 10 */	beq lbl_807F5E40
/* 807F5E34  38 00 00 04 */	li r0, 4
/* 807F5E38  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 807F5E3C  48 00 00 18 */	b lbl_807F5E54
lbl_807F5E40:
/* 807F5E40  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 807F5E44  54 00 00 3E */	slwi r0, r0, 0
/* 807F5E48  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 807F5E4C  38 00 00 00 */	li r0, 0
/* 807F5E50  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_807F5E54:
/* 807F5E54  38 61 00 20 */	addi r3, r1, 0x20
/* 807F5E58  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807F5E5C  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 807F5E60  4B A7 0C D5 */	bl __mi__4cXyzCFRC3Vec
/* 807F5E64  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807F5E68  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807F5E6C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807F5E70  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807F5E74  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 807F5E78  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807F5E7C  38 61 00 50 */	addi r3, r1, 0x50
/* 807F5E80  4B B5 12 B9 */	bl PSVECSquareMag
/* 807F5E84  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F5E88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F5E8C  40 81 00 58 */	ble lbl_807F5EE4
/* 807F5E90  FC 00 08 34 */	frsqrte f0, f1
/* 807F5E94  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807F5E98  FC 44 00 32 */	fmul f2, f4, f0
/* 807F5E9C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807F5EA0  FC 00 00 32 */	fmul f0, f0, f0
/* 807F5EA4  FC 01 00 32 */	fmul f0, f1, f0
/* 807F5EA8  FC 03 00 28 */	fsub f0, f3, f0
/* 807F5EAC  FC 02 00 32 */	fmul f0, f2, f0
/* 807F5EB0  FC 44 00 32 */	fmul f2, f4, f0
/* 807F5EB4  FC 00 00 32 */	fmul f0, f0, f0
/* 807F5EB8  FC 01 00 32 */	fmul f0, f1, f0
/* 807F5EBC  FC 03 00 28 */	fsub f0, f3, f0
/* 807F5EC0  FC 02 00 32 */	fmul f0, f2, f0
/* 807F5EC4  FC 44 00 32 */	fmul f2, f4, f0
/* 807F5EC8  FC 00 00 32 */	fmul f0, f0, f0
/* 807F5ECC  FC 01 00 32 */	fmul f0, f1, f0
/* 807F5ED0  FC 03 00 28 */	fsub f0, f3, f0
/* 807F5ED4  FC 02 00 32 */	fmul f0, f2, f0
/* 807F5ED8  FC 21 00 32 */	fmul f1, f1, f0
/* 807F5EDC  FC 20 08 18 */	frsp f1, f1
/* 807F5EE0  48 00 00 88 */	b lbl_807F5F68
lbl_807F5EE4:
/* 807F5EE4  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807F5EE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F5EEC  40 80 00 10 */	bge lbl_807F5EFC
/* 807F5EF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807F5EF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807F5EF8  48 00 00 70 */	b lbl_807F5F68
lbl_807F5EFC:
/* 807F5EFC  D0 21 00 08 */	stfs f1, 8(r1)
/* 807F5F00  80 81 00 08 */	lwz r4, 8(r1)
/* 807F5F04  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807F5F08  3C 00 7F 80 */	lis r0, 0x7f80
/* 807F5F0C  7C 03 00 00 */	cmpw r3, r0
/* 807F5F10  41 82 00 14 */	beq lbl_807F5F24
/* 807F5F14  40 80 00 40 */	bge lbl_807F5F54
/* 807F5F18  2C 03 00 00 */	cmpwi r3, 0
/* 807F5F1C  41 82 00 20 */	beq lbl_807F5F3C
/* 807F5F20  48 00 00 34 */	b lbl_807F5F54
lbl_807F5F24:
/* 807F5F24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F5F28  41 82 00 0C */	beq lbl_807F5F34
/* 807F5F2C  38 00 00 01 */	li r0, 1
/* 807F5F30  48 00 00 28 */	b lbl_807F5F58
lbl_807F5F34:
/* 807F5F34  38 00 00 02 */	li r0, 2
/* 807F5F38  48 00 00 20 */	b lbl_807F5F58
lbl_807F5F3C:
/* 807F5F3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F5F40  41 82 00 0C */	beq lbl_807F5F4C
/* 807F5F44  38 00 00 05 */	li r0, 5
/* 807F5F48  48 00 00 10 */	b lbl_807F5F58
lbl_807F5F4C:
/* 807F5F4C  38 00 00 03 */	li r0, 3
/* 807F5F50  48 00 00 08 */	b lbl_807F5F58
lbl_807F5F54:
/* 807F5F54  38 00 00 04 */	li r0, 4
lbl_807F5F58:
/* 807F5F58  2C 00 00 01 */	cmpwi r0, 1
/* 807F5F5C  40 82 00 0C */	bne lbl_807F5F68
/* 807F5F60  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807F5F64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807F5F68:
/* 807F5F68  C0 5D 08 4C */	lfs f2, 0x84c(r29)
/* 807F5F6C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 807F5F70  EC 00 00 72 */	fmuls f0, f0, f1
/* 807F5F74  EC 02 00 32 */	fmuls f0, f2, f0
/* 807F5F78  D0 1D 08 48 */	stfs f0, 0x848(r29)
/* 807F5F7C  C0 3D 08 48 */	lfs f1, 0x848(r29)
/* 807F5F80  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 807F5F84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F5F88  40 81 00 08 */	ble lbl_807F5F90
/* 807F5F8C  D0 1D 08 48 */	stfs f0, 0x848(r29)
lbl_807F5F90:
/* 807F5F90  38 7D 08 4C */	addi r3, r29, 0x84c
/* 807F5F94  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807F5F98  FC 40 08 90 */	fmr f2, f1
/* 807F5F9C  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 807F5FA0  4B A7 9A 9D */	bl cLib_addCalc2__FPffff
/* 807F5FA4  7F A3 EB 78 */	mr r3, r29
/* 807F5FA8  4B FF F5 49 */	bl kuki_control1__FP10e_yd_class
/* 807F5FAC  7F A3 EB 78 */	mr r3, r29
/* 807F5FB0  4B FF F8 71 */	bl kuki_control2__FP10e_yd_class
/* 807F5FB4  7F A3 EB 78 */	mr r3, r29
/* 807F5FB8  4B FF F9 DD */	bl kuki_control3__FP10e_yd_class
/* 807F5FBC  7F A3 EB 78 */	mr r3, r29
/* 807F5FC0  4B FF FA B1 */	bl kuki_ha_set__FP10e_yd_class
/* 807F5FC4  80 1D 12 30 */	lwz r0, 0x1230(r29)
/* 807F5FC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807F5FCC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 807F5FD0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 807F5FD4  38 81 00 10 */	addi r4, r1, 0x10
/* 807F5FD8  4B 82 38 21 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807F5FDC  28 03 00 00 */	cmplwi r3, 0
/* 807F5FE0  41 82 00 18 */	beq lbl_807F5FF8
/* 807F5FE4  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 807F5FE8  38 80 00 00 */	li r4, 0
/* 807F5FEC  38 A0 00 00 */	li r5, 0
/* 807F5FF0  38 C0 00 00 */	li r6, 0
/* 807F5FF4  4B 81 A5 D5 */	bl play__14mDoExt_McaMorfFP3VecUlSc
lbl_807F5FF8:
/* 807F5FF8  38 7D 08 50 */	addi r3, r29, 0x850
/* 807F5FFC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807F6000  FC 40 08 90 */	fmr f2, f1
/* 807F6004  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 807F6008  4B A7 9A 35 */	bl cLib_addCalc2__FPffff
/* 807F600C  3B 3D 06 A4 */	addi r25, r29, 0x6a4
/* 807F6010  80 7D 08 44 */	lwz r3, 0x844(r29)
/* 807F6014  83 03 00 00 */	lwz r24, 0(r3)
/* 807F6018  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 807F601C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807F6020  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 807F6024  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807F6028  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 807F602C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807F6030  3B E0 00 00 */	li r31, 0
/* 807F6034  3A E0 00 00 */	li r23, 0
/* 807F6038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F603C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F6040  3B 63 23 3C */	addi r27, r3, 0x233c
lbl_807F6044:
/* 807F6044  C0 19 00 00 */	lfs f0, 0(r25)
/* 807F6048  D0 18 00 00 */	stfs f0, 0(r24)
/* 807F604C  C0 19 00 04 */	lfs f0, 4(r25)
/* 807F6050  D0 18 00 04 */	stfs f0, 4(r24)
/* 807F6054  C0 19 00 08 */	lfs f0, 8(r25)
/* 807F6058  D0 18 00 08 */	stfs f0, 8(r24)
/* 807F605C  2C 17 00 03 */	cmpwi r23, 3
/* 807F6060  41 82 00 1C */	beq lbl_807F607C
/* 807F6064  2C 17 00 05 */	cmpwi r23, 5
/* 807F6068  41 82 00 14 */	beq lbl_807F607C
/* 807F606C  2C 17 00 07 */	cmpwi r23, 7
/* 807F6070  41 82 00 0C */	beq lbl_807F607C
/* 807F6074  2C 17 00 09 */	cmpwi r23, 9
/* 807F6078  40 82 00 64 */	bne lbl_807F60DC
lbl_807F607C:
/* 807F607C  7F 80 07 75 */	extsb. r0, r28
/* 807F6080  41 82 00 28 */	beq lbl_807F60A8
/* 807F6084  3B 5F 0C 38 */	addi r26, r31, 0xc38
/* 807F6088  7F 5D D2 14 */	add r26, r29, r26
/* 807F608C  7F 43 D3 78 */	mr r3, r26
/* 807F6090  7F 24 CB 78 */	mr r4, r25
/* 807F6094  4B A7 95 B5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807F6098  7F 43 D3 78 */	mr r3, r26
/* 807F609C  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 807F60A0  4B A7 96 69 */	bl SetR__8cM3dGSphFf
/* 807F60A4  48 00 00 24 */	b lbl_807F60C8
lbl_807F60A8:
/* 807F60A8  38 61 00 14 */	addi r3, r1, 0x14
/* 807F60AC  7F 24 CB 78 */	mr r4, r25
/* 807F60B0  38 A1 00 44 */	addi r5, r1, 0x44
/* 807F60B4  4B A7 0A 31 */	bl __pl__4cXyzCFRC3Vec
/* 807F60B8  38 7F 0C 38 */	addi r3, r31, 0xc38
/* 807F60BC  7C 7D 1A 14 */	add r3, r29, r3
/* 807F60C0  38 81 00 14 */	addi r4, r1, 0x14
/* 807F60C4  4B A7 95 85 */	bl SetC__8cM3dGSphFRC4cXyz
lbl_807F60C8:
/* 807F60C8  7F 63 DB 78 */	mr r3, r27
/* 807F60CC  38 9F 0B 14 */	addi r4, r31, 0xb14
/* 807F60D0  7C 9D 22 14 */	add r4, r29, r4
/* 807F60D4  4B A6 EA D5 */	bl Set__4cCcSFP8cCcD_Obj
/* 807F60D8  3B FF 01 38 */	addi r31, r31, 0x138
lbl_807F60DC:
/* 807F60DC  3A F7 00 01 */	addi r23, r23, 1
/* 807F60E0  2C 17 00 0C */	cmpwi r23, 0xc
/* 807F60E4  3B 18 00 0C */	addi r24, r24, 0xc
/* 807F60E8  3B 39 00 0C */	addi r25, r25, 0xc
/* 807F60EC  41 80 FF 58 */	blt lbl_807F6044
/* 807F60F0  38 7D 08 58 */	addi r3, r29, 0x858
/* 807F60F4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807F60F8  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 807F60FC  4B A7 99 85 */	bl cLib_addCalc0__FPfff
/* 807F6100  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807F6104  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807F6108  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807F610C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807F6110  7F A3 EB 78 */	mr r3, r29
/* 807F6114  38 9D 05 BC */	addi r4, r29, 0x5bc
/* 807F6118  38 BD 05 38 */	addi r5, r29, 0x538
/* 807F611C  38 C1 00 38 */	addi r6, r1, 0x38
/* 807F6120  48 00 14 41 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 807F6124  39 61 00 90 */	addi r11, r1, 0x90
/* 807F6128  4B B6 C0 E9 */	bl _restgpr_23
/* 807F612C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807F6130  7C 08 03 A6 */	mtlr r0
/* 807F6134  38 21 00 90 */	addi r1, r1, 0x90
/* 807F6138  4E 80 00 20 */	blr 
