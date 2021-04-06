lbl_8061AC0C:
/* 8061AC0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061AC10  7C 08 02 A6 */	mflr r0
/* 8061AC14  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061AC18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8061AC1C  3C 80 80 62 */	lis r4, lit_3772@ha /* 0x8061AD84@ha */
/* 8061AC20  3B E4 AD 84 */	addi r31, r4, lit_3772@l /* 0x8061AD84@l */
/* 8061AC24  4B D2 C5 15 */	bl PSVECSquareMag
/* 8061AC28  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8061AC2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8061AC30  40 81 00 58 */	ble lbl_8061AC88
/* 8061AC34  FC 00 08 34 */	frsqrte f0, f1
/* 8061AC38  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 8061AC3C  FC 44 00 32 */	fmul f2, f4, f0
/* 8061AC40  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 8061AC44  FC 00 00 32 */	fmul f0, f0, f0
/* 8061AC48  FC 01 00 32 */	fmul f0, f1, f0
/* 8061AC4C  FC 03 00 28 */	fsub f0, f3, f0
/* 8061AC50  FC 02 00 32 */	fmul f0, f2, f0
/* 8061AC54  FC 44 00 32 */	fmul f2, f4, f0
/* 8061AC58  FC 00 00 32 */	fmul f0, f0, f0
/* 8061AC5C  FC 01 00 32 */	fmul f0, f1, f0
/* 8061AC60  FC 03 00 28 */	fsub f0, f3, f0
/* 8061AC64  FC 02 00 32 */	fmul f0, f2, f0
/* 8061AC68  FC 44 00 32 */	fmul f2, f4, f0
/* 8061AC6C  FC 00 00 32 */	fmul f0, f0, f0
/* 8061AC70  FC 01 00 32 */	fmul f0, f1, f0
/* 8061AC74  FC 03 00 28 */	fsub f0, f3, f0
/* 8061AC78  FC 02 00 32 */	fmul f0, f2, f0
/* 8061AC7C  FC 21 00 32 */	fmul f1, f1, f0
/* 8061AC80  FC 20 08 18 */	frsp f1, f1
/* 8061AC84  48 00 00 88 */	b lbl_8061AD0C
lbl_8061AC88:
/* 8061AC88  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 8061AC8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8061AC90  40 80 00 10 */	bge lbl_8061ACA0
/* 8061AC94  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8061AC98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8061AC9C  48 00 00 70 */	b lbl_8061AD0C
lbl_8061ACA0:
/* 8061ACA0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8061ACA4  80 81 00 08 */	lwz r4, 8(r1)
/* 8061ACA8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8061ACAC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8061ACB0  7C 03 00 00 */	cmpw r3, r0
/* 8061ACB4  41 82 00 14 */	beq lbl_8061ACC8
/* 8061ACB8  40 80 00 40 */	bge lbl_8061ACF8
/* 8061ACBC  2C 03 00 00 */	cmpwi r3, 0
/* 8061ACC0  41 82 00 20 */	beq lbl_8061ACE0
/* 8061ACC4  48 00 00 34 */	b lbl_8061ACF8
lbl_8061ACC8:
/* 8061ACC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8061ACCC  41 82 00 0C */	beq lbl_8061ACD8
/* 8061ACD0  38 00 00 01 */	li r0, 1
/* 8061ACD4  48 00 00 28 */	b lbl_8061ACFC
lbl_8061ACD8:
/* 8061ACD8  38 00 00 02 */	li r0, 2
/* 8061ACDC  48 00 00 20 */	b lbl_8061ACFC
lbl_8061ACE0:
/* 8061ACE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8061ACE4  41 82 00 0C */	beq lbl_8061ACF0
/* 8061ACE8  38 00 00 05 */	li r0, 5
/* 8061ACEC  48 00 00 10 */	b lbl_8061ACFC
lbl_8061ACF0:
/* 8061ACF0  38 00 00 03 */	li r0, 3
/* 8061ACF4  48 00 00 08 */	b lbl_8061ACFC
lbl_8061ACF8:
/* 8061ACF8  38 00 00 04 */	li r0, 4
lbl_8061ACFC:
/* 8061ACFC  2C 00 00 01 */	cmpwi r0, 1
/* 8061AD00  40 82 00 0C */	bne lbl_8061AD0C
/* 8061AD04  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8061AD08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8061AD0C:
/* 8061AD0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8061AD10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061AD14  7C 08 03 A6 */	mtlr r0
/* 8061AD18  38 21 00 20 */	addi r1, r1, 0x20
/* 8061AD1C  4E 80 00 20 */	blr 
