lbl_805A6C84:
/* 805A6C84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A6C88  7C 08 02 A6 */	mflr r0
/* 805A6C8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A6C90  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805A6C94  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805A6C98  7C 7E 1B 78 */	mr r30, r3
/* 805A6C9C  3C 60 80 5A */	lis r3, lit_3728@ha /* 0x805A6E6C@ha */
/* 805A6CA0  3B E3 6E 6C */	addi r31, r3, lit_3728@l /* 0x805A6E6C@l */
/* 805A6CA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A6CA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A6CAC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805A6CB0  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 805A6CB4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 805A6CB8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805A6CBC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805A6CC0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805A6CC4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805A6CC8  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 805A6CCC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805A6CD0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805A6CD4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805A6CD8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805A6CDC  38 61 00 0C */	addi r3, r1, 0xc
/* 805A6CE0  38 81 00 18 */	addi r4, r1, 0x18
/* 805A6CE4  4B DA 06 B9 */	bl PSVECSquareDistance
/* 805A6CE8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805A6CEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A6CF0  40 81 00 58 */	ble lbl_805A6D48
/* 805A6CF4  FC 00 08 34 */	frsqrte f0, f1
/* 805A6CF8  C8 9F 00 08 */	lfd f4, 8(r31)
/* 805A6CFC  FC 44 00 32 */	fmul f2, f4, f0
/* 805A6D00  C8 7F 00 10 */	lfd f3, 0x10(r31)
/* 805A6D04  FC 00 00 32 */	fmul f0, f0, f0
/* 805A6D08  FC 01 00 32 */	fmul f0, f1, f0
/* 805A6D0C  FC 03 00 28 */	fsub f0, f3, f0
/* 805A6D10  FC 02 00 32 */	fmul f0, f2, f0
/* 805A6D14  FC 44 00 32 */	fmul f2, f4, f0
/* 805A6D18  FC 00 00 32 */	fmul f0, f0, f0
/* 805A6D1C  FC 01 00 32 */	fmul f0, f1, f0
/* 805A6D20  FC 03 00 28 */	fsub f0, f3, f0
/* 805A6D24  FC 02 00 32 */	fmul f0, f2, f0
/* 805A6D28  FC 44 00 32 */	fmul f2, f4, f0
/* 805A6D2C  FC 00 00 32 */	fmul f0, f0, f0
/* 805A6D30  FC 01 00 32 */	fmul f0, f1, f0
/* 805A6D34  FC 03 00 28 */	fsub f0, f3, f0
/* 805A6D38  FC 02 00 32 */	fmul f0, f2, f0
/* 805A6D3C  FC 21 00 32 */	fmul f1, f1, f0
/* 805A6D40  FC 20 08 18 */	frsp f1, f1
/* 805A6D44  48 00 00 88 */	b lbl_805A6DCC
lbl_805A6D48:
/* 805A6D48  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 805A6D4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A6D50  40 80 00 10 */	bge lbl_805A6D60
/* 805A6D54  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805A6D58  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805A6D5C  48 00 00 70 */	b lbl_805A6DCC
lbl_805A6D60:
/* 805A6D60  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A6D64  80 81 00 08 */	lwz r4, 8(r1)
/* 805A6D68  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805A6D6C  3C 00 7F 80 */	lis r0, 0x7f80
/* 805A6D70  7C 03 00 00 */	cmpw r3, r0
/* 805A6D74  41 82 00 14 */	beq lbl_805A6D88
/* 805A6D78  40 80 00 40 */	bge lbl_805A6DB8
/* 805A6D7C  2C 03 00 00 */	cmpwi r3, 0
/* 805A6D80  41 82 00 20 */	beq lbl_805A6DA0
/* 805A6D84  48 00 00 34 */	b lbl_805A6DB8
lbl_805A6D88:
/* 805A6D88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805A6D8C  41 82 00 0C */	beq lbl_805A6D98
/* 805A6D90  38 00 00 01 */	li r0, 1
/* 805A6D94  48 00 00 28 */	b lbl_805A6DBC
lbl_805A6D98:
/* 805A6D98  38 00 00 02 */	li r0, 2
/* 805A6D9C  48 00 00 20 */	b lbl_805A6DBC
lbl_805A6DA0:
/* 805A6DA0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805A6DA4  41 82 00 0C */	beq lbl_805A6DB0
/* 805A6DA8  38 00 00 05 */	li r0, 5
/* 805A6DAC  48 00 00 10 */	b lbl_805A6DBC
lbl_805A6DB0:
/* 805A6DB0  38 00 00 03 */	li r0, 3
/* 805A6DB4  48 00 00 08 */	b lbl_805A6DBC
lbl_805A6DB8:
/* 805A6DB8  38 00 00 04 */	li r0, 4
lbl_805A6DBC:
/* 805A6DBC  2C 00 00 01 */	cmpwi r0, 1
/* 805A6DC0  40 82 00 0C */	bne lbl_805A6DCC
/* 805A6DC4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805A6DC8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805A6DCC:
/* 805A6DCC  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805A6DD0  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 805A6DD4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805A6DD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A6DDC  7C 00 00 26 */	mfcr r0
/* 805A6DE0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 805A6DE4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805A6DE8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805A6DEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A6DF0  7C 08 03 A6 */	mtlr r0
/* 805A6DF4  38 21 00 30 */	addi r1, r1, 0x30
/* 805A6DF8  4E 80 00 20 */	blr 
