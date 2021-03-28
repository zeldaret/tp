lbl_801EEF14:
/* 801EEF14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801EEF18  7C 08 02 A6 */	mflr r0
/* 801EEF1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EEF20  39 61 00 20 */	addi r11, r1, 0x20
/* 801EEF24  48 17 32 AD */	bl _savegpr_26
/* 801EEF28  7C 7E 1B 78 */	mr r30, r3
/* 801EEF2C  3B E0 00 00 */	li r31, 0
/* 801EEF30  3B A0 00 00 */	li r29, 0
/* 801EEF34  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801EEF38  3B 83 FA FC */	addi r28, r3, g_ringHIO@l
lbl_801EEF3C:
/* 801EEF3C  7F 7E EA 14 */	add r27, r30, r29
/* 801EEF40  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 801EEF44  28 00 00 00 */	cmplwi r0, 0
/* 801EEF48  41 82 01 AC */	beq lbl_801EF0F4
/* 801EEF4C  2C 1F 00 02 */	cmpwi r31, 2
/* 801EEF50  41 82 01 A4 */	beq lbl_801EF0F4
/* 801EEF54  C0 1B 05 98 */	lfs f0, 0x598(r27)
/* 801EEF58  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801EEF5C  38 03 FA FC */	addi r0, r3, g_ringHIO@l
/* 801EEF60  7F 40 EA 14 */	add r26, r0, r29
/* 801EEF64  C0 5A 00 54 */	lfs f2, 0x54(r26)
/* 801EEF68  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801EEF6C  40 82 00 14 */	bne lbl_801EEF80
/* 801EEF70  C0 3B 05 C0 */	lfs f1, 0x5c0(r27)
/* 801EEF74  C0 1A 00 7C */	lfs f0, 0x7c(r26)
/* 801EEF78  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801EEF7C  41 82 00 88 */	beq lbl_801EF004
lbl_801EEF80:
/* 801EEF80  D0 5B 05 98 */	stfs f2, 0x598(r27)
/* 801EEF84  C0 1A 00 7C */	lfs f0, 0x7c(r26)
/* 801EEF88  D0 1B 05 C0 */	stfs f0, 0x5c0(r27)
/* 801EEF8C  2C 1F 00 08 */	cmpwi r31, 8
/* 801EEF90  40 82 00 20 */	bne lbl_801EEFB0
/* 801EEF94  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 801EEF98  C0 3B 05 98 */	lfs f1, 0x598(r27)
/* 801EEF9C  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 801EEFA0  EC 21 00 2A */	fadds f1, f1, f0
/* 801EEFA4  C0 5B 05 C0 */	lfs f2, 0x5c0(r27)
/* 801EEFA8  48 06 56 09 */	bl paneTrans__8CPaneMgrFff
/* 801EEFAC  48 00 00 38 */	b lbl_801EEFE4
lbl_801EEFB0:
/* 801EEFB0  2C 1F 00 09 */	cmpwi r31, 9
/* 801EEFB4  40 82 00 20 */	bne lbl_801EEFD4
/* 801EEFB8  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 801EEFBC  C0 3B 05 98 */	lfs f1, 0x598(r27)
/* 801EEFC0  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 801EEFC4  EC 21 00 2A */	fadds f1, f1, f0
/* 801EEFC8  C0 5B 05 C0 */	lfs f2, 0x5c0(r27)
/* 801EEFCC  48 06 55 E5 */	bl paneTrans__8CPaneMgrFff
/* 801EEFD0  48 00 00 14 */	b lbl_801EEFE4
lbl_801EEFD4:
/* 801EEFD4  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 801EEFD8  C0 3B 05 98 */	lfs f1, 0x598(r27)
/* 801EEFDC  C0 5B 05 C0 */	lfs f2, 0x5c0(r27)
/* 801EEFE0  48 06 55 D1 */	bl paneTrans__8CPaneMgrFff
lbl_801EEFE4:
/* 801EEFE4  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 801EEFE8  28 03 00 00 */	cmplwi r3, 0
/* 801EEFEC  41 82 00 18 */	beq lbl_801EF004
/* 801EEFF0  2C 1F 00 01 */	cmpwi r31, 1
/* 801EEFF4  40 82 00 10 */	bne lbl_801EF004
/* 801EEFF8  C0 3B 05 98 */	lfs f1, 0x598(r27)
/* 801EEFFC  C0 5B 05 C0 */	lfs f2, 0x5c0(r27)
/* 801EF000  48 06 55 B1 */	bl paneTrans__8CPaneMgrFff
lbl_801EF004:
/* 801EF004  C0 1B 05 E8 */	lfs f0, 0x5e8(r27)
/* 801EF008  C0 3A 00 A4 */	lfs f1, 0xa4(r26)
/* 801EF00C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801EF010  41 82 00 E4 */	beq lbl_801EF0F4
/* 801EF014  D0 3B 05 E8 */	stfs f1, 0x5e8(r27)
/* 801EF018  2C 1F 00 08 */	cmpwi r31, 8
/* 801EF01C  41 82 00 0C */	beq lbl_801EF028
/* 801EF020  2C 1F 00 09 */	cmpwi r31, 9
/* 801EF024  40 82 00 34 */	bne lbl_801EF058
lbl_801EF028:
/* 801EF028  88 1E 06 CF */	lbz r0, 0x6cf(r30)
/* 801EF02C  38 9F FF F8 */	addi r4, r31, -8
/* 801EF030  7C 00 20 00 */	cmpw r0, r4
/* 801EF034  40 82 00 14 */	bne lbl_801EF048
/* 801EF038  7F C3 F3 78 */	mr r3, r30
/* 801EF03C  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 801EF040  4B FF CA 79 */	bl setButtonScale__12dMenu_Ring_cFif
/* 801EF044  48 00 00 48 */	b lbl_801EF08C
lbl_801EF048:
/* 801EF048  7F C3 F3 78 */	mr r3, r30
/* 801EF04C  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 801EF050  4B FF CA 69 */	bl setButtonScale__12dMenu_Ring_cFif
/* 801EF054  48 00 00 38 */	b lbl_801EF08C
lbl_801EF058:
/* 801EF058  2C 1F 00 05 */	cmpwi r31, 5
/* 801EF05C  41 82 00 0C */	beq lbl_801EF068
/* 801EF060  2C 1F 00 07 */	cmpwi r31, 7
/* 801EF064  40 82 00 28 */	bne lbl_801EF08C
lbl_801EF068:
/* 801EF068  C0 1B 05 E8 */	lfs f0, 0x5e8(r27)
/* 801EF06C  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 801EF070  80 63 00 04 */	lwz r3, 4(r3)
/* 801EF074  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801EF078  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801EF07C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EF080  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801EF084  7D 89 03 A6 */	mtctr r12
/* 801EF088  4E 80 04 21 */	bctrl 
lbl_801EF08C:
/* 801EF08C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 801EF090  28 03 00 00 */	cmplwi r3, 0
/* 801EF094  41 82 00 2C */	beq lbl_801EF0C0
/* 801EF098  2C 1F 00 01 */	cmpwi r31, 1
/* 801EF09C  40 82 00 24 */	bne lbl_801EF0C0
/* 801EF0A0  C0 1B 05 E8 */	lfs f0, 0x5e8(r27)
/* 801EF0A4  80 63 00 04 */	lwz r3, 4(r3)
/* 801EF0A8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801EF0AC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801EF0B0  81 83 00 00 */	lwz r12, 0(r3)
/* 801EF0B4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801EF0B8  7D 89 03 A6 */	mtctr r12
/* 801EF0BC  4E 80 04 21 */	bctrl 
lbl_801EF0C0:
/* 801EF0C0  2C 1F 00 05 */	cmpwi r31, 5
/* 801EF0C4  40 80 00 30 */	bge lbl_801EF0F4
/* 801EF0C8  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 801EF0CC  28 03 00 00 */	cmplwi r3, 0
/* 801EF0D0  41 82 00 24 */	beq lbl_801EF0F4
/* 801EF0D4  C0 1B 05 E8 */	lfs f0, 0x5e8(r27)
/* 801EF0D8  80 63 00 04 */	lwz r3, 4(r3)
/* 801EF0DC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801EF0E0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801EF0E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EF0E8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801EF0EC  7D 89 03 A6 */	mtctr r12
/* 801EF0F0  4E 80 04 21 */	bctrl 
lbl_801EF0F4:
/* 801EF0F4  3B FF 00 01 */	addi r31, r31, 1
/* 801EF0F8  2C 1F 00 0A */	cmpwi r31, 0xa
/* 801EF0FC  3B BD 00 04 */	addi r29, r29, 4
/* 801EF100  41 80 FE 3C */	blt lbl_801EEF3C
/* 801EF104  39 61 00 20 */	addi r11, r1, 0x20
/* 801EF108  48 17 31 15 */	bl _restgpr_26
/* 801EF10C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801EF110  7C 08 03 A6 */	mtlr r0
/* 801EF114  38 21 00 20 */	addi r1, r1, 0x20
/* 801EF118  4E 80 00 20 */	blr 
