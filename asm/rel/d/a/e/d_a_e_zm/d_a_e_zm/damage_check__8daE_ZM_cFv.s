lbl_8082FC8C:
/* 8082FC8C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8082FC90  7C 08 02 A6 */	mflr r0
/* 8082FC94  90 01 00 74 */	stw r0, 0x74(r1)
/* 8082FC98  39 61 00 70 */	addi r11, r1, 0x70
/* 8082FC9C  4B B3 25 3D */	bl _savegpr_28
/* 8082FCA0  7C 7D 1B 78 */	mr r29, r3
/* 8082FCA4  3C 60 80 83 */	lis r3, lit_3789@ha /* 0x80832CF8@ha */
/* 8082FCA8  3B E3 2C F8 */	addi r31, r3, lit_3789@l /* 0x80832CF8@l */
/* 8082FCAC  88 1D 07 23 */	lbz r0, 0x723(r29)
/* 8082FCB0  28 00 00 00 */	cmplwi r0, 0
/* 8082FCB4  40 82 05 14 */	bne lbl_808301C8
/* 8082FCB8  80 9D 06 5C */	lwz r4, 0x65c(r29)
/* 8082FCBC  2C 04 00 06 */	cmpwi r4, 6
/* 8082FCC0  41 82 05 08 */	beq lbl_808301C8
/* 8082FCC4  C0 3D 06 F8 */	lfs f1, 0x6f8(r29)
/* 8082FCC8  3C 60 80 83 */	lis r3, l_HIO@ha /* 0x80832F90@ha */
/* 8082FCCC  3B 83 2F 90 */	addi r28, r3, l_HIO@l /* 0x80832F90@l */
/* 8082FCD0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8082FCD4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8082FCD8  40 82 04 F0 */	bne lbl_808301C8
/* 8082FCDC  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8082FCE0  2C 00 00 01 */	cmpwi r0, 1
/* 8082FCE4  41 81 00 08 */	bgt lbl_8082FCEC
/* 8082FCE8  48 00 04 E0 */	b lbl_808301C8
lbl_8082FCEC:
/* 8082FCEC  3B C0 00 00 */	li r30, 0
/* 8082FCF0  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 8082FCF4  28 03 00 00 */	cmplwi r3, 0
/* 8082FCF8  41 82 01 B4 */	beq lbl_8082FEAC
/* 8082FCFC  2C 04 00 04 */	cmpwi r4, 4
/* 8082FD00  41 82 01 AC */	beq lbl_8082FEAC
/* 8082FD04  38 81 00 0C */	addi r4, r1, 0xc
/* 8082FD08  4B 7E 9C B5 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8082FD0C  2C 03 00 00 */	cmpwi r3, 0
/* 8082FD10  41 82 01 9C */	beq lbl_8082FEAC
/* 8082FD14  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8082FD18  28 04 00 00 */	cmplwi r4, 0
/* 8082FD1C  41 82 01 90 */	beq lbl_8082FEAC
/* 8082FD20  80 04 06 60 */	lwz r0, 0x660(r4)
/* 8082FD24  2C 00 00 0A */	cmpwi r0, 0xa
/* 8082FD28  41 80 01 84 */	blt lbl_8082FEAC
/* 8082FD2C  38 61 00 24 */	addi r3, r1, 0x24
/* 8082FD30  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8082FD34  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8082FD38  4B A3 6D FD */	bl __mi__4cXyzCFRC3Vec
/* 8082FD3C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8082FD40  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8082FD44  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8082FD48  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8082FD4C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8082FD50  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8082FD54  38 61 00 48 */	addi r3, r1, 0x48
/* 8082FD58  4B B1 73 E1 */	bl PSVECSquareMag
/* 8082FD5C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8082FD60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082FD64  40 81 00 58 */	ble lbl_8082FDBC
/* 8082FD68  FC 00 08 34 */	frsqrte f0, f1
/* 8082FD6C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8082FD70  FC 44 00 32 */	fmul f2, f4, f0
/* 8082FD74  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8082FD78  FC 00 00 32 */	fmul f0, f0, f0
/* 8082FD7C  FC 01 00 32 */	fmul f0, f1, f0
/* 8082FD80  FC 03 00 28 */	fsub f0, f3, f0
/* 8082FD84  FC 02 00 32 */	fmul f0, f2, f0
/* 8082FD88  FC 44 00 32 */	fmul f2, f4, f0
/* 8082FD8C  FC 00 00 32 */	fmul f0, f0, f0
/* 8082FD90  FC 01 00 32 */	fmul f0, f1, f0
/* 8082FD94  FC 03 00 28 */	fsub f0, f3, f0
/* 8082FD98  FC 02 00 32 */	fmul f0, f2, f0
/* 8082FD9C  FC 44 00 32 */	fmul f2, f4, f0
/* 8082FDA0  FC 00 00 32 */	fmul f0, f0, f0
/* 8082FDA4  FC 01 00 32 */	fmul f0, f1, f0
/* 8082FDA8  FC 03 00 28 */	fsub f0, f3, f0
/* 8082FDAC  FC 02 00 32 */	fmul f0, f2, f0
/* 8082FDB0  FC 21 00 32 */	fmul f1, f1, f0
/* 8082FDB4  FC 20 08 18 */	frsp f1, f1
/* 8082FDB8  48 00 00 88 */	b lbl_8082FE40
lbl_8082FDBC:
/* 8082FDBC  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8082FDC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082FDC4  40 80 00 10 */	bge lbl_8082FDD4
/* 8082FDC8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8082FDCC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8082FDD0  48 00 00 70 */	b lbl_8082FE40
lbl_8082FDD4:
/* 8082FDD4  D0 21 00 08 */	stfs f1, 8(r1)
/* 8082FDD8  80 81 00 08 */	lwz r4, 8(r1)
/* 8082FDDC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8082FDE0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8082FDE4  7C 03 00 00 */	cmpw r3, r0
/* 8082FDE8  41 82 00 14 */	beq lbl_8082FDFC
/* 8082FDEC  40 80 00 40 */	bge lbl_8082FE2C
/* 8082FDF0  2C 03 00 00 */	cmpwi r3, 0
/* 8082FDF4  41 82 00 20 */	beq lbl_8082FE14
/* 8082FDF8  48 00 00 34 */	b lbl_8082FE2C
lbl_8082FDFC:
/* 8082FDFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8082FE00  41 82 00 0C */	beq lbl_8082FE0C
/* 8082FE04  38 00 00 01 */	li r0, 1
/* 8082FE08  48 00 00 28 */	b lbl_8082FE30
lbl_8082FE0C:
/* 8082FE0C  38 00 00 02 */	li r0, 2
/* 8082FE10  48 00 00 20 */	b lbl_8082FE30
lbl_8082FE14:
/* 8082FE14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8082FE18  41 82 00 0C */	beq lbl_8082FE24
/* 8082FE1C  38 00 00 05 */	li r0, 5
/* 8082FE20  48 00 00 10 */	b lbl_8082FE30
lbl_8082FE24:
/* 8082FE24  38 00 00 03 */	li r0, 3
/* 8082FE28  48 00 00 08 */	b lbl_8082FE30
lbl_8082FE2C:
/* 8082FE2C  38 00 00 04 */	li r0, 4
lbl_8082FE30:
/* 8082FE30  2C 00 00 01 */	cmpwi r0, 1
/* 8082FE34  40 82 00 0C */	bne lbl_8082FE40
/* 8082FE38  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8082FE3C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8082FE40:
/* 8082FE40  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8082FE44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082FE48  40 80 00 64 */	bge lbl_8082FEAC
/* 8082FE4C  38 00 00 01 */	li r0, 1
/* 8082FE50  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8082FE54  B0 03 05 62 */	sth r0, 0x562(r3)
/* 8082FE58  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8082FE5C  D0 1D 07 14 */	stfs f0, 0x714(r29)
/* 8082FE60  80 1D 0A 2C */	lwz r0, 0xa2c(r29)
/* 8082FE64  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 8082FE68  90 1D 0A 2C */	stw r0, 0xa2c(r29)
/* 8082FE6C  38 7D 09 90 */	addi r3, r29, 0x990
/* 8082FE70  81 9D 09 CC */	lwz r12, 0x9cc(r29)
/* 8082FE74  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8082FE78  7D 89 03 A6 */	mtctr r12
/* 8082FE7C  4E 80 04 21 */	bctrl 
/* 8082FE80  7F A3 EB 78 */	mr r3, r29
/* 8082FE84  38 80 00 04 */	li r4, 4
/* 8082FE88  38 A0 00 02 */	li r5, 2
/* 8082FE8C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8082FE90  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8082FE94  4B FF FD 41 */	bl setBck__8daE_ZM_cFiUcff
/* 8082FE98  7F A3 EB 78 */	mr r3, r29
/* 8082FE9C  38 80 00 04 */	li r4, 4
/* 8082FEA0  38 A0 00 0A */	li r5, 0xa
/* 8082FEA4  4B FF FD DD */	bl setActionMode__8daE_ZM_cFii
/* 8082FEA8  48 00 03 20 */	b lbl_808301C8
lbl_8082FEAC:
/* 8082FEAC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8082FEB0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082FEB4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8082FEB8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8082FEBC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8082FEC0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8082FEC4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8082FEC8  EC 01 00 2A */	fadds f0, f1, f0
/* 8082FECC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082FED0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8082FED4  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 8082FED8  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 8082FEDC  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 8082FEE0  7F A3 EB 78 */	mr r3, r29
/* 8082FEE4  38 9D 05 B8 */	addi r4, r29, 0x5b8
/* 8082FEE8  38 A1 00 30 */	addi r5, r1, 0x30
/* 8082FEEC  38 DD 04 EC */	addi r6, r29, 0x4ec
/* 8082FEF0  48 00 29 A5 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8082FEF4  38 7D 09 90 */	addi r3, r29, 0x990
/* 8082FEF8  4B 85 45 69 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8082FEFC  28 03 00 00 */	cmplwi r3, 0
/* 8082FF00  41 82 02 B4 */	beq lbl_808301B4
/* 8082FF04  38 7D 09 90 */	addi r3, r29, 0x990
/* 8082FF08  4B 85 45 F1 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8082FF0C  90 7D 0C 04 */	stw r3, 0xc04(r29)
/* 8082FF10  38 00 00 0A */	li r0, 0xa
/* 8082FF14  98 1D 07 23 */	stb r0, 0x723(r29)
/* 8082FF18  38 61 00 18 */	addi r3, r1, 0x18
/* 8082FF1C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8082FF20  3B 9D 0A 64 */	addi r28, r29, 0xa64
/* 8082FF24  7F 85 E3 78 */	mr r5, r28
/* 8082FF28  4B A3 6C 0D */	bl __mi__4cXyzCFRC3Vec
/* 8082FF2C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8082FF30  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8082FF34  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8082FF38  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8082FF3C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8082FF40  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8082FF44  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8082FF48  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8082FF4C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8082FF50  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8082FF54  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8082FF58  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8082FF5C  38 00 00 00 */	li r0, 0
/* 8082FF60  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8082FF64  38 61 00 48 */	addi r3, r1, 0x48
/* 8082FF68  4B A3 71 C1 */	bl atan2sX_Z__4cXyzCFv
/* 8082FF6C  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8082FF70  38 00 00 00 */	li r0, 0
/* 8082FF74  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8082FF78  38 7D 09 90 */	addi r3, r29, 0x990
/* 8082FF7C  4B 85 45 7D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8082FF80  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8082FF84  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8082FF88  40 82 00 9C */	bne lbl_80830024
/* 8082FF8C  38 7D 09 90 */	addi r3, r29, 0x990
/* 8082FF90  4B 85 45 69 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8082FF94  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8082FF98  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8082FF9C  40 82 00 88 */	bne lbl_80830024
/* 8082FFA0  38 7D 09 90 */	addi r3, r29, 0x990
/* 8082FFA4  4B 85 45 55 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8082FFA8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8082FFAC  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 8082FFB0  40 82 00 2C */	bne lbl_8082FFDC
/* 8082FFB4  38 7D 09 90 */	addi r3, r29, 0x990
/* 8082FFB8  4B 85 45 41 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8082FFBC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8082FFC0  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 8082FFC4  40 82 00 18 */	bne lbl_8082FFDC
/* 8082FFC8  38 7D 09 90 */	addi r3, r29, 0x990
/* 8082FFCC  4B 85 45 2D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8082FFD0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8082FFD4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8082FFD8  41 82 00 40 */	beq lbl_80830018
lbl_8082FFDC:
/* 8082FFDC  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 8082FFE0  80 9D 0C 04 */	lwz r4, 0xc04(r29)
/* 8082FFE4  38 A0 00 28 */	li r5, 0x28
/* 8082FFE8  38 C0 00 00 */	li r6, 0
/* 8082FFEC  4B 85 75 29 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 8082FFF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082FFF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082FFF8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8082FFFC  38 80 00 02 */	li r4, 2
/* 80830000  7F A5 EB 78 */	mr r5, r29
/* 80830004  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80830008  38 E1 00 10 */	addi r7, r1, 0x10
/* 8083000C  39 00 00 00 */	li r8, 0
/* 80830010  39 20 00 00 */	li r9, 0
/* 80830014  4B 81 C2 05 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_80830018:
/* 80830018  38 7D 09 70 */	addi r3, r29, 0x970
/* 8083001C  4B 85 38 15 */	bl Move__10dCcD_GSttsFv
/* 80830020  48 00 01 A8 */	b lbl_808301C8
lbl_80830024:
/* 80830024  38 7D 09 90 */	addi r3, r29, 0x990
/* 80830028  4B 85 44 D1 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8083002C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80830030  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 80830034  41 82 00 54 */	beq lbl_80830088
/* 80830038  3B C0 00 01 */	li r30, 1
/* 8083003C  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 80830040  80 9D 0C 04 */	lwz r4, 0xc04(r29)
/* 80830044  38 A0 00 1F */	li r5, 0x1f
/* 80830048  38 C0 00 00 */	li r6, 0
/* 8083004C  4B 85 74 C9 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80830050  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80830054  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80830058  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8083005C  38 80 00 03 */	li r4, 3
/* 80830060  7F A5 EB 78 */	mr r5, r29
/* 80830064  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80830068  38 E1 00 10 */	addi r7, r1, 0x10
/* 8083006C  39 00 00 00 */	li r8, 0
/* 80830070  39 20 00 00 */	li r9, 0
/* 80830074  4B 81 C1 A5 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 80830078  A8 7D 05 62 */	lha r3, 0x562(r29)
/* 8083007C  38 03 FF B0 */	addi r0, r3, -80
/* 80830080  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80830084  48 00 00 70 */	b lbl_808300F4
lbl_80830088:
/* 80830088  7F A3 EB 78 */	mr r3, r29
/* 8083008C  38 9D 0C 04 */	addi r4, r29, 0xc04
/* 80830090  4B 85 7B 75 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80830094  88 1D 0C 23 */	lbz r0, 0xc23(r29)
/* 80830098  7C 00 07 75 */	extsb. r0, r0
/* 8083009C  40 82 00 30 */	bne lbl_808300CC
/* 808300A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808300A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808300A8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 808300AC  38 80 00 01 */	li r4, 1
/* 808300B0  7F A5 EB 78 */	mr r5, r29
/* 808300B4  38 C1 00 3C */	addi r6, r1, 0x3c
/* 808300B8  38 E1 00 10 */	addi r7, r1, 0x10
/* 808300BC  39 00 00 00 */	li r8, 0
/* 808300C0  39 20 00 00 */	li r9, 0
/* 808300C4  4B 81 C1 55 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 808300C8  48 00 00 2C */	b lbl_808300F4
lbl_808300CC:
/* 808300CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808300D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808300D4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 808300D8  38 80 00 03 */	li r4, 3
/* 808300DC  7F A5 EB 78 */	mr r5, r29
/* 808300E0  38 C1 00 3C */	addi r6, r1, 0x3c
/* 808300E4  38 E1 00 10 */	addi r7, r1, 0x10
/* 808300E8  39 00 00 00 */	li r8, 0
/* 808300EC  39 20 00 00 */	li r9, 0
/* 808300F0  4B 81 C1 29 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_808300F4:
/* 808300F4  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 808300F8  2C 00 00 01 */	cmpwi r0, 1
/* 808300FC  40 81 00 A8 */	ble lbl_808301A4
/* 80830100  88 7D 07 2D */	lbz r3, 0x72d(r29)
/* 80830104  38 03 00 01 */	addi r0, r3, 1
/* 80830108  98 1D 07 2D */	stb r0, 0x72d(r29)
/* 8083010C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80830110  40 82 00 10 */	bne lbl_80830120
/* 80830114  88 1D 07 2D */	lbz r0, 0x72d(r29)
/* 80830118  28 00 00 03 */	cmplwi r0, 3
/* 8083011C  40 80 00 6C */	bge lbl_80830188
lbl_80830120:
/* 80830120  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80830124  40 82 00 14 */	bne lbl_80830138
/* 80830128  7F A3 EB 78 */	mr r3, r29
/* 8083012C  48 00 00 B5 */	bl mCutTypeCheck__8daE_ZM_cFv
/* 80830130  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80830134  41 82 00 40 */	beq lbl_80830174
lbl_80830138:
/* 80830138  38 00 00 08 */	li r0, 8
/* 8083013C  98 1D 07 23 */	stb r0, 0x723(r29)
/* 80830140  38 7D 09 90 */	addi r3, r29, 0x990
/* 80830144  81 9D 09 CC */	lwz r12, 0x9cc(r29)
/* 80830148  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8083014C  7D 89 03 A6 */	mtctr r12
/* 80830150  4E 80 04 21 */	bctrl 
/* 80830154  80 1D 0A 2C */	lwz r0, 0xa2c(r29)
/* 80830158  60 00 20 00 */	ori r0, r0, 0x2000
/* 8083015C  90 1D 0A 2C */	stw r0, 0xa2c(r29)
/* 80830160  7F A3 EB 78 */	mr r3, r29
/* 80830164  38 80 00 04 */	li r4, 4
/* 80830168  38 A0 00 01 */	li r5, 1
/* 8083016C  4B FF FB 15 */	bl setActionMode__8daE_ZM_cFii
/* 80830170  48 00 00 58 */	b lbl_808301C8
lbl_80830174:
/* 80830174  7F A3 EB 78 */	mr r3, r29
/* 80830178  38 80 00 04 */	li r4, 4
/* 8083017C  38 A0 00 00 */	li r5, 0
/* 80830180  4B FF FB 01 */	bl setActionMode__8daE_ZM_cFii
/* 80830184  48 00 00 30 */	b lbl_808301B4
lbl_80830188:
/* 80830188  38 00 00 00 */	li r0, 0
/* 8083018C  98 1D 07 25 */	stb r0, 0x725(r29)
/* 80830190  7F A3 EB 78 */	mr r3, r29
/* 80830194  38 80 00 01 */	li r4, 1
/* 80830198  38 A0 00 02 */	li r5, 2
/* 8083019C  4B FF FA E5 */	bl setActionMode__8daE_ZM_cFii
/* 808301A0  48 00 00 14 */	b lbl_808301B4
lbl_808301A4:
/* 808301A4  7F A3 EB 78 */	mr r3, r29
/* 808301A8  38 80 00 05 */	li r4, 5
/* 808301AC  38 A0 00 00 */	li r5, 0
/* 808301B0  4B FF FA D1 */	bl setActionMode__8daE_ZM_cFii
lbl_808301B4:
/* 808301B4  80 1D 0A 2C */	lwz r0, 0xa2c(r29)
/* 808301B8  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 808301BC  90 1D 0A 2C */	stw r0, 0xa2c(r29)
/* 808301C0  38 7D 09 70 */	addi r3, r29, 0x970
/* 808301C4  4B 85 36 6D */	bl Move__10dCcD_GSttsFv
lbl_808301C8:
/* 808301C8  39 61 00 70 */	addi r11, r1, 0x70
/* 808301CC  4B B3 20 59 */	bl _restgpr_28
/* 808301D0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 808301D4  7C 08 03 A6 */	mtlr r0
/* 808301D8  38 21 00 70 */	addi r1, r1, 0x70
/* 808301DC  4E 80 00 20 */	blr 
