lbl_8045DE44:
/* 8045DE44  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8045DE48  7C 08 02 A6 */	mflr r0
/* 8045DE4C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8045DE50  39 61 00 40 */	addi r11, r1, 0x40
/* 8045DE54  4B F0 43 89 */	bl _savegpr_29
/* 8045DE58  7C 7D 1B 78 */	mr r29, r3
/* 8045DE5C  3C 60 80 46 */	lis r3, lit_3806@ha /* 0x8045E534@ha */
/* 8045DE60  3B E3 E5 34 */	addi r31, r3, lit_3806@l /* 0x8045E534@l */
/* 8045DE64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045DE68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045DE6C  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8045DE70  38 61 00 08 */	addi r3, r1, 8
/* 8045DE74  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8045DE78  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 8045DE7C  4B E0 8C B9 */	bl __mi__4cXyzCFRC3Vec
/* 8045DE80  C0 81 00 08 */	lfs f4, 8(r1)
/* 8045DE84  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 8045DE88  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8045DE8C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8045DE90  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8045DE94  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8045DE98  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8045DE9C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8045DEA0  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8045DEA4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8045DEA8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8045DEAC  38 83 00 04 */	addi r4, r3, 4
/* 8045DEB0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8045DEB4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8045DEB8  7C A4 04 2E */	lfsx f5, r4, r0
/* 8045DEBC  7C C3 04 2E */	lfsx f6, r3, r0
/* 8045DEC0  EC 23 01 B2 */	fmuls f1, f3, f6
/* 8045DEC4  EC 04 01 72 */	fmuls f0, f4, f5
/* 8045DEC8  EC 41 00 28 */	fsubs f2, f1, f0
/* 8045DECC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8045DED0  EC 23 01 72 */	fmuls f1, f3, f5
/* 8045DED4  EC 04 01 B2 */	fmuls f0, f4, f6
/* 8045DED8  EC 21 00 2A */	fadds f1, f1, f0
/* 8045DEDC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8045DEE0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8045DEE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045DEE8  40 81 00 0C */	ble lbl_8045DEF4
/* 8045DEEC  38 60 00 00 */	li r3, 0
/* 8045DEF0  48 00 00 68 */	b lbl_8045DF58
lbl_8045DEF4:
/* 8045DEF4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8045DEF8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8045DEFC  41 81 00 10 */	bgt lbl_8045DF0C
/* 8045DF00  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8045DF04  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8045DF08  40 80 00 0C */	bge lbl_8045DF14
lbl_8045DF0C:
/* 8045DF0C  38 60 00 00 */	li r3, 0
/* 8045DF10  48 00 00 48 */	b lbl_8045DF58
lbl_8045DF14:
/* 8045DF14  7F C3 F3 78 */	mr r3, r30
/* 8045DF18  7F A4 EB 78 */	mr r4, r29
/* 8045DF1C  4B BB C8 81 */	bl fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8045DF20  2C 03 30 00 */	cmpwi r3, 0x3000
/* 8045DF24  40 81 00 0C */	ble lbl_8045DF30
/* 8045DF28  38 60 00 00 */	li r3, 0
/* 8045DF2C  48 00 00 2C */	b lbl_8045DF58
lbl_8045DF30:
/* 8045DF30  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8045DF34  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8045DF38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045DF3C  40 81 00 10 */	ble lbl_8045DF4C
/* 8045DF40  38 00 00 01 */	li r0, 1
/* 8045DF44  98 1D 05 85 */	stb r0, 0x585(r29)
/* 8045DF48  48 00 00 0C */	b lbl_8045DF54
lbl_8045DF4C:
/* 8045DF4C  38 00 00 00 */	li r0, 0
/* 8045DF50  98 1D 05 85 */	stb r0, 0x585(r29)
lbl_8045DF54:
/* 8045DF54  38 60 00 01 */	li r3, 1
lbl_8045DF58:
/* 8045DF58  39 61 00 40 */	addi r11, r1, 0x40
/* 8045DF5C  4B F0 42 CD */	bl _restgpr_29
/* 8045DF60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8045DF64  7C 08 03 A6 */	mtlr r0
/* 8045DF68  38 21 00 40 */	addi r1, r1, 0x40
/* 8045DF6C  4E 80 00 20 */	blr 
