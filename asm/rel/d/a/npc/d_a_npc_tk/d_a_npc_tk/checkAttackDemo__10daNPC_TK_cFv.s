lbl_80B07114:
/* 80B07114  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B07118  7C 08 02 A6 */	mflr r0
/* 80B0711C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B07120  39 61 00 40 */	addi r11, r1, 0x40
/* 80B07124  4B 85 B0 B8 */	b _savegpr_29
/* 80B07128  7C 7D 1B 78 */	mr r29, r3
/* 80B0712C  3C 60 80 B1 */	lis r3, lit_3999@ha
/* 80B07130  3B C3 C1 C4 */	addi r30, r3, lit_3999@l
/* 80B07134  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 80B07138  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B0713C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80B07140  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B07144  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 80B07148  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B0714C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B07150  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B07154  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B07158  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B0715C  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 80B07160  7D 89 03 A6 */	mtctr r12
/* 80B07164  4E 80 04 21 */	bctrl 
/* 80B07168  2C 03 00 00 */	cmpwi r3, 0
/* 80B0716C  41 82 01 44 */	beq lbl_80B072B0
/* 80B07170  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B07174  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B07178  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B0717C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80B07180  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B07184  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B07188  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B0718C  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80B07190  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B07194  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B07198  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B0719C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80B071A0  38 61 00 0C */	addi r3, r1, 0xc
/* 80B071A4  38 81 00 18 */	addi r4, r1, 0x18
/* 80B071A8  4B 84 01 F4 */	b PSVECSquareDistance
/* 80B071AC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B071B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B071B4  40 81 00 58 */	ble lbl_80B0720C
/* 80B071B8  FC 00 08 34 */	frsqrte f0, f1
/* 80B071BC  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B071C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B071C4  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B071C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B071CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B071D0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B071D4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B071D8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B071DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B071E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B071E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B071E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B071EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B071F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B071F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B071F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B071FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07200  FC 21 00 32 */	fmul f1, f1, f0
/* 80B07204  FC 20 08 18 */	frsp f1, f1
/* 80B07208  48 00 00 88 */	b lbl_80B07290
lbl_80B0720C:
/* 80B0720C  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B07210  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07214  40 80 00 10 */	bge lbl_80B07224
/* 80B07218  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B0721C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B07220  48 00 00 70 */	b lbl_80B07290
lbl_80B07224:
/* 80B07224  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B07228  80 81 00 08 */	lwz r4, 8(r1)
/* 80B0722C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B07230  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B07234  7C 03 00 00 */	cmpw r3, r0
/* 80B07238  41 82 00 14 */	beq lbl_80B0724C
/* 80B0723C  40 80 00 40 */	bge lbl_80B0727C
/* 80B07240  2C 03 00 00 */	cmpwi r3, 0
/* 80B07244  41 82 00 20 */	beq lbl_80B07264
/* 80B07248  48 00 00 34 */	b lbl_80B0727C
lbl_80B0724C:
/* 80B0724C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B07250  41 82 00 0C */	beq lbl_80B0725C
/* 80B07254  38 00 00 01 */	li r0, 1
/* 80B07258  48 00 00 28 */	b lbl_80B07280
lbl_80B0725C:
/* 80B0725C  38 00 00 02 */	li r0, 2
/* 80B07260  48 00 00 20 */	b lbl_80B07280
lbl_80B07264:
/* 80B07264  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B07268  41 82 00 0C */	beq lbl_80B07274
/* 80B0726C  38 00 00 05 */	li r0, 5
/* 80B07270  48 00 00 10 */	b lbl_80B07280
lbl_80B07274:
/* 80B07274  38 00 00 03 */	li r0, 3
/* 80B07278  48 00 00 08 */	b lbl_80B07280
lbl_80B0727C:
/* 80B0727C  38 00 00 04 */	li r0, 4
lbl_80B07280:
/* 80B07280  2C 00 00 01 */	cmpwi r0, 1
/* 80B07284  40 82 00 0C */	bne lbl_80B07290
/* 80B07288  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B0728C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B07290:
/* 80B07290  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 80B07294  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07298  40 80 00 18 */	bge lbl_80B072B0
/* 80B0729C  7F A3 EB 78 */	mr r3, r29
/* 80B072A0  38 80 00 09 */	li r4, 9
/* 80B072A4  4B FF A5 D5 */	bl setActionMode__10daNPC_TK_cFi
/* 80B072A8  38 60 00 01 */	li r3, 1
/* 80B072AC  48 00 00 08 */	b lbl_80B072B4
lbl_80B072B0:
/* 80B072B0  38 60 00 00 */	li r3, 0
lbl_80B072B4:
/* 80B072B4  39 61 00 40 */	addi r11, r1, 0x40
/* 80B072B8  4B 85 AF 70 */	b _restgpr_29
/* 80B072BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B072C0  7C 08 03 A6 */	mtlr r0
/* 80B072C4  38 21 00 40 */	addi r1, r1, 0x40
/* 80B072C8  4E 80 00 20 */	blr 
