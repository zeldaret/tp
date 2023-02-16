lbl_802BCE14:
/* 802BCE14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BCE18  7C 08 02 A6 */	mflr r0
/* 802BCE1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BCE20  39 61 00 30 */	addi r11, r1, 0x30
/* 802BCE24  48 0A 53 B5 */	bl _savegpr_28
/* 802BCE28  7C 7C 1B 78 */	mr r28, r3
/* 802BCE2C  7C 9D 23 78 */	mr r29, r4
/* 802BCE30  7C BE 2B 78 */	mr r30, r5
/* 802BCE34  88 03 00 25 */	lbz r0, 0x25(r3)
/* 802BCE38  28 00 00 00 */	cmplwi r0, 0
/* 802BCE3C  41 82 01 08 */	beq lbl_802BCF44
/* 802BCE40  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 802BCE44  28 00 00 00 */	cmplwi r0, 0
/* 802BCE48  41 82 00 FC */	beq lbl_802BCF44
/* 802BCE4C  28 1D 00 00 */	cmplwi r29, 0
/* 802BCE50  41 82 00 F4 */	beq lbl_802BCF44
/* 802BCE54  7F C4 F3 78 */	mr r4, r30
/* 802BCE58  4B FF FF 51 */	bl clearMicState__9Z2SpotMicFi
/* 802BCE5C  7F A3 EB 78 */	mr r3, r29
/* 802BCE60  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 802BCE64  38 A1 00 08 */	addi r5, r1, 8
/* 802BCE68  4B FF FE 15 */	bl convertAbsToRel__13Z2AudioCameraCFR3VecP3Vec
/* 802BCE6C  7C 9C F2 14 */	add r4, r28, r30
/* 802BCE70  98 64 00 26 */	stb r3, 0x26(r4)
/* 802BCE74  88 1C 00 24 */	lbz r0, 0x24(r28)
/* 802BCE78  28 00 00 00 */	cmplwi r0, 0
/* 802BCE7C  41 82 00 10 */	beq lbl_802BCE8C
/* 802BCE80  88 04 00 26 */	lbz r0, 0x26(r4)
/* 802BCE84  28 00 00 00 */	cmplwi r0, 0
/* 802BCE88  41 82 00 BC */	beq lbl_802BCF44
lbl_802BCE8C:
/* 802BCE8C  57 DF 10 3A */	slwi r31, r30, 2
/* 802BCE90  7C 7C FA 14 */	add r3, r28, r31
/* 802BCE94  93 A3 00 10 */	stw r29, 0x10(r3)
/* 802BCE98  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 802BCE9C  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 802BCEA0  EC 01 00 2A */	fadds f0, f1, f0
/* 802BCEA4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802BCEA8  38 61 00 08 */	addi r3, r1, 8
/* 802BCEAC  48 08 A2 A5 */	bl PSVECMag
/* 802BCEB0  80 6D 85 C4 */	lwz r3, __OSReport_disable-0x54(r13)
/* 802BCEB4  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 802BCEB8  C0 A3 00 48 */	lfs f5, 0x48(r3)
/* 802BCEBC  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 802BCEC0  40 81 00 14 */	ble lbl_802BCED4
/* 802BCEC4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 802BCEC8  7C 7C FA 14 */	add r3, r28, r31
/* 802BCECC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802BCED0  48 00 00 68 */	b lbl_802BCF38
lbl_802BCED4:
/* 802BCED4  FC 01 28 40 */	fcmpo cr0, f1, f5
/* 802BCED8  40 80 00 14 */	bge lbl_802BCEEC
/* 802BCEDC  C0 02 C0 A4 */	lfs f0, lit_894(r2)
/* 802BCEE0  7C 7C FA 14 */	add r3, r28, r31
/* 802BCEE4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802BCEE8  48 00 00 50 */	b lbl_802BCF38
lbl_802BCEEC:
/* 802BCEEC  C0 62 C0 A4 */	lfs f3, lit_894(r2)
/* 802BCEF0  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 802BCEF4  EC 40 18 28 */	fsubs f2, f0, f3
/* 802BCEF8  EC 04 28 28 */	fsubs f0, f4, f5
/* 802BCEFC  EC 42 00 24 */	fdivs f2, f2, f0
/* 802BCF00  EC 01 28 28 */	fsubs f0, f1, f5
/* 802BCF04  EC 02 00 32 */	fmuls f0, f2, f0
/* 802BCF08  EC 23 00 2A */	fadds f1, f3, f0
/* 802BCF0C  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BCF10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BCF14  40 80 00 08 */	bge lbl_802BCF1C
/* 802BCF18  48 00 00 18 */	b lbl_802BCF30
lbl_802BCF1C:
/* 802BCF1C  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 802BCF20  40 81 00 0C */	ble lbl_802BCF2C
/* 802BCF24  FC 00 18 90 */	fmr f0, f3
/* 802BCF28  48 00 00 08 */	b lbl_802BCF30
lbl_802BCF2C:
/* 802BCF2C  FC 00 08 90 */	fmr f0, f1
lbl_802BCF30:
/* 802BCF30  7C 7C FA 14 */	add r3, r28, r31
/* 802BCF34  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_802BCF38:
/* 802BCF38  7F 83 E3 78 */	mr r3, r28
/* 802BCF3C  7F C4 F3 78 */	mr r4, r30
/* 802BCF40  4B FF FE A9 */	bl calcVolumeFactor__9Z2SpotMicFi
lbl_802BCF44:
/* 802BCF44  39 61 00 30 */	addi r11, r1, 0x30
/* 802BCF48  48 0A 52 DD */	bl _restgpr_28
/* 802BCF4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BCF50  7C 08 03 A6 */	mtlr r0
/* 802BCF54  38 21 00 30 */	addi r1, r1, 0x30
/* 802BCF58  4E 80 00 20 */	blr 
