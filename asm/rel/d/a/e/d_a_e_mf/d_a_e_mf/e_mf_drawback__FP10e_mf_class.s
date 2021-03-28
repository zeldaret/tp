lbl_8070CB1C:
/* 8070CB1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8070CB20  7C 08 02 A6 */	mflr r0
/* 8070CB24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8070CB28  39 61 00 20 */	addi r11, r1, 0x20
/* 8070CB2C  4B C5 56 B0 */	b _savegpr_29
/* 8070CB30  7C 7E 1B 78 */	mr r30, r3
/* 8070CB34  3C 80 80 71 */	lis r4, lit_3828@ha
/* 8070CB38  3B E4 39 74 */	addi r31, r4, lit_3828@l
/* 8070CB3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8070CB40  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8070CB44  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 8070CB48  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8070CB4C  2C 00 00 01 */	cmpwi r0, 1
/* 8070CB50  41 82 00 84 */	beq lbl_8070CBD4
/* 8070CB54  40 80 01 24 */	bge lbl_8070CC78
/* 8070CB58  2C 00 00 00 */	cmpwi r0, 0
/* 8070CB5C  40 80 00 08 */	bge lbl_8070CB64
/* 8070CB60  48 00 01 18 */	b lbl_8070CC78
lbl_8070CB64:
/* 8070CB64  38 80 00 12 */	li r4, 0x12
/* 8070CB68  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070CB6C  38 A0 00 00 */	li r5, 0
/* 8070CB70  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070CB74  4B FF DC B9 */	bl anm_init__FP10e_mf_classifUcf
/* 8070CB78  38 00 00 01 */	li r0, 1
/* 8070CB7C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070CB80  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8070CB84  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8070CB88  38 00 00 0A */	li r0, 0xa
/* 8070CB8C  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
/* 8070CB90  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D1@ha */
/* 8070CB94  38 03 03 D1 */	addi r0, r3, 0x03D1 /* 0x000703D1@l */
/* 8070CB98  90 01 00 0C */	stw r0, 0xc(r1)
/* 8070CB9C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070CBA0  38 81 00 0C */	addi r4, r1, 0xc
/* 8070CBA4  38 A0 FF FF */	li r5, -1
/* 8070CBA8  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070CBAC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070CBB0  7D 89 03 A6 */	mtctr r12
/* 8070CBB4  4E 80 04 21 */	bctrl 
/* 8070CBB8  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8070CBBC  3C 63 00 01 */	addis r3, r3, 1
/* 8070CBC0  38 03 80 00 */	addi r0, r3, -32768
/* 8070CBC4  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 8070CBC8  38 00 00 32 */	li r0, 0x32
/* 8070CBCC  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070CBD0  48 00 00 A8 */	b lbl_8070CC78
lbl_8070CBD4:
/* 8070CBD4  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8070CBD8  60 00 00 80 */	ori r0, r0, 0x80
/* 8070CBDC  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 8070CBE0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8070CBE4  A8 9E 05 D4 */	lha r4, 0x5d4(r30)
/* 8070CBE8  38 A0 00 04 */	li r5, 4
/* 8070CBEC  38 C0 04 00 */	li r6, 0x400
/* 8070CBF0  4B B6 3A 18 */	b cLib_addCalcAngleS2__FPssss
/* 8070CBF4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8070CBF8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8070CBFC  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8070CC00  4B B6 2E 80 */	b cLib_addCalc0__FPfff
/* 8070CC04  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070CC08  38 80 00 01 */	li r4, 1
/* 8070CC0C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070CC10  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070CC14  40 82 00 18 */	bne lbl_8070CC2C
/* 8070CC18  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8070CC1C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070CC20  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070CC24  41 82 00 08 */	beq lbl_8070CC2C
/* 8070CC28  38 80 00 00 */	li r4, 0
lbl_8070CC2C:
/* 8070CC2C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070CC30  40 82 00 10 */	bne lbl_8070CC40
/* 8070CC34  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070CC38  2C 00 00 00 */	cmpwi r0, 0
/* 8070CC3C  40 82 00 3C */	bne lbl_8070CC78
lbl_8070CC40:
/* 8070CC40  38 00 00 03 */	li r0, 3
/* 8070CC44  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070CC48  38 00 00 00 */	li r0, 0
/* 8070CC4C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070CC50  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D2@ha */
/* 8070CC54  38 03 03 D2 */	addi r0, r3, 0x03D2 /* 0x000703D2@l */
/* 8070CC58  90 01 00 08 */	stw r0, 8(r1)
/* 8070CC5C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070CC60  38 81 00 08 */	addi r4, r1, 8
/* 8070CC64  38 A0 FF FF */	li r5, -1
/* 8070CC68  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070CC6C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070CC70  7D 89 03 A6 */	mtctr r12
/* 8070CC74  4E 80 04 21 */	bctrl 
lbl_8070CC78:
/* 8070CC78  7F C3 F3 78 */	mr r3, r30
/* 8070CC7C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8070CC80  38 80 00 01 */	li r4, 1
/* 8070CC84  4B FF EB C5 */	bl move_gake_check__FP10e_mf_classfSc
/* 8070CC88  2C 03 00 00 */	cmpwi r3, 0
/* 8070CC8C  41 82 00 14 */	beq lbl_8070CCA0
/* 8070CC90  38 00 00 17 */	li r0, 0x17
/* 8070CC94  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070CC98  38 00 00 00 */	li r0, 0
/* 8070CC9C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070CCA0:
/* 8070CCA0  39 61 00 20 */	addi r11, r1, 0x20
/* 8070CCA4  4B C5 55 84 */	b _restgpr_29
/* 8070CCA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8070CCAC  7C 08 03 A6 */	mtlr r0
/* 8070CCB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8070CCB4  4E 80 00 20 */	blr 
