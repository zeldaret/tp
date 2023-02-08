lbl_8007E9D4:
/* 8007E9D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8007E9D8  7C 08 02 A6 */	mflr r0
/* 8007E9DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8007E9E0  39 61 00 40 */	addi r11, r1, 0x40
/* 8007E9E4  48 2E 37 E9 */	bl _savegpr_25
/* 8007E9E8  7C 9C 23 78 */	mr r28, r4
/* 8007E9EC  7C BD 2B 78 */	mr r29, r5
/* 8007E9F0  7C DE 33 78 */	mr r30, r6
/* 8007E9F4  7C FF 3B 78 */	mr r31, r7
/* 8007E9F8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 8007E9FC  80 64 00 00 */	lwz r3, 0(r4)
/* 8007EA00  A0 1C 00 04 */	lhz r0, 4(r28)
/* 8007EA04  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007EA08  7C 63 02 14 */	add r3, r3, r0
/* 8007EA0C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8007EA10  D0 05 00 00 */	stfs f0, 0(r5)
/* 8007EA14  C0 03 00 04 */	lfs f0, 4(r3)
/* 8007EA18  D0 05 00 04 */	stfs f0, 4(r5)
/* 8007EA1C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8007EA20  D0 05 00 08 */	stfs f0, 8(r5)
/* 8007EA24  80 84 00 04 */	lwz r4, 4(r4)
/* 8007EA28  A0 1C 00 06 */	lhz r0, 6(r28)
/* 8007EA2C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007EA30  7F 64 02 14 */	add r27, r4, r0
/* 8007EA34  A0 1C 00 0A */	lhz r0, 0xa(r28)
/* 8007EA38  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007EA3C  7F 44 02 14 */	add r26, r4, r0
/* 8007EA40  A0 1C 00 0C */	lhz r0, 0xc(r28)
/* 8007EA44  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007EA48  7F 24 02 14 */	add r25, r4, r0
/* 8007EA4C  7F 63 DB 78 */	mr r3, r27
/* 8007EA50  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8007EA54  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007EA58  7C 84 02 14 */	add r4, r4, r0
/* 8007EA5C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8007EA60  48 2C 87 55 */	bl PSVECCrossProduct
/* 8007EA64  7F 43 D3 78 */	mr r3, r26
/* 8007EA68  7F 64 DB 78 */	mr r4, r27
/* 8007EA6C  38 A1 00 08 */	addi r5, r1, 8
/* 8007EA70  48 2C 87 45 */	bl PSVECCrossProduct
/* 8007EA74  38 61 00 14 */	addi r3, r1, 0x14
/* 8007EA78  7F 24 CB 78 */	mr r4, r25
/* 8007EA7C  48 2C 87 19 */	bl PSVECDotProduct
/* 8007EA80  FC 00 0A 10 */	fabs f0, f1
/* 8007EA84  FC 40 00 18 */	frsp f2, f0
/* 8007EA88  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007EA8C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8007EA90  40 80 00 0C */	bge lbl_8007EA9C
/* 8007EA94  38 60 00 00 */	li r3, 0
/* 8007EA98  48 00 00 78 */	b lbl_8007EB10
lbl_8007EA9C:
/* 8007EA9C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8007EAA0  EC 20 08 24 */	fdivs f1, f0, f1
/* 8007EAA4  38 61 00 14 */	addi r3, r1, 0x14
/* 8007EAA8  7C 64 1B 78 */	mr r4, r3
/* 8007EAAC  48 2C 86 2D */	bl PSVECScale
/* 8007EAB0  38 61 00 14 */	addi r3, r1, 0x14
/* 8007EAB4  7F A4 EB 78 */	mr r4, r29
/* 8007EAB8  7F E5 FB 78 */	mr r5, r31
/* 8007EABC  48 2C 85 D5 */	bl PSVECAdd
/* 8007EAC0  38 61 00 08 */	addi r3, r1, 8
/* 8007EAC4  7F 24 CB 78 */	mr r4, r25
/* 8007EAC8  48 2C 86 CD */	bl PSVECDotProduct
/* 8007EACC  FC 00 0A 10 */	fabs f0, f1
/* 8007EAD0  FC 40 00 18 */	frsp f2, f0
/* 8007EAD4  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007EAD8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8007EADC  40 80 00 0C */	bge lbl_8007EAE8
/* 8007EAE0  38 60 00 00 */	li r3, 0
/* 8007EAE4  48 00 00 2C */	b lbl_8007EB10
lbl_8007EAE8:
/* 8007EAE8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8007EAEC  EC 20 08 24 */	fdivs f1, f0, f1
/* 8007EAF0  38 61 00 08 */	addi r3, r1, 8
/* 8007EAF4  7C 64 1B 78 */	mr r4, r3
/* 8007EAF8  48 2C 85 E1 */	bl PSVECScale
/* 8007EAFC  38 61 00 08 */	addi r3, r1, 8
/* 8007EB00  7F A4 EB 78 */	mr r4, r29
/* 8007EB04  7F C5 F3 78 */	mr r5, r30
/* 8007EB08  48 2C 85 89 */	bl PSVECAdd
/* 8007EB0C  38 60 00 01 */	li r3, 1
lbl_8007EB10:
/* 8007EB10  39 61 00 40 */	addi r11, r1, 0x40
/* 8007EB14  48 2E 37 05 */	bl _restgpr_25
/* 8007EB18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8007EB1C  7C 08 03 A6 */	mtlr r0
/* 8007EB20  38 21 00 40 */	addi r1, r1, 0x40
/* 8007EB24  4E 80 00 20 */	blr 
