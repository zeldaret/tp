lbl_801EDB14:
/* 801EDB14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801EDB18  7C 08 02 A6 */	mflr r0
/* 801EDB1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801EDB20  39 61 00 40 */	addi r11, r1, 0x40
/* 801EDB24  48 17 46 B9 */	bl _savegpr_29
/* 801EDB28  7C 7D 1B 78 */	mr r29, r3
/* 801EDB2C  7C 9E 23 78 */	mr r30, r4
/* 801EDB30  7C BF 2B 78 */	mr r31, r5
/* 801EDB34  C0 62 A9 9C */	lfs f3, lit_4305(r2)
/* 801EDB38  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 801EDB3C  28 00 00 FF */	cmplwi r0, 0xff
/* 801EDB40  41 82 00 C4 */	beq lbl_801EDC04
/* 801EDB44  7C 9D F2 14 */	add r4, r29, r30
/* 801EDB48  88 04 06 BE */	lbz r0, 0x6be(r4)
/* 801EDB4C  28 00 00 00 */	cmplwi r0, 0
/* 801EDB50  40 82 00 10 */	bne lbl_801EDB60
/* 801EDB54  38 00 00 01 */	li r0, 1
/* 801EDB58  98 04 06 BE */	stb r0, 0x6be(r4)
/* 801EDB5C  48 00 00 0C */	b lbl_801EDB68
lbl_801EDB60:
/* 801EDB60  38 00 00 00 */	li r0, 0
/* 801EDB64  98 04 06 BE */	stb r0, 0x6be(r4)
lbl_801EDB68:
/* 801EDB68  1C 1E 00 18 */	mulli r0, r30, 0x18
/* 801EDB6C  7C 7D 02 14 */	add r3, r29, r0
/* 801EDB70  88 04 06 BE */	lbz r0, 0x6be(r4)
/* 801EDB74  54 00 18 38 */	slwi r0, r0, 3
/* 801EDB78  7D 23 02 14 */	add r9, r3, r0
/* 801EDB7C  80 A9 01 F0 */	lwz r5, 0x1f0(r9)
/* 801EDB80  1C DE 00 0C */	mulli r6, r30, 0xc
/* 801EDB84  38 00 00 00 */	li r0, 0
/* 801EDB88  90 01 00 08 */	stw r0, 8(r1)
/* 801EDB8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801EDB90  38 00 FF FF */	li r0, -1
/* 801EDB94  90 01 00 10 */	stw r0, 0x10(r1)
/* 801EDB98  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801EDB9C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801EDBA0  7F E4 FB 78 */	mr r4, r31
/* 801EDBA4  7D 5D 32 14 */	add r10, r29, r6
/* 801EDBA8  80 CA 00 68 */	lwz r6, 0x68(r10)
/* 801EDBAC  80 E9 01 F4 */	lwz r7, 0x1f4(r9)
/* 801EDBB0  81 0A 00 6C */	lwz r8, 0x6c(r10)
/* 801EDBB4  81 29 01 F8 */	lwz r9, 0x1f8(r9)
/* 801EDBB8  81 4A 00 70 */	lwz r10, 0x70(r10)
/* 801EDBBC  48 02 F3 4D */	bl readItemTexture__13dMeter2Info_cFUcPvP10J2DPicturePvP10J2DPicturePvP10J2DPicturePvP10J2DPicturei
/* 801EDBC0  57 C0 08 3C */	slwi r0, r30, 1
/* 801EDBC4  7C 9D 02 14 */	add r4, r29, r0
/* 801EDBC8  B0 64 06 86 */	sth r3, 0x686(r4)
/* 801EDBCC  3C 60 80 3B */	lis r3, item_resource__10dItem_data@ha
/* 801EDBD0  38 63 C5 A0 */	addi r3, r3, item_resource__10dItem_data@l
/* 801EDBD4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801EDBD8  1C 00 00 18 */	mulli r0, r0, 0x18
/* 801EDBDC  7C 63 02 14 */	add r3, r3, r0
/* 801EDBE0  88 03 00 12 */	lbz r0, 0x12(r3)
/* 801EDBE4  C8 22 A9 B8 */	lfd f1, lit_4312(r2)
/* 801EDBE8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801EDBEC  3C 00 43 30 */	lis r0, 0x4330
/* 801EDBF0  90 01 00 18 */	stw r0, 0x18(r1)
/* 801EDBF4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801EDBF8  EC 20 08 28 */	fsubs f1, f0, f1
/* 801EDBFC  C0 02 A9 A0 */	lfs f0, lit_4306(r2)
/* 801EDC00  EC 61 00 24 */	fdivs f3, f1, f0
lbl_801EDC04:
/* 801EDC04  1C 1E 00 18 */	mulli r0, r30, 0x18
/* 801EDC08  7C FD 02 14 */	add r7, r29, r0
/* 801EDC0C  7C DD F2 14 */	add r6, r29, r30
/* 801EDC10  88 06 06 BE */	lbz r0, 0x6be(r6)
/* 801EDC14  54 00 18 38 */	slwi r0, r0, 3
/* 801EDC18  38 E7 01 F0 */	addi r7, r7, 0x1f0
/* 801EDC1C  7C 67 00 2E */	lwzx r3, r7, r0
/* 801EDC20  A0 03 00 02 */	lhz r0, 2(r3)
/* 801EDC24  C8 42 A9 B8 */	lfd f2, lit_4312(r2)
/* 801EDC28  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801EDC2C  3C A0 43 30 */	lis r5, 0x4330
/* 801EDC30  90 A1 00 18 */	stw r5, 0x18(r1)
/* 801EDC34  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801EDC38  EC 00 10 28 */	fsubs f0, f0, f2
/* 801EDC3C  C0 22 A9 A4 */	lfs f1, lit_4307(r2)
/* 801EDC40  EC 00 08 24 */	fdivs f0, f0, f1
/* 801EDC44  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801EDC48  57 C0 10 3A */	slwi r0, r30, 2
/* 801EDC4C  7C 9D 02 14 */	add r4, r29, r0
/* 801EDC50  D0 04 05 48 */	stfs f0, 0x548(r4)
/* 801EDC54  88 06 06 BE */	lbz r0, 0x6be(r6)
/* 801EDC58  54 00 18 38 */	slwi r0, r0, 3
/* 801EDC5C  7C 67 00 2E */	lwzx r3, r7, r0
/* 801EDC60  A0 03 00 04 */	lhz r0, 4(r3)
/* 801EDC64  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EDC68  90 A1 00 20 */	stw r5, 0x20(r1)
/* 801EDC6C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801EDC70  EC 00 10 28 */	fsubs f0, f0, f2
/* 801EDC74  EC 00 08 24 */	fdivs f0, f0, f1
/* 801EDC78  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801EDC7C  D0 04 05 58 */	stfs f0, 0x558(r4)
/* 801EDC80  39 61 00 40 */	addi r11, r1, 0x40
/* 801EDC84  48 17 45 A5 */	bl _restgpr_29
/* 801EDC88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801EDC8C  7C 08 03 A6 */	mtlr r0
/* 801EDC90  38 21 00 40 */	addi r1, r1, 0x40
/* 801EDC94  4E 80 00 20 */	blr 
