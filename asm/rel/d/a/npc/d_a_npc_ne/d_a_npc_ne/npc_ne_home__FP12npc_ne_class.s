lbl_80A8CC64:
/* 80A8CC64  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A8CC68  7C 08 02 A6 */	mflr r0
/* 80A8CC6C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A8CC70  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A8CC74  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A8CC78  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80A8CC7C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80A8CC80  39 61 00 50 */	addi r11, r1, 0x50
/* 80A8CC84  4B 8D 55 4C */	b _savegpr_26
/* 80A8CC88  7C 7A 1B 78 */	mr r26, r3
/* 80A8CC8C  3C 80 80 A9 */	lis r4, lit_3990@ha
/* 80A8CC90  3B E4 24 1C */	addi r31, r4, lit_3990@l
/* 80A8CC94  3B 60 00 01 */	li r27, 1
/* 80A8CC98  38 00 00 0A */	li r0, 0xa
/* 80A8CC9C  B0 03 06 56 */	sth r0, 0x656(r3)
/* 80A8CCA0  80 A3 05 E8 */	lwz r5, 0x5e8(r3)
/* 80A8CCA4  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 80A8CCA8  FC 00 00 1E */	fctiwz f0, f0
/* 80A8CCAC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80A8CCB0  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80A8CCB4  C3 FF 00 10 */	lfs f31, 0x10(r31)
/* 80A8CCB8  C3 DF 00 B0 */	lfs f30, 0xb0(r31)
/* 80A8CCBC  A8 03 06 46 */	lha r0, 0x646(r3)
/* 80A8CCC0  28 00 00 14 */	cmplwi r0, 0x14
/* 80A8CCC4  41 81 07 EC */	bgt lbl_80A8D4B0
/* 80A8CCC8  3C 80 80 A9 */	lis r4, lit_5659@ha
/* 80A8CCCC  38 84 28 9C */	addi r4, r4, lit_5659@l
/* 80A8CCD0  54 00 10 3A */	slwi r0, r0, 2
/* 80A8CCD4  7C 04 00 2E */	lwzx r0, r4, r0
/* 80A8CCD8  7C 09 03 A6 */	mtctr r0
/* 80A8CCDC  4E 80 04 20 */	bctr 
lbl_80A8CCE0:
/* 80A8CCE0  38 80 00 11 */	li r4, 0x11
/* 80A8CCE4  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8CCE8  38 A0 00 02 */	li r5, 2
/* 80A8CCEC  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 80A8CCF0  4B FF C0 25 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8CCF4  38 00 00 01 */	li r0, 1
/* 80A8CCF8  B0 1A 06 46 */	sth r0, 0x646(r26)
/* 80A8CCFC  38 00 03 E8 */	li r0, 0x3e8
/* 80A8CD00  90 1A 06 FC */	stw r0, 0x6fc(r26)
/* 80A8CD04  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80A8CD08  D0 1A 05 D4 */	stfs f0, 0x5d4(r26)
/* 80A8CD0C  38 00 00 00 */	li r0, 0
/* 80A8CD10  B0 1A 06 4C */	sth r0, 0x64c(r26)
lbl_80A8CD14:
/* 80A8CD14  7F 43 D3 78 */	mr r3, r26
/* 80A8CD18  38 80 00 00 */	li r4, 0
/* 80A8CD1C  4B FF FD 05 */	bl home_path_search__FP12npc_ne_classi
/* 80A8CD20  90 7A 06 FC */	stw r3, 0x6fc(r26)
/* 80A8CD24  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8CD28  2C 00 00 00 */	cmpwi r0, 0
/* 80A8CD2C  40 80 00 1C */	bge lbl_80A8CD48
/* 80A8CD30  38 00 00 02 */	li r0, 2
/* 80A8CD34  B0 1A 06 42 */	sth r0, 0x642(r26)
/* 80A8CD38  38 00 00 00 */	li r0, 0
/* 80A8CD3C  B0 1A 06 46 */	sth r0, 0x646(r26)
/* 80A8CD40  38 60 00 01 */	li r3, 1
/* 80A8CD44  48 00 08 9C */	b lbl_80A8D5E0
lbl_80A8CD48:
/* 80A8CD48  A8 1A 0C 5C */	lha r0, 0xc5c(r26)
/* 80A8CD4C  2C 00 00 00 */	cmpwi r0, 0
/* 80A8CD50  40 82 00 0C */	bne lbl_80A8CD5C
/* 80A8CD54  38 00 00 01 */	li r0, 1
/* 80A8CD58  B0 1A 0C 5C */	sth r0, 0xc5c(r26)
lbl_80A8CD5C:
/* 80A8CD5C  38 00 00 02 */	li r0, 2
/* 80A8CD60  B0 1A 06 46 */	sth r0, 0x646(r26)
lbl_80A8CD64:
/* 80A8CD64  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A8CD68  3C 60 80 A9 */	lis r3, l_HIO@ha
/* 80A8CD6C  38 63 2A D4 */	addi r3, r3, l_HIO@l
/* 80A8CD70  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A8CD74  EF E1 00 32 */	fmuls f31, f1, f0
/* 80A8CD78  3C 60 80 A9 */	lis r3, home_path@ha
/* 80A8CD7C  38 63 25 F0 */	addi r3, r3, home_path@l
/* 80A8CD80  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8CD84  54 00 20 36 */	slwi r0, r0, 4
/* 80A8CD88  7C 63 02 14 */	add r3, r3, r0
/* 80A8CD8C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A8CD90  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A8CD94  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A8CD98  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A8CD9C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A8CDA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8CDA4  38 61 00 14 */	addi r3, r1, 0x14
/* 80A8CDA8  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80A8CDAC  7C 65 1B 78 */	mr r5, r3
/* 80A8CDB0  4B 8B A3 04 */	b PSVECSubtract
/* 80A8CDB4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80A8CDB8  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80A8CDBC  4B 7D A8 B8 */	b cM_atan2s__Fff
/* 80A8CDC0  B0 7A 05 D0 */	sth r3, 0x5d0(r26)
/* 80A8CDC4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A8CDC8  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A8CDCC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A8CDD0  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A8CDD4  EC 21 00 2A */	fadds f1, f1, f0
/* 80A8CDD8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8CDDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8CDE0  40 81 00 0C */	ble lbl_80A8CDEC
/* 80A8CDE4  FC 00 08 34 */	frsqrte f0, f1
/* 80A8CDE8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A8CDEC:
/* 80A8CDEC  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80A8CDF0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80A8CDF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8CDF8  4C 40 13 82 */	cror 2, 0, 2
/* 80A8CDFC  40 82 00 E4 */	bne lbl_80A8CEE0
/* 80A8CE00  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8CE04  2C 00 00 01 */	cmpwi r0, 1
/* 80A8CE08  40 82 00 6C */	bne lbl_80A8CE74
/* 80A8CE0C  38 00 00 14 */	li r0, 0x14
/* 80A8CE10  B0 1A 06 46 */	sth r0, 0x646(r26)
/* 80A8CE14  38 00 00 03 */	li r0, 3
/* 80A8CE18  B0 1A 0C 5C */	sth r0, 0xc5c(r26)
/* 80A8CE1C  38 00 00 00 */	li r0, 0
/* 80A8CE20  B0 1A 0C 5E */	sth r0, 0xc5e(r26)
/* 80A8CE24  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80A8CE28  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80A8CE2C  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80A8CE30  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80A8CE34  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 80A8CE38  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80A8CE3C  38 00 5F 94 */	li r0, 0x5f94
/* 80A8CE40  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80A8CE44  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050004@ha */
/* 80A8CE48  38 03 00 04 */	addi r0, r3, 0x0004 /* 0x00050004@l */
/* 80A8CE4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A8CE50  38 7A 06 0C */	addi r3, r26, 0x60c
/* 80A8CE54  38 81 00 10 */	addi r4, r1, 0x10
/* 80A8CE58  38 A0 00 00 */	li r5, 0
/* 80A8CE5C  38 C0 FF FF */	li r6, -1
/* 80A8CE60  81 9A 06 1C */	lwz r12, 0x61c(r26)
/* 80A8CE64  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A8CE68  7D 89 03 A6 */	mtctr r12
/* 80A8CE6C  4E 80 04 21 */	bctrl 
/* 80A8CE70  48 00 00 70 */	b lbl_80A8CEE0
lbl_80A8CE74:
/* 80A8CE74  2C 00 00 05 */	cmpwi r0, 5
/* 80A8CE78  41 82 00 0C */	beq lbl_80A8CE84
/* 80A8CE7C  2C 00 00 04 */	cmpwi r0, 4
/* 80A8CE80  40 82 00 50 */	bne lbl_80A8CED0
lbl_80A8CE84:
/* 80A8CE84  38 00 00 03 */	li r0, 3
/* 80A8CE88  B0 1A 06 46 */	sth r0, 0x646(r26)
/* 80A8CE8C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8CE90  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80A8CE94  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8CE98  2C 00 00 05 */	cmpwi r0, 5
/* 80A8CE9C  40 82 00 10 */	bne lbl_80A8CEAC
/* 80A8CEA0  38 00 00 08 */	li r0, 8
/* 80A8CEA4  B0 1A 06 4E */	sth r0, 0x64e(r26)
/* 80A8CEA8  48 00 00 0C */	b lbl_80A8CEB4
lbl_80A8CEAC:
/* 80A8CEAC  38 00 00 0C */	li r0, 0xc
/* 80A8CEB0  B0 1A 06 4E */	sth r0, 0x64e(r26)
lbl_80A8CEB4:
/* 80A8CEB4  7F 43 D3 78 */	mr r3, r26
/* 80A8CEB8  38 80 00 15 */	li r4, 0x15
/* 80A8CEBC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8CEC0  38 A0 00 00 */	li r5, 0
/* 80A8CEC4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8CEC8  4B FF BE 4D */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8CECC  48 00 00 14 */	b lbl_80A8CEE0
lbl_80A8CED0:
/* 80A8CED0  38 00 00 01 */	li r0, 1
/* 80A8CED4  B0 1A 06 46 */	sth r0, 0x646(r26)
/* 80A8CED8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80A8CEDC  D0 1A 05 D4 */	stfs f0, 0x5d4(r26)
lbl_80A8CEE0:
/* 80A8CEE0  80 1A 07 70 */	lwz r0, 0x770(r26)
/* 80A8CEE4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80A8CEE8  41 82 00 10 */	beq lbl_80A8CEF8
/* 80A8CEEC  A8 7A 06 4C */	lha r3, 0x64c(r26)
/* 80A8CEF0  38 03 00 02 */	addi r0, r3, 2
/* 80A8CEF4  B0 1A 06 4C */	sth r0, 0x64c(r26)
lbl_80A8CEF8:
/* 80A8CEF8  A8 1A 06 4C */	lha r0, 0x64c(r26)
/* 80A8CEFC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A8CF00  40 81 05 B0 */	ble lbl_80A8D4B0
/* 80A8CF04  38 00 00 02 */	li r0, 2
/* 80A8CF08  B0 1A 06 42 */	sth r0, 0x642(r26)
/* 80A8CF0C  38 00 00 00 */	li r0, 0
/* 80A8CF10  B0 1A 06 46 */	sth r0, 0x646(r26)
/* 80A8CF14  48 00 05 9C */	b lbl_80A8D4B0
lbl_80A8CF18:
/* 80A8CF18  D3 FA 05 2C */	stfs f31, 0x52c(r26)
/* 80A8CF1C  A8 1A 06 4E */	lha r0, 0x64e(r26)
/* 80A8CF20  2C 00 00 00 */	cmpwi r0, 0
/* 80A8CF24  40 82 05 8C */	bne lbl_80A8D4B0
/* 80A8CF28  38 00 00 04 */	li r0, 4
/* 80A8CF2C  B0 1A 06 46 */	sth r0, 0x646(r26)
/* 80A8CF30  38 80 00 0D */	li r4, 0xd
/* 80A8CF34  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8CF38  38 A0 00 00 */	li r5, 0
/* 80A8CF3C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8CF40  4B FF BD D5 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8CF44  38 00 00 06 */	li r0, 6
/* 80A8CF48  B0 1A 06 4E */	sth r0, 0x64e(r26)
/* 80A8CF4C  48 00 05 64 */	b lbl_80A8D4B0
lbl_80A8CF50:
/* 80A8CF50  38 00 30 00 */	li r0, 0x3000
/* 80A8CF54  B0 1A 04 DC */	sth r0, 0x4dc(r26)
/* 80A8CF58  3C 80 80 A9 */	lis r4, l_HIO@ha
/* 80A8CF5C  38 84 2A D4 */	addi r4, r4, l_HIO@l
/* 80A8CF60  C3 E4 00 10 */	lfs f31, 0x10(r4)
/* 80A8CF64  A8 1A 06 4E */	lha r0, 0x64e(r26)
/* 80A8CF68  2C 00 00 00 */	cmpwi r0, 0
/* 80A8CF6C  40 82 05 44 */	bne lbl_80A8D4B0
/* 80A8CF70  80 1A 07 70 */	lwz r0, 0x770(r26)
/* 80A8CF74  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A8CF78  41 82 05 38 */	beq lbl_80A8D4B0
/* 80A8CF7C  38 00 00 01 */	li r0, 1
/* 80A8CF80  B0 1A 06 46 */	sth r0, 0x646(r26)
/* 80A8CF84  38 80 00 11 */	li r4, 0x11
/* 80A8CF88  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8CF8C  38 A0 00 02 */	li r5, 2
/* 80A8CF90  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 80A8CF94  4B FF BD 81 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8CF98  48 00 05 18 */	b lbl_80A8D4B0
lbl_80A8CF9C:
/* 80A8CF9C  38 00 03 E8 */	li r0, 0x3e8
/* 80A8CFA0  90 1A 06 FC */	stw r0, 0x6fc(r26)
/* 80A8CFA4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80A8CFA8  D0 1A 05 D4 */	stfs f0, 0x5d4(r26)
/* 80A8CFAC  38 80 00 03 */	li r4, 3
/* 80A8CFB0  4B FF FA 71 */	bl home_path_search__FP12npc_ne_classi
/* 80A8CFB4  90 7A 06 FC */	stw r3, 0x6fc(r26)
/* 80A8CFB8  3C 60 80 A9 */	lis r3, home_path@ha
/* 80A8CFBC  38 63 25 F0 */	addi r3, r3, home_path@l
/* 80A8CFC0  3B 83 00 04 */	addi r28, r3, 4
/* 80A8CFC4  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8CFC8  54 00 20 36 */	slwi r0, r0, 4
/* 80A8CFCC  7C 1C 04 2E */	lfsx f0, r28, r0
/* 80A8CFD0  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80A8CFD4  3B A3 00 08 */	addi r29, r3, 8
/* 80A8CFD8  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8CFDC  54 00 20 36 */	slwi r0, r0, 4
/* 80A8CFE0  7C 1D 04 2E */	lfsx f0, r29, r0
/* 80A8CFE4  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80A8CFE8  3B C3 00 0C */	addi r30, r3, 0xc
/* 80A8CFEC  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8CFF0  54 00 20 36 */	slwi r0, r0, 4
/* 80A8CFF4  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80A8CFF8  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80A8CFFC  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80A8D000  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80A8D004  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80A8D008  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80A8D00C  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80A8D010  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80A8D014  7F 43 D3 78 */	mr r3, r26
/* 80A8D018  38 80 00 15 */	li r4, 0x15
/* 80A8D01C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8D020  38 A0 00 00 */	li r5, 0
/* 80A8D024  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8D028  4B FF BC ED */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8D02C  38 00 00 0B */	li r0, 0xb
/* 80A8D030  B0 1A 06 46 */	sth r0, 0x646(r26)
/* 80A8D034  7F 43 D3 78 */	mr r3, r26
/* 80A8D038  38 80 00 00 */	li r4, 0
/* 80A8D03C  4B FF F9 E5 */	bl home_path_search__FP12npc_ne_classi
/* 80A8D040  90 7A 06 FC */	stw r3, 0x6fc(r26)
/* 80A8D044  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8D048  54 00 20 36 */	slwi r0, r0, 4
/* 80A8D04C  7C 1C 04 2E */	lfsx f0, r28, r0
/* 80A8D050  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A8D054  7C 1D 04 2E */	lfsx f0, r29, r0
/* 80A8D058  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A8D05C  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80A8D060  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8D064  38 61 00 14 */	addi r3, r1, 0x14
/* 80A8D068  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80A8D06C  7C 65 1B 78 */	mr r5, r3
/* 80A8D070  4B 8B A0 44 */	b PSVECSubtract
/* 80A8D074  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80A8D078  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80A8D07C  4B 7D A5 F8 */	b cM_atan2s__Fff
/* 80A8D080  B0 7A 04 E6 */	sth r3, 0x4e6(r26)
/* 80A8D084  B0 7A 04 DE */	sth r3, 0x4de(r26)
/* 80A8D088  B0 7A 05 D0 */	sth r3, 0x5d0(r26)
/* 80A8D08C  38 00 00 0A */	li r0, 0xa
/* 80A8D090  B0 1A 0C 5C */	sth r0, 0xc5c(r26)
/* 80A8D094  38 00 00 1E */	li r0, 0x1e
/* 80A8D098  B0 1A 06 4C */	sth r0, 0x64c(r26)
/* 80A8D09C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050008@ha */
/* 80A8D0A0  38 03 00 08 */	addi r0, r3, 0x0008 /* 0x00050008@l */
/* 80A8D0A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A8D0A8  38 7A 06 0C */	addi r3, r26, 0x60c
/* 80A8D0AC  38 81 00 0C */	addi r4, r1, 0xc
/* 80A8D0B0  38 A0 00 00 */	li r5, 0
/* 80A8D0B4  38 C0 FF FF */	li r6, -1
/* 80A8D0B8  81 9A 06 1C */	lwz r12, 0x61c(r26)
/* 80A8D0BC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A8D0C0  7D 89 03 A6 */	mtctr r12
/* 80A8D0C4  4E 80 04 21 */	bctrl 
lbl_80A8D0C8:
/* 80A8D0C8  3C 60 80 43 */	lis r3, g_Counter@ha
/* 80A8D0CC  38 63 0C D8 */	addi r3, r3, g_Counter@l
/* 80A8D0D0  80 03 00 08 */	lwz r0, 8(r3)
/* 80A8D0D4  1C 00 13 88 */	mulli r0, r0, 0x1388
/* 80A8D0D8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A8D0DC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80A8D0E0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80A8D0E4  7C 23 04 2E */	lfsx f1, r3, r0
/* 80A8D0E8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80A8D0EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80A8D0F0  FC 00 00 1E */	fctiwz f0, f0
/* 80A8D0F4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80A8D0F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A8D0FC  B0 1A 06 82 */	sth r0, 0x682(r26)
/* 80A8D100  A8 1A 06 4C */	lha r0, 0x64c(r26)
/* 80A8D104  2C 00 00 00 */	cmpwi r0, 0
/* 80A8D108  40 82 03 A8 */	bne lbl_80A8D4B0
/* 80A8D10C  80 7A 05 E8 */	lwz r3, 0x5e8(r26)
/* 80A8D110  38 80 00 01 */	li r4, 1
/* 80A8D114  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A8D118  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8D11C  40 82 00 18 */	bne lbl_80A8D134
/* 80A8D120  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80A8D124  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A8D128  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A8D12C  41 82 00 08 */	beq lbl_80A8D134
/* 80A8D130  38 80 00 00 */	li r4, 0
lbl_80A8D134:
/* 80A8D134  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A8D138  41 82 03 78 */	beq lbl_80A8D4B0
/* 80A8D13C  7F 43 D3 78 */	mr r3, r26
/* 80A8D140  38 80 00 0D */	li r4, 0xd
/* 80A8D144  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8D148  38 A0 00 00 */	li r5, 0
/* 80A8D14C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8D150  4B FF BB C5 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8D154  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050009@ha */
/* 80A8D158  38 03 00 09 */	addi r0, r3, 0x0009 /* 0x00050009@l */
/* 80A8D15C  90 01 00 08 */	stw r0, 8(r1)
/* 80A8D160  38 7A 06 0C */	addi r3, r26, 0x60c
/* 80A8D164  38 81 00 08 */	addi r4, r1, 8
/* 80A8D168  38 A0 00 00 */	li r5, 0
/* 80A8D16C  38 C0 FF FF */	li r6, -1
/* 80A8D170  81 9A 06 1C */	lwz r12, 0x61c(r26)
/* 80A8D174  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A8D178  7D 89 03 A6 */	mtctr r12
/* 80A8D17C  4E 80 04 21 */	bctrl 
/* 80A8D180  38 00 00 0C */	li r0, 0xc
/* 80A8D184  B0 1A 06 46 */	sth r0, 0x646(r26)
/* 80A8D188  48 00 03 28 */	b lbl_80A8D4B0
lbl_80A8D18C:
/* 80A8D18C  C3 FF 00 0C */	lfs f31, 0xc(r31)
/* 80A8D190  FF C0 F8 90 */	fmr f30, f31
/* 80A8D194  2C 06 00 01 */	cmpwi r6, 1
/* 80A8D198  41 80 00 20 */	blt lbl_80A8D1B8
/* 80A8D19C  2C 06 00 0A */	cmpwi r6, 0xa
/* 80A8D1A0  40 80 00 10 */	bge lbl_80A8D1B0
/* 80A8D1A4  C3 FF 00 4C */	lfs f31, 0x4c(r31)
/* 80A8D1A8  FF C0 F8 90 */	fmr f30, f31
/* 80A8D1AC  48 00 00 0C */	b lbl_80A8D1B8
lbl_80A8D1B0:
/* 80A8D1B0  C3 FF 00 10 */	lfs f31, 0x10(r31)
/* 80A8D1B4  C3 DF 00 B0 */	lfs f30, 0xb0(r31)
lbl_80A8D1B8:
/* 80A8D1B8  38 60 00 01 */	li r3, 1
/* 80A8D1BC  88 05 00 11 */	lbz r0, 0x11(r5)
/* 80A8D1C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8D1C4  40 82 00 18 */	bne lbl_80A8D1DC
/* 80A8D1C8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80A8D1CC  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 80A8D1D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A8D1D4  41 82 00 08 */	beq lbl_80A8D1DC
/* 80A8D1D8  38 60 00 00 */	li r3, 0
lbl_80A8D1DC:
/* 80A8D1DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A8D1E0  41 82 02 D0 */	beq lbl_80A8D4B0
/* 80A8D1E4  7F 43 D3 78 */	mr r3, r26
/* 80A8D1E8  38 80 00 11 */	li r4, 0x11
/* 80A8D1EC  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8D1F0  38 A0 00 02 */	li r5, 2
/* 80A8D1F4  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 80A8D1F8  4B FF BB 1D */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8D1FC  38 00 00 0D */	li r0, 0xd
/* 80A8D200  B0 1A 06 46 */	sth r0, 0x646(r26)
/* 80A8D204  48 00 02 AC */	b lbl_80A8D4B0
lbl_80A8D208:
/* 80A8D208  38 80 00 00 */	li r4, 0
/* 80A8D20C  4B FF F8 15 */	bl home_path_search__FP12npc_ne_classi
/* 80A8D210  90 7A 06 FC */	stw r3, 0x6fc(r26)
/* 80A8D214  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8D218  2C 00 00 00 */	cmpwi r0, 0
/* 80A8D21C  40 80 00 24 */	bge lbl_80A8D240
/* 80A8D220  38 00 00 02 */	li r0, 2
/* 80A8D224  B0 1A 06 42 */	sth r0, 0x642(r26)
/* 80A8D228  38 00 00 00 */	li r0, 0
/* 80A8D22C  B0 1A 06 46 */	sth r0, 0x646(r26)
/* 80A8D230  38 00 00 63 */	li r0, 0x63
/* 80A8D234  B0 1A 0C 5C */	sth r0, 0xc5c(r26)
/* 80A8D238  38 60 00 01 */	li r3, 1
/* 80A8D23C  48 00 03 A4 */	b lbl_80A8D5E0
lbl_80A8D240:
/* 80A8D240  38 00 00 0E */	li r0, 0xe
/* 80A8D244  B0 1A 06 46 */	sth r0, 0x646(r26)
lbl_80A8D248:
/* 80A8D248  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A8D24C  3C 60 80 A9 */	lis r3, l_HIO@ha
/* 80A8D250  38 63 2A D4 */	addi r3, r3, l_HIO@l
/* 80A8D254  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A8D258  EF E1 00 32 */	fmuls f31, f1, f0
/* 80A8D25C  3C 60 80 A9 */	lis r3, home_path@ha
/* 80A8D260  38 63 25 F0 */	addi r3, r3, home_path@l
/* 80A8D264  3B C3 00 04 */	addi r30, r3, 4
/* 80A8D268  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8D26C  54 00 20 36 */	slwi r0, r0, 4
/* 80A8D270  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80A8D274  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A8D278  3B A3 00 08 */	addi r29, r3, 8
/* 80A8D27C  7C 1D 04 2E */	lfsx f0, r29, r0
/* 80A8D280  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A8D284  3B 83 00 0C */	addi r28, r3, 0xc
/* 80A8D288  7C 1C 04 2E */	lfsx f0, r28, r0
/* 80A8D28C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8D290  38 61 00 14 */	addi r3, r1, 0x14
/* 80A8D294  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80A8D298  7C 65 1B 78 */	mr r5, r3
/* 80A8D29C  4B 8B 9E 18 */	b PSVECSubtract
/* 80A8D2A0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80A8D2A4  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80A8D2A8  4B 7D A3 CC */	b cM_atan2s__Fff
/* 80A8D2AC  B0 7A 05 D0 */	sth r3, 0x5d0(r26)
/* 80A8D2B0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A8D2B4  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A8D2B8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A8D2BC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A8D2C0  EC 21 00 2A */	fadds f1, f1, f0
/* 80A8D2C4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8D2C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8D2CC  40 81 00 0C */	ble lbl_80A8D2D8
/* 80A8D2D0  FC 00 08 34 */	frsqrte f0, f1
/* 80A8D2D4  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A8D2D8:
/* 80A8D2D8  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A8D2DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8D2E0  4C 40 13 82 */	cror 2, 0, 2
/* 80A8D2E4  40 82 01 38 */	bne lbl_80A8D41C
/* 80A8D2E8  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8D2EC  2C 00 00 01 */	cmpwi r0, 1
/* 80A8D2F0  40 82 00 5C */	bne lbl_80A8D34C
/* 80A8D2F4  38 00 00 14 */	li r0, 0x14
/* 80A8D2F8  B0 1A 06 46 */	sth r0, 0x646(r26)
/* 80A8D2FC  38 00 00 03 */	li r0, 3
/* 80A8D300  B0 1A 0C 5C */	sth r0, 0xc5c(r26)
/* 80A8D304  38 00 00 00 */	li r0, 0
/* 80A8D308  B0 1A 0C 5E */	sth r0, 0xc5e(r26)
/* 80A8D30C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80A8D310  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80A8D314  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80A8D318  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80A8D31C  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 80A8D320  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80A8D324  38 00 5F 94 */	li r0, 0x5f94
/* 80A8D328  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80A8D32C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80A8D330  D0 1A 05 D4 */	stfs f0, 0x5d4(r26)
/* 80A8D334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A8D338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A8D33C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80A8D340  38 80 10 01 */	li r4, 0x1001
/* 80A8D344  4B 5A 76 48 */	b onEventBit__11dSv_event_cFUs
/* 80A8D348  48 00 00 D4 */	b lbl_80A8D41C
lbl_80A8D34C:
/* 80A8D34C  38 00 00 0D */	li r0, 0xd
/* 80A8D350  B0 1A 06 46 */	sth r0, 0x646(r26)
/* 80A8D354  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8D358  D0 1A 05 D4 */	stfs f0, 0x5d4(r26)
/* 80A8D35C  38 60 00 C8 */	li r3, 0xc8
/* 80A8D360  38 80 00 96 */	li r4, 0x96
/* 80A8D364  3C A0 80 A9 */	lis r5, stringBase0@ha
/* 80A8D368  38 A5 25 D0 */	addi r5, r5, stringBase0@l
/* 80A8D36C  38 A5 00 08 */	addi r5, r5, 8
/* 80A8D370  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8D374  54 00 20 36 */	slwi r0, r0, 4
/* 80A8D378  3C C0 80 A9 */	lis r6, home_path@ha
/* 80A8D37C  38 C6 25 F0 */	addi r6, r6, home_path@l
/* 80A8D380  7C C6 00 2E */	lwzx r6, r6, r0
/* 80A8D384  4C C6 31 82 */	crclr 6
/* 80A8D388  4B 85 31 A8 */	b JUTReport__FiiPCce
/* 80A8D38C  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8D390  54 00 20 36 */	slwi r0, r0, 4
/* 80A8D394  3C 60 80 A9 */	lis r3, home_path@ha
/* 80A8D398  38 63 25 F0 */	addi r3, r3, home_path@l
/* 80A8D39C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A8D3A0  2C 00 00 04 */	cmpwi r0, 4
/* 80A8D3A4  41 80 00 78 */	blt lbl_80A8D41C
/* 80A8D3A8  A8 1A 0C 5E */	lha r0, 0xc5e(r26)
/* 80A8D3AC  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 80A8D3B0  40 81 00 6C */	ble lbl_80A8D41C
/* 80A8D3B4  7F 43 D3 78 */	mr r3, r26
/* 80A8D3B8  38 80 00 00 */	li r4, 0
/* 80A8D3BC  4B FF F6 65 */	bl home_path_search__FP12npc_ne_classi
/* 80A8D3C0  90 7A 06 FC */	stw r3, 0x6fc(r26)
/* 80A8D3C4  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8D3C8  54 00 20 36 */	slwi r0, r0, 4
/* 80A8D3CC  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80A8D3D0  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80A8D3D4  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8D3D8  54 00 20 36 */	slwi r0, r0, 4
/* 80A8D3DC  7C 1D 04 2E */	lfsx f0, r29, r0
/* 80A8D3E0  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80A8D3E4  80 1A 06 FC */	lwz r0, 0x6fc(r26)
/* 80A8D3E8  54 00 20 36 */	slwi r0, r0, 4
/* 80A8D3EC  7C 1C 04 2E */	lfsx f0, r28, r0
/* 80A8D3F0  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80A8D3F4  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80A8D3F8  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80A8D3FC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80A8D400  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80A8D404  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80A8D408  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80A8D40C  38 00 00 01 */	li r0, 1
/* 80A8D410  98 1A 0C B4 */	stb r0, 0xcb4(r26)
/* 80A8D414  38 00 00 7A */	li r0, 0x7a
/* 80A8D418  B0 1A 0C 5E */	sth r0, 0xc5e(r26)
lbl_80A8D41C:
/* 80A8D41C  80 1A 07 70 */	lwz r0, 0x770(r26)
/* 80A8D420  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80A8D424  41 82 00 10 */	beq lbl_80A8D434
/* 80A8D428  A8 7A 06 4C */	lha r3, 0x64c(r26)
/* 80A8D42C  38 03 00 02 */	addi r0, r3, 2
/* 80A8D430  B0 1A 06 4C */	sth r0, 0x64c(r26)
lbl_80A8D434:
/* 80A8D434  A8 1A 06 4C */	lha r0, 0x64c(r26)
/* 80A8D438  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A8D43C  40 81 00 74 */	ble lbl_80A8D4B0
/* 80A8D440  38 00 00 63 */	li r0, 0x63
/* 80A8D444  B0 1A 0C 5C */	sth r0, 0xc5c(r26)
/* 80A8D448  48 00 00 68 */	b lbl_80A8D4B0
lbl_80A8D44C:
/* 80A8D44C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A8D450  3C 60 80 A9 */	lis r3, l_HIO@ha
/* 80A8D454  38 63 2A D4 */	addi r3, r3, l_HIO@l
/* 80A8D458  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A8D45C  EF E1 00 32 */	fmuls f31, f1, f0
/* 80A8D460  3B 60 00 00 */	li r27, 0
/* 80A8D464  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8D468  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80A8D46C  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 80A8D470  3C 60 80 A9 */	lis r3, home_path@ha
/* 80A8D474  38 63 25 F0 */	addi r3, r3, home_path@l
/* 80A8D478  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A8D47C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A8D480  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A8D484  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8D488  38 61 00 14 */	addi r3, r1, 0x14
/* 80A8D48C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80A8D490  7C 65 1B 78 */	mr r5, r3
/* 80A8D494  4B 8B 9C 20 */	b PSVECSubtract
/* 80A8D498  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80A8D49C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80A8D4A0  4B 7D A1 D4 */	b cM_atan2s__Fff
/* 80A8D4A4  B0 7A 05 D0 */	sth r3, 0x5d0(r26)
/* 80A8D4A8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80A8D4AC  D0 1A 05 D4 */	stfs f0, 0x5d4(r26)
lbl_80A8D4B0:
/* 80A8D4B0  38 7A 05 2C */	addi r3, r26, 0x52c
/* 80A8D4B4  FC 20 F8 90 */	fmr f1, f31
/* 80A8D4B8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8D4BC  FC 60 F0 90 */	fmr f3, f30
/* 80A8D4C0  4B 7E 25 7C */	b cLib_addCalc2__FPffff
/* 80A8D4C4  AB 9A 04 DE */	lha r28, 0x4de(r26)
/* 80A8D4C8  38 7A 04 DE */	addi r3, r26, 0x4de
/* 80A8D4CC  A8 9A 05 D0 */	lha r4, 0x5d0(r26)
/* 80A8D4D0  38 A0 00 02 */	li r5, 2
/* 80A8D4D4  C0 1A 05 D4 */	lfs f0, 0x5d4(r26)
/* 80A8D4D8  FC 00 00 1E */	fctiwz f0, f0
/* 80A8D4DC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80A8D4E0  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80A8D4E4  4B 7E 31 24 */	b cLib_addCalcAngleS2__FPssss
/* 80A8D4E8  38 7A 05 D4 */	addi r3, r26, 0x5d4
/* 80A8D4EC  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A8D4F0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8D4F4  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80A8D4F8  4B 7E 25 44 */	b cLib_addCalc2__FPffff
/* 80A8D4FC  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80A8D500  C0 5A 05 2C */	lfs f2, 0x52c(r26)
/* 80A8D504  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80A8D508  7C 1C 00 50 */	subf r0, r28, r0
/* 80A8D50C  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 80A8D510  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A8D514  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A8D518  3C 00 43 30 */	lis r0, 0x4330
/* 80A8D51C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A8D520  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A8D524  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A8D528  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A8D52C  EC 23 00 32 */	fmuls f1, f3, f0
/* 80A8D530  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80A8D534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8D538  40 81 00 0C */	ble lbl_80A8D544
/* 80A8D53C  FC 20 00 90 */	fmr f1, f0
/* 80A8D540  48 00 00 14 */	b lbl_80A8D554
lbl_80A8D544:
/* 80A8D544  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80A8D548  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8D54C  40 80 00 08 */	bge lbl_80A8D554
/* 80A8D550  FC 20 00 90 */	fmr f1, f0
lbl_80A8D554:
/* 80A8D554  FC 00 08 1E */	fctiwz f0, f1
/* 80A8D558  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80A8D55C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80A8D560  B0 1A 04 E0 */	sth r0, 0x4e0(r26)
/* 80A8D564  C0 3A 05 D4 */	lfs f1, 0x5d4(r26)
/* 80A8D568  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80A8D56C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8D570  40 81 00 6C */	ble lbl_80A8D5DC
/* 80A8D574  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80A8D578  C0 5A 05 2C */	lfs f2, 0x52c(r26)
/* 80A8D57C  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80A8D580  7C 1C 00 50 */	subf r0, r28, r0
/* 80A8D584  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 80A8D588  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A8D58C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A8D590  3C 00 43 30 */	lis r0, 0x4330
/* 80A8D594  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A8D598  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A8D59C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A8D5A0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A8D5A4  EC 23 00 32 */	fmuls f1, f3, f0
/* 80A8D5A8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80A8D5AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8D5B0  40 81 00 0C */	ble lbl_80A8D5BC
/* 80A8D5B4  FC 20 00 90 */	fmr f1, f0
/* 80A8D5B8  48 00 00 14 */	b lbl_80A8D5CC
lbl_80A8D5BC:
/* 80A8D5BC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80A8D5C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8D5C4  40 80 00 08 */	bge lbl_80A8D5CC
/* 80A8D5C8  FC 20 00 90 */	fmr f1, f0
lbl_80A8D5CC:
/* 80A8D5CC  FC 00 08 1E */	fctiwz f0, f1
/* 80A8D5D0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80A8D5D4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80A8D5D8  B0 1A 06 96 */	sth r0, 0x696(r26)
lbl_80A8D5DC:
/* 80A8D5DC  7F 63 DB 78 */	mr r3, r27
lbl_80A8D5E0:
/* 80A8D5E0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A8D5E4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A8D5E8  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80A8D5EC  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80A8D5F0  39 61 00 50 */	addi r11, r1, 0x50
/* 80A8D5F4  4B 8D 4C 28 */	b _restgpr_26
/* 80A8D5F8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A8D5FC  7C 08 03 A6 */	mtlr r0
/* 80A8D600  38 21 00 70 */	addi r1, r1, 0x70
/* 80A8D604  4E 80 00 20 */	blr 
