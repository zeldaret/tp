lbl_8004AE1C:
/* 8004AE1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8004AE20  7C 08 02 A6 */	mflr r0
/* 8004AE24  90 01 00 54 */	stw r0, 0x54(r1)
/* 8004AE28  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8004AE2C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8004AE30  39 61 00 40 */	addi r11, r1, 0x40
/* 8004AE34  48 31 73 99 */	bl _savegpr_25
/* 8004AE38  7C 7C 1B 78 */	mr r28, r3
/* 8004AE3C  7C 9D 23 78 */	mr r29, r4
/* 8004AE40  7F A3 EB 78 */	mr r3, r29
/* 8004AE44  48 23 40 ED */	bl getCurrentCreateNumber__14JPABaseEmitterCFv
/* 8004AE48  7C 7F 1B 79 */	or. r31, r3, r3
/* 8004AE4C  41 81 00 10 */	bgt lbl_8004AE5C
/* 8004AE50  38 00 00 00 */	li r0, 0
/* 8004AE54  B0 1C 00 0C */	sth r0, 0xc(r28)
/* 8004AE58  48 00 01 10 */	b lbl_8004AF68
lbl_8004AE5C:
/* 8004AE5C  83 DC 00 10 */	lwz r30, 0x10(r28)
/* 8004AE60  80 1D 00 F4 */	lwz r0, 0xf4(r29)
/* 8004AE64  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8004AE68  90 1D 00 F4 */	stw r0, 0xf4(r29)
/* 8004AE6C  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8004AE70  3B 43 D8 E4 */	addi r26, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8004AE74  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8004AE78  3B 63 4A C8 */	addi r27, r3, j3dSys@l /* 0x80434AC8@l */
/* 8004AE7C  48 00 00 E0 */	b lbl_8004AF5C
lbl_8004AE80:
/* 8004AE80  80 7E 00 00 */	lwz r3, 0(r30)
/* 8004AE84  80 1E 00 04 */	lwz r0, 4(r30)
/* 8004AE88  90 61 00 08 */	stw r3, 8(r1)
/* 8004AE8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004AE90  80 1E 00 08 */	lwz r0, 8(r30)
/* 8004AE94  90 01 00 10 */	stw r0, 0x10(r1)
/* 8004AE98  7F 43 D3 78 */	mr r3, r26
/* 8004AE9C  7F 64 DB 78 */	mr r4, r27
/* 8004AEA0  38 A1 00 08 */	addi r5, r1, 8
/* 8004AEA4  C0 22 85 70 */	lfs f1, lit_4391(r2)
/* 8004AEA8  48 22 8A 55 */	bl clip__11J3DUClipperCFPA4_Cf3Vecf
/* 8004AEAC  2C 03 00 00 */	cmpwi r3, 0
/* 8004AEB0  40 82 00 9C */	bne lbl_8004AF4C
/* 8004AEB4  C3 FD 00 10 */	lfs f31, 0x10(r29)
/* 8004AEB8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8004AEBC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8004AEC0  EC 20 F8 2A */	fadds f1, f0, f31
/* 8004AEC4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8004AEC8  D0 1D 00 A4 */	stfs f0, 0xa4(r29)
/* 8004AECC  D0 3D 00 A8 */	stfs f1, 0xa8(r29)
/* 8004AED0  D0 5D 00 AC */	stfs f2, 0xac(r29)
/* 8004AED4  88 9E 00 0E */	lbz r4, 0xe(r30)
/* 8004AED8  88 7E 00 0D */	lbz r3, 0xd(r30)
/* 8004AEDC  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 8004AEE0  98 1D 00 B8 */	stb r0, 0xb8(r29)
/* 8004AEE4  98 7D 00 B9 */	stb r3, 0xb9(r29)
/* 8004AEE8  98 9D 00 BA */	stb r4, 0xba(r29)
/* 8004AEEC  88 1E 00 0F */	lbz r0, 0xf(r30)
/* 8004AEF0  98 1D 00 BB */	stb r0, 0xbb(r29)
/* 8004AEF4  88 9E 00 12 */	lbz r4, 0x12(r30)
/* 8004AEF8  88 7E 00 11 */	lbz r3, 0x11(r30)
/* 8004AEFC  88 1E 00 10 */	lbz r0, 0x10(r30)
/* 8004AF00  98 1D 00 BC */	stb r0, 0xbc(r29)
/* 8004AF04  98 7D 00 BD */	stb r3, 0xbd(r29)
/* 8004AF08  98 9D 00 BE */	stb r4, 0xbe(r29)
/* 8004AF0C  3B 20 00 00 */	li r25, 0
/* 8004AF10  48 00 00 34 */	b lbl_8004AF44
lbl_8004AF14:
/* 8004AF14  7F A3 EB 78 */	mr r3, r29
/* 8004AF18  48 23 3B 29 */	bl createParticle__14JPABaseEmitterFv
/* 8004AF1C  28 03 00 00 */	cmplwi r3, 0
/* 8004AF20  41 82 00 2C */	beq lbl_8004AF4C
/* 8004AF24  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8004AF28  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8004AF2C  EC 20 F8 2A */	fadds f1, f0, f31
/* 8004AF30  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8004AF34  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8004AF38  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 8004AF3C  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 8004AF40  3B 39 00 01 */	addi r25, r25, 1
lbl_8004AF44:
/* 8004AF44  7C 19 F8 00 */	cmpw r25, r31
/* 8004AF48  41 80 FF CC */	blt lbl_8004AF14
lbl_8004AF4C:
/* 8004AF4C  A8 7C 00 0C */	lha r3, 0xc(r28)
/* 8004AF50  38 03 FF FF */	addi r0, r3, -1
/* 8004AF54  B0 1C 00 0C */	sth r0, 0xc(r28)
/* 8004AF58  3B DE 00 14 */	addi r30, r30, 0x14
lbl_8004AF5C:
/* 8004AF5C  A8 1C 00 0C */	lha r0, 0xc(r28)
/* 8004AF60  2C 00 00 00 */	cmpwi r0, 0
/* 8004AF64  40 82 FF 1C */	bne lbl_8004AE80
lbl_8004AF68:
/* 8004AF68  80 1D 00 F4 */	lwz r0, 0xf4(r29)
/* 8004AF6C  60 00 00 01 */	ori r0, r0, 1
/* 8004AF70  90 1D 00 F4 */	stw r0, 0xf4(r29)
/* 8004AF74  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8004AF78  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8004AF7C  39 61 00 40 */	addi r11, r1, 0x40
/* 8004AF80  48 31 72 99 */	bl _restgpr_25
/* 8004AF84  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8004AF88  7C 08 03 A6 */	mtlr r0
/* 8004AF8C  38 21 00 50 */	addi r1, r1, 0x50
/* 8004AF90  4E 80 00 20 */	blr 
