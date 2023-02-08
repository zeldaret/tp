lbl_8055C8B0:
/* 8055C8B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055C8B4  7C 08 02 A6 */	mflr r0
/* 8055C8B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055C8BC  39 61 00 30 */	addi r11, r1, 0x30
/* 8055C8C0  4B E0 59 09 */	bl _savegpr_24
/* 8055C8C4  7C 7E 1B 78 */	mr r30, r3
/* 8055C8C8  3C 60 80 56 */	lis r3, m__18daNpc_Maro_Param_c@ha /* 0x80564BAC@ha */
/* 8055C8CC  3B E3 4B AC */	addi r31, r3, m__18daNpc_Maro_Param_c@l /* 0x80564BAC@l */
/* 8055C8D0  3C 60 80 56 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80564F90@ha */
/* 8055C8D4  3B A3 4F 90 */	addi r29, r3, cNullVec__6Z2Calc@l /* 0x80564F90@l */
/* 8055C8D8  88 1E 11 30 */	lbz r0, 0x1130(r30)
/* 8055C8DC  28 00 00 00 */	cmplwi r0, 0
/* 8055C8E0  41 82 00 2C */	beq lbl_8055C90C
/* 8055C8E4  80 1E 11 2C */	lwz r0, 0x112c(r30)
/* 8055C8E8  2C 00 00 02 */	cmpwi r0, 2
/* 8055C8EC  40 82 00 10 */	bne lbl_8055C8FC
/* 8055C8F0  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 8055C8F4  4B C3 9A C1 */	bl Reset__16ShopCam_action_cFv
/* 8055C8F8  48 00 00 0C */	b lbl_8055C904
lbl_8055C8FC:
/* 8055C8FC  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 8055C900  4B C3 9A 5D */	bl EventRecoverNotime__16ShopCam_action_cFv
lbl_8055C904:
/* 8055C904  38 00 00 00 */	li r0, 0
/* 8055C908  98 1E 11 30 */	stb r0, 0x1130(r30)
lbl_8055C90C:
/* 8055C90C  7F C3 F3 78 */	mr r3, r30
/* 8055C910  48 00 12 E1 */	bl selectAction__12daNpc_Maro_cFv
/* 8055C914  38 7D 06 E4 */	addi r3, r29, 0x6e4
/* 8055C918  38 9E 11 0C */	addi r4, r30, 0x110c
/* 8055C91C  4B E0 57 2D */	bl __ptmf_cmpr
/* 8055C920  2C 03 00 00 */	cmpwi r3, 0
/* 8055C924  40 82 00 40 */	bne lbl_8055C964
/* 8055C928  80 7E 10 BC */	lwz r3, 0x10bc(r30)
/* 8055C92C  3C 03 00 01 */	addis r0, r3, 1
/* 8055C930  28 00 FF FF */	cmplwi r0, 0xffff
/* 8055C934  40 82 00 30 */	bne lbl_8055C964
/* 8055C938  38 60 00 00 */	li r3, 0
/* 8055C93C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000EA60@ha */
/* 8055C940  38 84 EA 60 */	addi r4, r4, 0xEA60 /* 0x0000EA60@l */
/* 8055C944  38 A0 00 00 */	li r5, 0
/* 8055C948  38 C0 00 00 */	li r6, 0
/* 8055C94C  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 8055C950  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 8055C954  C0 7F 01 18 */	lfs f3, 0x118(r31)
/* 8055C958  C0 9F 01 1C */	lfs f4, 0x11c(r31)
/* 8055C95C  4B D0 46 31 */	bl dTimer_createTimer__FlUlUcUcffff
/* 8055C960  90 7E 10 BC */	stw r3, 0x10bc(r30)
lbl_8055C964:
/* 8055C964  7F C3 F3 78 */	mr r3, r30
/* 8055C968  48 00 04 0D */	bl srchActors__12daNpc_Maro_cFv
/* 8055C96C  3B 80 00 0A */	li r28, 0xa
/* 8055C970  38 7F 00 00 */	addi r3, r31, 0
/* 8055C974  AB 63 00 48 */	lha r27, 0x48(r3)
/* 8055C978  AB 43 00 4A */	lha r26, 0x4a(r3)
/* 8055C97C  AB 23 00 4C */	lha r25, 0x4c(r3)
/* 8055C980  AB 03 00 4E */	lha r24, 0x4e(r3)
/* 8055C984  38 7D 06 F0 */	addi r3, r29, 0x6f0
/* 8055C988  38 9E 11 0C */	addi r4, r30, 0x110c
/* 8055C98C  4B E0 56 BD */	bl __ptmf_cmpr
/* 8055C990  2C 03 00 00 */	cmpwi r3, 0
/* 8055C994  40 82 00 1C */	bne lbl_8055C9B0
/* 8055C998  3B 60 00 0B */	li r27, 0xb
/* 8055C99C  3B 40 00 06 */	li r26, 6
/* 8055C9A0  3B 20 00 0F */	li r25, 0xf
/* 8055C9A4  3B 00 00 06 */	li r24, 6
/* 8055C9A8  3B 80 00 00 */	li r28, 0
/* 8055C9AC  48 00 00 54 */	b lbl_8055CA00
lbl_8055C9B0:
/* 8055C9B0  88 1E 10 C0 */	lbz r0, 0x10c0(r30)
/* 8055C9B4  28 00 00 0B */	cmplwi r0, 0xb
/* 8055C9B8  40 82 00 10 */	bne lbl_8055C9C8
/* 8055C9BC  3B 60 00 07 */	li r27, 7
/* 8055C9C0  3B 20 00 09 */	li r25, 9
/* 8055C9C4  48 00 00 3C */	b lbl_8055CA00
lbl_8055C9C8:
/* 8055C9C8  28 00 00 06 */	cmplwi r0, 6
/* 8055C9CC  40 82 00 10 */	bne lbl_8055C9DC
/* 8055C9D0  3B 60 00 04 */	li r27, 4
/* 8055C9D4  3B 20 00 06 */	li r25, 6
/* 8055C9D8  48 00 00 28 */	b lbl_8055CA00
lbl_8055C9DC:
/* 8055C9DC  38 7D 06 FC */	addi r3, r29, 0x6fc
/* 8055C9E0  38 9E 11 0C */	addi r4, r30, 0x110c
/* 8055C9E4  4B E0 56 65 */	bl __ptmf_cmpr
/* 8055C9E8  2C 03 00 00 */	cmpwi r3, 0
/* 8055C9EC  40 82 00 14 */	bne lbl_8055CA00
/* 8055C9F0  3B 60 00 05 */	li r27, 5
/* 8055C9F4  3B 40 00 04 */	li r26, 4
/* 8055C9F8  3B 20 00 07 */	li r25, 7
/* 8055C9FC  3B 00 00 04 */	li r24, 4
lbl_8055CA00:
/* 8055CA00  88 1E 11 31 */	lbz r0, 0x1131(r30)
/* 8055CA04  28 00 00 00 */	cmplwi r0, 0
/* 8055CA08  41 82 00 0C */	beq lbl_8055CA14
/* 8055CA0C  3B 60 00 05 */	li r27, 5
/* 8055CA10  3B 20 00 05 */	li r25, 5
lbl_8055CA14:
/* 8055CA14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055CA18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055CA1C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8055CA20  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8055CA24  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8055CA28  7D 89 03 A6 */	mtctr r12
/* 8055CA2C  4E 80 04 21 */	bctrl 
/* 8055CA30  28 03 00 00 */	cmplwi r3, 0
/* 8055CA34  41 82 00 24 */	beq lbl_8055CA58
/* 8055CA38  7F 60 07 34 */	extsh r0, r27
/* 8055CA3C  2C 00 00 07 */	cmpwi r0, 7
/* 8055CA40  40 80 00 08 */	bge lbl_8055CA48
/* 8055CA44  3B 60 00 07 */	li r27, 7
lbl_8055CA48:
/* 8055CA48  7F 20 07 34 */	extsh r0, r25
/* 8055CA4C  2C 00 00 09 */	cmpwi r0, 9
/* 8055CA50  40 80 00 08 */	bge lbl_8055CA58
/* 8055CA54  3B 20 00 09 */	li r25, 9
lbl_8055CA58:
/* 8055CA58  7F 23 07 34 */	extsh r3, r25
/* 8055CA5C  7F 04 07 34 */	extsh r4, r24
/* 8055CA60  4B BE FF B9 */	bl daNpcT_getDistTableIdx__Fii
/* 8055CA64  98 7E 05 44 */	stb r3, 0x544(r30)
/* 8055CA68  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 8055CA6C  98 1E 05 45 */	stb r0, 0x545(r30)
/* 8055CA70  7F 63 07 34 */	extsh r3, r27
/* 8055CA74  7F 44 07 34 */	extsh r4, r26
/* 8055CA78  4B BE FF A1 */	bl daNpcT_getDistTableIdx__Fii
/* 8055CA7C  98 7E 05 47 */	stb r3, 0x547(r30)
/* 8055CA80  93 9E 05 5C */	stw r28, 0x55c(r30)
/* 8055CA84  38 7F 00 00 */	addi r3, r31, 0
/* 8055CA88  C0 03 00 08 */	lfs f0, 8(r3)
/* 8055CA8C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 8055CA90  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 8055CA94  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 8055CA98  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8055CA9C  FC 00 00 1E */	fctiwz f0, f0
/* 8055CAA0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8055CAA4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8055CAA8  98 1E 08 78 */	stb r0, 0x878(r30)
/* 8055CAAC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8055CAB0  D0 1E 0D EC */	stfs f0, 0xdec(r30)
/* 8055CAB4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8055CAB8  D0 1E 0D F0 */	stfs f0, 0xdf0(r30)
/* 8055CABC  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8055CAC0  D0 1E 0D F8 */	stfs f0, 0xdf8(r30)
/* 8055CAC4  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 8055CAC8  C0 3E 0D F0 */	lfs f1, 0xdf0(r30)
/* 8055CACC  4B B1 94 75 */	bl SetWallR__12dBgS_AcchCirFf
/* 8055CAD0  38 7F 00 00 */	addi r3, r31, 0
/* 8055CAD4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8055CAD8  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 8055CADC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8055CAE0  D0 1E 0D E8 */	stfs f0, 0xde8(r30)
/* 8055CAE4  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 8055CAE8  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 8055CAEC  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 8055CAF0  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 8055CAF4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8055CAF8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8055CAFC  39 61 00 30 */	addi r11, r1, 0x30
/* 8055CB00  4B E0 57 15 */	bl _restgpr_24
/* 8055CB04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8055CB08  7C 08 03 A6 */	mtlr r0
/* 8055CB0C  38 21 00 30 */	addi r1, r1, 0x30
/* 8055CB10  4E 80 00 20 */	blr 
