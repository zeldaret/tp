lbl_80CBDF84:
/* 80CBDF84  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CBDF88  7C 08 02 A6 */	mflr r0
/* 80CBDF8C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CBDF90  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80CBDF94  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80CBDF98  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80CBDF9C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80CBDFA0  39 61 00 40 */	addi r11, r1, 0x40
/* 80CBDFA4  4B 6A 42 2D */	bl _savegpr_26
/* 80CBDFA8  7C 7E 1B 78 */	mr r30, r3
/* 80CBDFAC  7C 9F 23 78 */	mr r31, r4
/* 80CBDFB0  3C 60 80 CC */	lis r3, lit_3814@ha /* 0x80CBE7A4@ha */
/* 80CBDFB4  3B 83 E7 A4 */	addi r28, r3, lit_3814@l /* 0x80CBE7A4@l */
/* 80CBDFB8  3B 40 00 00 */	li r26, 0
/* 80CBDFBC  3B A0 00 00 */	li r29, 0
/* 80CBDFC0  1C 7F 01 60 */	mulli r3, r31, 0x160
/* 80CBDFC4  3B 63 05 7C */	addi r27, r3, 0x57c
/* 80CBDFC8  7F 7E DA 14 */	add r27, r30, r27
/* 80CBDFCC  C3 FC 00 04 */	lfs f31, 4(r28)
/* 80CBDFD0  C3 DC 00 20 */	lfs f30, 0x20(r28)
/* 80CBDFD4  48 00 01 30 */	b lbl_80CBE104
lbl_80CBDFD8:
/* 80CBDFD8  38 61 00 0C */	addi r3, r1, 0xc
/* 80CBDFDC  38 9D 05 7C */	addi r4, r29, 0x57c
/* 80CBDFE0  7C 9E 22 14 */	add r4, r30, r4
/* 80CBDFE4  7F 65 DB 78 */	mr r5, r27
/* 80CBDFE8  4B 5A 8B 4D */	bl __mi__4cXyzCFRC3Vec
/* 80CBDFEC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CBDFF0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CBDFF4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CBDFF8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CBDFFC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CBE000  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CBE004  38 61 00 18 */	addi r3, r1, 0x18
/* 80CBE008  4B 68 91 31 */	bl PSVECSquareMag
/* 80CBE00C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80CBE010  40 81 00 58 */	ble lbl_80CBE068
/* 80CBE014  FC 00 08 34 */	frsqrte f0, f1
/* 80CBE018  C8 9C 00 08 */	lfd f4, 8(r28)
/* 80CBE01C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CBE020  C8 7C 00 10 */	lfd f3, 0x10(r28)
/* 80CBE024  FC 00 00 32 */	fmul f0, f0, f0
/* 80CBE028  FC 01 00 32 */	fmul f0, f1, f0
/* 80CBE02C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CBE030  FC 02 00 32 */	fmul f0, f2, f0
/* 80CBE034  FC 44 00 32 */	fmul f2, f4, f0
/* 80CBE038  FC 00 00 32 */	fmul f0, f0, f0
/* 80CBE03C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CBE040  FC 03 00 28 */	fsub f0, f3, f0
/* 80CBE044  FC 02 00 32 */	fmul f0, f2, f0
/* 80CBE048  FC 44 00 32 */	fmul f2, f4, f0
/* 80CBE04C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CBE050  FC 01 00 32 */	fmul f0, f1, f0
/* 80CBE054  FC 03 00 28 */	fsub f0, f3, f0
/* 80CBE058  FC 02 00 32 */	fmul f0, f2, f0
/* 80CBE05C  FC 21 00 32 */	fmul f1, f1, f0
/* 80CBE060  FC 20 08 18 */	frsp f1, f1
/* 80CBE064  48 00 00 88 */	b lbl_80CBE0EC
lbl_80CBE068:
/* 80CBE068  C8 1C 00 18 */	lfd f0, 0x18(r28)
/* 80CBE06C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBE070  40 80 00 10 */	bge lbl_80CBE080
/* 80CBE074  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CBE078  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CBE07C  48 00 00 70 */	b lbl_80CBE0EC
lbl_80CBE080:
/* 80CBE080  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CBE084  80 81 00 08 */	lwz r4, 8(r1)
/* 80CBE088  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CBE08C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CBE090  7C 03 00 00 */	cmpw r3, r0
/* 80CBE094  41 82 00 14 */	beq lbl_80CBE0A8
/* 80CBE098  40 80 00 40 */	bge lbl_80CBE0D8
/* 80CBE09C  2C 03 00 00 */	cmpwi r3, 0
/* 80CBE0A0  41 82 00 20 */	beq lbl_80CBE0C0
/* 80CBE0A4  48 00 00 34 */	b lbl_80CBE0D8
lbl_80CBE0A8:
/* 80CBE0A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CBE0AC  41 82 00 0C */	beq lbl_80CBE0B8
/* 80CBE0B0  38 00 00 01 */	li r0, 1
/* 80CBE0B4  48 00 00 28 */	b lbl_80CBE0DC
lbl_80CBE0B8:
/* 80CBE0B8  38 00 00 02 */	li r0, 2
/* 80CBE0BC  48 00 00 20 */	b lbl_80CBE0DC
lbl_80CBE0C0:
/* 80CBE0C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CBE0C4  41 82 00 0C */	beq lbl_80CBE0D0
/* 80CBE0C8  38 00 00 05 */	li r0, 5
/* 80CBE0CC  48 00 00 10 */	b lbl_80CBE0DC
lbl_80CBE0D0:
/* 80CBE0D0  38 00 00 03 */	li r0, 3
/* 80CBE0D4  48 00 00 08 */	b lbl_80CBE0DC
lbl_80CBE0D8:
/* 80CBE0D8  38 00 00 04 */	li r0, 4
lbl_80CBE0DC:
/* 80CBE0DC  2C 00 00 01 */	cmpwi r0, 1
/* 80CBE0E0  40 82 00 0C */	bne lbl_80CBE0EC
/* 80CBE0E4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CBE0E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CBE0EC:
/* 80CBE0EC  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80CBE0F0  40 80 00 0C */	bge lbl_80CBE0FC
/* 80CBE0F4  38 60 00 00 */	li r3, 0
/* 80CBE0F8  48 00 00 18 */	b lbl_80CBE110
lbl_80CBE0FC:
/* 80CBE0FC  3B 5A 00 01 */	addi r26, r26, 1
/* 80CBE100  3B BD 01 60 */	addi r29, r29, 0x160
lbl_80CBE104:
/* 80CBE104  7C 1A F8 00 */	cmpw r26, r31
/* 80CBE108  41 80 FE D0 */	blt lbl_80CBDFD8
/* 80CBE10C  38 60 00 01 */	li r3, 1
lbl_80CBE110:
/* 80CBE110  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80CBE114  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80CBE118  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80CBE11C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80CBE120  39 61 00 40 */	addi r11, r1, 0x40
/* 80CBE124  4B 6A 40 F9 */	bl _restgpr_26
/* 80CBE128  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CBE12C  7C 08 03 A6 */	mtlr r0
/* 80CBE130  38 21 00 60 */	addi r1, r1, 0x60
/* 80CBE134  4E 80 00 20 */	blr 
