lbl_80C6DC64:
/* 80C6DC64  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80C6DC68  7C 08 02 A6 */	mflr r0
/* 80C6DC6C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C6DC70  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80C6DC74  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80C6DC78  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80C6DC7C  4B 6F 45 4D */	bl _savegpr_24
/* 80C6DC80  7C 7D 1B 78 */	mr r29, r3
/* 80C6DC84  7C 9E 23 78 */	mr r30, r4
/* 80C6DC88  3C 60 80 C7 */	lis r3, l_bmdidx@ha /* 0x80C6E980@ha */
/* 80C6DC8C  3B E3 E9 80 */	addi r31, r3, l_bmdidx@l /* 0x80C6E980@l */
/* 80C6DC90  A8 9D 06 1C */	lha r4, 0x61c(r29)
/* 80C6DC94  7C 80 07 35 */	extsh. r0, r4
/* 80C6DC98  40 80 00 0C */	bge lbl_80C6DCA4
/* 80C6DC9C  1C 04 FF FF */	mulli r0, r4, -1
/* 80C6DCA0  7C 04 07 34 */	extsh r4, r0
lbl_80C6DCA4:
/* 80C6DCA4  C0 5D 0C 90 */	lfs f2, 0xc90(r29)
/* 80C6DCA8  FC 00 12 10 */	fabs f0, f2
/* 80C6DCAC  FC 20 00 18 */	frsp f1, f0
/* 80C6DCB0  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80C6DCB4  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80C6DCB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6DCBC  41 80 02 54 */	blt lbl_80C6DF10
/* 80C6DCC0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C6DCC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C6DCC8  40 80 00 0C */	bge lbl_80C6DCD4
/* 80C6DCCC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C6DCD0  D0 1D 0C 90 */	stfs f0, 0xc90(r29)
lbl_80C6DCD4:
/* 80C6DCD4  88 1D 06 20 */	lbz r0, 0x620(r29)
/* 80C6DCD8  28 00 00 00 */	cmplwi r0, 0
/* 80C6DCDC  41 82 01 14 */	beq lbl_80C6DDF0
/* 80C6DCE0  C0 9F 00 30 */	lfs f4, 0x30(r31)
/* 80C6DCE4  C0 BD 0C 90 */	lfs f5, 0xc90(r29)
/* 80C6DCE8  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80C6DCEC  EC 43 01 72 */	fmuls f2, f3, f5
/* 80C6DCF0  7C 80 07 34 */	extsh r0, r4
/* 80C6DCF4  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 80C6DCF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6DCFC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80C6DD00  3C 00 43 30 */	lis r0, 0x4330
/* 80C6DD04  90 01 00 78 */	stw r0, 0x78(r1)
/* 80C6DD08  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80C6DD0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C6DD10  EC 02 00 28 */	fsubs f0, f2, f0
/* 80C6DD14  EC 00 18 24 */	fdivs f0, f0, f3
/* 80C6DD18  EC 05 00 32 */	fmuls f0, f5, f0
/* 80C6DD1C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80C6DD20  FC 00 00 1E */	fctiwz f0, f0
/* 80C6DD24  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80C6DD28  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C6DD2C  B0 1D 06 1E */	sth r0, 0x61e(r29)
/* 80C6DD30  A8 1D 06 1E */	lha r0, 0x61e(r29)
/* 80C6DD34  2C 00 00 23 */	cmpwi r0, 0x23
/* 80C6DD38  40 80 00 0C */	bge lbl_80C6DD44
/* 80C6DD3C  38 00 00 23 */	li r0, 0x23
/* 80C6DD40  B0 1D 06 1E */	sth r0, 0x61e(r29)
lbl_80C6DD44:
/* 80C6DD44  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80C6DD48  A8 1D 06 1E */	lha r0, 0x61e(r29)
/* 80C6DD4C  7C 03 02 15 */	add. r0, r3, r0
/* 80C6DD50  40 81 00 4C */	ble lbl_80C6DD9C
/* 80C6DD54  7C 60 07 35 */	extsh. r0, r3
/* 80C6DD58  40 80 00 44 */	bge lbl_80C6DD9C
/* 80C6DD5C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801DB@ha */
/* 80C6DD60  38 03 01 DB */	addi r0, r3, 0x01DB /* 0x000801DB@l */
/* 80C6DD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6DD68  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C6DD6C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C6DD70  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6DD74  38 81 00 14 */	addi r4, r1, 0x14
/* 80C6DD78  38 BD 0C 94 */	addi r5, r29, 0xc94
/* 80C6DD7C  A8 DD 06 1E */	lha r6, 0x61e(r29)
/* 80C6DD80  38 E0 00 00 */	li r7, 0
/* 80C6DD84  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C6DD88  FC 40 08 90 */	fmr f2, f1
/* 80C6DD8C  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80C6DD90  FC 80 18 90 */	fmr f4, f3
/* 80C6DD94  39 00 00 00 */	li r8, 0
/* 80C6DD98  4B 63 DB ED */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C6DD9C:
/* 80C6DD9C  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80C6DDA0  A8 1D 06 1E */	lha r0, 0x61e(r29)
/* 80C6DDA4  7C 03 02 14 */	add r0, r3, r0
/* 80C6DDA8  B0 1D 06 1C */	sth r0, 0x61c(r29)
/* 80C6DDAC  A8 1D 06 1C */	lha r0, 0x61c(r29)
/* 80C6DDB0  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 80C6DDB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6DDB8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C6DDBC  3C 00 43 30 */	lis r0, 0x4330
/* 80C6DDC0  90 01 00 80 */	stw r0, 0x80(r1)
/* 80C6DDC4  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80C6DDC8  EC 40 08 28 */	fsubs f2, f0, f1
/* 80C6DDCC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C6DDD0  C0 1D 0C 90 */	lfs f0, 0xc90(r29)
/* 80C6DDD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C6DDD8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C6DDDC  4C 41 13 82 */	cror 2, 1, 2
/* 80C6DDE0  40 82 01 20 */	bne lbl_80C6DF00
/* 80C6DDE4  38 00 00 00 */	li r0, 0
/* 80C6DDE8  98 1D 06 20 */	stb r0, 0x620(r29)
/* 80C6DDEC  48 00 01 14 */	b lbl_80C6DF00
lbl_80C6DDF0:
/* 80C6DDF0  C0 9F 00 3C */	lfs f4, 0x3c(r31)
/* 80C6DDF4  C0 BD 0C 90 */	lfs f5, 0xc90(r29)
/* 80C6DDF8  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80C6DDFC  EC 43 01 72 */	fmuls f2, f3, f5
/* 80C6DE00  7C 80 07 34 */	extsh r0, r4
/* 80C6DE04  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 80C6DE08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6DE0C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C6DE10  3C 00 43 30 */	lis r0, 0x4330
/* 80C6DE14  90 01 00 80 */	stw r0, 0x80(r1)
/* 80C6DE18  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80C6DE1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C6DE20  EC 02 00 28 */	fsubs f0, f2, f0
/* 80C6DE24  EC 00 18 24 */	fdivs f0, f0, f3
/* 80C6DE28  EC 05 00 32 */	fmuls f0, f5, f0
/* 80C6DE2C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80C6DE30  FC 00 00 1E */	fctiwz f0, f0
/* 80C6DE34  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80C6DE38  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80C6DE3C  B0 1D 06 1E */	sth r0, 0x61e(r29)
/* 80C6DE40  A8 1D 06 1E */	lha r0, 0x61e(r29)
/* 80C6DE44  2C 00 FF DD */	cmpwi r0, -35
/* 80C6DE48  40 81 00 0C */	ble lbl_80C6DE54
/* 80C6DE4C  38 00 FF DD */	li r0, -35
/* 80C6DE50  B0 1D 06 1E */	sth r0, 0x61e(r29)
lbl_80C6DE54:
/* 80C6DE54  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80C6DE58  A8 1D 06 1E */	lha r0, 0x61e(r29)
/* 80C6DE5C  7C 03 02 15 */	add. r0, r3, r0
/* 80C6DE60  40 80 00 50 */	bge lbl_80C6DEB0
/* 80C6DE64  7C 60 07 35 */	extsh. r0, r3
/* 80C6DE68  40 81 00 48 */	ble lbl_80C6DEB0
/* 80C6DE6C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801DB@ha */
/* 80C6DE70  38 03 01 DB */	addi r0, r3, 0x01DB /* 0x000801DB@l */
/* 80C6DE74  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C6DE78  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C6DE7C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C6DE80  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6DE84  38 81 00 10 */	addi r4, r1, 0x10
/* 80C6DE88  38 BD 0C 94 */	addi r5, r29, 0xc94
/* 80C6DE8C  A8 1D 06 1E */	lha r0, 0x61e(r29)
/* 80C6DE90  7C C0 00 D0 */	neg r6, r0
/* 80C6DE94  38 E0 00 00 */	li r7, 0
/* 80C6DE98  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C6DE9C  FC 40 08 90 */	fmr f2, f1
/* 80C6DEA0  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80C6DEA4  FC 80 18 90 */	fmr f4, f3
/* 80C6DEA8  39 00 00 00 */	li r8, 0
/* 80C6DEAC  4B 63 DA D9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C6DEB0:
/* 80C6DEB0  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80C6DEB4  A8 1D 06 1E */	lha r0, 0x61e(r29)
/* 80C6DEB8  7C 03 02 14 */	add r0, r3, r0
/* 80C6DEBC  B0 1D 06 1C */	sth r0, 0x61c(r29)
/* 80C6DEC0  A8 1D 06 1C */	lha r0, 0x61c(r29)
/* 80C6DEC4  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 80C6DEC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6DECC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C6DED0  3C 00 43 30 */	lis r0, 0x4330
/* 80C6DED4  90 01 00 80 */	stw r0, 0x80(r1)
/* 80C6DED8  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80C6DEDC  EC 40 08 28 */	fsubs f2, f0, f1
/* 80C6DEE0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C6DEE4  C0 1D 0C 90 */	lfs f0, 0xc90(r29)
/* 80C6DEE8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C6DEEC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C6DEF0  4C 40 13 82 */	cror 2, 0, 2
/* 80C6DEF4  40 82 00 0C */	bne lbl_80C6DF00
/* 80C6DEF8  38 00 00 01 */	li r0, 1
/* 80C6DEFC  98 1D 06 20 */	stb r0, 0x620(r29)
lbl_80C6DF00:
/* 80C6DF00  C0 3D 0C 90 */	lfs f1, 0xc90(r29)
/* 80C6DF04  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C6DF08  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C6DF0C  D0 1D 0C 90 */	stfs f0, 0xc90(r29)
lbl_80C6DF10:
/* 80C6DF10  7F A3 EB 78 */	mr r3, r29
/* 80C6DF14  4B FF F8 CD */	bl setMtx__14daObjYchndlr_cFv
/* 80C6DF18  38 1D 05 A8 */	addi r0, r29, 0x5a8
/* 80C6DF1C  90 1E 00 00 */	stw r0, 0(r30)
/* 80C6DF20  3B 00 00 00 */	li r24, 0
/* 80C6DF24  3B 80 00 00 */	li r28, 0
/* 80C6DF28  3B 60 00 00 */	li r27, 0
/* 80C6DF2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6DF30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6DF34  3B C3 23 3C */	addi r30, r3, 0x233c
/* 80C6DF38  3C 60 80 C7 */	lis r3, l_shaft_vec@ha /* 0x80C6E9F8@ha */
/* 80C6DF3C  3B 43 E9 F8 */	addi r26, r3, l_shaft_vec@l /* 0x80C6E9F8@l */
lbl_80C6DF40:
/* 80C6DF40  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80C6DF44  7C 9A DA 14 */	add r4, r26, r27
/* 80C6DF48  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80C6DF4C  4B 6D 8E 21 */	bl PSMTXMultVec
/* 80C6DF50  7F 3D E2 14 */	add r25, r29, r28
/* 80C6DF54  38 79 07 84 */	addi r3, r25, 0x784
/* 80C6DF58  38 81 00 6C */	addi r4, r1, 0x6c
/* 80C6DF5C  4B 60 12 81 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C6DF60  7F C3 F3 78 */	mr r3, r30
/* 80C6DF64  38 99 06 60 */	addi r4, r25, 0x660
/* 80C6DF68  4B 5F 6C 41 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C6DF6C  3B 18 00 01 */	addi r24, r24, 1
/* 80C6DF70  2C 18 00 04 */	cmpwi r24, 4
/* 80C6DF74  3B 9C 01 3C */	addi r28, r28, 0x13c
/* 80C6DF78  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80C6DF7C  41 80 FF C4 */	blt lbl_80C6DF40
/* 80C6DF80  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80C6DF84  4B 41 64 DD */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C6DF88  28 03 00 00 */	cmplwi r3, 0
/* 80C6DF8C  41 82 01 84 */	beq lbl_80C6E110
/* 80C6DF90  88 1D 0C 8C */	lbz r0, 0xc8c(r29)
/* 80C6DF94  28 00 00 00 */	cmplwi r0, 0
/* 80C6DF98  40 82 01 78 */	bne lbl_80C6E110
/* 80C6DF9C  38 61 00 24 */	addi r3, r1, 0x24
/* 80C6DFA0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6DFA4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6DFA8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80C6DFAC  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80C6DFB0  38 BD 0C 94 */	addi r5, r29, 0xc94
/* 80C6DFB4  4B 5F 8B 81 */	bl __mi__4cXyzCFRC3Vec
/* 80C6DFB8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C6DFBC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80C6DFC0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C6DFC4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80C6DFC8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C6DFCC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C6DFD0  38 61 00 60 */	addi r3, r1, 0x60
/* 80C6DFD4  4B 6D 91 65 */	bl PSVECSquareMag
/* 80C6DFD8  FC 00 0A 10 */	fabs f0, f1
/* 80C6DFDC  FC 20 00 18 */	frsp f1, f0
/* 80C6DFE0  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80C6DFE4  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80C6DFE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6DFEC  41 80 01 24 */	blt lbl_80C6E110
/* 80C6DFF0  38 61 00 18 */	addi r3, r1, 0x18
/* 80C6DFF4  38 81 00 60 */	addi r4, r1, 0x60
/* 80C6DFF8  4B 5F 8E FD */	bl normalize__4cXyzFv
/* 80C6DFFC  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80C6E000  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 80C6E004  4B 5F 96 71 */	bl cM_atan2s__Fff
/* 80C6E008  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C6E00C  7C 03 00 50 */	subf r0, r3, r0
/* 80C6E010  7C 00 07 34 */	extsh r0, r0
/* 80C6E014  2C 00 2F FF */	cmpwi r0, 0x2fff
/* 80C6E018  40 81 00 6C */	ble lbl_80C6E084
/* 80C6E01C  2C 00 4F FF */	cmpwi r0, 0x4fff
/* 80C6E020  40 80 00 64 */	bge lbl_80C6E084
/* 80C6E024  A8 DD 06 1E */	lha r6, 0x61e(r29)
/* 80C6E028  7C C0 07 35 */	extsh. r0, r6
/* 80C6E02C  40 80 00 08 */	bge lbl_80C6E034
/* 80C6E030  7C C6 00 D0 */	neg r6, r6
lbl_80C6E034:
/* 80C6E034  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801DA@ha */
/* 80C6E038  38 03 01 DA */	addi r0, r3, 0x01DA /* 0x000801DA@l */
/* 80C6E03C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C6E040  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C6E044  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C6E048  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6E04C  38 81 00 0C */	addi r4, r1, 0xc
/* 80C6E050  38 BD 0C 94 */	addi r5, r29, 0xc94
/* 80C6E054  38 E0 00 00 */	li r7, 0
/* 80C6E058  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C6E05C  FC 40 08 90 */	fmr f2, f1
/* 80C6E060  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80C6E064  FC 80 18 90 */	fmr f4, f3
/* 80C6E068  39 00 00 00 */	li r8, 0
/* 80C6E06C  4B 63 D9 19 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C6E070  38 00 00 01 */	li r0, 1
/* 80C6E074  98 1D 06 20 */	stb r0, 0x620(r29)
/* 80C6E078  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C6E07C  D0 1D 0C 90 */	stfs f0, 0xc90(r29)
/* 80C6E080  48 00 00 90 */	b lbl_80C6E110
lbl_80C6E084:
/* 80C6E084  2C 00 D0 01 */	cmpwi r0, -12287
/* 80C6E088  40 80 00 6C */	bge lbl_80C6E0F4
/* 80C6E08C  2C 00 B0 01 */	cmpwi r0, -20479
/* 80C6E090  40 81 00 64 */	ble lbl_80C6E0F4
/* 80C6E094  A8 DD 06 1E */	lha r6, 0x61e(r29)
/* 80C6E098  7C C0 07 35 */	extsh. r0, r6
/* 80C6E09C  40 80 00 08 */	bge lbl_80C6E0A4
/* 80C6E0A0  7C C6 00 D0 */	neg r6, r6
lbl_80C6E0A4:
/* 80C6E0A4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801DA@ha */
/* 80C6E0A8  38 03 01 DA */	addi r0, r3, 0x01DA /* 0x000801DA@l */
/* 80C6E0AC  90 01 00 08 */	stw r0, 8(r1)
/* 80C6E0B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C6E0B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C6E0B8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6E0BC  38 81 00 08 */	addi r4, r1, 8
/* 80C6E0C0  38 BD 0C 94 */	addi r5, r29, 0xc94
/* 80C6E0C4  38 E0 00 00 */	li r7, 0
/* 80C6E0C8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C6E0CC  FC 40 08 90 */	fmr f2, f1
/* 80C6E0D0  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80C6E0D4  FC 80 18 90 */	fmr f4, f3
/* 80C6E0D8  39 00 00 00 */	li r8, 0
/* 80C6E0DC  4B 63 D8 A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C6E0E0  38 00 00 00 */	li r0, 0
/* 80C6E0E4  98 1D 06 20 */	stb r0, 0x620(r29)
/* 80C6E0E8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C6E0EC  D0 1D 0C 90 */	stfs f0, 0xc90(r29)
/* 80C6E0F0  48 00 00 20 */	b lbl_80C6E110
lbl_80C6E0F4:
/* 80C6E0F4  C0 3D 0C 90 */	lfs f1, 0xc90(r29)
/* 80C6E0F8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C6E0FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6E100  40 80 00 10 */	bge lbl_80C6E110
/* 80C6E104  38 00 00 01 */	li r0, 1
/* 80C6E108  98 1D 06 20 */	stb r0, 0x620(r29)
/* 80C6E10C  D0 1D 0C 90 */	stfs f0, 0xc90(r29)
lbl_80C6E110:
/* 80C6E110  C0 1D 0C 94 */	lfs f0, 0xc94(r29)
/* 80C6E114  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C6E118  C0 3D 0C 98 */	lfs f1, 0xc98(r29)
/* 80C6E11C  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80C6E120  C0 1D 0C 9C */	lfs f0, 0xc9c(r29)
/* 80C6E124  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80C6E128  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C6E12C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C6E130  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C6E134  38 7D 0C 74 */	addi r3, r29, 0xc74
/* 80C6E138  38 81 00 54 */	addi r4, r1, 0x54
/* 80C6E13C  4B 60 10 A1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C6E140  7F C3 F3 78 */	mr r3, r30
/* 80C6E144  38 9D 0B 50 */	addi r4, r29, 0xb50
/* 80C6E148  4B 5F 6A 61 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C6E14C  38 7D 06 40 */	addi r3, r29, 0x640
/* 80C6E150  4B 41 56 E1 */	bl Move__10dCcD_GSttsFv
/* 80C6E154  88 1D 0C 8C */	lbz r0, 0xc8c(r29)
/* 80C6E158  28 00 00 00 */	cmplwi r0, 0
/* 80C6E15C  41 82 00 20 */	beq lbl_80C6E17C
/* 80C6E160  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80C6E164  54 00 00 3E */	slwi r0, r0, 0
/* 80C6E168  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80C6E16C  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 80C6E170  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80C6E174  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80C6E178  48 00 01 5C */	b lbl_80C6E2D4
lbl_80C6E17C:
/* 80C6E17C  38 00 00 04 */	li r0, 4
/* 80C6E180  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80C6E184  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C6E188  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C6E18C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C6E190  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C6E194  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C6E198  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C6E19C  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80C6E1A0  38 81 00 30 */	addi r4, r1, 0x30
/* 80C6E1A4  38 A1 00 48 */	addi r5, r1, 0x48
/* 80C6E1A8  4B 6D 8B C5 */	bl PSMTXMultVec
/* 80C6E1AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6E1B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6E1B4  83 03 5D AC */	lwz r24, 0x5dac(r3)
/* 80C6E1B8  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80C6E1BC  38 81 00 48 */	addi r4, r1, 0x48
/* 80C6E1C0  4B 6D 91 DD */	bl PSVECSquareDistance
/* 80C6E1C4  FF E0 08 90 */	fmr f31, f1
/* 80C6E1C8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C6E1CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C6E1D0  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80C6E1D4  38 81 00 30 */	addi r4, r1, 0x30
/* 80C6E1D8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80C6E1DC  4B 6D 8B 91 */	bl PSMTXMultVec
/* 80C6E1E0  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80C6E1E4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80C6E1E8  4B 6D 91 B5 */	bl PSVECSquareDistance
/* 80C6E1EC  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C6E1F0  40 81 00 20 */	ble lbl_80C6E210
/* 80C6E1F4  FF E0 08 90 */	fmr f31, f1
/* 80C6E1F8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80C6E1FC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C6E200  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80C6E204  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C6E208  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80C6E20C  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80C6E210:
/* 80C6E210  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C6E214  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C6E218  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C6E21C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C6E220  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80C6E224  38 81 00 30 */	addi r4, r1, 0x30
/* 80C6E228  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80C6E22C  4B 6D 8B 41 */	bl PSMTXMultVec
/* 80C6E230  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80C6E234  38 81 00 3C */	addi r4, r1, 0x3c
/* 80C6E238  4B 6D 91 65 */	bl PSVECSquareDistance
/* 80C6E23C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C6E240  40 81 00 20 */	ble lbl_80C6E260
/* 80C6E244  FF E0 08 90 */	fmr f31, f1
/* 80C6E248  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80C6E24C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C6E250  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80C6E254  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C6E258  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80C6E25C  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80C6E260:
/* 80C6E260  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C6E264  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C6E268  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80C6E26C  38 81 00 30 */	addi r4, r1, 0x30
/* 80C6E270  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80C6E274  4B 6D 8A F9 */	bl PSMTXMultVec
/* 80C6E278  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80C6E27C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80C6E280  4B 6D 91 1D */	bl PSVECSquareDistance
/* 80C6E284  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C6E288  40 81 00 1C */	ble lbl_80C6E2A4
/* 80C6E28C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80C6E290  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C6E294  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80C6E298  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C6E29C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80C6E2A0  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80C6E2A4:
/* 80C6E2A4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80C6E2A8  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80C6E2AC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80C6E2B0  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80C6E2B4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80C6E2B8  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80C6E2BC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80C6E2C0  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80C6E2C4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80C6E2C8  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80C6E2CC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80C6E2D0  D0 1D 05 40 */	stfs f0, 0x540(r29)
lbl_80C6E2D4:
/* 80C6E2D4  38 00 00 00 */	li r0, 0
/* 80C6E2D8  98 1D 0C 8C */	stb r0, 0xc8c(r29)
/* 80C6E2DC  38 60 00 01 */	li r3, 1
/* 80C6E2E0  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80C6E2E4  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80C6E2E8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80C6E2EC  4B 6F 3F 29 */	bl _restgpr_24
/* 80C6E2F0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C6E2F4  7C 08 03 A6 */	mtlr r0
/* 80C6E2F8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80C6E2FC  4E 80 00 20 */	blr 
