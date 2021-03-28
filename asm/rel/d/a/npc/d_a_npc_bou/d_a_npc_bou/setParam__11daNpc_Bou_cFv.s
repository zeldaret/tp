lbl_8096DDC8:
/* 8096DDC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8096DDCC  7C 08 02 A6 */	mflr r0
/* 8096DDD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8096DDD4  39 61 00 30 */	addi r11, r1, 0x30
/* 8096DDD8  4B 9F 43 F4 */	b _savegpr_25
/* 8096DDDC  7C 7E 1B 78 */	mr r30, r3
/* 8096DDE0  48 00 0E E1 */	bl selectAction__11daNpc_Bou_cFv
/* 8096DDE4  7F C3 F3 78 */	mr r3, r30
/* 8096DDE8  48 00 03 A5 */	bl srchActors__11daNpc_Bou_cFv
/* 8096DDEC  3B E0 00 0A */	li r31, 0xa
/* 8096DDF0  3C 60 80 97 */	lis r3, m__17daNpc_Bou_Param_c@ha
/* 8096DDF4  38 63 28 60 */	addi r3, r3, m__17daNpc_Bou_Param_c@l
/* 8096DDF8  AB 83 00 48 */	lha r28, 0x48(r3)
/* 8096DDFC  AB 63 00 4A */	lha r27, 0x4a(r3)
/* 8096DE00  AB 43 00 4C */	lha r26, 0x4c(r3)
/* 8096DE04  AB 23 00 4E */	lha r25, 0x4e(r3)
/* 8096DE08  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 8096DE0C  28 00 00 01 */	cmplwi r0, 1
/* 8096DE10  40 82 00 24 */	bne lbl_8096DE34
/* 8096DE14  38 00 00 03 */	li r0, 3
/* 8096DE18  90 1E 0F E0 */	stw r0, 0xfe0(r30)
/* 8096DE1C  38 00 00 06 */	li r0, 6
/* 8096DE20  90 1E 0F E4 */	stw r0, 0xfe4(r30)
/* 8096DE24  3B 80 00 13 */	li r28, 0x13
/* 8096DE28  3B 60 00 06 */	li r27, 6
/* 8096DE2C  3B 40 00 13 */	li r26, 0x13
/* 8096DE30  3B 20 00 06 */	li r25, 6
lbl_8096DE34:
/* 8096DE34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8096DE38  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8096DE3C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 8096DE40  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8096DE44  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8096DE48  7D 89 03 A6 */	mtctr r12
/* 8096DE4C  4E 80 04 21 */	bctrl 
/* 8096DE50  28 03 00 00 */	cmplwi r3, 0
/* 8096DE54  41 82 00 24 */	beq lbl_8096DE78
/* 8096DE58  7F 80 07 34 */	extsh r0, r28
/* 8096DE5C  2C 00 00 07 */	cmpwi r0, 7
/* 8096DE60  40 80 00 08 */	bge lbl_8096DE68
/* 8096DE64  3B 80 00 07 */	li r28, 7
lbl_8096DE68:
/* 8096DE68  7F 40 07 34 */	extsh r0, r26
/* 8096DE6C  2C 00 00 09 */	cmpwi r0, 9
/* 8096DE70  40 80 00 08 */	bge lbl_8096DE78
/* 8096DE74  3B 40 00 09 */	li r26, 9
lbl_8096DE78:
/* 8096DE78  7F 43 07 34 */	extsh r3, r26
/* 8096DE7C  7F 24 07 34 */	extsh r4, r25
/* 8096DE80  4B 7D EB 98 */	b daNpcT_getDistTableIdx__Fii
/* 8096DE84  98 7E 05 44 */	stb r3, 0x544(r30)
/* 8096DE88  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 8096DE8C  98 1E 05 45 */	stb r0, 0x545(r30)
/* 8096DE90  7F 83 07 34 */	extsh r3, r28
/* 8096DE94  7F 64 07 34 */	extsh r4, r27
/* 8096DE98  4B 7D EB 80 */	b daNpcT_getDistTableIdx__Fii
/* 8096DE9C  98 7E 05 47 */	stb r3, 0x547(r30)
/* 8096DEA0  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 8096DEA4  28 00 00 01 */	cmplwi r0, 1
/* 8096DEA8  40 82 00 58 */	bne lbl_8096DF00
/* 8096DEAC  67 FF 00 80 */	oris r31, r31, 0x80
/* 8096DEB0  83 BD 5D AC */	lwz r29, 0x5dac(r29)
/* 8096DEB4  80 7E 0F E0 */	lwz r3, 0xfe0(r30)
/* 8096DEB8  80 9E 0F E4 */	lwz r4, 0xfe4(r30)
/* 8096DEBC  4B 7D EB 5C */	b daNpcT_getDistTableIdx__Fii
/* 8096DEC0  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8096DEC4  7F C3 F3 78 */	mr r3, r30
/* 8096DEC8  7F A4 EB 78 */	mr r4, r29
/* 8096DECC  88 DE 05 45 */	lbz r6, 0x545(r30)
/* 8096DED0  4B 7D DC 30 */	b getActorDistance__8daNpcT_cFP10fopAc_ac_cii
/* 8096DED4  90 7E 0F DC */	stw r3, 0xfdc(r30)
/* 8096DED8  80 1E 0F DC */	lwz r0, 0xfdc(r30)
/* 8096DEDC  2C 00 00 04 */	cmpwi r0, 4
/* 8096DEE0  40 80 00 18 */	bge lbl_8096DEF8
/* 8096DEE4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8096DEE8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8096DEEC  A0 03 00 AC */	lhz r0, 0xac(r3)
/* 8096DEF0  60 00 00 01 */	ori r0, r0, 1
/* 8096DEF4  B0 03 00 AC */	sth r0, 0xac(r3)
lbl_8096DEF8:
/* 8096DEF8  38 00 00 01 */	li r0, 1
/* 8096DEFC  98 1E 0E 2D */	stb r0, 0xe2d(r30)
lbl_8096DF00:
/* 8096DF00  93 FE 05 5C */	stw r31, 0x55c(r30)
/* 8096DF04  3C 60 80 97 */	lis r3, m__17daNpc_Bou_Param_c@ha
/* 8096DF08  38 63 28 60 */	addi r3, r3, m__17daNpc_Bou_Param_c@l
/* 8096DF0C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8096DF10  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 8096DF14  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 8096DF18  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 8096DF1C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8096DF20  FC 00 00 1E */	fctiwz f0, f0
/* 8096DF24  D8 01 00 08 */	stfd f0, 8(r1)
/* 8096DF28  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8096DF2C  98 1E 08 78 */	stb r0, 0x878(r30)
/* 8096DF30  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8096DF34  D0 1E 0D EC */	stfs f0, 0xdec(r30)
/* 8096DF38  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8096DF3C  D0 1E 0D F0 */	stfs f0, 0xdf0(r30)
/* 8096DF40  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8096DF44  D0 1E 0D F8 */	stfs f0, 0xdf8(r30)
/* 8096DF48  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 8096DF4C  C0 3E 0D F0 */	lfs f1, 0xdf0(r30)
/* 8096DF50  4B 70 7F F0 */	b SetWallR__12dBgS_AcchCirFf
/* 8096DF54  3C 60 80 97 */	lis r3, m__17daNpc_Bou_Param_c@ha
/* 8096DF58  38 63 28 60 */	addi r3, r3, m__17daNpc_Bou_Param_c@l
/* 8096DF5C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8096DF60  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 8096DF64  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8096DF68  D0 1E 0D E8 */	stfs f0, 0xde8(r30)
/* 8096DF6C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 8096DF70  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 8096DF74  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 8096DF78  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 8096DF7C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8096DF80  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8096DF84  39 61 00 30 */	addi r11, r1, 0x30
/* 8096DF88  4B 9F 42 90 */	b _restgpr_25
/* 8096DF8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8096DF90  7C 08 03 A6 */	mtlr r0
/* 8096DF94  38 21 00 30 */	addi r1, r1, 0x30
/* 8096DF98  4E 80 00 20 */	blr 
