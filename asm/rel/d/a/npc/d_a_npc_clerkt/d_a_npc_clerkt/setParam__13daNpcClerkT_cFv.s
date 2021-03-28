lbl_8099BCE8:
/* 8099BCE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099BCEC  7C 08 02 A6 */	mflr r0
/* 8099BCF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099BCF4  39 61 00 20 */	addi r11, r1, 0x20
/* 8099BCF8  4B 9C 64 E4 */	b _savegpr_29
/* 8099BCFC  7C 7F 1B 78 */	mr r31, r3
/* 8099BD00  88 03 10 E9 */	lbz r0, 0x10e9(r3)
/* 8099BD04  28 00 00 00 */	cmplwi r0, 0
/* 8099BD08  41 82 00 2C */	beq lbl_8099BD34
/* 8099BD0C  80 1F 10 E0 */	lwz r0, 0x10e0(r31)
/* 8099BD10  2C 00 00 02 */	cmpwi r0, 2
/* 8099BD14  40 82 00 10 */	bne lbl_8099BD24
/* 8099BD18  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 8099BD1C  4B 7F A6 98 */	b Reset__16ShopCam_action_cFv
/* 8099BD20  48 00 00 0C */	b lbl_8099BD2C
lbl_8099BD24:
/* 8099BD24  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 8099BD28  4B 7F A6 34 */	b EventRecoverNotime__16ShopCam_action_cFv
lbl_8099BD2C:
/* 8099BD2C  38 00 00 00 */	li r0, 0
/* 8099BD30  98 1F 10 E9 */	stb r0, 0x10e9(r31)
lbl_8099BD34:
/* 8099BD34  7F E3 FB 78 */	mr r3, r31
/* 8099BD38  4B FF F3 FD */	bl selectAction__13daNpcClerkT_cFv
/* 8099BD3C  88 1F 10 BC */	lbz r0, 0x10bc(r31)
/* 8099BD40  2C 00 00 00 */	cmpwi r0, 0
/* 8099BD44  41 82 00 08 */	beq lbl_8099BD4C
/* 8099BD48  48 00 00 28 */	b lbl_8099BD70
lbl_8099BD4C:
/* 8099BD4C  38 7F 10 C0 */	addi r3, r31, 0x10c0
/* 8099BD50  4B 7A 99 B8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8099BD54  28 03 00 00 */	cmplwi r3, 0
/* 8099BD58  40 82 00 18 */	bne lbl_8099BD70
/* 8099BD5C  7F E3 FB 78 */	mr r3, r31
/* 8099BD60  4B 7B 02 50 */	b getShopItemTagP__8daNpcT_cFv
/* 8099BD64  7C 64 1B 78 */	mr r4, r3
/* 8099BD68  38 7F 10 C0 */	addi r3, r31, 0x10c0
/* 8099BD6C  4B 7A 99 74 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8099BD70:
/* 8099BD70  3C 60 80 9A */	lis r3, m__19daNpcClerkt_Param_c@ha
/* 8099BD74  38 83 D2 44 */	addi r4, r3, m__19daNpcClerkt_Param_c@l
/* 8099BD78  AB A4 00 48 */	lha r29, 0x48(r4)
/* 8099BD7C  AB C4 00 4A */	lha r30, 0x4a(r4)
/* 8099BD80  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 8099BD84  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 8099BD88  4B 7B 0C 90 */	b daNpcT_getDistTableIdx__Fii
/* 8099BD8C  98 7F 05 44 */	stb r3, 0x544(r31)
/* 8099BD90  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 8099BD94  98 1F 05 45 */	stb r0, 0x545(r31)
/* 8099BD98  7F A3 07 34 */	extsh r3, r29
/* 8099BD9C  7F C4 07 34 */	extsh r4, r30
/* 8099BDA0  4B 7B 0C 78 */	b daNpcT_getDistTableIdx__Fii
/* 8099BDA4  98 7F 05 47 */	stb r3, 0x547(r31)
/* 8099BDA8  38 00 00 0A */	li r0, 0xa
/* 8099BDAC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8099BDB0  3C 60 80 9A */	lis r3, m__19daNpcClerkt_Param_c@ha
/* 8099BDB4  38 63 D2 44 */	addi r3, r3, m__19daNpcClerkt_Param_c@l
/* 8099BDB8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8099BDBC  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8099BDC0  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8099BDC4  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8099BDC8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8099BDCC  FC 00 00 1E */	fctiwz f0, f0
/* 8099BDD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8099BDD4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8099BDD8  98 1F 08 78 */	stb r0, 0x878(r31)
/* 8099BDDC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8099BDE0  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 8099BDE4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8099BDE8  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 8099BDEC  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8099BDF0  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 8099BDF4  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 8099BDF8  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 8099BDFC  4B 6D A1 44 */	b SetWallR__12dBgS_AcchCirFf
/* 8099BE00  3C 60 80 9A */	lis r3, m__19daNpcClerkt_Param_c@ha
/* 8099BE04  38 63 D2 44 */	addi r3, r3, m__19daNpcClerkt_Param_c@l
/* 8099BE08  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8099BE0C  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 8099BE10  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8099BE14  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 8099BE18  C0 03 00 04 */	lfs f0, 4(r3)
/* 8099BE1C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8099BE20  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 8099BE24  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 8099BE28  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 8099BE2C  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 8099BE30  39 61 00 20 */	addi r11, r1, 0x20
/* 8099BE34  4B 9C 63 F4 */	b _restgpr_29
/* 8099BE38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099BE3C  7C 08 03 A6 */	mtlr r0
/* 8099BE40  38 21 00 20 */	addi r1, r1, 0x20
/* 8099BE44  4E 80 00 20 */	blr 
