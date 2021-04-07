lbl_80058B8C:
/* 80058B8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80058B90  7C 08 02 A6 */	mflr r0
/* 80058B94  90 01 00 34 */	stw r0, 0x34(r1)
/* 80058B98  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80058B9C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80058BA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80058BA4  48 30 96 39 */	bl _savegpr_29
/* 80058BA8  3B C0 00 00 */	li r30, 0
/* 80058BAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80058BB0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80058BB4  3B FD 4E 00 */	addi r31, r29, 0x4e00
/* 80058BB8  7F E3 FB 78 */	mr r3, r31
/* 80058BBC  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058BC0  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058BC4  38 84 00 17 */	addi r4, r4, 0x17
/* 80058BC8  48 30 FD CD */	bl strcmp
/* 80058BCC  2C 03 00 00 */	cmpwi r3, 0
/* 80058BD0  41 82 03 28 */	beq lbl_80058EF8
/* 80058BD4  7F E3 FB 78 */	mr r3, r31
/* 80058BD8  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058BDC  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058BE0  38 84 00 1E */	addi r4, r4, 0x1e
/* 80058BE4  48 30 FD B1 */	bl strcmp
/* 80058BE8  2C 03 00 00 */	cmpwi r3, 0
/* 80058BEC  40 82 00 08 */	bne lbl_80058BF4
/* 80058BF0  48 00 03 08 */	b lbl_80058EF8
lbl_80058BF4:
/* 80058BF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80058BF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80058BFC  A0 03 5D 46 */	lhz r0, 0x5d46(r3)
/* 80058C00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80058C04  41 82 00 18 */	beq lbl_80058C1C
/* 80058C08  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058C0C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80058C10  88 03 12 D4 */	lbz r0, 0x12d4(r3)
/* 80058C14  28 00 00 00 */	cmplwi r0, 0
/* 80058C18  41 82 00 20 */	beq lbl_80058C38
lbl_80058C1C:
/* 80058C1C  7F E3 FB 78 */	mr r3, r31
/* 80058C20  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058C24  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058C28  38 84 00 0F */	addi r4, r4, 0xf
/* 80058C2C  48 30 FD 69 */	bl strcmp
/* 80058C30  2C 03 00 00 */	cmpwi r3, 0
/* 80058C34  40 82 02 C4 */	bne lbl_80058EF8
lbl_80058C38:
/* 80058C38  38 7D 4E 20 */	addi r3, r29, 0x4e20
/* 80058C3C  81 9D 4E 20 */	lwz r12, 0x4e20(r29)
/* 80058C40  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80058C44  7D 89 03 A6 */	mtctr r12
/* 80058C48  4E 80 04 21 */	bctrl 
/* 80058C4C  28 03 00 00 */	cmplwi r3, 0
/* 80058C50  41 82 00 30 */	beq lbl_80058C80
/* 80058C54  80 03 00 00 */	lwz r0, 0(r3)
/* 80058C58  88 8D 87 E4 */	lbz r4, struct_80450D64+0x0(r13)
/* 80058C5C  7C 84 07 74 */	extsb r4, r4
/* 80058C60  7C 00 20 00 */	cmpw r0, r4
/* 80058C64  40 81 00 1C */	ble lbl_80058C80
/* 80058C68  80 63 00 04 */	lwz r3, 4(r3)
/* 80058C6C  54 80 10 3A */	slwi r0, r4, 2
/* 80058C70  7C 63 00 2E */	lwzx r3, r3, r0
/* 80058C74  88 03 00 02 */	lbz r0, 2(r3)
/* 80058C78  54 00 07 38 */	rlwinm r0, r0, 0, 0x1c, 0x1c
/* 80058C7C  7C 1E 03 78 */	mr r30, r0
lbl_80058C80:
/* 80058C80  7F E3 FB 78 */	mr r3, r31
/* 80058C84  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058C88  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058C8C  38 84 00 0F */	addi r4, r4, 0xf
/* 80058C90  48 30 FD 05 */	bl strcmp
/* 80058C94  2C 03 00 00 */	cmpwi r3, 0
/* 80058C98  40 82 00 08 */	bne lbl_80058CA0
/* 80058C9C  3B C0 00 01 */	li r30, 1
lbl_80058CA0:
/* 80058CA0  2C 1E 00 00 */	cmpwi r30, 0
/* 80058CA4  41 82 02 54 */	beq lbl_80058EF8
/* 80058CA8  48 15 38 D5 */	bl dKy_darkworld_check__Fv
/* 80058CAC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80058CB0  28 00 00 01 */	cmplwi r0, 1
/* 80058CB4  41 82 02 44 */	beq lbl_80058EF8
/* 80058CB8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058CBC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80058CC0  48 14 6D 49 */	bl getDaytime__18dScnKy_env_light_cFv
/* 80058CC4  C0 82 87 00 */	lfs f4, lit_4761(r2)
/* 80058CC8  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 80058CCC  4C 41 13 82 */	cror 2, 1, 2
/* 80058CD0  41 82 00 10 */	beq lbl_80058CE0
/* 80058CD4  C0 02 87 04 */	lfs f0, lit_4762(r2)
/* 80058CD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80058CDC  40 80 00 0C */	bge lbl_80058CE8
lbl_80058CE0:
/* 80058CE0  C3 E2 86 E4 */	lfs f31, lit_4379(r2)
/* 80058CE4  48 00 00 48 */	b lbl_80058D2C
lbl_80058CE8:
/* 80058CE8  C0 02 87 08 */	lfs f0, lit_4763(r2)
/* 80058CEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80058CF0  40 81 00 1C */	ble lbl_80058D0C
/* 80058CF4  C0 62 86 E4 */	lfs f3, lit_4379(r2)
/* 80058CF8  C0 42 87 0C */	lfs f2, lit_4764(r2)
/* 80058CFC  EC 04 08 28 */	fsubs f0, f4, f1
/* 80058D00  EC 02 00 32 */	fmuls f0, f2, f0
/* 80058D04  EF E3 00 28 */	fsubs f31, f3, f0
/* 80058D08  48 00 00 24 */	b lbl_80058D2C
lbl_80058D0C:
/* 80058D0C  C0 02 87 10 */	lfs f0, lit_4765(r2)
/* 80058D10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80058D14  40 80 00 14 */	bge lbl_80058D28
/* 80058D18  C0 42 87 14 */	lfs f2, lit_4766(r2)
/* 80058D1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80058D20  EF E2 00 32 */	fmuls f31, f2, f0
/* 80058D24  48 00 00 08 */	b lbl_80058D2C
lbl_80058D28:
/* 80058D28  C3 E2 86 E0 */	lfs f31, lit_4378(r2)
lbl_80058D2C:
/* 80058D2C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058D30  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80058D34  88 03 12 C8 */	lbz r0, 0x12c8(r3)
/* 80058D38  28 00 00 00 */	cmplwi r0, 0
/* 80058D3C  41 82 00 08 */	beq lbl_80058D44
/* 80058D40  C3 E2 86 E0 */	lfs f31, lit_4378(r2)
lbl_80058D44:
/* 80058D44  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058D48  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80058D4C  88 03 12 C3 */	lbz r0, 0x12c3(r3)
/* 80058D50  28 00 00 00 */	cmplwi r0, 0
/* 80058D54  41 82 00 18 */	beq lbl_80058D6C
/* 80058D58  C0 23 11 DC */	lfs f1, 0x11dc(r3)
/* 80058D5C  C0 02 87 18 */	lfs f0, lit_4767(r2)
/* 80058D60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80058D64  40 81 00 08 */	ble lbl_80058D6C
/* 80058D68  C3 E2 86 E0 */	lfs f31, lit_4378(r2)
lbl_80058D6C:
/* 80058D6C  7F E3 FB 78 */	mr r3, r31
/* 80058D70  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058D74  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058D78  38 84 00 0F */	addi r4, r4, 0xf
/* 80058D7C  48 30 FC 19 */	bl strcmp
/* 80058D80  2C 03 00 00 */	cmpwi r3, 0
/* 80058D84  40 82 00 08 */	bne lbl_80058D8C
/* 80058D88  C3 E2 86 E4 */	lfs f31, lit_4379(r2)
lbl_80058D8C:
/* 80058D8C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058D90  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80058D94  3B C3 0E A0 */	addi r30, r3, 0xea0
/* 80058D98  7F C3 F3 78 */	mr r3, r30
/* 80058D9C  FC 20 F8 90 */	fmr f1, f31
/* 80058DA0  C0 42 87 1C */	lfs f2, lit_4768(r2)
/* 80058DA4  C0 62 87 20 */	lfs f3, lit_4769(r2)
/* 80058DA8  C0 82 87 24 */	lfs f4, lit_4770(r2)
/* 80058DAC  48 21 6B D1 */	bl cLib_addCalc__FPfffff
/* 80058DB0  C0 22 87 28 */	lfs f1, lit_4771(r2)
/* 80058DB4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80058DB8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80058DBC  FC 00 00 1E */	fctiwz f0, f0
/* 80058DC0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80058DC4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80058DC8  7C 00 07 34 */	extsh r0, r0
/* 80058DCC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058DD0  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
/* 80058DD4  90 1D 0E 9C */	stw r0, 0xe9c(r29)
/* 80058DD8  7F E3 FB 78 */	mr r3, r31
/* 80058DDC  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058DE0  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058DE4  38 84 00 91 */	addi r4, r4, 0x91
/* 80058DE8  48 30 FB AD */	bl strcmp
/* 80058DEC  2C 03 00 00 */	cmpwi r3, 0
/* 80058DF0  41 82 00 3C */	beq lbl_80058E2C
/* 80058DF4  7F E3 FB 78 */	mr r3, r31
/* 80058DF8  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058DFC  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058E00  38 84 00 99 */	addi r4, r4, 0x99
/* 80058E04  48 30 FB 91 */	bl strcmp
/* 80058E08  2C 03 00 00 */	cmpwi r3, 0
/* 80058E0C  41 82 00 20 */	beq lbl_80058E2C
/* 80058E10  7F E3 FB 78 */	mr r3, r31
/* 80058E14  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058E18  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058E1C  38 84 00 A1 */	addi r4, r4, 0xa1
/* 80058E20  48 30 FB 75 */	bl strcmp
/* 80058E24  2C 03 00 00 */	cmpwi r3, 0
/* 80058E28  40 82 00 24 */	bne lbl_80058E4C
lbl_80058E2C:
/* 80058E2C  C0 22 87 2C */	lfs f1, lit_4772(r2)
/* 80058E30  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80058E34  EC 01 00 32 */	fmuls f0, f1, f0
/* 80058E38  FC 00 00 1E */	fctiwz f0, f0
/* 80058E3C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80058E40  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80058E44  7C 00 07 34 */	extsh r0, r0
/* 80058E48  90 1D 0E 9C */	stw r0, 0xe9c(r29)
lbl_80058E4C:
/* 80058E4C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058E50  3B C3 CA 54 */	addi r30, r3, g_env_light@l /* 0x8042CA54@l */
/* 80058E54  88 1E 0E 98 */	lbz r0, 0xe98(r30)
/* 80058E58  2C 00 00 01 */	cmpwi r0, 1
/* 80058E5C  41 82 00 50 */	beq lbl_80058EAC
/* 80058E60  40 80 00 98 */	bge lbl_80058EF8
/* 80058E64  2C 00 00 00 */	cmpwi r0, 0
/* 80058E68  40 80 00 08 */	bge lbl_80058E70
/* 80058E6C  48 00 00 8C */	b lbl_80058EF8
lbl_80058E70:
/* 80058E70  80 1D 0E 9C */	lwz r0, 0xe9c(r29)
/* 80058E74  2C 00 00 00 */	cmpwi r0, 0
/* 80058E78  41 82 00 80 */	beq lbl_80058EF8
/* 80058E7C  48 00 84 A9 */	bl dKyr_star_init__Fv
/* 80058E80  48 01 2A 5D */	bl dKyr_shstar_init__Fv
/* 80058E84  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058E88  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80058E8C  80 03 0E A4 */	lwz r0, 0xea4(r3)
/* 80058E90  28 00 00 00 */	cmplwi r0, 0
/* 80058E94  41 82 00 64 */	beq lbl_80058EF8
/* 80058E98  48 00 85 75 */	bl dKyr_star_move__Fv
/* 80058E9C  48 01 2A 45 */	bl dKyr_shstar_move__Fv
/* 80058EA0  38 00 00 01 */	li r0, 1
/* 80058EA4  98 1E 0E 98 */	stb r0, 0xe98(r30)
/* 80058EA8  48 00 00 50 */	b lbl_80058EF8
lbl_80058EAC:
/* 80058EAC  48 00 85 61 */	bl dKyr_star_move__Fv
/* 80058EB0  48 01 2A 31 */	bl dKyr_shstar_move__Fv
/* 80058EB4  80 1D 0E 9C */	lwz r0, 0xe9c(r29)
/* 80058EB8  2C 00 00 00 */	cmpwi r0, 0
/* 80058EBC  40 82 00 3C */	bne lbl_80058EF8
/* 80058EC0  38 00 00 00 */	li r0, 0
/* 80058EC4  98 1E 0E 98 */	stb r0, 0xe98(r30)
/* 80058EC8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058ECC  3B C3 CA 54 */	addi r30, r3, g_env_light@l /* 0x8042CA54@l */
/* 80058ED0  80 7E 0E A4 */	lwz r3, 0xea4(r30)
/* 80058ED4  28 03 00 00 */	cmplwi r3, 0
/* 80058ED8  41 82 00 18 */	beq lbl_80058EF0
/* 80058EDC  38 80 00 01 */	li r4, 1
/* 80058EE0  81 83 00 00 */	lwz r12, 0(r3)
/* 80058EE4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80058EE8  7D 89 03 A6 */	mtctr r12
/* 80058EEC  4E 80 04 21 */	bctrl 
lbl_80058EF0:
/* 80058EF0  38 00 00 00 */	li r0, 0
/* 80058EF4  90 1E 0E A4 */	stw r0, 0xea4(r30)
lbl_80058EF8:
/* 80058EF8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80058EFC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80058F00  39 61 00 20 */	addi r11, r1, 0x20
/* 80058F04  48 30 93 25 */	bl _restgpr_29
/* 80058F08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80058F0C  7C 08 03 A6 */	mtlr r0
/* 80058F10  38 21 00 30 */	addi r1, r1, 0x30
/* 80058F14  4E 80 00 20 */	blr 
