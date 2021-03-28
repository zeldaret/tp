lbl_8009CB88:
/* 8009CB88  94 21 FA B0 */	stwu r1, -0x550(r1)
/* 8009CB8C  7C 08 02 A6 */	mflr r0
/* 8009CB90  90 01 05 54 */	stw r0, 0x554(r1)
/* 8009CB94  DB E1 05 40 */	stfd f31, 0x540(r1)
/* 8009CB98  F3 E1 05 48 */	psq_st f31, 1352(r1), 0, 0 /* qr0 */
/* 8009CB9C  DB C1 05 30 */	stfd f30, 0x530(r1)
/* 8009CBA0  F3 C1 05 38 */	psq_st f30, 1336(r1), 0, 0 /* qr0 */
/* 8009CBA4  39 61 05 30 */	addi r11, r1, 0x530
/* 8009CBA8  48 2C 56 2D */	bl _savegpr_27
/* 8009CBAC  7C 9D 23 78 */	mr r29, r4
/* 8009CBB0  3C 80 80 38 */	lis r4, msg_data@ha
/* 8009CBB4  38 84 B1 80 */	addi r4, r4, msg_data@l
/* 8009CBB8  38 A4 00 20 */	addi r5, r4, 0x20
/* 8009CBBC  80 84 00 24 */	lwz r4, 0x24(r4)
/* 8009CBC0  54 60 10 3A */	slwi r0, r3, 2
/* 8009CBC4  7C 65 02 14 */	add r3, r5, r0
/* 8009CBC8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8009CBCC  7C 64 02 14 */	add r3, r4, r0
/* 8009CBD0  3B E3 00 08 */	addi r31, r3, 8
/* 8009CBD4  7F E5 FA 14 */	add r31, r5, r31
/* 8009CBD8  C0 02 92 18 */	lfs f0, lit_3758(r2)
/* 8009CBDC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8009CBE0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8009CBE4  C0 02 92 1C */	lfs f0, lit_3759(r2)
/* 8009CBE8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8009CBEC  C0 02 92 20 */	lfs f0, lit_3760(r2)
/* 8009CBF0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8009CBF4  38 00 00 00 */	li r0, 0
/* 8009CBF8  90 01 00 08 */	stw r0, 8(r1)
/* 8009CBFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8009CC00  38 61 03 D0 */	addi r3, r1, 0x3d0
/* 8009CC04  3C 80 45 58 */	lis r4, 0x4558 /* 0x45585431@ha */
/* 8009CC08  38 C4 54 31 */	addi r6, r4, 0x5431 /* 0x45585431@l */
/* 8009CC0C  38 A0 00 54 */	li r5, 0x54
/* 8009CC10  38 E1 00 9C */	addi r7, r1, 0x9c
/* 8009CC14  3C 80 80 38 */	lis r4, font_data@ha
/* 8009CC18  39 04 B3 E0 */	addi r8, r4, font_data@l
/* 8009CC1C  7F E9 FB 78 */	mr r9, r31
/* 8009CC20  39 40 02 00 */	li r10, 0x200
/* 8009CC24  48 26 2F A1 */	bl func_802FFBC4
/* 8009CC28  C0 02 92 18 */	lfs f0, lit_3758(r2)
/* 8009CC2C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8009CC30  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8009CC34  C0 02 92 1C */	lfs f0, lit_3759(r2)
/* 8009CC38  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8009CC3C  C0 02 92 20 */	lfs f0, lit_3760(r2)
/* 8009CC40  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8009CC44  38 00 00 00 */	li r0, 0
/* 8009CC48  90 01 00 08 */	stw r0, 8(r1)
/* 8009CC4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8009CC50  38 61 02 98 */	addi r3, r1, 0x298
/* 8009CC54  3C 80 45 58 */	lis r4, 0x4558 /* 0x45585432@ha */
/* 8009CC58  38 C4 54 32 */	addi r6, r4, 0x5432 /* 0x45585432@l */
/* 8009CC5C  38 A0 00 54 */	li r5, 0x54
/* 8009CC60  38 E1 00 8C */	addi r7, r1, 0x8c
/* 8009CC64  3C 80 80 38 */	lis r4, font_data@ha
/* 8009CC68  39 04 B3 E0 */	addi r8, r4, font_data@l
/* 8009CC6C  7F E9 FB 78 */	mr r9, r31
/* 8009CC70  39 40 02 00 */	li r10, 0x200
/* 8009CC74  48 26 2F 51 */	bl func_802FFBC4
/* 8009CC78  C0 02 92 18 */	lfs f0, lit_3758(r2)
/* 8009CC7C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8009CC80  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8009CC84  C0 02 92 1C */	lfs f0, lit_3759(r2)
/* 8009CC88  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8009CC8C  C0 02 92 24 */	lfs f0, lit_3761(r2)
/* 8009CC90  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8009CC94  38 61 01 48 */	addi r3, r1, 0x148
/* 8009CC98  3C 80 49 43 */	lis r4, 0x4943 /* 0x49435431@ha */
/* 8009CC9C  38 C4 54 31 */	addi r6, r4, 0x5431 /* 0x49435431@l */
/* 8009CCA0  38 A0 00 50 */	li r5, 0x50
/* 8009CCA4  38 E1 00 7C */	addi r7, r1, 0x7c
/* 8009CCA8  3C 80 80 38 */	lis r4, black_tex@ha
/* 8009CCAC  39 04 B1 40 */	addi r8, r4, black_tex@l
/* 8009CCB0  39 20 00 00 */	li r9, 0
/* 8009CCB4  48 25 FB 4D */	bl func_802FC800
/* 8009CCB8  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8009CCBC  3C 80 80 38 */	lis r4, font_data@ha
/* 8009CCC0  38 84 B3 E0 */	addi r4, r4, font_data@l
/* 8009CCC4  38 A0 00 00 */	li r5, 0
/* 8009CCC8  48 24 22 CD */	bl __ct__10JUTResFontFPC7ResFONTP7JKRHeap
/* 8009CCCC  3B C1 00 D4 */	addi r30, r1, 0xd4
/* 8009CCD0  38 80 00 C8 */	li r4, 0xc8
/* 8009CCD4  98 81 00 60 */	stb r4, 0x60(r1)
/* 8009CCD8  98 81 00 61 */	stb r4, 0x61(r1)
/* 8009CCDC  98 81 00 62 */	stb r4, 0x62(r1)
/* 8009CCE0  38 60 00 FF */	li r3, 0xff
/* 8009CCE4  98 61 00 63 */	stb r3, 0x63(r1)
/* 8009CCE8  98 61 00 5C */	stb r3, 0x5c(r1)
/* 8009CCEC  98 61 00 5D */	stb r3, 0x5d(r1)
/* 8009CCF0  98 61 00 5E */	stb r3, 0x5e(r1)
/* 8009CCF4  98 61 00 5F */	stb r3, 0x5f(r1)
/* 8009CCF8  98 61 00 58 */	stb r3, 0x58(r1)
/* 8009CCFC  98 61 00 59 */	stb r3, 0x59(r1)
/* 8009CD00  98 61 00 5A */	stb r3, 0x5a(r1)
/* 8009CD04  98 61 00 5B */	stb r3, 0x5b(r1)
/* 8009CD08  98 61 00 54 */	stb r3, 0x54(r1)
/* 8009CD0C  98 61 00 55 */	stb r3, 0x55(r1)
/* 8009CD10  38 00 00 AD */	li r0, 0xad
/* 8009CD14  98 01 00 56 */	stb r0, 0x56(r1)
/* 8009CD18  98 61 00 57 */	stb r3, 0x57(r1)
/* 8009CD1C  98 81 00 50 */	stb r4, 0x50(r1)
/* 8009CD20  98 81 00 51 */	stb r4, 0x51(r1)
/* 8009CD24  98 81 00 52 */	stb r4, 0x52(r1)
/* 8009CD28  98 61 00 53 */	stb r3, 0x53(r1)
/* 8009CD2C  38 00 00 00 */	li r0, 0
/* 8009CD30  98 01 00 4C */	stb r0, 0x4c(r1)
/* 8009CD34  98 01 00 4D */	stb r0, 0x4d(r1)
/* 8009CD38  98 01 00 4E */	stb r0, 0x4e(r1)
/* 8009CD3C  98 61 00 4F */	stb r3, 0x4f(r1)
/* 8009CD40  98 01 00 48 */	stb r0, 0x48(r1)
/* 8009CD44  98 01 00 49 */	stb r0, 0x49(r1)
/* 8009CD48  98 01 00 4A */	stb r0, 0x4a(r1)
/* 8009CD4C  98 01 00 4B */	stb r0, 0x4b(r1)
/* 8009CD50  98 01 00 44 */	stb r0, 0x44(r1)
/* 8009CD54  98 01 00 45 */	stb r0, 0x45(r1)
/* 8009CD58  98 01 00 46 */	stb r0, 0x46(r1)
/* 8009CD5C  98 01 00 47 */	stb r0, 0x47(r1)
/* 8009CD60  C0 02 92 28 */	lfs f0, lit_3762(r2)
/* 8009CD64  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8009CD68  C0 02 92 2C */	lfs f0, lit_3763(r2)
/* 8009CD6C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8009CD70  80 61 00 74 */	lwz r3, 0x74(r1)
/* 8009CD74  80 01 00 78 */	lwz r0, 0x78(r1)
/* 8009CD78  90 61 00 6C */	stw r3, 0x6c(r1)
/* 8009CD7C  90 01 00 70 */	stw r0, 0x70(r1)
/* 8009CD80  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 8009CD84  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8009CD88  C0 02 92 18 */	lfs f0, lit_3758(r2)
/* 8009CD8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009CD90  40 81 00 08 */	ble lbl_8009CD98
/* 8009CD94  48 00 00 08 */	b lbl_8009CD9C
lbl_8009CD98:
/* 8009CD98  FC 20 00 90 */	fmr f1, f0
lbl_8009CD9C:
/* 8009CD9C  D0 21 04 EC */	stfs f1, 0x4ec(r1)
/* 8009CDA0  C0 02 92 18 */	lfs f0, lit_3758(r2)
/* 8009CDA4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8009CDA8  40 81 00 08 */	ble lbl_8009CDB0
/* 8009CDAC  48 00 00 08 */	b lbl_8009CDB4
lbl_8009CDB0:
/* 8009CDB0  FC 40 00 90 */	fmr f2, f0
lbl_8009CDB4:
/* 8009CDB4  D0 41 04 F0 */	stfs f2, 0x4f0(r1)
/* 8009CDB8  C0 02 92 30 */	lfs f0, lit_3764(r2)
/* 8009CDBC  D0 01 04 E4 */	stfs f0, 0x4e4(r1)
/* 8009CDC0  C0 02 92 28 */	lfs f0, lit_3762(r2)
/* 8009CDC4  D0 01 04 E8 */	stfs f0, 0x4e8(r1)
/* 8009CDC8  80 01 00 60 */	lwz r0, 0x60(r1)
/* 8009CDCC  90 01 00 40 */	stw r0, 0x40(r1)
/* 8009CDD0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8009CDD4  88 01 00 20 */	lbz r0, 0x20(r1)
/* 8009CDD8  98 01 04 D4 */	stb r0, 0x4d4(r1)
/* 8009CDDC  88 01 00 21 */	lbz r0, 0x21(r1)
/* 8009CDE0  98 01 04 D5 */	stb r0, 0x4d5(r1)
/* 8009CDE4  88 01 00 22 */	lbz r0, 0x22(r1)
/* 8009CDE8  98 01 04 D6 */	stb r0, 0x4d6(r1)
/* 8009CDEC  88 01 00 23 */	lbz r0, 0x23(r1)
/* 8009CDF0  98 01 04 D7 */	stb r0, 0x4d7(r1)
/* 8009CDF4  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8009CDF8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8009CDFC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8009CE00  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 8009CE04  98 01 04 D8 */	stb r0, 0x4d8(r1)
/* 8009CE08  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 8009CE0C  98 01 04 D9 */	stb r0, 0x4d9(r1)
/* 8009CE10  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 8009CE14  98 01 04 DA */	stb r0, 0x4da(r1)
/* 8009CE18  88 01 00 1F */	lbz r0, 0x1f(r1)
/* 8009CE1C  98 01 04 DB */	stb r0, 0x4db(r1)
/* 8009CE20  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8009CE24  90 01 00 34 */	stw r0, 0x34(r1)
/* 8009CE28  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8009CE2C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8009CE30  88 01 00 38 */	lbz r0, 0x38(r1)
/* 8009CE34  98 01 04 FC */	stb r0, 0x4fc(r1)
/* 8009CE38  88 01 00 39 */	lbz r0, 0x39(r1)
/* 8009CE3C  98 01 04 FD */	stb r0, 0x4fd(r1)
/* 8009CE40  88 01 00 3A */	lbz r0, 0x3a(r1)
/* 8009CE44  98 01 04 FE */	stb r0, 0x4fe(r1)
/* 8009CE48  88 01 00 3B */	lbz r0, 0x3b(r1)
/* 8009CE4C  98 01 04 FF */	stb r0, 0x4ff(r1)
/* 8009CE50  88 01 00 34 */	lbz r0, 0x34(r1)
/* 8009CE54  98 01 04 F8 */	stb r0, 0x4f8(r1)
/* 8009CE58  88 01 00 35 */	lbz r0, 0x35(r1)
/* 8009CE5C  98 01 04 F9 */	stb r0, 0x4f9(r1)
/* 8009CE60  88 01 00 36 */	lbz r0, 0x36(r1)
/* 8009CE64  98 01 04 FA */	stb r0, 0x4fa(r1)
/* 8009CE68  88 01 00 37 */	lbz r0, 0x37(r1)
/* 8009CE6C  98 01 04 FB */	stb r0, 0x4fb(r1)
/* 8009CE70  80 61 00 74 */	lwz r3, 0x74(r1)
/* 8009CE74  80 01 00 78 */	lwz r0, 0x78(r1)
/* 8009CE78  90 61 00 64 */	stw r3, 0x64(r1)
/* 8009CE7C  90 01 00 68 */	stw r0, 0x68(r1)
/* 8009CE80  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 8009CE84  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 8009CE88  C0 02 92 18 */	lfs f0, lit_3758(r2)
/* 8009CE8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009CE90  40 81 00 08 */	ble lbl_8009CE98
/* 8009CE94  48 00 00 08 */	b lbl_8009CE9C
lbl_8009CE98:
/* 8009CE98  FC 20 00 90 */	fmr f1, f0
lbl_8009CE9C:
/* 8009CE9C  D0 21 03 B4 */	stfs f1, 0x3b4(r1)
/* 8009CEA0  C0 02 92 18 */	lfs f0, lit_3758(r2)
/* 8009CEA4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8009CEA8  40 81 00 08 */	ble lbl_8009CEB0
/* 8009CEAC  48 00 00 08 */	b lbl_8009CEB4
lbl_8009CEB0:
/* 8009CEB0  FC 40 00 90 */	fmr f2, f0
lbl_8009CEB4:
/* 8009CEB4  D0 41 03 B8 */	stfs f2, 0x3b8(r1)
/* 8009CEB8  C0 02 92 30 */	lfs f0, lit_3764(r2)
/* 8009CEBC  D0 01 03 AC */	stfs f0, 0x3ac(r1)
/* 8009CEC0  C0 02 92 28 */	lfs f0, lit_3762(r2)
/* 8009CEC4  D0 01 03 B0 */	stfs f0, 0x3b0(r1)
/* 8009CEC8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8009CECC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8009CED0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8009CED4  88 01 00 18 */	lbz r0, 0x18(r1)
/* 8009CED8  98 01 03 9C */	stb r0, 0x39c(r1)
/* 8009CEDC  88 01 00 19 */	lbz r0, 0x19(r1)
/* 8009CEE0  98 01 03 9D */	stb r0, 0x39d(r1)
/* 8009CEE4  88 01 00 1A */	lbz r0, 0x1a(r1)
/* 8009CEE8  98 01 03 9E */	stb r0, 0x39e(r1)
/* 8009CEEC  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 8009CEF0  98 01 03 9F */	stb r0, 0x39f(r1)
/* 8009CEF4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8009CEF8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8009CEFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009CF00  88 01 00 14 */	lbz r0, 0x14(r1)
/* 8009CF04  98 01 03 A0 */	stb r0, 0x3a0(r1)
/* 8009CF08  88 01 00 15 */	lbz r0, 0x15(r1)
/* 8009CF0C  98 01 03 A1 */	stb r0, 0x3a1(r1)
/* 8009CF10  88 01 00 16 */	lbz r0, 0x16(r1)
/* 8009CF14  98 01 03 A2 */	stb r0, 0x3a2(r1)
/* 8009CF18  88 01 00 17 */	lbz r0, 0x17(r1)
/* 8009CF1C  98 01 03 A3 */	stb r0, 0x3a3(r1)
/* 8009CF20  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8009CF24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009CF28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8009CF2C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8009CF30  88 01 00 28 */	lbz r0, 0x28(r1)
/* 8009CF34  98 01 03 C4 */	stb r0, 0x3c4(r1)
/* 8009CF38  88 01 00 29 */	lbz r0, 0x29(r1)
/* 8009CF3C  98 01 03 C5 */	stb r0, 0x3c5(r1)
/* 8009CF40  88 01 00 2A */	lbz r0, 0x2a(r1)
/* 8009CF44  98 01 03 C6 */	stb r0, 0x3c6(r1)
/* 8009CF48  88 01 00 2B */	lbz r0, 0x2b(r1)
/* 8009CF4C  98 01 03 C7 */	stb r0, 0x3c7(r1)
/* 8009CF50  88 01 00 24 */	lbz r0, 0x24(r1)
/* 8009CF54  98 01 03 C0 */	stb r0, 0x3c0(r1)
/* 8009CF58  88 01 00 25 */	lbz r0, 0x25(r1)
/* 8009CF5C  98 01 03 C1 */	stb r0, 0x3c1(r1)
/* 8009CF60  88 01 00 26 */	lbz r0, 0x26(r1)
/* 8009CF64  98 01 03 C2 */	stb r0, 0x3c2(r1)
/* 8009CF68  88 01 00 27 */	lbz r0, 0x27(r1)
/* 8009CF6C  98 01 03 C3 */	stb r0, 0x3c3(r1)
/* 8009CF70  FF E0 00 90 */	fmr f31, f0
/* 8009CF74  C3 C2 92 18 */	lfs f30, lit_3758(r2)
/* 8009CF78  3B 80 00 00 */	li r28, 0
/* 8009CF7C  38 60 00 00 */	li r3, 0
/* 8009CF80  38 81 00 AC */	addi r4, r1, 0xac
/* 8009CF84  38 00 00 0A */	li r0, 0xa
/* 8009CF88  7C 09 03 A6 */	mtctr r0
lbl_8009CF8C:
/* 8009CF8C  7F C4 1D 2E */	stfsx f30, r4, r3
/* 8009CF90  38 63 00 04 */	addi r3, r3, 4
/* 8009CF94  42 00 FF F8 */	bdnz lbl_8009CF8C
/* 8009CF98  48 00 00 E4 */	b lbl_8009D07C
lbl_8009CF9C:
/* 8009CF9C  7C 60 07 74 */	extsb r0, r3
/* 8009CFA0  2C 00 00 0A */	cmpwi r0, 0xa
/* 8009CFA4  40 82 00 14 */	bne lbl_8009CFB8
/* 8009CFA8  C0 02 92 28 */	lfs f0, lit_3762(r2)
/* 8009CFAC  EF FF 00 2A */	fadds f31, f31, f0
/* 8009CFB0  3B 9C 00 04 */	addi r28, r28, 4
/* 8009CFB4  48 00 00 C4 */	b lbl_8009D078
lbl_8009CFB8:
/* 8009CFB8  7C 64 1B 78 */	mr r4, r3
/* 8009CFBC  38 00 00 00 */	li r0, 0
/* 8009CFC0  2C 03 00 A1 */	cmpwi r3, 0xa1
/* 8009CFC4  41 80 00 0C */	blt lbl_8009CFD0
/* 8009CFC8  2C 03 00 FE */	cmpwi r3, 0xfe
/* 8009CFCC  40 81 00 0C */	ble lbl_8009CFD8
lbl_8009CFD0:
/* 8009CFD0  2C 04 00 8E */	cmpwi r4, 0x8e
/* 8009CFD4  40 82 00 08 */	bne lbl_8009CFDC
lbl_8009CFD8:
/* 8009CFD8  38 00 00 01 */	li r0, 1
lbl_8009CFDC:
/* 8009CFDC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8009CFE0  41 82 00 14 */	beq lbl_8009CFF4
/* 8009CFE4  54 83 40 2E */	slwi r3, r4, 8
/* 8009CFE8  8C 1F 00 01 */	lbzu r0, 1(r31)
/* 8009CFEC  7C 64 1B 78 */	mr r4, r3
/* 8009CFF0  50 04 06 3E */	rlwimi r4, r0, 0, 0x18, 0x1f
lbl_8009CFF4:
/* 8009CFF4  7F C3 F3 78 */	mr r3, r30
/* 8009CFF8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8009CFFC  81 9E 00 00 */	lwz r12, 0(r30)
/* 8009D000  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8009D004  7D 89 03 A6 */	mtctr r12
/* 8009D008  4E 80 04 21 */	bctrl 
/* 8009D00C  8B 61 00 11 */	lbz r27, 0x11(r1)
/* 8009D010  7F C3 F3 78 */	mr r3, r30
/* 8009D014  81 9E 00 00 */	lwz r12, 0(r30)
/* 8009D018  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8009D01C  7D 89 03 A6 */	mtctr r12
/* 8009D020  4E 80 04 21 */	bctrl 
/* 8009D024  C8 42 92 40 */	lfd f2, lit_3769(r2)
/* 8009D028  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8009D02C  90 01 05 0C */	stw r0, 0x50c(r1)
/* 8009D030  3C 60 43 30 */	lis r3, 0x4330
/* 8009D034  90 61 05 08 */	stw r3, 0x508(r1)
/* 8009D038  C8 01 05 08 */	lfd f0, 0x508(r1)
/* 8009D03C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8009D040  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 8009D044  90 01 05 14 */	stw r0, 0x514(r1)
/* 8009D048  90 61 05 10 */	stw r3, 0x510(r1)
/* 8009D04C  C8 01 05 10 */	lfd f0, 0x510(r1)
/* 8009D050  EC 00 10 28 */	fsubs f0, f0, f2
/* 8009D054  EC 20 08 24 */	fdivs f1, f0, f1
/* 8009D058  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8009D05C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8009D060  C0 02 92 30 */	lfs f0, lit_3764(r2)
/* 8009D064  EC 20 08 2A */	fadds f1, f0, f1
/* 8009D068  38 61 00 AC */	addi r3, r1, 0xac
/* 8009D06C  7C 03 E4 2E */	lfsx f0, r3, r28
/* 8009D070  EC 00 08 2A */	fadds f0, f0, f1
/* 8009D074  7C 03 E5 2E */	stfsx f0, r3, r28
lbl_8009D078:
/* 8009D078  3B FF 00 01 */	addi r31, r31, 1
lbl_8009D07C:
/* 8009D07C  88 7F 00 00 */	lbz r3, 0(r31)
/* 8009D080  7C 60 07 75 */	extsb. r0, r3
/* 8009D084  40 82 FF 18 */	bne lbl_8009CF9C
/* 8009D088  38 60 00 00 */	li r3, 0
/* 8009D08C  38 81 00 AC */	addi r4, r1, 0xac
/* 8009D090  38 00 00 0A */	li r0, 0xa
/* 8009D094  7C 09 03 A6 */	mtctr r0
lbl_8009D098:
/* 8009D098  7C 04 1C 2E */	lfsx f0, r4, r3
/* 8009D09C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8009D0A0  40 80 00 08 */	bge lbl_8009D0A8
/* 8009D0A4  FF C0 00 90 */	fmr f30, f0
lbl_8009D0A8:
/* 8009D0A8  38 63 00 04 */	addi r3, r3, 4
/* 8009D0AC  42 00 FF EC */	bdnz lbl_8009D098
/* 8009D0B0  C0 22 92 18 */	lfs f1, lit_3758(r2)
/* 8009D0B4  C0 62 92 1C */	lfs f3, lit_3759(r2)
/* 8009D0B8  EC 03 F0 28 */	fsubs f0, f3, f30
/* 8009D0BC  C0 42 92 34 */	lfs f2, lit_3765(r2)
/* 8009D0C0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8009D0C4  EF C1 00 2A */	fadds f30, f1, f0
/* 8009D0C8  C0 82 92 24 */	lfs f4, lit_3761(r2)
/* 8009D0CC  EC 04 F8 28 */	fsubs f0, f4, f31
/* 8009D0D0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8009D0D4  EF E1 00 2A */	fadds f31, f1, f0
/* 8009D0D8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8009D0DC  41 82 00 24 */	beq lbl_8009D100
/* 8009D0E0  38 00 00 82 */	li r0, 0x82
/* 8009D0E4  98 01 01 FA */	stb r0, 0x1fa(r1)
/* 8009D0E8  38 61 01 48 */	addi r3, r1, 0x148
/* 8009D0EC  FC 40 08 90 */	fmr f2, f1
/* 8009D0F0  38 80 00 00 */	li r4, 0
/* 8009D0F4  38 A0 00 00 */	li r5, 0
/* 8009D0F8  38 C0 00 00 */	li r6, 0
/* 8009D0FC  48 26 0B 75 */	bl draw__10J2DPictureFffffbbb
lbl_8009D100:
/* 8009D100  38 61 02 98 */	addi r3, r1, 0x298
/* 8009D104  C0 42 92 38 */	lfs f2, lit_3766(r2)
/* 8009D108  EC 22 F0 2A */	fadds f1, f2, f30
/* 8009D10C  C0 02 92 3C */	lfs f0, lit_3767(r2)
/* 8009D110  EF E0 F8 2A */	fadds f31, f0, f31
/* 8009D114  EC 42 F8 2A */	fadds f2, f2, f31
/* 8009D118  C0 62 92 1C */	lfs f3, lit_3759(r2)
/* 8009D11C  38 80 00 02 */	li r4, 2
/* 8009D120  48 26 33 71 */	bl draw__10J2DTextBoxFfff18J2DTextBoxHBinding
/* 8009D124  38 61 03 D0 */	addi r3, r1, 0x3d0
/* 8009D128  FC 20 F0 90 */	fmr f1, f30
/* 8009D12C  FC 40 F8 90 */	fmr f2, f31
/* 8009D130  C0 62 92 1C */	lfs f3, lit_3759(r2)
/* 8009D134  38 80 00 02 */	li r4, 2
/* 8009D138  48 26 33 59 */	bl draw__10J2DTextBoxFfff18J2DTextBoxHBinding
/* 8009D13C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8009D140  38 80 FF FF */	li r4, -1
/* 8009D144  48 24 1E BD */	bl __dt__10JUTResFontFv
/* 8009D148  38 61 01 48 */	addi r3, r1, 0x148
/* 8009D14C  38 80 FF FF */	li r4, -1
/* 8009D150  48 25 FE A1 */	bl __dt__10J2DPictureFv
/* 8009D154  38 61 02 98 */	addi r3, r1, 0x298
/* 8009D158  38 80 FF FF */	li r4, -1
/* 8009D15C  48 26 30 85 */	bl __dt__10J2DTextBoxFv
/* 8009D160  38 61 03 D0 */	addi r3, r1, 0x3d0
/* 8009D164  38 80 FF FF */	li r4, -1
/* 8009D168  48 26 30 79 */	bl __dt__10J2DTextBoxFv
/* 8009D16C  E3 E1 05 48 */	psq_l f31, 1352(r1), 0, 0 /* qr0 */
/* 8009D170  CB E1 05 40 */	lfd f31, 0x540(r1)
/* 8009D174  E3 C1 05 38 */	psq_l f30, 1336(r1), 0, 0 /* qr0 */
/* 8009D178  CB C1 05 30 */	lfd f30, 0x530(r1)
/* 8009D17C  39 61 05 30 */	addi r11, r1, 0x530
/* 8009D180  48 2C 50 A1 */	bl _restgpr_27
/* 8009D184  80 01 05 54 */	lwz r0, 0x554(r1)
/* 8009D188  7C 08 03 A6 */	mtlr r0
/* 8009D18C  38 21 05 50 */	addi r1, r1, 0x550
/* 8009D190  4E 80 00 20 */	blr 
