lbl_8099EEA0:
/* 8099EEA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8099EEA4  7C 08 02 A6 */	mflr r0
/* 8099EEA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8099EEAC  39 61 00 40 */	addi r11, r1, 0x40
/* 8099EEB0  4B 9C 33 29 */	bl _savegpr_28
/* 8099EEB4  7C 7D 1B 78 */	mr r29, r3
/* 8099EEB8  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha /* 0x809A4ED0@ha */
/* 8099EEBC  3B E3 4E D0 */	addi r31, r3, M_attr__12daNpcCoach_c@l /* 0x809A4ED0@l */
/* 8099EEC0  80 1D 24 C0 */	lwz r0, 0x24c0(r29)
/* 8099EEC4  2C 00 00 00 */	cmpwi r0, 0
/* 8099EEC8  40 81 00 9C */	ble lbl_8099EF64
/* 8099EECC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8099EED0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099EED4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8099EED8  28 00 00 00 */	cmplwi r0, 0
/* 8099EEDC  40 82 00 38 */	bne lbl_8099EF14
/* 8099EEE0  80 1D 24 74 */	lwz r0, 0x2474(r29)
/* 8099EEE4  2C 00 00 08 */	cmpwi r0, 8
/* 8099EEE8  41 82 00 2C */	beq lbl_8099EF14
/* 8099EEEC  80 9D 24 C4 */	lwz r4, 0x24c4(r29)
/* 8099EEF0  38 7F 00 00 */	addi r3, r31, 0
/* 8099EEF4  80 03 00 70 */	lwz r0, 0x70(r3)
/* 8099EEF8  7C 04 02 14 */	add r0, r4, r0
/* 8099EEFC  90 1D 24 C4 */	stw r0, 0x24c4(r29)
/* 8099EF00  80 1D 24 C4 */	lwz r0, 0x24c4(r29)
/* 8099EF04  80 63 00 74 */	lwz r3, 0x74(r3)
/* 8099EF08  7C 00 18 00 */	cmpw r0, r3
/* 8099EF0C  40 81 00 08 */	ble lbl_8099EF14
/* 8099EF10  90 7D 24 C4 */	stw r3, 0x24c4(r29)
lbl_8099EF14:
/* 8099EF14  38 7D 1B F0 */	addi r3, r29, 0x1bf0
/* 8099EF18  80 1D 24 C4 */	lwz r0, 0x24c4(r29)
/* 8099EF1C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8099EF20  4B 92 67 A1 */	bl startFireSound__15Z2SoundObjCoachFUs
/* 8099EF24  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500D5@ha */
/* 8099EF28  38 03 00 D5 */	addi r0, r3, 0x00D5 /* 0x000500D5@l */
/* 8099EF2C  90 01 00 08 */	stw r0, 8(r1)
/* 8099EF30  38 7D 21 54 */	addi r3, r29, 0x2154
/* 8099EF34  38 81 00 08 */	addi r4, r1, 8
/* 8099EF38  38 A0 FF FF */	li r5, -1
/* 8099EF3C  81 9D 21 54 */	lwz r12, 0x2154(r29)
/* 8099EF40  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8099EF44  7D 89 03 A6 */	mtctr r12
/* 8099EF48  4E 80 04 21 */	bctrl 
/* 8099EF4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8099EF50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099EF54  38 63 09 78 */	addi r3, r3, 0x978
/* 8099EF58  38 80 00 37 */	li r4, 0x37
/* 8099EF5C  4B 69 5C 3D */	bl onSwitch__12dSv_danBit_cFi
/* 8099EF60  48 00 00 20 */	b lbl_8099EF80
lbl_8099EF64:
/* 8099EF64  38 00 00 00 */	li r0, 0
/* 8099EF68  90 1D 24 C4 */	stw r0, 0x24c4(r29)
/* 8099EF6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8099EF70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099EF74  38 63 09 78 */	addi r3, r3, 0x978
/* 8099EF78  38 80 00 37 */	li r4, 0x37
/* 8099EF7C  4B 69 5C 45 */	bl offSwitch__12dSv_danBit_cFi
lbl_8099EF80:
/* 8099EF80  80 BD 24 C4 */	lwz r5, 0x24c4(r29)
/* 8099EF84  1C 05 00 FF */	mulli r0, r5, 0xff
/* 8099EF88  3B DF 00 00 */	addi r30, r31, 0
/* 8099EF8C  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8099EF90  7C 00 1B D6 */	divw r0, r0, r3
/* 8099EF94  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8099EF98  80 1D 1D C0 */	lwz r0, 0x1dc0(r29)
/* 8099EF9C  7C 00 28 00 */	cmpw r0, r5
/* 8099EFA0  40 80 00 AC */	bge lbl_8099F04C
/* 8099EFA4  90 BD 1D C0 */	stw r5, 0x1dc0(r29)
/* 8099EFA8  80 BD 1D C0 */	lwz r5, 0x1dc0(r29)
/* 8099EFAC  7C 60 0E 70 */	srawi r0, r3, 1
/* 8099EFB0  7C 00 01 94 */	addze r0, r0
/* 8099EFB4  7C 05 00 00 */	cmpw r5, r0
/* 8099EFB8  40 80 00 24 */	bge lbl_8099EFDC
/* 8099EFBC  1C 05 00 FF */	mulli r0, r5, 0xff
/* 8099EFC0  7C 00 1B D6 */	divw r0, r0, r3
/* 8099EFC4  54 00 08 3C */	slwi r0, r0, 1
/* 8099EFC8  20 00 00 FF */	subfic r0, r0, 0xff
/* 8099EFCC  98 1D 1D C5 */	stb r0, 0x1dc5(r29)
/* 8099EFD0  38 00 00 7D */	li r0, 0x7d
/* 8099EFD4  98 1D 1D C6 */	stb r0, 0x1dc6(r29)
/* 8099EFD8  48 00 00 6C */	b lbl_8099F044
lbl_8099EFDC:
/* 8099EFDC  38 00 00 00 */	li r0, 0
/* 8099EFE0  98 1D 1D C5 */	stb r0, 0x1dc5(r29)
/* 8099EFE4  C0 7F 01 80 */	lfs f3, 0x180(r31)
/* 8099EFE8  7C 60 0E 70 */	srawi r0, r3, 1
/* 8099EFEC  7C A0 01 94 */	addze r5, r0
/* 8099EFF0  80 1D 1D C0 */	lwz r0, 0x1dc0(r29)
/* 8099EFF4  7C 05 00 50 */	subf r0, r5, r0
/* 8099EFF8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8099EFFC  C8 5F 01 78 */	lfd f2, 0x178(r31)
/* 8099F000  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8099F004  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099F008  3C 60 43 30 */	lis r3, 0x4330
/* 8099F00C  90 61 00 10 */	stw r3, 0x10(r1)
/* 8099F010  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8099F014  EC 20 10 28 */	fsubs f1, f0, f2
/* 8099F018  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8099F01C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8099F020  90 61 00 18 */	stw r3, 0x18(r1)
/* 8099F024  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8099F028  EC 00 10 28 */	fsubs f0, f0, f2
/* 8099F02C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8099F030  EC 03 00 2A */	fadds f0, f3, f0
/* 8099F034  FC 00 00 1E */	fctiwz f0, f0
/* 8099F038  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8099F03C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099F040  98 1D 1D C6 */	stb r0, 0x1dc6(r29)
lbl_8099F044:
/* 8099F044  20 04 00 FF */	subfic r0, r4, 0xff
/* 8099F048  98 1D 1D C7 */	stb r0, 0x1dc7(r29)
lbl_8099F04C:
/* 8099F04C  7F A3 EB 78 */	mr r3, r29
/* 8099F050  48 00 01 69 */	bl setCoachBlazing__12daNpcCoach_cFUc
/* 8099F054  80 9D 24 C4 */	lwz r4, 0x24c4(r29)
/* 8099F058  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8099F05C  38 00 00 14 */	li r0, 0x14
/* 8099F060  7C 03 03 D6 */	divw r0, r3, r0
/* 8099F064  7C 04 03 D6 */	divw r0, r4, r0
/* 8099F068  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 8099F06C  80 7D 25 54 */	lwz r3, 0x2554(r29)
/* 8099F070  4B 68 22 E9 */	bl fpcEx_SearchByID__FUi
/* 8099F074  9B 83 07 80 */	stb r28, 0x780(r3)
/* 8099F078  80 7D 24 C4 */	lwz r3, 0x24c4(r29)
/* 8099F07C  80 1E 00 74 */	lwz r0, 0x74(r30)
/* 8099F080  7C 03 00 00 */	cmpw r3, r0
/* 8099F084  41 80 00 44 */	blt lbl_8099F0C8
/* 8099F088  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8099F08C  60 00 40 00 */	ori r0, r0, 0x4000
/* 8099F090  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 8099F094  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8099F098  D0 1D 0C EC */	stfs f0, 0xcec(r29)
/* 8099F09C  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 8099F0A0  4B 68 22 B9 */	bl fpcEx_SearchByID__FUi
/* 8099F0A4  28 03 00 00 */	cmplwi r3, 0
/* 8099F0A8  41 82 00 20 */	beq lbl_8099F0C8
/* 8099F0AC  38 00 00 00 */	li r0, 0
/* 8099F0B0  80 9D 1B C8 */	lwz r4, 0x1bc8(r29)
/* 8099F0B4  90 04 00 F0 */	stw r0, 0xf0(r4)
/* 8099F0B8  80 9D 1B CC */	lwz r4, 0x1bcc(r29)
/* 8099F0BC  90 04 00 F0 */	stw r0, 0xf0(r4)
/* 8099F0C0  38 00 00 01 */	li r0, 1
/* 8099F0C4  98 03 0E 0D */	stb r0, 0xe0d(r3)
lbl_8099F0C8:
/* 8099F0C8  88 1D 25 58 */	lbz r0, 0x2558(r29)
/* 8099F0CC  28 00 00 00 */	cmplwi r0, 0
/* 8099F0D0  41 82 00 40 */	beq lbl_8099F110
/* 8099F0D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8099F0D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099F0DC  38 63 09 78 */	addi r3, r3, 0x978
/* 8099F0E0  38 80 00 28 */	li r4, 0x28
/* 8099F0E4  4B 69 5B 05 */	bl isSwitch__12dSv_danBit_cCFi
/* 8099F0E8  2C 03 00 00 */	cmpwi r3, 0
/* 8099F0EC  41 82 00 70 */	beq lbl_8099F15C
/* 8099F0F0  80 7D 25 54 */	lwz r3, 0x2554(r29)
/* 8099F0F4  4B 68 22 65 */	bl fpcEx_SearchByID__FUi
/* 8099F0F8  28 03 00 00 */	cmplwi r3, 0
/* 8099F0FC  41 82 00 60 */	beq lbl_8099F15C
/* 8099F100  38 00 00 00 */	li r0, 0
/* 8099F104  98 03 07 82 */	stb r0, 0x782(r3)
/* 8099F108  98 1D 25 58 */	stb r0, 0x2558(r29)
/* 8099F10C  48 00 00 50 */	b lbl_8099F15C
lbl_8099F110:
/* 8099F110  80 1D 24 C4 */	lwz r0, 0x24c4(r29)
/* 8099F114  2C 00 00 00 */	cmpwi r0, 0
/* 8099F118  40 81 00 44 */	ble lbl_8099F15C
/* 8099F11C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8099F120  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099F124  38 63 09 78 */	addi r3, r3, 0x978
/* 8099F128  38 80 00 28 */	li r4, 0x28
/* 8099F12C  4B 69 5A BD */	bl isSwitch__12dSv_danBit_cCFi
/* 8099F130  2C 03 00 00 */	cmpwi r3, 0
/* 8099F134  40 82 00 28 */	bne lbl_8099F15C
/* 8099F138  80 7D 25 54 */	lwz r3, 0x2554(r29)
/* 8099F13C  4B 68 22 1D */	bl fpcEx_SearchByID__FUi
/* 8099F140  28 03 00 00 */	cmplwi r3, 0
/* 8099F144  41 82 00 18 */	beq lbl_8099F15C
/* 8099F148  38 00 00 14 */	li r0, 0x14
/* 8099F14C  98 03 07 81 */	stb r0, 0x781(r3)
/* 8099F150  38 00 00 01 */	li r0, 1
/* 8099F154  98 03 07 82 */	stb r0, 0x782(r3)
/* 8099F158  98 1D 25 58 */	stb r0, 0x2558(r29)
lbl_8099F15C:
/* 8099F15C  88 1D 25 59 */	lbz r0, 0x2559(r29)
/* 8099F160  28 00 00 00 */	cmplwi r0, 0
/* 8099F164  40 82 00 3C */	bne lbl_8099F1A0
/* 8099F168  80 7D 24 C4 */	lwz r3, 0x24c4(r29)
/* 8099F16C  80 1E 00 74 */	lwz r0, 0x74(r30)
/* 8099F170  7C 00 16 70 */	srawi r0, r0, 2
/* 8099F174  7C 00 01 94 */	addze r0, r0
/* 8099F178  7C 03 00 00 */	cmpw r3, r0
/* 8099F17C  40 81 00 24 */	ble lbl_8099F1A0
/* 8099F180  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8099F184  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8099F188  38 80 13 EB */	li r4, 0x13eb
/* 8099F18C  38 A0 00 96 */	li r5, 0x96
/* 8099F190  38 C0 00 00 */	li r6, 0
/* 8099F194  4B 87 CF 4D */	bl setFloatingMessage__13dMeter2Info_cFUssb
/* 8099F198  38 00 00 01 */	li r0, 1
/* 8099F19C  98 1D 25 59 */	stb r0, 0x2559(r29)
lbl_8099F1A0:
/* 8099F1A0  39 61 00 40 */	addi r11, r1, 0x40
/* 8099F1A4  4B 9C 30 81 */	bl _restgpr_28
/* 8099F1A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8099F1AC  7C 08 03 A6 */	mtlr r0
/* 8099F1B0  38 21 00 40 */	addi r1, r1, 0x40
/* 8099F1B4  4E 80 00 20 */	blr 
