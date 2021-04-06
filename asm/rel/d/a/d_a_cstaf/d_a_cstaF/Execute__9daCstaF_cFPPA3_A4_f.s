lbl_804DF37C:
/* 804DF37C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804DF380  7C 08 02 A6 */	mflr r0
/* 804DF384  90 01 00 64 */	stw r0, 0x64(r1)
/* 804DF388  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804DF38C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804DF390  39 61 00 50 */	addi r11, r1, 0x50
/* 804DF394  4B E8 2E 3D */	bl _savegpr_26
/* 804DF398  7C 7B 1B 78 */	mr r27, r3
/* 804DF39C  7C 9C 23 78 */	mr r28, r4
/* 804DF3A0  3C 80 80 4E */	lis r4, lit_3765@ha /* 0x804DF8B8@ha */
/* 804DF3A4  3B E4 F8 B8 */	addi r31, r4, lit_3765@l /* 0x804DF8B8@l */
/* 804DF3A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DF3AC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DF3B0  83 C4 5D B4 */	lwz r30, 0x5db4(r4)
/* 804DF3B4  4B FF F8 61 */	bl setAnime__9daCstaF_cFv
/* 804DF3B8  7F 63 DB 78 */	mr r3, r27
/* 804DF3BC  4B FF F2 DD */	bl posMove__9daCstaF_cFv
/* 804DF3C0  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 804DF3C4  C0 1B 07 88 */	lfs f0, 0x788(r27)
/* 804DF3C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804DF3CC  41 82 00 14 */	beq lbl_804DF3E0
/* 804DF3D0  38 7B 07 E0 */	addi r3, r27, 0x7e0
/* 804DF3D4  4B CC C0 ED */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 804DF3D8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804DF3DC  48 00 00 08 */	b lbl_804DF3E4
lbl_804DF3E0:
/* 804DF3E0  38 00 00 00 */	li r0, 0
lbl_804DF3E4:
/* 804DF3E4  7C 1D 03 78 */	mr r29, r0
/* 804DF3E8  80 1B 05 B4 */	lwz r0, 0x5b4(r27)
/* 804DF3EC  28 00 00 00 */	cmplwi r0, 0
/* 804DF3F0  41 82 00 A8 */	beq lbl_804DF498
/* 804DF3F4  3B 40 00 00 */	li r26, 0
/* 804DF3F8  88 1B 0B 10 */	lbz r0, 0xb10(r27)
/* 804DF3FC  28 00 00 00 */	cmplwi r0, 0
/* 804DF400  41 82 00 68 */	beq lbl_804DF468
/* 804DF404  80 7B 05 B8 */	lwz r3, 0x5b8(r27)
/* 804DF408  4B BC 9E 41 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 804DF40C  7C 7A 1B 78 */	mr r26, r3
/* 804DF410  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 804DF414  4B BC 9E 35 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 804DF418  7F 5A 18 38 */	and r26, r26, r3
/* 804DF41C  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 804DF420  7C 03 07 74 */	extsb r3, r0
/* 804DF424  4B B4 DC 49 */	bl dComIfGp_getReverb__Fi
/* 804DF428  7C 67 1B 78 */	mr r7, r3
/* 804DF42C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006015C@ha */
/* 804DF430  38 03 01 5C */	addi r0, r3, 0x015C /* 0x0006015C@l */
/* 804DF434  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DF438  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804DF43C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804DF440  80 63 00 00 */	lwz r3, 0(r3)
/* 804DF444  38 81 00 10 */	addi r4, r1, 0x10
/* 804DF448  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 804DF44C  38 C0 00 00 */	li r6, 0
/* 804DF450  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804DF454  FC 40 08 90 */	fmr f2, f1
/* 804DF458  C0 7F 00 C0 */	lfs f3, 0xc0(r31)
/* 804DF45C  FC 80 18 90 */	fmr f4, f3
/* 804DF460  39 00 00 00 */	li r8, 0
/* 804DF464  4B DC D0 A9 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804DF468:
/* 804DF468  2C 1A 00 00 */	cmpwi r26, 0
/* 804DF46C  40 82 00 20 */	bne lbl_804DF48C
/* 804DF470  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DF474  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DF478  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804DF47C  38 80 25 40 */	li r4, 0x2540
/* 804DF480  4B B5 55 3D */	bl isEventBit__11dSv_event_cCFUs
/* 804DF484  2C 03 00 00 */	cmpwi r3, 0
/* 804DF488  41 82 00 10 */	beq lbl_804DF498
lbl_804DF48C:
/* 804DF48C  38 00 00 00 */	li r0, 0
/* 804DF490  90 1B 05 B4 */	stw r0, 0x5b4(r27)
/* 804DF494  98 1B 0B 10 */	stb r0, 0xb10(r27)
lbl_804DF498:
/* 804DF498  80 7B 05 B0 */	lwz r3, 0x5b0(r27)
/* 804DF49C  7F A4 EB 78 */	mr r4, r29
/* 804DF4A0  88 BB 0B 08 */	lbz r5, 0xb08(r27)
/* 804DF4A4  4B B3 1C 0D */	bl play__16mDoExt_McaMorfSOFUlSc
/* 804DF4A8  88 1B 0B 0A */	lbz r0, 0xb0a(r27)
/* 804DF4AC  28 00 00 02 */	cmplwi r0, 2
/* 804DF4B0  40 82 00 E8 */	bne lbl_804DF598
/* 804DF4B4  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 804DF4B8  28 00 00 65 */	cmplwi r0, 0x65
/* 804DF4BC  40 82 00 DC */	bne lbl_804DF598
/* 804DF4C0  80 7B 05 B0 */	lwz r3, 0x5b0(r27)
/* 804DF4C4  A8 03 00 14 */	lha r0, 0x14(r3)
/* 804DF4C8  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 804DF4CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DF4D0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804DF4D4  3C 00 43 30 */	lis r0, 0x4330
/* 804DF4D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DF4DC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804DF4E0  EF E0 08 28 */	fsubs f31, f0, f1
/* 804DF4E4  7F C3 F3 78 */	mr r3, r30
/* 804DF4E8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 804DF4EC  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 804DF4F0  7D 89 03 A6 */	mtctr r12
/* 804DF4F4  4E 80 04 21 */	bctrl 
/* 804DF4F8  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 804DF4FC  40 81 00 50 */	ble lbl_804DF54C
/* 804DF500  7F C3 F3 78 */	mr r3, r30
/* 804DF504  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 804DF508  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 804DF50C  7D 89 03 A6 */	mtctr r12
/* 804DF510  4E 80 04 21 */	bctrl 
/* 804DF514  FC 00 08 1E */	fctiwz f0, f1
/* 804DF518  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804DF51C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804DF520  7C 00 07 34 */	extsh r0, r0
/* 804DF524  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 804DF528  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DF52C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DF530  3C 00 43 30 */	lis r0, 0x4330
/* 804DF534  90 01 00 20 */	stw r0, 0x20(r1)
/* 804DF538  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804DF53C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804DF540  80 7B 05 B0 */	lwz r3, 0x5b0(r27)
/* 804DF544  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804DF548  48 00 00 50 */	b lbl_804DF598
lbl_804DF54C:
/* 804DF54C  80 9B 05 B0 */	lwz r4, 0x5b0(r27)
/* 804DF550  A8 04 00 14 */	lha r0, 0x14(r4)
/* 804DF554  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 804DF558  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DF55C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DF560  3C 60 43 30 */	lis r3, 0x4330
/* 804DF564  90 61 00 20 */	stw r3, 0x20(r1)
/* 804DF568  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804DF56C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804DF570  FC 00 00 1E */	fctiwz f0, f0
/* 804DF574  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804DF578  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804DF57C  7C 00 07 34 */	extsh r0, r0
/* 804DF580  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DF584  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804DF588  90 61 00 28 */	stw r3, 0x28(r1)
/* 804DF58C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804DF590  EC 00 08 28 */	fsubs f0, f0, f1
/* 804DF594  D0 04 00 1C */	stfs f0, 0x1c(r4)
lbl_804DF598:
/* 804DF598  7F 63 DB 78 */	mr r3, r27
/* 804DF59C  4B FF EF BD */	bl setRoomInfo__9daCstaF_cFv
/* 804DF5A0  7F 63 DB 78 */	mr r3, r27
/* 804DF5A4  4B FF F0 4D */	bl setMatrix__9daCstaF_cFv
/* 804DF5A8  38 7B 09 04 */	addi r3, r27, 0x904
/* 804DF5AC  4B BA 4E B5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 804DF5B0  28 03 00 00 */	cmplwi r3, 0
/* 804DF5B4  41 82 00 50 */	beq lbl_804DF604
/* 804DF5B8  38 7B 09 04 */	addi r3, r27, 0x904
/* 804DF5BC  4B BA 4F 8D */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 804DF5C0  28 03 00 00 */	cmplwi r3, 0
/* 804DF5C4  41 82 00 40 */	beq lbl_804DF604
/* 804DF5C8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 804DF5CC  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 804DF5D0  28 00 00 00 */	cmplwi r0, 0
/* 804DF5D4  41 82 00 30 */	beq lbl_804DF604
/* 804DF5D8  38 7B 09 04 */	addi r3, r27, 0x904
/* 804DF5DC  4B BA 4F A1 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 804DF5E0  38 80 00 01 */	li r4, 1
/* 804DF5E4  4B BA 4F CD */	bl getHitSeID__12dCcD_GObjInfFUci
/* 804DF5E8  7C 64 1B 78 */	mr r4, r3
/* 804DF5EC  38 7B 0A 40 */	addi r3, r27, 0xa40
/* 804DF5F0  38 A0 00 2A */	li r5, 0x2a
/* 804DF5F4  81 9B 0A 40 */	lwz r12, 0xa40(r27)
/* 804DF5F8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 804DF5FC  7D 89 03 A6 */	mtctr r12
/* 804DF600  4E 80 04 21 */	bctrl 
lbl_804DF604:
/* 804DF604  7F 63 DB 78 */	mr r3, r27
/* 804DF608  4B FF F5 59 */	bl setCollision__9daCstaF_cFv
/* 804DF60C  38 C0 00 00 */	li r6, 0
/* 804DF610  80 1B 07 1C */	lwz r0, 0x71c(r27)
/* 804DF614  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804DF618  41 82 00 08 */	beq lbl_804DF620
/* 804DF61C  38 C0 00 07 */	li r6, 7
lbl_804DF620:
/* 804DF620  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 804DF624  7C 00 07 74 */	extsb r0, r0
/* 804DF628  90 01 00 08 */	stw r0, 8(r1)
/* 804DF62C  38 7B 0A D0 */	addi r3, r27, 0xad0
/* 804DF630  38 9B 01 0C */	addi r4, r27, 0x10c
/* 804DF634  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 804DF638  38 E0 00 00 */	li r7, 0
/* 804DF63C  28 06 00 00 */	cmplwi r6, 0
/* 804DF640  41 82 00 0C */	beq lbl_804DF64C
/* 804DF644  7C A8 2B 78 */	mr r8, r5
/* 804DF648  48 00 00 08 */	b lbl_804DF650
lbl_804DF64C:
/* 804DF64C  39 00 00 00 */	li r8, 0
lbl_804DF650:
/* 804DF650  39 3B 04 DC */	addi r9, r27, 0x4dc
/* 804DF654  39 5B 04 EC */	addi r10, r27, 0x4ec
/* 804DF658  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804DF65C  C0 5B 05 2C */	lfs f2, 0x52c(r27)
/* 804DF660  4B B7 19 A9 */	bl setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff
/* 804DF664  80 7B 05 AC */	lwz r3, 0x5ac(r27)
/* 804DF668  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804DF66C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804DF670  90 1C 00 00 */	stw r0, 0(r28)
/* 804DF674  38 00 00 00 */	li r0, 0
/* 804DF678  98 1B 0B 0D */	stb r0, 0xb0d(r27)
/* 804DF67C  7F C3 F3 78 */	mr r3, r30
/* 804DF680  4B C0 1C F5 */	bl getCopyRodControllActor__9daAlink_cFv
/* 804DF684  7C 03 D8 40 */	cmplw r3, r27
/* 804DF688  40 82 00 10 */	bne lbl_804DF698
/* 804DF68C  38 00 00 C8 */	li r0, 0xc8
/* 804DF690  98 1B 08 DC */	stb r0, 0x8dc(r27)
/* 804DF694  48 00 00 0C */	b lbl_804DF6A0
lbl_804DF698:
/* 804DF698  38 00 00 FF */	li r0, 0xff
/* 804DF69C  98 1B 08 DC */	stb r0, 0x8dc(r27)
lbl_804DF6A0:
/* 804DF6A0  38 60 00 01 */	li r3, 1
/* 804DF6A4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804DF6A8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804DF6AC  39 61 00 50 */	addi r11, r1, 0x50
/* 804DF6B0  4B E8 2B 6D */	bl _restgpr_26
/* 804DF6B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804DF6B8  7C 08 03 A6 */	mtlr r0
/* 804DF6BC  38 21 00 60 */	addi r1, r1, 0x60
/* 804DF6C0  4E 80 00 20 */	blr 
