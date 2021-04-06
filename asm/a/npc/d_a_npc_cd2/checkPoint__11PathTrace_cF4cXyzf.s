lbl_80159C14:
/* 80159C14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80159C18  7C 08 02 A6 */	mflr r0
/* 80159C1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80159C20  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80159C24  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80159C28  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80159C2C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80159C30  7C 7E 1B 78 */	mr r30, r3
/* 80159C34  7C 9F 23 78 */	mr r31, r4
/* 80159C38  FF E0 08 90 */	fmr f31, f1
/* 80159C3C  80 63 00 08 */	lwz r3, 8(r3)
/* 80159C40  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 80159C44  4B EF 7B 6D */	bl dPath_GetPnt__FPC5dPathi
/* 80159C48  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80159C4C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80159C50  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80159C54  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80159C58  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80159C5C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80159C60  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80159C64  C0 03 00 04 */	lfs f0, 4(r3)
/* 80159C68  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80159C6C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80159C70  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80159C74  38 61 00 0C */	addi r3, r1, 0xc
/* 80159C78  38 81 00 18 */	addi r4, r1, 0x18
/* 80159C7C  48 1E D7 21 */	bl PSVECSquareDistance
/* 80159C80  C0 02 9A E4 */	lfs f0, lit_4585(r2)
/* 80159C84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80159C88  40 81 00 58 */	ble lbl_80159CE0
/* 80159C8C  FC 00 08 34 */	frsqrte f0, f1
/* 80159C90  C8 82 9B 28 */	lfd f4, lit_5051(r2)
/* 80159C94  FC 44 00 32 */	fmul f2, f4, f0
/* 80159C98  C8 62 9B 30 */	lfd f3, lit_5052(r2)
/* 80159C9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80159CA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80159CA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80159CA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80159CAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80159CB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80159CB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80159CB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80159CBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80159CC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80159CC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80159CC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80159CCC  FC 03 00 28 */	fsub f0, f3, f0
/* 80159CD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80159CD4  FC 21 00 32 */	fmul f1, f1, f0
/* 80159CD8  FC 20 08 18 */	frsp f1, f1
/* 80159CDC  48 00 00 88 */	b lbl_80159D64
lbl_80159CE0:
/* 80159CE0  C8 02 9B 38 */	lfd f0, lit_5053(r2)
/* 80159CE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80159CE8  40 80 00 10 */	bge lbl_80159CF8
/* 80159CEC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80159CF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80159CF4  48 00 00 70 */	b lbl_80159D64
lbl_80159CF8:
/* 80159CF8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80159CFC  80 81 00 08 */	lwz r4, 8(r1)
/* 80159D00  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80159D04  3C 00 7F 80 */	lis r0, 0x7f80
/* 80159D08  7C 03 00 00 */	cmpw r3, r0
/* 80159D0C  41 82 00 14 */	beq lbl_80159D20
/* 80159D10  40 80 00 40 */	bge lbl_80159D50
/* 80159D14  2C 03 00 00 */	cmpwi r3, 0
/* 80159D18  41 82 00 20 */	beq lbl_80159D38
/* 80159D1C  48 00 00 34 */	b lbl_80159D50
lbl_80159D20:
/* 80159D20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80159D24  41 82 00 0C */	beq lbl_80159D30
/* 80159D28  38 00 00 01 */	li r0, 1
/* 80159D2C  48 00 00 28 */	b lbl_80159D54
lbl_80159D30:
/* 80159D30  38 00 00 02 */	li r0, 2
/* 80159D34  48 00 00 20 */	b lbl_80159D54
lbl_80159D38:
/* 80159D38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80159D3C  41 82 00 0C */	beq lbl_80159D48
/* 80159D40  38 00 00 05 */	li r0, 5
/* 80159D44  48 00 00 10 */	b lbl_80159D54
lbl_80159D48:
/* 80159D48  38 00 00 03 */	li r0, 3
/* 80159D4C  48 00 00 08 */	b lbl_80159D54
lbl_80159D50:
/* 80159D50  38 00 00 04 */	li r0, 4
lbl_80159D54:
/* 80159D54  2C 00 00 01 */	cmpwi r0, 1
/* 80159D58  40 82 00 0C */	bne lbl_80159D64
/* 80159D5C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80159D60  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80159D64:
/* 80159D64  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80159D68  41 80 00 10 */	blt lbl_80159D78
/* 80159D6C  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80159D70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80159D74  40 80 00 0C */	bge lbl_80159D80
lbl_80159D78:
/* 80159D78  38 60 00 01 */	li r3, 1
/* 80159D7C  48 00 00 24 */	b lbl_80159DA0
lbl_80159D80:
/* 80159D80  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80159D84  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80159D88  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80159D8C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80159D90  C0 02 9A E4 */	lfs f0, lit_4585(r2)
/* 80159D94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80159D98  7C 00 00 26 */	mfcr r0
/* 80159D9C  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80159DA0:
/* 80159DA0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80159DA4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80159DA8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80159DAC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80159DB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80159DB4  7C 08 03 A6 */	mtlr r0
/* 80159DB8  38 21 00 40 */	addi r1, r1, 0x40
/* 80159DBC  4E 80 00 20 */	blr 
