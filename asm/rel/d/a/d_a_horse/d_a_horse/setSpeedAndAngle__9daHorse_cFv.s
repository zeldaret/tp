lbl_8083CB38:
/* 8083CB38  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8083CB3C  7C 08 02 A6 */	mflr r0
/* 8083CB40  90 01 00 94 */	stw r0, 0x94(r1)
/* 8083CB44  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8083CB48  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8083CB4C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8083CB50  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8083CB54  39 61 00 70 */	addi r11, r1, 0x70
/* 8083CB58  4B B2 56 70 */	b _savegpr_24
/* 8083CB5C  7C 7B 1B 78 */	mr r27, r3
/* 8083CB60  3C 80 80 84 */	lis r4, lit_3894@ha
/* 8083CB64  3B C4 54 AC */	addi r30, r4, lit_3894@l
/* 8083CB68  38 80 00 01 */	li r4, 1
/* 8083CB6C  4B FF F3 DD */	bl checkHorseNoMove__9daHorse_cFi
/* 8083CB70  7C 7F 1B 78 */	mr r31, r3
/* 8083CB74  2C 1F 00 03 */	cmpwi r31, 3
/* 8083CB78  40 82 00 1C */	bne lbl_8083CB94
/* 8083CB7C  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083CB80  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8083CB84  38 60 00 01 */	li r3, 1
/* 8083CB88  41 82 0B 98 */	beq lbl_8083D720
/* 8083CB8C  38 60 00 03 */	li r3, 3
/* 8083CB90  48 00 0B 90 */	b lbl_8083D720
lbl_8083CB94:
/* 8083CB94  2C 1F 00 04 */	cmpwi r31, 4
/* 8083CB98  40 82 00 0C */	bne lbl_8083CBA4
/* 8083CB9C  38 60 00 05 */	li r3, 5
/* 8083CBA0  48 00 0B 80 */	b lbl_8083D720
lbl_8083CBA4:
/* 8083CBA4  2C 1F 00 02 */	cmpwi r31, 2
/* 8083CBA8  40 82 00 4C */	bne lbl_8083CBF4
/* 8083CBAC  88 1B 16 B4 */	lbz r0, 0x16b4(r27)
/* 8083CBB0  28 00 00 01 */	cmplwi r0, 1
/* 8083CBB4  40 82 00 40 */	bne lbl_8083CBF4
/* 8083CBB8  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8083CBBC  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8083CBC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083CBC4  4C 41 13 82 */	cror 2, 1, 2
/* 8083CBC8  40 82 00 2C */	bne lbl_8083CBF4
/* 8083CBCC  38 7E 00 20 */	addi r3, r30, 0x20
/* 8083CBD0  C0 03 00 BC */	lfs f0, 0xbc(r3)
/* 8083CBD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083CBD8  4C 40 13 82 */	cror 2, 0, 2
/* 8083CBDC  40 82 00 10 */	bne lbl_8083CBEC
/* 8083CBE0  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083CBE4  64 00 40 00 */	oris r0, r0, 0x4000
/* 8083CBE8  90 1B 17 44 */	stw r0, 0x1744(r27)
lbl_8083CBEC:
/* 8083CBEC  38 60 00 04 */	li r3, 4
/* 8083CBF0  48 00 0B 30 */	b lbl_8083D720
lbl_8083CBF4:
/* 8083CBF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8083CBF8  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 8083CBFC  83 B9 5D B4 */	lwz r29, 0x5db4(r25)
/* 8083CC00  7F A3 EB 78 */	mr r3, r29
/* 8083CC04  4B 8B 03 58 */	b checkHorseSubjectivity__9daAlink_cCFv
/* 8083CC08  2C 03 00 00 */	cmpwi r3, 0
/* 8083CC0C  41 82 00 F8 */	beq lbl_8083CD04
/* 8083CC10  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083CC14  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8083CC18  41 82 00 EC */	beq lbl_8083CD04
/* 8083CC1C  C0 5B 05 2C */	lfs f2, 0x52c(r27)
/* 8083CC20  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8083CC24  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8083CC28  40 80 00 44 */	bge lbl_8083CC6C
/* 8083CC2C  7F 63 DB 78 */	mr r3, r27
/* 8083CC30  38 80 00 00 */	li r4, 0
/* 8083CC34  4B FF F3 15 */	bl checkHorseNoMove__9daHorse_cFi
/* 8083CC38  2C 03 00 02 */	cmpwi r3, 2
/* 8083CC3C  40 82 00 10 */	bne lbl_8083CC4C
/* 8083CC40  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8083CC44  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 8083CC48  48 00 00 4C */	b lbl_8083CC94
lbl_8083CC4C:
/* 8083CC4C  2C 03 00 01 */	cmpwi r3, 1
/* 8083CC50  40 82 00 44 */	bne lbl_8083CC94
/* 8083CC54  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8083CC58  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 8083CC5C  38 9E 00 20 */	addi r4, r30, 0x20
/* 8083CC60  C0 44 00 54 */	lfs f2, 0x54(r4)
/* 8083CC64  4B A3 3A DC */	b cLib_chaseF__FPfff
/* 8083CC68  48 00 00 2C */	b lbl_8083CC94
lbl_8083CC6C:
/* 8083CC6C  A8 1B 16 F8 */	lha r0, 0x16f8(r27)
/* 8083CC70  2C 00 00 00 */	cmpwi r0, 0
/* 8083CC74  40 82 00 20 */	bne lbl_8083CC94
/* 8083CC78  C0 3B 17 8C */	lfs f1, 0x178c(r27)
/* 8083CC7C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8083CC80  40 81 00 14 */	ble lbl_8083CC94
/* 8083CC84  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8083CC88  38 9E 00 20 */	addi r4, r30, 0x20
/* 8083CC8C  C0 44 00 54 */	lfs f2, 0x54(r4)
/* 8083CC90  4B A3 3A B0 */	b cLib_chaseF__FPfff
lbl_8083CC94:
/* 8083CC94  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083CC98  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8083CC9C  41 82 00 60 */	beq lbl_8083CCFC
/* 8083CCA0  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 8083CCA4  4B B2 84 2C */	b abs
/* 8083CCA8  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8083CCAC  40 80 00 20 */	bge lbl_8083CCCC
/* 8083CCB0  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8083CCB4  38 80 00 00 */	li r4, 0
/* 8083CCB8  38 A0 00 02 */	li r5, 2
/* 8083CCBC  38 C0 20 00 */	li r6, 0x2000
/* 8083CCC0  38 E0 01 00 */	li r7, 0x100
/* 8083CCC4  4B A3 38 7C */	b cLib_addCalcAngleS__FPsssss
/* 8083CCC8  48 00 00 1C */	b lbl_8083CCE4
lbl_8083CCCC:
/* 8083CCCC  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8083CCD0  38 80 80 00 */	li r4, -32768
/* 8083CCD4  38 A0 00 02 */	li r5, 2
/* 8083CCD8  38 C0 20 00 */	li r6, 0x2000
/* 8083CCDC  38 E0 01 00 */	li r7, 0x100
/* 8083CCE0  4B A3 38 60 */	b cLib_addCalcAngleS__FPsssss
lbl_8083CCE4:
/* 8083CCE4  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 8083CCE8  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 8083CCEC  38 A0 00 02 */	li r5, 2
/* 8083CCF0  38 C0 20 00 */	li r6, 0x2000
/* 8083CCF4  38 E0 01 00 */	li r7, 0x100
/* 8083CCF8  4B A3 38 48 */	b cLib_addCalcAngleS__FPsssss
lbl_8083CCFC:
/* 8083CCFC  38 60 00 00 */	li r3, 0
/* 8083CD00  48 00 0A 20 */	b lbl_8083D720
lbl_8083CD04:
/* 8083CD04  C0 3B 17 58 */	lfs f1, 0x1758(r27)
/* 8083CD08  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 8083CD0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083CD10  40 81 00 18 */	ble lbl_8083CD28
/* 8083CD14  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 8083CD18  A8 1B 16 EC */	lha r0, 0x16ec(r27)
/* 8083CD1C  7C 03 00 50 */	subf r0, r3, r0
/* 8083CD20  7C 1A 07 34 */	extsh r26, r0
/* 8083CD24  48 00 00 08 */	b lbl_8083CD2C
lbl_8083CD28:
/* 8083CD28  3B 40 00 00 */	li r26, 0
lbl_8083CD2C:
/* 8083CD2C  7F 43 07 34 */	extsh r3, r26
/* 8083CD30  4B B2 83 A0 */	b abs
/* 8083CD34  2C 03 60 00 */	cmpwi r3, 0x6000
/* 8083CD38  40 81 00 18 */	ble lbl_8083CD50
/* 8083CD3C  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083CD40  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 8083CD44  40 82 00 0C */	bne lbl_8083CD50
/* 8083CD48  3B 80 00 01 */	li r28, 1
/* 8083CD4C  48 00 00 2C */	b lbl_8083CD78
lbl_8083CD50:
/* 8083CD50  7F 40 07 34 */	extsh r0, r26
/* 8083CD54  2C 00 30 00 */	cmpwi r0, 0x3000
/* 8083CD58  41 80 00 0C */	blt lbl_8083CD64
/* 8083CD5C  3B 80 00 02 */	li r28, 2
/* 8083CD60  48 00 00 18 */	b lbl_8083CD78
lbl_8083CD64:
/* 8083CD64  2C 00 D0 00 */	cmpwi r0, -12288
/* 8083CD68  41 81 00 0C */	bgt lbl_8083CD74
/* 8083CD6C  3B 80 00 03 */	li r28, 3
/* 8083CD70  48 00 00 08 */	b lbl_8083CD78
lbl_8083CD74:
/* 8083CD74  3B 80 00 00 */	li r28, 0
lbl_8083CD78:
/* 8083CD78  C0 3B 17 58 */	lfs f1, 0x1758(r27)
/* 8083CD7C  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 8083CD80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083CD84  40 81 02 08 */	ble lbl_8083CF8C
/* 8083CD88  80 7B 17 44 */	lwz r3, 0x1744(r27)
/* 8083CD8C  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 8083CD90  41 82 00 8C */	beq lbl_8083CE1C
/* 8083CD94  A0 1B 16 C8 */	lhz r0, 0x16c8(r27)
/* 8083CD98  28 00 00 1F */	cmplwi r0, 0x1f
/* 8083CD9C  40 82 00 18 */	bne lbl_8083CDB4
/* 8083CDA0  C0 3B 05 F0 */	lfs f1, 0x5f0(r27)
/* 8083CDA4  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 8083CDA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083CDAC  4C 41 13 82 */	cror 2, 1, 2
/* 8083CDB0  40 82 00 6C */	bne lbl_8083CE1C
lbl_8083CDB4:
/* 8083CDB4  2C 1C 00 01 */	cmpwi r28, 1
/* 8083CDB8  40 82 00 30 */	bne lbl_8083CDE8
/* 8083CDBC  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8083CDC0  A8 9B 16 EC */	lha r4, 0x16ec(r27)
/* 8083CDC4  3C 84 00 01 */	addis r4, r4, 1
/* 8083CDC8  38 04 80 00 */	addi r0, r4, -32768
/* 8083CDCC  7C 04 07 34 */	extsh r4, r0
/* 8083CDD0  38 A0 00 05 */	li r5, 5
/* 8083CDD4  A8 DB 16 C2 */	lha r6, 0x16c2(r27)
/* 8083CDD8  38 FE 00 20 */	addi r7, r30, 0x20
/* 8083CDDC  A8 E7 00 02 */	lha r7, 2(r7)
/* 8083CDE0  4B A3 37 60 */	b cLib_addCalcAngleS__FPsssss
/* 8083CDE4  48 00 00 20 */	b lbl_8083CE04
lbl_8083CDE8:
/* 8083CDE8  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8083CDEC  A8 9B 16 EC */	lha r4, 0x16ec(r27)
/* 8083CDF0  38 A0 00 05 */	li r5, 5
/* 8083CDF4  A8 DB 16 C2 */	lha r6, 0x16c2(r27)
/* 8083CDF8  38 FE 00 20 */	addi r7, r30, 0x20
/* 8083CDFC  A8 E7 00 02 */	lha r7, 2(r7)
/* 8083CE00  4B A3 37 40 */	b cLib_addCalcAngleS__FPsssss
lbl_8083CE04:
/* 8083CE04  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083CE08  54 00 02 97 */	rlwinm. r0, r0, 0, 0xa, 0xb
/* 8083CE0C  40 82 01 80 */	bne lbl_8083CF8C
/* 8083CE10  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8083CE14  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 8083CE18  48 00 01 74 */	b lbl_8083CF8C
lbl_8083CE1C:
/* 8083CE1C  2C 1C 00 01 */	cmpwi r28, 1
/* 8083CE20  41 82 01 14 */	beq lbl_8083CF34
/* 8083CE24  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 8083CE28  40 82 00 34 */	bne lbl_8083CE5C
/* 8083CE2C  7F A3 EB 78 */	mr r3, r29
/* 8083CE30  38 80 00 4D */	li r4, 0x4d
/* 8083CE34  4B 86 F7 24 */	b checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8083CE38  2C 03 00 00 */	cmpwi r3, 0
/* 8083CE3C  40 82 01 50 */	bne lbl_8083CF8C
/* 8083CE40  7F A3 EB 78 */	mr r3, r29
/* 8083CE44  4B 8A FF 80 */	b checkHorseWaitLashAnime__9daAlink_cCFv
/* 8083CE48  2C 03 00 00 */	cmpwi r3, 0
/* 8083CE4C  41 82 00 10 */	beq lbl_8083CE5C
/* 8083CE50  80 1B 17 4C */	lwz r0, 0x174c(r27)
/* 8083CE54  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8083CE58  41 82 01 34 */	beq lbl_8083CF8C
lbl_8083CE5C:
/* 8083CE5C  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8083CE60  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 8083CE64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083CE68  4C 40 13 82 */	cror 2, 0, 2
/* 8083CE6C  40 82 00 94 */	bne lbl_8083CF00
/* 8083CE70  C0 5B 17 58 */	lfs f2, 0x1758(r27)
/* 8083CE74  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 8083CE78  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8083CE7C  40 80 00 08 */	bge lbl_8083CE84
/* 8083CE80  FC 40 00 90 */	fmr f2, f0
lbl_8083CE84:
/* 8083CE84  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083CE88  54 00 02 97 */	rlwinm. r0, r0, 0, 0xa, 0xb
/* 8083CE8C  40 82 00 90 */	bne lbl_8083CF1C
/* 8083CE90  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8083CE94  A8 9B 16 EC */	lha r4, 0x16ec(r27)
/* 8083CE98  38 A0 00 05 */	li r5, 5
/* 8083CE9C  A8 1B 16 C2 */	lha r0, 0x16c2(r27)
/* 8083CEA0  C8 3E 01 80 */	lfd f1, 0x180(r30)
/* 8083CEA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083CEA8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8083CEAC  3D 00 43 30 */	lis r8, 0x4330
/* 8083CEB0  91 01 00 28 */	stw r8, 0x28(r1)
/* 8083CEB4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8083CEB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8083CEBC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8083CEC0  FC 00 00 1E */	fctiwz f0, f0
/* 8083CEC4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8083CEC8  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 8083CECC  38 FE 00 20 */	addi r7, r30, 0x20
/* 8083CED0  A8 07 00 02 */	lha r0, 2(r7)
/* 8083CED4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083CED8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8083CEDC  91 01 00 38 */	stw r8, 0x38(r1)
/* 8083CEE0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8083CEE4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8083CEE8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8083CEEC  FC 00 00 1E */	fctiwz f0, f0
/* 8083CEF0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8083CEF4  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 8083CEF8  4B A3 36 48 */	b cLib_addCalcAngleS__FPsssss
/* 8083CEFC  48 00 00 20 */	b lbl_8083CF1C
lbl_8083CF00:
/* 8083CF00  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8083CF04  A8 9B 16 EC */	lha r4, 0x16ec(r27)
/* 8083CF08  38 A0 00 05 */	li r5, 5
/* 8083CF0C  A8 DB 16 C2 */	lha r6, 0x16c2(r27)
/* 8083CF10  38 FE 00 20 */	addi r7, r30, 0x20
/* 8083CF14  A8 E7 00 02 */	lha r7, 2(r7)
/* 8083CF18  4B A3 36 28 */	b cLib_addCalcAngleS__FPsssss
lbl_8083CF1C:
/* 8083CF1C  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083CF20  54 00 02 97 */	rlwinm. r0, r0, 0, 0xa, 0xb
/* 8083CF24  40 82 00 68 */	bne lbl_8083CF8C
/* 8083CF28  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8083CF2C  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 8083CF30  48 00 00 5C */	b lbl_8083CF8C
lbl_8083CF34:
/* 8083CF34  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8083CF38  41 82 00 18 */	beq lbl_8083CF50
/* 8083CF3C  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 8083CF40  28 00 00 3C */	cmplwi r0, 0x3c
/* 8083CF44  40 82 00 0C */	bne lbl_8083CF50
/* 8083CF48  38 60 00 03 */	li r3, 3
/* 8083CF4C  48 00 07 D4 */	b lbl_8083D720
lbl_8083CF50:
/* 8083CF50  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8083CF54  A8 9B 16 EC */	lha r4, 0x16ec(r27)
/* 8083CF58  3C 84 00 01 */	addis r4, r4, 1
/* 8083CF5C  38 04 80 00 */	addi r0, r4, -32768
/* 8083CF60  7C 04 07 34 */	extsh r4, r0
/* 8083CF64  38 A0 00 05 */	li r5, 5
/* 8083CF68  A8 DB 16 C2 */	lha r6, 0x16c2(r27)
/* 8083CF6C  38 FE 00 20 */	addi r7, r30, 0x20
/* 8083CF70  A8 E7 00 02 */	lha r7, 2(r7)
/* 8083CF74  4B A3 35 CC */	b cLib_addCalcAngleS__FPsssss
/* 8083CF78  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083CF7C  54 00 02 97 */	rlwinm. r0, r0, 0, 0xa, 0xb
/* 8083CF80  40 82 00 0C */	bne lbl_8083CF8C
/* 8083CF84  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8083CF88  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
lbl_8083CF8C:
/* 8083CF8C  80 1B 17 40 */	lwz r0, 0x1740(r27)
/* 8083CF90  28 00 00 06 */	cmplwi r0, 6
/* 8083CF94  40 82 00 34 */	bne lbl_8083CFC8
/* 8083CF98  2C 1F 00 00 */	cmpwi r31, 0
/* 8083CF9C  41 82 00 24 */	beq lbl_8083CFC0
/* 8083CFA0  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 8083CFA4  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 8083CFA8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8083CFAC  40 81 00 14 */	ble lbl_8083CFC0
/* 8083CFB0  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8083CFB4  38 9E 00 20 */	addi r4, r30, 0x20
/* 8083CFB8  C0 44 00 54 */	lfs f2, 0x54(r4)
/* 8083CFBC  4B A3 37 84 */	b cLib_chaseF__FPfff
lbl_8083CFC0:
/* 8083CFC0  38 60 00 00 */	li r3, 0
/* 8083CFC4  48 00 07 5C */	b lbl_8083D720
lbl_8083CFC8:
/* 8083CFC8  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083CFCC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8083CFD0  41 82 00 A8 */	beq lbl_8083D078
/* 8083CFD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8083CFD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8083CFDC  3B 03 56 B8 */	addi r24, r3, 0x56b8
/* 8083CFE0  7F 03 C3 78 */	mr r3, r24
/* 8083CFE4  38 80 00 00 */	li r4, 0
/* 8083CFE8  4B 83 38 5C */	b GetLockonList__12dAttention_cFl
/* 8083CFEC  28 03 00 00 */	cmplwi r3, 0
/* 8083CFF0  41 82 00 88 */	beq lbl_8083D078
/* 8083CFF4  7F 03 C3 78 */	mr r3, r24
/* 8083CFF8  4B 83 67 EC */	b LockonTruth__12dAttention_cFv
/* 8083CFFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083D000  41 82 00 78 */	beq lbl_8083D078
/* 8083D004  7F 03 C3 78 */	mr r3, r24
/* 8083D008  38 80 00 00 */	li r4, 0
/* 8083D00C  4B 83 38 38 */	b GetLockonList__12dAttention_cFl
/* 8083D010  4B 83 68 54 */	b getActor__10dAttList_cFv
/* 8083D014  7C 64 1B 78 */	mr r4, r3
/* 8083D018  7F 63 DB 78 */	mr r3, r27
/* 8083D01C  4B 7D DA 78 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8083D020  C0 1E 02 20 */	lfs f0, 0x220(r30)
/* 8083D024  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083D028  40 81 00 50 */	ble lbl_8083D078
/* 8083D02C  7F 03 C3 78 */	mr r3, r24
/* 8083D030  38 80 00 00 */	li r4, 0
/* 8083D034  4B 83 38 10 */	b GetLockonList__12dAttention_cFl
/* 8083D038  4B 83 68 2C */	b getActor__10dAttList_cFv
/* 8083D03C  7C 64 1B 78 */	mr r4, r3
/* 8083D040  7F 63 DB 78 */	mr r3, r27
/* 8083D044  4B 7D D6 CC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8083D048  7C 64 1B 78 */	mr r4, r3
/* 8083D04C  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8083D050  38 A0 00 05 */	li r5, 5
/* 8083D054  A8 DB 16 C2 */	lha r6, 0x16c2(r27)
/* 8083D058  38 FE 00 20 */	addi r7, r30, 0x20
/* 8083D05C  A8 E7 00 02 */	lha r7, 2(r7)
/* 8083D060  4B A3 34 E0 */	b cLib_addCalcAngleS__FPsssss
/* 8083D064  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083D068  54 00 02 97 */	rlwinm. r0, r0, 0, 0xa, 0xb
/* 8083D06C  40 82 00 0C */	bne lbl_8083D078
/* 8083D070  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8083D074  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
lbl_8083D078:
/* 8083D078  A8 7B 17 02 */	lha r3, 0x1702(r27)
/* 8083D07C  7C 60 07 35 */	extsh. r0, r3
/* 8083D080  41 82 00 18 */	beq lbl_8083D098
/* 8083D084  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8083D088  7C 00 1A 14 */	add r0, r0, r3
/* 8083D08C  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 8083D090  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8083D094  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_8083D098:
/* 8083D098  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083D09C  54 00 02 97 */	rlwinm. r0, r0, 0, 0xa, 0xb
/* 8083D0A0  41 82 01 98 */	beq lbl_8083D238
/* 8083D0A4  38 00 00 00 */	li r0, 0
/* 8083D0A8  90 01 00 08 */	stw r0, 8(r1)
/* 8083D0AC  3C 60 80 84 */	lis r3, daHorse_searchSingleBoar__FP10fopAc_ac_cPv@ha
/* 8083D0B0  38 63 8F 80 */	addi r3, r3, daHorse_searchSingleBoar__FP10fopAc_ac_cPv@l
/* 8083D0B4  38 81 00 08 */	addi r4, r1, 8
/* 8083D0B8  4B 7D C7 04 */	b fopAcIt_Executor__FPFPvPv_iPv
/* 8083D0BC  C0 3B 17 58 */	lfs f1, 0x1758(r27)
/* 8083D0C0  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 8083D0C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083D0C8  40 81 00 E8 */	ble lbl_8083D1B0
/* 8083D0CC  80 81 00 08 */	lwz r4, 8(r1)
/* 8083D0D0  28 04 00 00 */	cmplwi r4, 0
/* 8083D0D4  41 82 00 DC */	beq lbl_8083D1B0
/* 8083D0D8  7F 63 DB 78 */	mr r3, r27
/* 8083D0DC  4B 7D D6 C0 */	b fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8083D0E0  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8083D0E4  40 80 00 CC */	bge lbl_8083D1B0
/* 8083D0E8  80 61 00 08 */	lwz r3, 8(r1)
/* 8083D0EC  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 8083D0F0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8083D0F4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8083D0F8  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 8083D0FC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8083D100  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8083D104  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 8083D108  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8083D10C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8083D110  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8083D114  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8083D118  38 61 00 0C */	addi r3, r1, 0xc
/* 8083D11C  38 81 00 18 */	addi r4, r1, 0x18
/* 8083D120  4B B0 A2 7C */	b PSVECSquareDistance
/* 8083D124  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 8083D128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083D12C  40 80 00 84 */	bge lbl_8083D1B0
/* 8083D130  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 8083D134  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8083D138  7C 03 00 50 */	subf r0, r3, r0
/* 8083D13C  7C 03 07 34 */	extsh r3, r0
/* 8083D140  4B B2 7F 90 */	b abs
/* 8083D144  2C 03 50 00 */	cmpwi r3, 0x5000
/* 8083D148  40 81 00 30 */	ble lbl_8083D178
/* 8083D14C  A8 9B 17 0A */	lha r4, 0x170a(r27)
/* 8083D150  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 8083D154  3C 63 00 01 */	addis r3, r3, 1
/* 8083D158  38 03 80 00 */	addi r0, r3, -32768
/* 8083D15C  7C 04 00 50 */	subf r0, r4, r0
/* 8083D160  7C 00 07 34 */	extsh r0, r0
/* 8083D164  7C 00 16 70 */	srawi r0, r0, 2
/* 8083D168  7C 00 01 94 */	addze r0, r0
/* 8083D16C  7C 04 02 14 */	add r0, r4, r0
/* 8083D170  7C 04 07 34 */	extsh r4, r0
/* 8083D174  48 00 00 24 */	b lbl_8083D198
lbl_8083D178:
/* 8083D178  A8 7B 17 0A */	lha r3, 0x170a(r27)
/* 8083D17C  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8083D180  7C 03 00 50 */	subf r0, r3, r0
/* 8083D184  7C 00 07 34 */	extsh r0, r0
/* 8083D188  7C 00 16 70 */	srawi r0, r0, 2
/* 8083D18C  7C 00 01 94 */	addze r0, r0
/* 8083D190  7C 03 02 14 */	add r0, r3, r0
/* 8083D194  7C 04 07 34 */	extsh r4, r0
lbl_8083D198:
/* 8083D198  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 8083D19C  38 A0 00 05 */	li r5, 5
/* 8083D1A0  38 C0 20 00 */	li r6, 0x2000
/* 8083D1A4  38 E0 01 00 */	li r7, 0x100
/* 8083D1A8  4B A3 33 98 */	b cLib_addCalcAngleS__FPsssss
/* 8083D1AC  48 00 00 8C */	b lbl_8083D238
lbl_8083D1B0:
/* 8083D1B0  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8083D1B4  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8083D1B8  40 80 00 18 */	bge lbl_8083D1D0
/* 8083D1BC  2C 00 18 00 */	cmpwi r0, 0x1800
/* 8083D1C0  40 81 00 10 */	ble lbl_8083D1D0
/* 8083D1C4  38 00 18 00 */	li r0, 0x1800
/* 8083D1C8  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 8083D1CC  48 00 00 54 */	b lbl_8083D220
lbl_8083D1D0:
/* 8083D1D0  2C 00 C0 00 */	cmpwi r0, -16384
/* 8083D1D4  40 81 00 18 */	ble lbl_8083D1EC
/* 8083D1D8  2C 00 E8 00 */	cmpwi r0, -6144
/* 8083D1DC  40 80 00 10 */	bge lbl_8083D1EC
/* 8083D1E0  38 00 E8 00 */	li r0, -6144
/* 8083D1E4  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 8083D1E8  48 00 00 38 */	b lbl_8083D220
lbl_8083D1EC:
/* 8083D1EC  2C 00 68 00 */	cmpwi r0, 0x6800
/* 8083D1F0  40 80 00 18 */	bge lbl_8083D208
/* 8083D1F4  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8083D1F8  41 80 00 10 */	blt lbl_8083D208
/* 8083D1FC  38 00 68 00 */	li r0, 0x6800
/* 8083D200  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 8083D204  48 00 00 1C */	b lbl_8083D220
lbl_8083D208:
/* 8083D208  2C 00 98 00 */	cmpwi r0, -26624
/* 8083D20C  40 81 00 14 */	ble lbl_8083D220
/* 8083D210  2C 00 C0 00 */	cmpwi r0, -16384
/* 8083D214  41 81 00 0C */	bgt lbl_8083D220
/* 8083D218  38 00 98 00 */	li r0, -26624
/* 8083D21C  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_8083D220:
/* 8083D220  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 8083D224  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 8083D228  38 A0 00 05 */	li r5, 5
/* 8083D22C  38 C0 20 00 */	li r6, 0x2000
/* 8083D230  38 E0 01 00 */	li r7, 0x100
/* 8083D234  4B A3 33 0C */	b cLib_addCalcAngleS__FPsssss
lbl_8083D238:
/* 8083D238  38 7B 17 02 */	addi r3, r27, 0x1702
/* 8083D23C  38 80 00 00 */	li r4, 0
/* 8083D240  38 A0 00 C0 */	li r5, 0xc0
/* 8083D244  4B A3 39 4C */	b cLib_chaseAngleS__FPsss
/* 8083D248  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8083D24C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8083D250  3B 03 00 04 */	addi r24, r3, 4
/* 8083D254  57 40 04 38 */	rlwinm r0, r26, 0, 0x10, 0x1c
/* 8083D258  7C 58 04 2E */	lfsx f2, r24, r0
/* 8083D25C  FC 60 10 90 */	fmr f3, f2
/* 8083D260  80 9B 17 44 */	lwz r4, 0x1744(r27)
/* 8083D264  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 8083D268  41 82 00 18 */	beq lbl_8083D280
/* 8083D26C  C0 1E 02 28 */	lfs f0, 0x228(r30)
/* 8083D270  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8083D274  40 80 00 3C */	bge lbl_8083D2B0
/* 8083D278  FC 60 00 90 */	fmr f3, f0
/* 8083D27C  48 00 00 34 */	b lbl_8083D2B0
lbl_8083D280:
/* 8083D280  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8083D284  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 8083D288  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083D28C  40 80 00 14 */	bge lbl_8083D2A0
/* 8083D290  2C 1C 00 00 */	cmpwi r28, 0
/* 8083D294  41 82 00 0C */	beq lbl_8083D2A0
/* 8083D298  C0 7E 01 50 */	lfs f3, 0x150(r30)
/* 8083D29C  48 00 00 14 */	b lbl_8083D2B0
lbl_8083D2A0:
/* 8083D2A0  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8083D2A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8083D2A8  40 80 00 08 */	bge lbl_8083D2B0
/* 8083D2AC  FC 60 00 90 */	fmr f3, f0
lbl_8083D2B0:
/* 8083D2B0  2C 1F 00 00 */	cmpwi r31, 0
/* 8083D2B4  41 82 00 28 */	beq lbl_8083D2DC
/* 8083D2B8  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 8083D2BC  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 8083D2C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8083D2C4  40 81 00 18 */	ble lbl_8083D2DC
/* 8083D2C8  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8083D2CC  38 9E 00 20 */	addi r4, r30, 0x20
/* 8083D2D0  C0 44 00 54 */	lfs f2, 0x54(r4)
/* 8083D2D4  4B A3 34 6C */	b cLib_chaseF__FPfff
/* 8083D2D8  48 00 03 F8 */	b lbl_8083D6D0
lbl_8083D2DC:
/* 8083D2DC  54 80 03 5B */	rlwinm. r0, r4, 0, 0xd, 0xd
/* 8083D2E0  41 82 00 98 */	beq lbl_8083D378
/* 8083D2E4  A0 1B 16 C8 */	lhz r0, 0x16c8(r27)
/* 8083D2E8  28 00 00 1F */	cmplwi r0, 0x1f
/* 8083D2EC  40 82 00 18 */	bne lbl_8083D304
/* 8083D2F0  C0 3B 05 F0 */	lfs f1, 0x5f0(r27)
/* 8083D2F4  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 8083D2F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083D2FC  4C 41 13 82 */	cror 2, 1, 2
/* 8083D300  40 82 03 D0 */	bne lbl_8083D6D0
lbl_8083D304:
/* 8083D304  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8083D308  38 9E 00 20 */	addi r4, r30, 0x20
/* 8083D30C  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 8083D310  FC 20 00 50 */	fneg f1, f0
/* 8083D314  C0 44 00 5C */	lfs f2, 0x5c(r4)
/* 8083D318  4B A3 34 28 */	b cLib_chaseF__FPfff
/* 8083D31C  A8 7B 17 04 */	lha r3, 0x1704(r27)
/* 8083D320  38 03 FF FF */	addi r0, r3, -1
/* 8083D324  B0 1B 17 04 */	sth r0, 0x1704(r27)
/* 8083D328  A8 1B 17 04 */	lha r0, 0x1704(r27)
/* 8083D32C  2C 00 00 00 */	cmpwi r0, 0
/* 8083D330  40 82 00 14 */	bne lbl_8083D344
/* 8083D334  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083D338  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 8083D33C  90 1B 17 44 */	stw r0, 0x1744(r27)
/* 8083D340  48 00 03 90 */	b lbl_8083D6D0
lbl_8083D344:
/* 8083D344  7F 63 DB 78 */	mr r3, r27
/* 8083D348  38 80 00 00 */	li r4, 0
/* 8083D34C  4B FF EB FD */	bl checkHorseNoMove__9daHorse_cFi
/* 8083D350  2C 03 00 02 */	cmpwi r3, 2
/* 8083D354  40 82 03 7C */	bne lbl_8083D6D0
/* 8083D358  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083D35C  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 8083D360  90 1B 17 44 */	stw r0, 0x1744(r27)
/* 8083D364  38 00 00 00 */	li r0, 0
/* 8083D368  B0 1B 17 04 */	sth r0, 0x1704(r27)
/* 8083D36C  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8083D370  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 8083D374  48 00 03 5C */	b lbl_8083D6D0
lbl_8083D378:
/* 8083D378  C0 5B 17 58 */	lfs f2, 0x1758(r27)
/* 8083D37C  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 8083D380  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8083D384  40 81 01 00 */	ble lbl_8083D484
/* 8083D388  A8 1B 16 F8 */	lha r0, 0x16f8(r27)
/* 8083D38C  2C 00 00 00 */	cmpwi r0, 0
/* 8083D390  40 82 00 F4 */	bne lbl_8083D484
/* 8083D394  2C 1C 00 01 */	cmpwi r28, 1
/* 8083D398  40 82 00 EC */	bne lbl_8083D484
/* 8083D39C  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 8083D3A0  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 8083D3A4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8083D3A8  40 81 00 18 */	ble lbl_8083D3C0
/* 8083D3AC  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8083D3B0  38 9E 00 20 */	addi r4, r30, 0x20
/* 8083D3B4  C0 44 00 54 */	lfs f2, 0x54(r4)
/* 8083D3B8  4B A3 33 88 */	b cLib_chaseF__FPfff
/* 8083D3BC  48 00 03 14 */	b lbl_8083D6D0
lbl_8083D3C0:
/* 8083D3C0  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 8083D3C4  40 82 00 58 */	bne lbl_8083D41C
/* 8083D3C8  7F 63 DB 78 */	mr r3, r27
/* 8083D3CC  48 00 34 79 */	bl checkTurnInput__9daHorse_cFv
/* 8083D3D0  2C 03 00 00 */	cmpwi r3, 0
/* 8083D3D4  40 82 00 10 */	bne lbl_8083D3E4
/* 8083D3D8  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083D3DC  54 00 02 97 */	rlwinm. r0, r0, 0, 0xa, 0xb
/* 8083D3E0  41 82 00 3C */	beq lbl_8083D41C
lbl_8083D3E4:
/* 8083D3E4  7F 63 DB 78 */	mr r3, r27
/* 8083D3E8  4B FF F6 99 */	bl checkTurnPlayerState__9daHorse_cFv
/* 8083D3EC  2C 03 00 00 */	cmpwi r3, 0
/* 8083D3F0  41 82 00 2C */	beq lbl_8083D41C
/* 8083D3F4  C0 5B 05 2C */	lfs f2, 0x52c(r27)
/* 8083D3F8  C0 3E 01 7C */	lfs f1, 0x17c(r30)
/* 8083D3FC  38 7E 00 20 */	addi r3, r30, 0x20
/* 8083D400  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 8083D404  FC 00 00 50 */	fneg f0, f0
/* 8083D408  EC 01 00 32 */	fmuls f0, f1, f0
/* 8083D40C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8083D410  40 81 00 0C */	ble lbl_8083D41C
/* 8083D414  38 60 00 01 */	li r3, 1
/* 8083D418  48 00 03 08 */	b lbl_8083D720
lbl_8083D41C:
/* 8083D41C  7F 63 DB 78 */	mr r3, r27
/* 8083D420  38 80 00 00 */	li r4, 0
/* 8083D424  4B FF EB 25 */	bl checkHorseNoMove__9daHorse_cFi
/* 8083D428  2C 03 00 00 */	cmpwi r3, 0
/* 8083D42C  40 82 00 2C */	bne lbl_8083D458
/* 8083D430  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083D434  54 00 02 97 */	rlwinm. r0, r0, 0, 0xa, 0xb
/* 8083D438  40 82 02 98 */	bne lbl_8083D6D0
/* 8083D43C  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8083D440  38 9E 00 20 */	addi r4, r30, 0x20
/* 8083D444  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 8083D448  FC 20 00 50 */	fneg f1, f0
/* 8083D44C  C0 44 00 5C */	lfs f2, 0x5c(r4)
/* 8083D450  4B A3 32 F0 */	b cLib_chaseF__FPfff
/* 8083D454  48 00 02 7C */	b lbl_8083D6D0
lbl_8083D458:
/* 8083D458  2C 03 00 01 */	cmpwi r3, 1
/* 8083D45C  40 82 00 1C */	bne lbl_8083D478
/* 8083D460  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8083D464  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 8083D468  38 9E 00 20 */	addi r4, r30, 0x20
/* 8083D46C  C0 44 00 54 */	lfs f2, 0x54(r4)
/* 8083D470  4B A3 32 D0 */	b cLib_chaseF__FPfff
/* 8083D474  48 00 02 5C */	b lbl_8083D6D0
lbl_8083D478:
/* 8083D478  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8083D47C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 8083D480  48 00 02 50 */	b lbl_8083D6D0
lbl_8083D484:
/* 8083D484  A8 1B 17 08 */	lha r0, 0x1708(r27)
/* 8083D488  2C 00 00 00 */	cmpwi r0, 0
/* 8083D48C  41 82 00 2C */	beq lbl_8083D4B8
/* 8083D490  54 80 02 97 */	rlwinm. r0, r4, 0, 0xa, 0xb
/* 8083D494  40 82 02 3C */	bne lbl_8083D6D0
/* 8083D498  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8083D49C  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 8083D4A0  C0 1B 17 8C */	lfs f0, 0x178c(r27)
/* 8083D4A4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8083D4A8  38 9E 00 20 */	addi r4, r30, 0x20
/* 8083D4AC  C0 44 00 90 */	lfs f2, 0x90(r4)
/* 8083D4B0  4B A3 32 90 */	b cLib_chaseF__FPfff
/* 8083D4B4  48 00 02 1C */	b lbl_8083D6D0
lbl_8083D4B8:
/* 8083D4B8  2C 1F 00 00 */	cmpwi r31, 0
/* 8083D4BC  41 82 00 14 */	beq lbl_8083D4D0
/* 8083D4C0  C3 FE 01 50 */	lfs f31, 0x150(r30)
/* 8083D4C4  38 7E 00 20 */	addi r3, r30, 0x20
/* 8083D4C8  C3 C3 00 50 */	lfs f30, 0x50(r3)
/* 8083D4CC  48 00 00 D0 */	b lbl_8083D59C
lbl_8083D4D0:
/* 8083D4D0  A8 7B 16 F8 */	lha r3, 0x16f8(r27)
/* 8083D4D4  7C 60 07 35 */	extsh. r0, r3
/* 8083D4D8  40 82 00 20 */	bne lbl_8083D4F8
/* 8083D4DC  54 80 00 01 */	rlwinm. r0, r4, 0, 0, 0
/* 8083D4E0  41 82 00 0C */	beq lbl_8083D4EC
/* 8083D4E4  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8083D4E8  40 82 00 10 */	bne lbl_8083D4F8
lbl_8083D4EC:
/* 8083D4EC  80 1B 17 40 */	lwz r0, 0x1740(r27)
/* 8083D4F0  28 00 00 04 */	cmplwi r0, 4
/* 8083D4F4  40 82 00 28 */	bne lbl_8083D51C
lbl_8083D4F8:
/* 8083D4F8  C3 FB 17 90 */	lfs f31, 0x1790(r27)
/* 8083D4FC  38 7E 00 20 */	addi r3, r30, 0x20
/* 8083D500  C3 C3 00 90 */	lfs f30, 0x90(r3)
/* 8083D504  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 8083D508  C0 23 00 94 */	lfs f1, 0x94(r3)
/* 8083D50C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8083D510  40 80 00 8C */	bge lbl_8083D59C
/* 8083D514  D0 3B 05 2C */	stfs f1, 0x52c(r27)
/* 8083D518  48 00 00 84 */	b lbl_8083D59C
lbl_8083D51C:
/* 8083D51C  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 8083D520  28 00 00 50 */	cmplwi r0, 0x50
/* 8083D524  40 82 00 28 */	bne lbl_8083D54C
/* 8083D528  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 8083D52C  FF E0 00 90 */	fmr f31, f0
/* 8083D530  7C 60 07 35 */	extsh. r0, r3
/* 8083D534  40 82 00 28 */	bne lbl_8083D55C
/* 8083D538  C0 3B 17 8C */	lfs f1, 0x178c(r27)
/* 8083D53C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8083D540  40 81 00 1C */	ble lbl_8083D55C
/* 8083D544  FF E0 08 90 */	fmr f31, f1
/* 8083D548  48 00 00 14 */	b lbl_8083D55C
lbl_8083D54C:
/* 8083D54C  C0 3B 17 8C */	lfs f1, 0x178c(r27)
/* 8083D550  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8083D554  EC 01 00 32 */	fmuls f0, f1, f0
/* 8083D558  EF E3 00 32 */	fmuls f31, f3, f0
lbl_8083D55C:
/* 8083D55C  38 7E 00 20 */	addi r3, r30, 0x20
/* 8083D560  C3 C3 00 4C */	lfs f30, 0x4c(r3)
/* 8083D564  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 8083D568  41 82 00 34 */	beq lbl_8083D59C
/* 8083D56C  A8 7B 16 EA */	lha r3, 0x16ea(r27)
/* 8083D570  4B B2 7B 60 */	b abs
/* 8083D574  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8083D578  40 80 00 24 */	bge lbl_8083D59C
/* 8083D57C  A8 1B 16 EA */	lha r0, 0x16ea(r27)
/* 8083D580  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8083D584  7C 58 04 2E */	lfsx f2, r24, r0
/* 8083D588  C0 3E 01 48 */	lfs f1, 0x148(r30)
/* 8083D58C  C0 1E 02 2C */	lfs f0, 0x22c(r30)
/* 8083D590  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8083D594  EC 01 00 28 */	fsubs f0, f1, f0
/* 8083D598  EF FF 00 32 */	fmuls f31, f31, f0
lbl_8083D59C:
/* 8083D59C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8083D5A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8083D5A4  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 8083D5A8  7F 03 C3 78 */	mr r3, r24
/* 8083D5AC  38 9B 07 AC */	addi r4, r27, 0x7ac
/* 8083D5B0  4B 83 70 B0 */	b ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 8083D5B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083D5B8  41 82 00 38 */	beq lbl_8083D5F0
/* 8083D5BC  7F 03 C3 78 */	mr r3, r24
/* 8083D5C0  38 9B 07 AC */	addi r4, r27, 0x7ac
/* 8083D5C4  4B 83 79 2C */	b GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 8083D5C8  2C 03 00 0B */	cmpwi r3, 0xb
/* 8083D5CC  40 82 00 24 */	bne lbl_8083D5F0
/* 8083D5D0  C0 5B 17 8C */	lfs f2, 0x178c(r27)
/* 8083D5D4  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 8083D5D8  C0 1B 17 9C */	lfs f0, 0x179c(r27)
/* 8083D5DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8083D5E0  EC 02 00 2A */	fadds f0, f2, f0
/* 8083D5E4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8083D5E8  40 81 00 08 */	ble lbl_8083D5F0
/* 8083D5EC  FF E0 00 90 */	fmr f31, f0
lbl_8083D5F0:
/* 8083D5F0  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 8083D5F4  FC 00 02 10 */	fabs f0, f0
/* 8083D5F8  FC 00 00 18 */	frsp f0, f0
/* 8083D5FC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8083D600  40 81 00 18 */	ble lbl_8083D618
/* 8083D604  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8083D608  FC 20 F8 90 */	fmr f1, f31
/* 8083D60C  FC 40 F0 90 */	fmr f2, f30
/* 8083D610  4B A3 31 30 */	b cLib_chaseF__FPfff
/* 8083D614  48 00 00 BC */	b lbl_8083D6D0
lbl_8083D618:
/* 8083D618  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083D61C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8083D620  40 82 00 44 */	bne lbl_8083D664
/* 8083D624  88 18 40 75 */	lbz r0, 0x4075(r24)
/* 8083D628  28 00 00 00 */	cmplwi r0, 0
/* 8083D62C  40 82 00 6C */	bne lbl_8083D698
/* 8083D630  80 79 5D B4 */	lwz r3, 0x5db4(r25)
/* 8083D634  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8083D638  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8083D63C  7D 89 03 A6 */	mtctr r12
/* 8083D640  4E 80 04 21 */	bctrl 
/* 8083D644  28 03 00 00 */	cmplwi r3, 0
/* 8083D648  40 82 00 50 */	bne lbl_8083D698
/* 8083D64C  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083D650  74 00 90 00 */	andis. r0, r0, 0x9000
/* 8083D654  40 82 00 44 */	bne lbl_8083D698
/* 8083D658  88 1B 16 B4 */	lbz r0, 0x16b4(r27)
/* 8083D65C  28 00 00 01 */	cmplwi r0, 1
/* 8083D660  40 82 00 38 */	bne lbl_8083D698
lbl_8083D664:
/* 8083D664  80 7B 17 44 */	lwz r3, 0x1744(r27)
/* 8083D668  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8083D66C  41 82 00 14 */	beq lbl_8083D680
/* 8083D670  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8083D674  40 82 00 0C */	bne lbl_8083D680
/* 8083D678  38 60 00 03 */	li r3, 3
/* 8083D67C  48 00 00 A4 */	b lbl_8083D720
lbl_8083D680:
/* 8083D680  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8083D684  FC 20 F8 90 */	fmr f1, f31
/* 8083D688  38 9E 00 20 */	addi r4, r30, 0x20
/* 8083D68C  C0 44 00 54 */	lfs f2, 0x54(r4)
/* 8083D690  4B A3 30 B0 */	b cLib_chaseF__FPfff
/* 8083D694  48 00 00 3C */	b lbl_8083D6D0
lbl_8083D698:
/* 8083D698  88 18 40 75 */	lbz r0, 0x4075(r24)
/* 8083D69C  28 00 00 00 */	cmplwi r0, 0
/* 8083D6A0  40 82 00 10 */	bne lbl_8083D6B0
/* 8083D6A4  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 8083D6A8  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 8083D6AC  41 82 00 10 */	beq lbl_8083D6BC
lbl_8083D6B0:
/* 8083D6B0  38 7E 00 20 */	addi r3, r30, 0x20
/* 8083D6B4  C0 43 00 54 */	lfs f2, 0x54(r3)
/* 8083D6B8  48 00 00 0C */	b lbl_8083D6C4
lbl_8083D6BC:
/* 8083D6BC  38 7E 00 20 */	addi r3, r30, 0x20
/* 8083D6C0  C0 43 00 50 */	lfs f2, 0x50(r3)
lbl_8083D6C4:
/* 8083D6C4  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8083D6C8  FC 20 F8 90 */	fmr f1, f31
/* 8083D6CC  4B A3 30 74 */	b cLib_chaseF__FPfff
lbl_8083D6D0:
/* 8083D6D0  C0 3B 17 58 */	lfs f1, 0x1758(r27)
/* 8083D6D4  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 8083D6D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083D6DC  40 81 00 40 */	ble lbl_8083D71C
/* 8083D6E0  88 1B 16 B4 */	lbz r0, 0x16b4(r27)
/* 8083D6E4  28 00 00 01 */	cmplwi r0, 1
/* 8083D6E8  40 82 00 34 */	bne lbl_8083D71C
/* 8083D6EC  2C 1F 00 00 */	cmpwi r31, 0
/* 8083D6F0  40 82 00 2C */	bne lbl_8083D71C
/* 8083D6F4  2C 1C 00 00 */	cmpwi r28, 0
/* 8083D6F8  40 82 00 24 */	bne lbl_8083D71C
/* 8083D6FC  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8083D700  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083D704  40 81 00 18 */	ble lbl_8083D71C
/* 8083D708  38 7E 00 20 */	addi r3, r30, 0x20
/* 8083D70C  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 8083D710  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083D714  40 80 00 08 */	bge lbl_8083D71C
/* 8083D718  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_8083D71C:
/* 8083D71C  38 60 00 00 */	li r3, 0
lbl_8083D720:
/* 8083D720  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8083D724  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8083D728  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8083D72C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8083D730  39 61 00 70 */	addi r11, r1, 0x70
/* 8083D734  4B B2 4A E0 */	b _restgpr_24
/* 8083D738  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8083D73C  7C 08 03 A6 */	mtlr r0
/* 8083D740  38 21 00 90 */	addi r1, r1, 0x90
/* 8083D744  4E 80 00 20 */	blr 
