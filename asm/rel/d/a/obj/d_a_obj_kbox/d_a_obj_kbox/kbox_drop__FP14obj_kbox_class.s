lbl_80C3DE3C:
/* 80C3DE3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C3DE40  7C 08 02 A6 */	mflr r0
/* 80C3DE44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C3DE48  39 61 00 30 */	addi r11, r1, 0x30
/* 80C3DE4C  4B 72 43 91 */	bl _savegpr_29
/* 80C3DE50  7C 7D 1B 78 */	mr r29, r3
/* 80C3DE54  3C 60 80 C4 */	lis r3, lit_3648@ha /* 0x80C3F058@ha */
/* 80C3DE58  3B E3 F0 58 */	addi r31, r3, lit_3648@l /* 0x80C3F058@l */
/* 80C3DE5C  3B C0 00 01 */	li r30, 1
/* 80C3DE60  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80C3DE64  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C3DE68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3DE6C  40 81 00 3C */	ble lbl_80C3DEA8
/* 80C3DE70  A8 1D 05 7E */	lha r0, 0x57e(r29)
/* 80C3DE74  2C 00 00 00 */	cmpwi r0, 0
/* 80C3DE78  40 82 00 30 */	bne lbl_80C3DEA8
/* 80C3DE7C  80 1D 06 2C */	lwz r0, 0x62c(r29)
/* 80C3DE80  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80C3DE84  41 82 00 24 */	beq lbl_80C3DEA8
/* 80C3DE88  38 00 00 28 */	li r0, 0x28
/* 80C3DE8C  B0 1D 05 7E */	sth r0, 0x57e(r29)
/* 80C3DE90  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80C3DE94  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 80C3DE98  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80C3DE9C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80C3DEA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C3DEA4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80C3DEA8:
/* 80C3DEA8  80 1D 06 2C */	lwz r0, 0x62c(r29)
/* 80C3DEAC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C3DEB0  41 82 00 68 */	beq lbl_80C3DF18
/* 80C3DEB4  A8 1D 05 7C */	lha r0, 0x57c(r29)
/* 80C3DEB8  2C 00 00 00 */	cmpwi r0, 0
/* 80C3DEBC  40 82 00 30 */	bne lbl_80C3DEEC
/* 80C3DEC0  38 00 00 01 */	li r0, 1
/* 80C3DEC4  B0 1D 05 7C */	sth r0, 0x57c(r29)
/* 80C3DEC8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C3DECC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80C3DED0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C3DED4  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 80C3DED8  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80C3DEDC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C3DEE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C3DEE4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80C3DEE8  48 00 00 30 */	b lbl_80C3DF18
lbl_80C3DEEC:
/* 80C3DEEC  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80C3DEF0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C3DEF4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80C3DEF8  4B 63 1B 89 */	bl cLib_addCalc0__FPfff
/* 80C3DEFC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C3DF00  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 80C3DF04  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C3DF08  40 82 00 10 */	bne lbl_80C3DF18
/* 80C3DF0C  38 00 00 00 */	li r0, 0
/* 80C3DF10  B0 1D 05 7A */	sth r0, 0x57a(r29)
/* 80C3DF14  B0 1D 05 7C */	sth r0, 0x57c(r29)
lbl_80C3DF18:
/* 80C3DF18  A8 1D 05 78 */	lha r0, 0x578(r29)
/* 80C3DF1C  1C 00 23 28 */	mulli r0, r0, 0x2328
/* 80C3DF20  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C3DF24  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C3DF28  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C3DF2C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C3DF30  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 80C3DF34  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C3DF38  FC 00 00 1E */	fctiwz f0, f0
/* 80C3DF3C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C3DF40  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C3DF44  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80C3DF48  A8 1D 05 78 */	lha r0, 0x578(r29)
/* 80C3DF4C  1C 00 1F 40 */	mulli r0, r0, 0x1f40
/* 80C3DF50  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C3DF54  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C3DF58  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 80C3DF5C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C3DF60  FC 00 00 1E */	fctiwz f0, f0
/* 80C3DF64  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C3DF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3DF6C  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80C3DF70  38 7D 05 94 */	addi r3, r29, 0x594
/* 80C3DF74  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C3DF78  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80C3DF7C  4B 63 1B 05 */	bl cLib_addCalc0__FPfff
/* 80C3DF80  A8 1D 05 80 */	lha r0, 0x580(r29)
/* 80C3DF84  2C 00 00 00 */	cmpwi r0, 0
/* 80C3DF88  41 82 00 08 */	beq lbl_80C3DF90
/* 80C3DF8C  3B C0 00 00 */	li r30, 0
lbl_80C3DF90:
/* 80C3DF90  7F C3 F3 78 */	mr r3, r30
/* 80C3DF94  39 61 00 30 */	addi r11, r1, 0x30
/* 80C3DF98  4B 72 42 91 */	bl _restgpr_29
/* 80C3DF9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C3DFA0  7C 08 03 A6 */	mtlr r0
/* 80C3DFA4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C3DFA8  4E 80 00 20 */	blr 
