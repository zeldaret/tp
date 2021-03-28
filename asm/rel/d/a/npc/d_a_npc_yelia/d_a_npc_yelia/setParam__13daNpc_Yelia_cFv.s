lbl_80B4E0F4:
/* 80B4E0F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B4E0F8  7C 08 02 A6 */	mflr r0
/* 80B4E0FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B4E100  39 61 00 30 */	addi r11, r1, 0x30
/* 80B4E104  4B 81 40 CC */	b _savegpr_26
/* 80B4E108  7C 7E 1B 78 */	mr r30, r3
/* 80B4E10C  3C 80 80 B5 */	lis r4, m__19daNpc_Yelia_Param_c@ha
/* 80B4E110  3B E4 22 B4 */	addi r31, r4, m__19daNpc_Yelia_Param_c@l
/* 80B4E114  48 00 0E 99 */	bl selectAction__13daNpc_Yelia_cFv
/* 80B4E118  7F C3 F3 78 */	mr r3, r30
/* 80B4E11C  48 00 05 85 */	bl srchActors__13daNpc_Yelia_cFv
/* 80B4E120  38 7F 00 00 */	addi r3, r31, 0
/* 80B4E124  AB A3 00 48 */	lha r29, 0x48(r3)
/* 80B4E128  AB 83 00 4A */	lha r28, 0x4a(r3)
/* 80B4E12C  AB 63 00 4C */	lha r27, 0x4c(r3)
/* 80B4E130  AB 43 00 4E */	lha r26, 0x4e(r3)
/* 80B4E134  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B4E138  28 00 00 08 */	cmplwi r0, 8
/* 80B4E13C  40 82 00 18 */	bne lbl_80B4E154
/* 80B4E140  3B A0 00 10 */	li r29, 0x10
/* 80B4E144  3B 80 00 06 */	li r28, 6
/* 80B4E148  3B 60 00 13 */	li r27, 0x13
/* 80B4E14C  3B 40 00 06 */	li r26, 6
/* 80B4E150  48 00 00 24 */	b lbl_80B4E174
lbl_80B4E154:
/* 80B4E154  28 00 00 03 */	cmplwi r0, 3
/* 80B4E158  40 82 00 1C */	bne lbl_80B4E174
/* 80B4E15C  38 60 01 1F */	li r3, 0x11f
/* 80B4E160  4B 5F E9 4C */	b daNpcT_chkEvtBit__FUl
/* 80B4E164  2C 03 00 00 */	cmpwi r3, 0
/* 80B4E168  40 82 00 0C */	bne lbl_80B4E174
/* 80B4E16C  3B 80 00 03 */	li r28, 3
/* 80B4E170  3B 40 00 03 */	li r26, 3
lbl_80B4E174:
/* 80B4E174  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4E178  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4E17C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B4E180  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B4E184  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80B4E188  7D 89 03 A6 */	mtctr r12
/* 80B4E18C  4E 80 04 21 */	bctrl 
/* 80B4E190  28 03 00 00 */	cmplwi r3, 0
/* 80B4E194  41 82 00 24 */	beq lbl_80B4E1B8
/* 80B4E198  7F A0 07 34 */	extsh r0, r29
/* 80B4E19C  2C 00 00 07 */	cmpwi r0, 7
/* 80B4E1A0  40 80 00 08 */	bge lbl_80B4E1A8
/* 80B4E1A4  3B A0 00 07 */	li r29, 7
lbl_80B4E1A8:
/* 80B4E1A8  7F 60 07 34 */	extsh r0, r27
/* 80B4E1AC  2C 00 00 09 */	cmpwi r0, 9
/* 80B4E1B0  40 80 00 08 */	bge lbl_80B4E1B8
/* 80B4E1B4  3B 60 00 09 */	li r27, 9
lbl_80B4E1B8:
/* 80B4E1B8  7F 63 07 34 */	extsh r3, r27
/* 80B4E1BC  7F 44 07 34 */	extsh r4, r26
/* 80B4E1C0  4B 5F E8 58 */	b daNpcT_getDistTableIdx__Fii
/* 80B4E1C4  98 7E 05 44 */	stb r3, 0x544(r30)
/* 80B4E1C8  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 80B4E1CC  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80B4E1D0  7F A3 07 34 */	extsh r3, r29
/* 80B4E1D4  7F 84 07 34 */	extsh r4, r28
/* 80B4E1D8  4B 5F E8 40 */	b daNpcT_getDistTableIdx__Fii
/* 80B4E1DC  98 7E 05 47 */	stb r3, 0x547(r30)
/* 80B4E1E0  38 00 00 0A */	li r0, 0xa
/* 80B4E1E4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80B4E1E8  38 7F 00 00 */	addi r3, r31, 0
/* 80B4E1EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B4E1F0  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80B4E1F4  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80B4E1F8  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80B4E1FC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80B4E200  FC 00 00 1E */	fctiwz f0, f0
/* 80B4E204  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B4E208  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B4E20C  98 1E 08 78 */	stb r0, 0x878(r30)
/* 80B4E210  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80B4E214  D0 1E 0D EC */	stfs f0, 0xdec(r30)
/* 80B4E218  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B4E21C  D0 1E 0D F0 */	stfs f0, 0xdf0(r30)
/* 80B4E220  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80B4E224  D0 1E 0D F8 */	stfs f0, 0xdf8(r30)
/* 80B4E228  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B4E22C  28 00 00 08 */	cmplwi r0, 8
/* 80B4E230  40 82 00 0C */	bne lbl_80B4E23C
/* 80B4E234  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80B4E238  D0 1E 0D F8 */	stfs f0, 0xdf8(r30)
lbl_80B4E23C:
/* 80B4E23C  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B4E240  C0 3E 0D F0 */	lfs f1, 0xdf0(r30)
/* 80B4E244  4B 52 7C FC */	b SetWallR__12dBgS_AcchCirFf
/* 80B4E248  38 7F 00 00 */	addi r3, r31, 0
/* 80B4E24C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B4E250  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 80B4E254  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B4E258  D0 1E 0D E8 */	stfs f0, 0xde8(r30)
/* 80B4E25C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B4E260  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80B4E264  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B4E268  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 80B4E26C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B4E270  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 80B4E274  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B4E278  28 00 00 04 */	cmplwi r0, 4
/* 80B4E27C  41 82 00 0C */	beq lbl_80B4E288
/* 80B4E280  28 00 00 05 */	cmplwi r0, 5
/* 80B4E284  40 82 00 24 */	bne lbl_80B4E2A8
lbl_80B4E288:
/* 80B4E288  80 1E 06 B8 */	lwz r0, 0x6b8(r30)
/* 80B4E28C  60 00 00 02 */	ori r0, r0, 2
/* 80B4E290  90 1E 06 B8 */	stw r0, 0x6b8(r30)
/* 80B4E294  80 1E 06 B8 */	lwz r0, 0x6b8(r30)
/* 80B4E298  60 00 00 04 */	ori r0, r0, 4
/* 80B4E29C  90 1E 06 B8 */	stw r0, 0x6b8(r30)
/* 80B4E2A0  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B4E2A4  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_80B4E2A8:
/* 80B4E2A8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B4E2AC  4B 81 3F 70 */	b _restgpr_26
/* 80B4E2B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B4E2B4  7C 08 03 A6 */	mtlr r0
/* 80B4E2B8  38 21 00 30 */	addi r1, r1, 0x30
/* 80B4E2BC  4E 80 00 20 */	blr 
