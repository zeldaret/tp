lbl_80BCD9EC:
/* 80BCD9EC  94 21 FE 10 */	stwu r1, -0x1f0(r1)
/* 80BCD9F0  7C 08 02 A6 */	mflr r0
/* 80BCD9F4  90 01 01 F4 */	stw r0, 0x1f4(r1)
/* 80BCD9F8  DB E1 01 E0 */	stfd f31, 0x1e0(r1)
/* 80BCD9FC  F3 E1 01 E8 */	psq_st f31, 488(r1), 0, 0 /* qr0 */
/* 80BCDA00  DB C1 01 D0 */	stfd f30, 0x1d0(r1)
/* 80BCDA04  F3 C1 01 D8 */	psq_st f30, 472(r1), 0, 0 /* qr0 */
/* 80BCDA08  DB A1 01 C0 */	stfd f29, 0x1c0(r1)
/* 80BCDA0C  F3 A1 01 C8 */	psq_st f29, 456(r1), 0, 0 /* qr0 */
/* 80BCDA10  DB 81 01 B0 */	stfd f28, 0x1b0(r1)
/* 80BCDA14  F3 81 01 B8 */	psq_st f28, 440(r1), 0, 0 /* qr0 */
/* 80BCDA18  DB 61 01 A0 */	stfd f27, 0x1a0(r1)
/* 80BCDA1C  F3 61 01 A8 */	psq_st f27, 424(r1), 0, 0 /* qr0 */
/* 80BCDA20  DB 41 01 90 */	stfd f26, 0x190(r1)
/* 80BCDA24  F3 41 01 98 */	psq_st f26, 408(r1), 0, 0 /* qr0 */
/* 80BCDA28  DB 21 01 80 */	stfd f25, 0x180(r1)
/* 80BCDA2C  F3 21 01 88 */	psq_st f25, 392(r1), 0, 0 /* qr0 */
/* 80BCDA30  DB 01 01 70 */	stfd f24, 0x170(r1)
/* 80BCDA34  F3 01 01 78 */	psq_st f24, 376(r1), 0, 0 /* qr0 */
/* 80BCDA38  DA E1 01 60 */	stfd f23, 0x160(r1)
/* 80BCDA3C  F2 E1 01 68 */	psq_st f23, 360(r1), 0, 0 /* qr0 */
/* 80BCDA40  DA C1 01 50 */	stfd f22, 0x150(r1)
/* 80BCDA44  F2 C1 01 58 */	psq_st f22, 344(r1), 0, 0 /* qr0 */
/* 80BCDA48  DA A1 01 40 */	stfd f21, 0x140(r1)
/* 80BCDA4C  F2 A1 01 48 */	psq_st f21, 328(r1), 0, 0 /* qr0 */
/* 80BCDA50  39 61 01 40 */	addi r11, r1, 0x140
/* 80BCDA54  4B 79 47 70 */	b _savegpr_23
/* 80BCDA58  7C 7B 1B 78 */	mr r27, r3
/* 80BCDA5C  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BCDA60  3B E4 EA CC */	addi r31, r4, l_arcName@l
/* 80BCDA64  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BCDA68  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BCDA6C  83 84 5D B4 */	lwz r28, 0x5db4(r4)
/* 80BCDA70  88 03 07 15 */	lbz r0, 0x715(r3)
/* 80BCDA74  28 00 00 00 */	cmplwi r0, 0
/* 80BCDA78  41 82 00 14 */	beq lbl_80BCDA8C
/* 80BCDA7C  4B FF FC 49 */	bl setNormalRopePos__12daObjCrope_cFv
/* 80BCDA80  38 00 00 00 */	li r0, 0
/* 80BCDA84  98 1B 07 15 */	stb r0, 0x715(r27)
/* 80BCDA88  48 00 0A 04 */	b lbl_80BCE48C
lbl_80BCDA8C:
/* 80BCDA8C  80 7B 10 A8 */	lwz r3, 0x10a8(r27)
/* 80BCDA90  83 C3 00 00 */	lwz r30, 0(r3)
/* 80BCDA94  3B BE 04 A4 */	addi r29, r30, 0x4a4
/* 80BCDA98  80 1B 07 18 */	lwz r0, 0x718(r27)
/* 80BCDA9C  2C 00 FF FF */	cmpwi r0, -1
/* 80BCDAA0  41 82 00 68 */	beq lbl_80BCDB08
/* 80BCDAA4  2C 00 FF FE */	cmpwi r0, -2
/* 80BCDAA8  40 82 00 20 */	bne lbl_80BCDAC8
/* 80BCDAAC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80BCDAB0  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80BCDAB4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80BCDAB8  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80BCDABC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80BCDAC0  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80BCDAC4  48 00 00 5C */	b lbl_80BCDB20
lbl_80BCDAC8:
/* 80BCDAC8  7F 83 E3 78 */	mr r3, r28
/* 80BCDACC  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80BCDAD0  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80BCDAD4  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80BCDAD8  7D 89 03 A6 */	mtctr r12
/* 80BCDADC  4E 80 04 21 */	bctrl 
/* 80BCDAE0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BCDAE4  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80BCDAE8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80BCDAEC  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 80BCDAF0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80BCDAF4  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80BCDAF8  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80BCDAFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BCDB00  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80BCDB04  48 00 00 1C */	b lbl_80BCDB20
lbl_80BCDB08:
/* 80BCDB08  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80BCDB0C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80BCDB10  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80BCDB14  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80BCDB18  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80BCDB1C  D0 01 01 08 */	stfs f0, 0x108(r1)
lbl_80BCDB20:
/* 80BCDB20  80 1B 07 1C */	lwz r0, 0x71c(r27)
/* 80BCDB24  2C 00 FF FF */	cmpwi r0, -1
/* 80BCDB28  41 82 00 44 */	beq lbl_80BCDB6C
/* 80BCDB2C  7F 83 E3 78 */	mr r3, r28
/* 80BCDB30  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80BCDB34  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80BCDB38  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80BCDB3C  7D 89 03 A6 */	mtctr r12
/* 80BCDB40  4E 80 04 21 */	bctrl 
/* 80BCDB44  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BCDB48  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80BCDB4C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80BCDB50  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 80BCDB54  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80BCDB58  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80BCDB5C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80BCDB60  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BCDB64  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80BCDB68  48 00 00 1C */	b lbl_80BCDB84
lbl_80BCDB6C:
/* 80BCDB6C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80BCDB70  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80BCDB74  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80BCDB78  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80BCDB7C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80BCDB80  D0 01 00 FC */	stfs f0, 0xfc(r1)
lbl_80BCDB84:
/* 80BCDB84  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 80BCDB88  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80BCDB8C  EF E0 10 28 */	fsubs f31, f0, f2
/* 80BCDB90  C0 21 01 08 */	lfs f1, 0x108(r1)
/* 80BCDB94  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80BCDB98  EF C1 18 28 */	fsubs f30, f1, f3
/* 80BCDB9C  C0 9D 00 00 */	lfs f4, 0(r29)
/* 80BCDBA0  EF A4 00 28 */	fsubs f29, f4, f0
/* 80BCDBA4  C0 BD 00 08 */	lfs f5, 8(r29)
/* 80BCDBA8  EF 85 08 28 */	fsubs f28, f5, f1
/* 80BCDBAC  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80BCDBB0  EF 60 10 28 */	fsubs f27, f0, f2
/* 80BCDBB4  C0 21 00 FC */	lfs f1, 0xfc(r1)
/* 80BCDBB8  EF 41 18 28 */	fsubs f26, f1, f3
/* 80BCDBBC  EF 24 00 28 */	fsubs f25, f4, f0
/* 80BCDBC0  EF 05 08 28 */	fsubs f24, f5, f1
/* 80BCDBC4  7F C3 F3 78 */	mr r3, r30
/* 80BCDBC8  38 81 01 00 */	addi r4, r1, 0x100
/* 80BCDBCC  4B 77 97 D0 */	b PSVECSquareDistance
/* 80BCDBD0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BCDBD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCDBD8  40 81 00 58 */	ble lbl_80BCDC30
/* 80BCDBDC  FC 00 08 34 */	frsqrte f0, f1
/* 80BCDBE0  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80BCDBE4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCDBE8  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80BCDBEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCDBF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCDBF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCDBF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCDBFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCDC00  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCDC04  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCDC08  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCDC0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCDC10  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCDC14  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCDC18  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCDC1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCDC20  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCDC24  FE E1 00 32 */	fmul f23, f1, f0
/* 80BCDC28  FE E0 B8 18 */	frsp f23, f23
/* 80BCDC2C  48 00 00 90 */	b lbl_80BCDCBC
lbl_80BCDC30:
/* 80BCDC30  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80BCDC34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCDC38  40 80 00 10 */	bge lbl_80BCDC48
/* 80BCDC3C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCDC40  C2 E3 0A E0 */	lfs f23, __float_nan@l(r3)
/* 80BCDC44  48 00 00 78 */	b lbl_80BCDCBC
lbl_80BCDC48:
/* 80BCDC48  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BCDC4C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80BCDC50  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BCDC54  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BCDC58  7C 03 00 00 */	cmpw r3, r0
/* 80BCDC5C  41 82 00 14 */	beq lbl_80BCDC70
/* 80BCDC60  40 80 00 40 */	bge lbl_80BCDCA0
/* 80BCDC64  2C 03 00 00 */	cmpwi r3, 0
/* 80BCDC68  41 82 00 20 */	beq lbl_80BCDC88
/* 80BCDC6C  48 00 00 34 */	b lbl_80BCDCA0
lbl_80BCDC70:
/* 80BCDC70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCDC74  41 82 00 0C */	beq lbl_80BCDC80
/* 80BCDC78  38 00 00 01 */	li r0, 1
/* 80BCDC7C  48 00 00 28 */	b lbl_80BCDCA4
lbl_80BCDC80:
/* 80BCDC80  38 00 00 02 */	li r0, 2
/* 80BCDC84  48 00 00 20 */	b lbl_80BCDCA4
lbl_80BCDC88:
/* 80BCDC88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCDC8C  41 82 00 0C */	beq lbl_80BCDC98
/* 80BCDC90  38 00 00 05 */	li r0, 5
/* 80BCDC94  48 00 00 10 */	b lbl_80BCDCA4
lbl_80BCDC98:
/* 80BCDC98  38 00 00 03 */	li r0, 3
/* 80BCDC9C  48 00 00 08 */	b lbl_80BCDCA4
lbl_80BCDCA0:
/* 80BCDCA0  38 00 00 04 */	li r0, 4
lbl_80BCDCA4:
/* 80BCDCA4  2C 00 00 01 */	cmpwi r0, 1
/* 80BCDCA8  40 82 00 10 */	bne lbl_80BCDCB8
/* 80BCDCAC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCDCB0  C2 E3 0A E0 */	lfs f23, __float_nan@l(r3)
/* 80BCDCB4  48 00 00 08 */	b lbl_80BCDCBC
lbl_80BCDCB8:
/* 80BCDCB8  FE E0 08 90 */	fmr f23, f1
lbl_80BCDCBC:
/* 80BCDCBC  7F C3 F3 78 */	mr r3, r30
/* 80BCDCC0  38 81 00 F4 */	addi r4, r1, 0xf4
/* 80BCDCC4  4B 77 96 D8 */	b PSVECSquareDistance
/* 80BCDCC8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BCDCCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCDCD0  40 81 00 58 */	ble lbl_80BCDD28
/* 80BCDCD4  FC 00 08 34 */	frsqrte f0, f1
/* 80BCDCD8  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80BCDCDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCDCE0  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80BCDCE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCDCE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCDCEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCDCF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCDCF4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCDCF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCDCFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCDD00  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCDD04  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCDD08  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCDD0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCDD10  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCDD14  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCDD18  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCDD1C  FE C1 00 32 */	fmul f22, f1, f0
/* 80BCDD20  FE C0 B0 18 */	frsp f22, f22
/* 80BCDD24  48 00 00 90 */	b lbl_80BCDDB4
lbl_80BCDD28:
/* 80BCDD28  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80BCDD2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCDD30  40 80 00 10 */	bge lbl_80BCDD40
/* 80BCDD34  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCDD38  C2 C3 0A E0 */	lfs f22, __float_nan@l(r3)
/* 80BCDD3C  48 00 00 78 */	b lbl_80BCDDB4
lbl_80BCDD40:
/* 80BCDD40  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BCDD44  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80BCDD48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BCDD4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BCDD50  7C 03 00 00 */	cmpw r3, r0
/* 80BCDD54  41 82 00 14 */	beq lbl_80BCDD68
/* 80BCDD58  40 80 00 40 */	bge lbl_80BCDD98
/* 80BCDD5C  2C 03 00 00 */	cmpwi r3, 0
/* 80BCDD60  41 82 00 20 */	beq lbl_80BCDD80
/* 80BCDD64  48 00 00 34 */	b lbl_80BCDD98
lbl_80BCDD68:
/* 80BCDD68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCDD6C  41 82 00 0C */	beq lbl_80BCDD78
/* 80BCDD70  38 00 00 01 */	li r0, 1
/* 80BCDD74  48 00 00 28 */	b lbl_80BCDD9C
lbl_80BCDD78:
/* 80BCDD78  38 00 00 02 */	li r0, 2
/* 80BCDD7C  48 00 00 20 */	b lbl_80BCDD9C
lbl_80BCDD80:
/* 80BCDD80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCDD84  41 82 00 0C */	beq lbl_80BCDD90
/* 80BCDD88  38 00 00 05 */	li r0, 5
/* 80BCDD8C  48 00 00 10 */	b lbl_80BCDD9C
lbl_80BCDD90:
/* 80BCDD90  38 00 00 03 */	li r0, 3
/* 80BCDD94  48 00 00 08 */	b lbl_80BCDD9C
lbl_80BCDD98:
/* 80BCDD98  38 00 00 04 */	li r0, 4
lbl_80BCDD9C:
/* 80BCDD9C  2C 00 00 01 */	cmpwi r0, 1
/* 80BCDDA0  40 82 00 10 */	bne lbl_80BCDDB0
/* 80BCDDA4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCDDA8  C2 C3 0A E0 */	lfs f22, __float_nan@l(r3)
/* 80BCDDAC  48 00 00 08 */	b lbl_80BCDDB4
lbl_80BCDDB0:
/* 80BCDDB0  FE C0 08 90 */	fmr f22, f1
lbl_80BCDDB4:
/* 80BCDDB4  7F A3 EB 78 */	mr r3, r29
/* 80BCDDB8  38 81 01 00 */	addi r4, r1, 0x100
/* 80BCDDBC  4B 77 95 E0 */	b PSVECSquareDistance
/* 80BCDDC0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BCDDC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCDDC8  40 81 00 58 */	ble lbl_80BCDE20
/* 80BCDDCC  FC 00 08 34 */	frsqrte f0, f1
/* 80BCDDD0  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80BCDDD4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCDDD8  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80BCDDDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCDDE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCDDE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCDDE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCDDEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCDDF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCDDF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCDDF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCDDFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCDE00  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCDE04  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCDE08  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCDE0C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCDE10  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCDE14  FC 21 00 32 */	fmul f1, f1, f0
/* 80BCDE18  FC 20 08 18 */	frsp f1, f1
/* 80BCDE1C  48 00 00 88 */	b lbl_80BCDEA4
lbl_80BCDE20:
/* 80BCDE20  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80BCDE24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCDE28  40 80 00 10 */	bge lbl_80BCDE38
/* 80BCDE2C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCDE30  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BCDE34  48 00 00 70 */	b lbl_80BCDEA4
lbl_80BCDE38:
/* 80BCDE38  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BCDE3C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80BCDE40  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BCDE44  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BCDE48  7C 03 00 00 */	cmpw r3, r0
/* 80BCDE4C  41 82 00 14 */	beq lbl_80BCDE60
/* 80BCDE50  40 80 00 40 */	bge lbl_80BCDE90
/* 80BCDE54  2C 03 00 00 */	cmpwi r3, 0
/* 80BCDE58  41 82 00 20 */	beq lbl_80BCDE78
/* 80BCDE5C  48 00 00 34 */	b lbl_80BCDE90
lbl_80BCDE60:
/* 80BCDE60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCDE64  41 82 00 0C */	beq lbl_80BCDE70
/* 80BCDE68  38 00 00 01 */	li r0, 1
/* 80BCDE6C  48 00 00 28 */	b lbl_80BCDE94
lbl_80BCDE70:
/* 80BCDE70  38 00 00 02 */	li r0, 2
/* 80BCDE74  48 00 00 20 */	b lbl_80BCDE94
lbl_80BCDE78:
/* 80BCDE78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCDE7C  41 82 00 0C */	beq lbl_80BCDE88
/* 80BCDE80  38 00 00 05 */	li r0, 5
/* 80BCDE84  48 00 00 10 */	b lbl_80BCDE94
lbl_80BCDE88:
/* 80BCDE88  38 00 00 03 */	li r0, 3
/* 80BCDE8C  48 00 00 08 */	b lbl_80BCDE94
lbl_80BCDE90:
/* 80BCDE90  38 00 00 04 */	li r0, 4
lbl_80BCDE94:
/* 80BCDE94  2C 00 00 01 */	cmpwi r0, 1
/* 80BCDE98  40 82 00 0C */	bne lbl_80BCDEA4
/* 80BCDE9C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCDEA0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BCDEA4:
/* 80BCDEA4  FE A0 08 90 */	fmr f21, f1
/* 80BCDEA8  7F A3 EB 78 */	mr r3, r29
/* 80BCDEAC  38 81 00 F4 */	addi r4, r1, 0xf4
/* 80BCDEB0  4B 77 94 EC */	b PSVECSquareDistance
/* 80BCDEB4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BCDEB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCDEBC  40 81 00 58 */	ble lbl_80BCDF14
/* 80BCDEC0  FC 00 08 34 */	frsqrte f0, f1
/* 80BCDEC4  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80BCDEC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCDECC  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80BCDED0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCDED4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCDED8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCDEDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCDEE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCDEE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCDEE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCDEEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCDEF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCDEF4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCDEF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCDEFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCDF00  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCDF04  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCDF08  FC 21 00 32 */	fmul f1, f1, f0
/* 80BCDF0C  FC 20 08 18 */	frsp f1, f1
/* 80BCDF10  48 00 00 88 */	b lbl_80BCDF98
lbl_80BCDF14:
/* 80BCDF14  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80BCDF18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCDF1C  40 80 00 10 */	bge lbl_80BCDF2C
/* 80BCDF20  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCDF24  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BCDF28  48 00 00 70 */	b lbl_80BCDF98
lbl_80BCDF2C:
/* 80BCDF2C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BCDF30  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BCDF34  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BCDF38  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BCDF3C  7C 03 00 00 */	cmpw r3, r0
/* 80BCDF40  41 82 00 14 */	beq lbl_80BCDF54
/* 80BCDF44  40 80 00 40 */	bge lbl_80BCDF84
/* 80BCDF48  2C 03 00 00 */	cmpwi r3, 0
/* 80BCDF4C  41 82 00 20 */	beq lbl_80BCDF6C
/* 80BCDF50  48 00 00 34 */	b lbl_80BCDF84
lbl_80BCDF54:
/* 80BCDF54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCDF58  41 82 00 0C */	beq lbl_80BCDF64
/* 80BCDF5C  38 00 00 01 */	li r0, 1
/* 80BCDF60  48 00 00 28 */	b lbl_80BCDF88
lbl_80BCDF64:
/* 80BCDF64  38 00 00 02 */	li r0, 2
/* 80BCDF68  48 00 00 20 */	b lbl_80BCDF88
lbl_80BCDF6C:
/* 80BCDF6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCDF70  41 82 00 0C */	beq lbl_80BCDF7C
/* 80BCDF74  38 00 00 05 */	li r0, 5
/* 80BCDF78  48 00 00 10 */	b lbl_80BCDF88
lbl_80BCDF7C:
/* 80BCDF7C  38 00 00 03 */	li r0, 3
/* 80BCDF80  48 00 00 08 */	b lbl_80BCDF88
lbl_80BCDF84:
/* 80BCDF84  38 00 00 04 */	li r0, 4
lbl_80BCDF88:
/* 80BCDF88  2C 00 00 01 */	cmpwi r0, 1
/* 80BCDF8C  40 82 00 0C */	bne lbl_80BCDF98
/* 80BCDF90  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCDF94  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BCDF98:
/* 80BCDF98  80 1B 07 18 */	lwz r0, 0x718(r27)
/* 80BCDF9C  2C 00 FF FF */	cmpwi r0, -1
/* 80BCDFA0  41 82 00 40 */	beq lbl_80BCDFE0
/* 80BCDFA4  C0 BB 07 28 */	lfs f5, 0x728(r27)
/* 80BCDFA8  EC 5F 01 72 */	fmuls f2, f31, f5
/* 80BCDFAC  C0 9B 07 30 */	lfs f4, 0x730(r27)
/* 80BCDFB0  EC 1E 01 32 */	fmuls f0, f30, f4
/* 80BCDFB4  EC 02 00 2A */	fadds f0, f2, f0
/* 80BCDFB8  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80BCDFBC  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80BCDFC0  4C 40 13 82 */	cror 2, 0, 2
/* 80BCDFC4  41 82 00 1C */	beq lbl_80BCDFE0
/* 80BCDFC8  EC 5D 01 72 */	fmuls f2, f29, f5
/* 80BCDFCC  EC 1C 01 32 */	fmuls f0, f28, f4
/* 80BCDFD0  EC 02 00 2A */	fadds f0, f2, f0
/* 80BCDFD4  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80BCDFD8  4C 40 13 82 */	cror 2, 0, 2
/* 80BCDFDC  40 82 00 18 */	bne lbl_80BCDFF4
lbl_80BCDFE0:
/* 80BCDFE0  3B 21 00 F4 */	addi r25, r1, 0xf4
/* 80BCDFE4  7F 38 CB 78 */	mr r24, r25
/* 80BCDFE8  FE E0 B0 90 */	fmr f23, f22
/* 80BCDFEC  FE A0 08 90 */	fmr f21, f1
/* 80BCDFF0  48 00 00 70 */	b lbl_80BCE060
lbl_80BCDFF4:
/* 80BCDFF4  80 1B 07 1C */	lwz r0, 0x71c(r27)
/* 80BCDFF8  2C 00 FF FF */	cmpwi r0, -1
/* 80BCDFFC  41 82 00 34 */	beq lbl_80BCE030
/* 80BCE000  EC 5B 01 72 */	fmuls f2, f27, f5
/* 80BCE004  EC 1A 01 32 */	fmuls f0, f26, f4
/* 80BCE008  EC 02 00 2A */	fadds f0, f2, f0
/* 80BCE00C  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80BCE010  4C 40 13 82 */	cror 2, 0, 2
/* 80BCE014  41 82 00 1C */	beq lbl_80BCE030
/* 80BCE018  EC 59 01 72 */	fmuls f2, f25, f5
/* 80BCE01C  EC 18 01 32 */	fmuls f0, f24, f4
/* 80BCE020  EC 02 00 2A */	fadds f0, f2, f0
/* 80BCE024  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80BCE028  4C 40 13 82 */	cror 2, 0, 2
/* 80BCE02C  40 82 00 10 */	bne lbl_80BCE03C
lbl_80BCE030:
/* 80BCE030  3B 21 01 00 */	addi r25, r1, 0x100
/* 80BCE034  7F 38 CB 78 */	mr r24, r25
/* 80BCE038  48 00 00 28 */	b lbl_80BCE060
lbl_80BCE03C:
/* 80BCE03C  FC 17 B0 40 */	fcmpo cr0, f23, f22
/* 80BCE040  40 81 00 14 */	ble lbl_80BCE054
/* 80BCE044  3B 21 00 F4 */	addi r25, r1, 0xf4
/* 80BCE048  3B 01 01 00 */	addi r24, r1, 0x100
/* 80BCE04C  FE E0 B0 90 */	fmr f23, f22
/* 80BCE050  48 00 00 10 */	b lbl_80BCE060
lbl_80BCE054:
/* 80BCE054  3B 21 01 00 */	addi r25, r1, 0x100
/* 80BCE058  3B 01 00 F4 */	addi r24, r1, 0xf4
/* 80BCE05C  FE A0 08 90 */	fmr f21, f1
lbl_80BCE060:
/* 80BCE060  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80BCE064  7F 24 CB 78 */	mr r4, r25
/* 80BCE068  7F C5 F3 78 */	mr r5, r30
/* 80BCE06C  4B 69 8A C8 */	b __mi__4cXyzCFRC3Vec
/* 80BCE070  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80BCE074  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80BCE078  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80BCE07C  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80BCE080  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80BCE084  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80BCE088  38 61 00 AC */	addi r3, r1, 0xac
/* 80BCE08C  7F 04 C3 78 */	mr r4, r24
/* 80BCE090  7F A5 EB 78 */	mr r5, r29
/* 80BCE094  4B 69 8A A0 */	b __mi__4cXyzCFRC3Vec
/* 80BCE098  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80BCE09C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80BCE0A0  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80BCE0A4  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80BCE0A8  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80BCE0AC  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80BCE0B0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BCE0B4  C0 1B 07 20 */	lfs f0, 0x720(r27)
/* 80BCE0B8  EE C1 00 24 */	fdivs f22, f1, f0
/* 80BCE0BC  EC 15 05 B2 */	fmuls f0, f21, f22
/* 80BCE0C0  FC 00 00 1E */	fctiwz f0, f0
/* 80BCE0C4  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 80BCE0C8  83 81 01 14 */	lwz r28, 0x114(r1)
/* 80BCE0CC  2C 1C 00 61 */	cmpwi r28, 0x61
/* 80BCE0D0  40 81 00 08 */	ble lbl_80BCE0D8
/* 80BCE0D4  3B 80 00 61 */	li r28, 0x61
lbl_80BCE0D8:
/* 80BCE0D8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80BCE0DC  38 81 00 DC */	addi r4, r1, 0xdc
/* 80BCE0E0  4B 69 8E 68 */	b normalizeZP__4cXyzFv
/* 80BCE0E4  3B BD FF F4 */	addi r29, r29, -12
/* 80BCE0E8  3B 40 00 00 */	li r26, 0
/* 80BCE0EC  48 00 00 44 */	b lbl_80BCE130
lbl_80BCE0F0:
/* 80BCE0F0  38 61 00 94 */	addi r3, r1, 0x94
/* 80BCE0F4  38 81 00 DC */	addi r4, r1, 0xdc
/* 80BCE0F8  C0 3B 07 20 */	lfs f1, 0x720(r27)
/* 80BCE0FC  4B 69 8A 88 */	b __ml__4cXyzCFf
/* 80BCE100  38 61 00 88 */	addi r3, r1, 0x88
/* 80BCE104  38 9D 00 0C */	addi r4, r29, 0xc
/* 80BCE108  38 A1 00 94 */	addi r5, r1, 0x94
/* 80BCE10C  4B 69 89 D8 */	b __pl__4cXyzCFRC3Vec
/* 80BCE110  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80BCE114  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80BCE118  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80BCE11C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80BCE120  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80BCE124  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80BCE128  3B 5A 00 01 */	addi r26, r26, 1
/* 80BCE12C  3B BD FF F4 */	addi r29, r29, -12
lbl_80BCE130:
/* 80BCE130  7C 1A E0 00 */	cmpw r26, r28
/* 80BCE134  41 80 FF BC */	blt lbl_80BCE0F0
/* 80BCE138  C0 18 00 00 */	lfs f0, 0(r24)
/* 80BCE13C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80BCE140  C0 18 00 04 */	lfs f0, 4(r24)
/* 80BCE144  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80BCE148  C0 18 00 08 */	lfs f0, 8(r24)
/* 80BCE14C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80BCE150  EC 17 05 B2 */	fmuls f0, f23, f22
/* 80BCE154  FC 00 00 1E */	fctiwz f0, f0
/* 80BCE158  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 80BCE15C  82 E1 01 14 */	lwz r23, 0x114(r1)
/* 80BCE160  2C 17 00 61 */	cmpwi r23, 0x61
/* 80BCE164  40 81 00 08 */	ble lbl_80BCE16C
/* 80BCE168  3A E0 00 61 */	li r23, 0x61
lbl_80BCE16C:
/* 80BCE16C  38 61 00 7C */	addi r3, r1, 0x7c
/* 80BCE170  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80BCE174  4B 69 8D D4 */	b normalizeZP__4cXyzFv
/* 80BCE178  3B BE 00 0C */	addi r29, r30, 0xc
/* 80BCE17C  3B 40 00 00 */	li r26, 0
/* 80BCE180  48 00 00 44 */	b lbl_80BCE1C4
lbl_80BCE184:
/* 80BCE184  38 61 00 70 */	addi r3, r1, 0x70
/* 80BCE188  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80BCE18C  C0 3B 07 20 */	lfs f1, 0x720(r27)
/* 80BCE190  4B 69 89 F4 */	b __ml__4cXyzCFf
/* 80BCE194  38 61 00 64 */	addi r3, r1, 0x64
/* 80BCE198  38 9D FF F4 */	addi r4, r29, -12
/* 80BCE19C  38 A1 00 70 */	addi r5, r1, 0x70
/* 80BCE1A0  4B 69 89 44 */	b __pl__4cXyzCFRC3Vec
/* 80BCE1A4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80BCE1A8  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80BCE1AC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80BCE1B0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80BCE1B4  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80BCE1B8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80BCE1BC  3B 5A 00 01 */	addi r26, r26, 1
/* 80BCE1C0  3B BD 00 0C */	addi r29, r29, 0xc
lbl_80BCE1C4:
/* 80BCE1C4  7C 1A B8 00 */	cmpw r26, r23
/* 80BCE1C8  41 80 FF BC */	blt lbl_80BCE184
/* 80BCE1CC  C0 19 00 00 */	lfs f0, 0(r25)
/* 80BCE1D0  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80BCE1D4  C0 19 00 04 */	lfs f0, 4(r25)
/* 80BCE1D8  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80BCE1DC  C0 19 00 08 */	lfs f0, 8(r25)
/* 80BCE1E0  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80BCE1E4  20 17 00 60 */	subfic r0, r23, 0x60
/* 80BCE1E8  7F 9C 00 50 */	subf r28, r28, r0
/* 80BCE1EC  38 61 00 58 */	addi r3, r1, 0x58
/* 80BCE1F0  7F 04 C3 78 */	mr r4, r24
/* 80BCE1F4  7F 25 CB 78 */	mr r5, r25
/* 80BCE1F8  4B 69 89 3C */	b __mi__4cXyzCFRC3Vec
/* 80BCE1FC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80BCE200  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80BCE204  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80BCE208  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80BCE20C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80BCE210  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80BCE214  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80BCE218  4B 77 8F 20 */	b PSVECSquareMag
/* 80BCE21C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BCE220  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCE224  40 81 00 58 */	ble lbl_80BCE27C
/* 80BCE228  FC 00 08 34 */	frsqrte f0, f1
/* 80BCE22C  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80BCE230  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCE234  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80BCE238  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCE23C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCE240  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCE244  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCE248  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCE24C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCE250  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCE254  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCE258  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCE25C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCE260  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCE264  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCE268  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCE26C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCE270  FC 21 00 32 */	fmul f1, f1, f0
/* 80BCE274  FC 20 08 18 */	frsp f1, f1
/* 80BCE278  48 00 00 88 */	b lbl_80BCE300
lbl_80BCE27C:
/* 80BCE27C  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80BCE280  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCE284  40 80 00 10 */	bge lbl_80BCE294
/* 80BCE288  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCE28C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BCE290  48 00 00 70 */	b lbl_80BCE300
lbl_80BCE294:
/* 80BCE294  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BCE298  80 81 00 08 */	lwz r4, 8(r1)
/* 80BCE29C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BCE2A0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BCE2A4  7C 03 00 00 */	cmpw r3, r0
/* 80BCE2A8  41 82 00 14 */	beq lbl_80BCE2BC
/* 80BCE2AC  40 80 00 40 */	bge lbl_80BCE2EC
/* 80BCE2B0  2C 03 00 00 */	cmpwi r3, 0
/* 80BCE2B4  41 82 00 20 */	beq lbl_80BCE2D4
/* 80BCE2B8  48 00 00 34 */	b lbl_80BCE2EC
lbl_80BCE2BC:
/* 80BCE2BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCE2C0  41 82 00 0C */	beq lbl_80BCE2CC
/* 80BCE2C4  38 00 00 01 */	li r0, 1
/* 80BCE2C8  48 00 00 28 */	b lbl_80BCE2F0
lbl_80BCE2CC:
/* 80BCE2CC  38 00 00 02 */	li r0, 2
/* 80BCE2D0  48 00 00 20 */	b lbl_80BCE2F0
lbl_80BCE2D4:
/* 80BCE2D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCE2D8  41 82 00 0C */	beq lbl_80BCE2E4
/* 80BCE2DC  38 00 00 05 */	li r0, 5
/* 80BCE2E0  48 00 00 10 */	b lbl_80BCE2F0
lbl_80BCE2E4:
/* 80BCE2E4  38 00 00 03 */	li r0, 3
/* 80BCE2E8  48 00 00 08 */	b lbl_80BCE2F0
lbl_80BCE2EC:
/* 80BCE2EC  38 00 00 04 */	li r0, 4
lbl_80BCE2F0:
/* 80BCE2F0  2C 00 00 01 */	cmpwi r0, 1
/* 80BCE2F4  40 82 00 0C */	bne lbl_80BCE300
/* 80BCE2F8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCE2FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BCE300:
/* 80BCE300  38 1C 00 01 */	addi r0, r28, 1
/* 80BCE304  C8 5F 00 68 */	lfd f2, 0x68(r31)
/* 80BCE308  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BCE30C  90 01 01 14 */	stw r0, 0x114(r1)
/* 80BCE310  3C 00 43 30 */	lis r0, 0x4330
/* 80BCE314  90 01 01 10 */	stw r0, 0x110(r1)
/* 80BCE318  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 80BCE31C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BCE320  EE A1 00 24 */	fdivs f21, f1, f0
/* 80BCE324  38 61 00 4C */	addi r3, r1, 0x4c
/* 80BCE328  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80BCE32C  4B 69 8C 1C */	b normalizeZP__4cXyzFv
/* 80BCE330  3B 40 00 00 */	li r26, 0
/* 80BCE334  3B BD 00 0C */	addi r29, r29, 0xc
/* 80BCE338  48 00 00 44 */	b lbl_80BCE37C
lbl_80BCE33C:
/* 80BCE33C  38 61 00 40 */	addi r3, r1, 0x40
/* 80BCE340  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80BCE344  FC 20 A8 90 */	fmr f1, f21
/* 80BCE348  4B 69 88 3C */	b __ml__4cXyzCFf
/* 80BCE34C  38 61 00 34 */	addi r3, r1, 0x34
/* 80BCE350  38 9D FF F4 */	addi r4, r29, -12
/* 80BCE354  38 A1 00 40 */	addi r5, r1, 0x40
/* 80BCE358  4B 69 87 8C */	b __pl__4cXyzCFRC3Vec
/* 80BCE35C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BCE360  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80BCE364  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BCE368  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80BCE36C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80BCE370  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80BCE374  3B 5A 00 01 */	addi r26, r26, 1
/* 80BCE378  3B BD 00 0C */	addi r29, r29, 0xc
lbl_80BCE37C:
/* 80BCE37C  7C 1A E0 00 */	cmpw r26, r28
/* 80BCE380  41 80 FF BC */	blt lbl_80BCE33C
/* 80BCE384  80 7B 10 A8 */	lwz r3, 0x10a8(r27)
/* 80BCE388  80 63 00 00 */	lwz r3, 0(r3)
/* 80BCE38C  3B 83 00 0C */	addi r28, r3, 0xc
/* 80BCE390  3A FB 0B D8 */	addi r23, r27, 0xbd8
/* 80BCE394  3B 1B 07 40 */	addi r24, r27, 0x740
/* 80BCE398  3B A0 00 01 */	li r29, 1
/* 80BCE39C  C2 BF 00 60 */	lfs f21, 0x60(r31)
lbl_80BCE3A0:
/* 80BCE3A0  C0 9E 00 04 */	lfs f4, 4(r30)
/* 80BCE3A4  C0 7B 07 2C */	lfs f3, 0x72c(r27)
/* 80BCE3A8  88 1B 07 14 */	lbz r0, 0x714(r27)
/* 80BCE3AC  28 00 00 00 */	cmplwi r0, 0
/* 80BCE3B0  41 82 00 24 */	beq lbl_80BCE3D4
/* 80BCE3B4  C0 5B 07 24 */	lfs f2, 0x724(r27)
/* 80BCE3B8  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80BCE3BC  80 7B 10 A8 */	lwz r3, 0x10a8(r27)
/* 80BCE3C0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BCE3C4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80BCE3C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BCE3CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BCE3D0  48 00 00 20 */	b lbl_80BCE3F0
lbl_80BCE3D4:
/* 80BCE3D4  C0 5B 07 24 */	lfs f2, 0x724(r27)
/* 80BCE3D8  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80BCE3DC  80 7B 10 A8 */	lwz r3, 0x10a8(r27)
/* 80BCE3E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BCE3E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BCE3E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BCE3EC  EC 02 00 32 */	fmuls f0, f2, f0
lbl_80BCE3F0:
/* 80BCE3F0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BCE3F4  EC 44 00 2A */	fadds f2, f4, f0
/* 80BCE3F8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80BCE3FC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80BCE400  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80BCE404  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80BCE408  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80BCE40C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80BCE410  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80BCE414  EC 02 08 28 */	fsubs f0, f2, f1
/* 80BCE418  EC 15 00 32 */	fmuls f0, f21, f0
/* 80BCE41C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCE420  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80BCE424  38 61 00 28 */	addi r3, r1, 0x28
/* 80BCE428  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80BCE42C  7E E5 BB 78 */	mr r5, r23
/* 80BCE430  4B 69 87 04 */	b __mi__4cXyzCFRC3Vec
/* 80BCE434  38 61 00 1C */	addi r3, r1, 0x1c
/* 80BCE438  38 81 00 28 */	addi r4, r1, 0x28
/* 80BCE43C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BCE440  4B 69 87 44 */	b __ml__4cXyzCFf
/* 80BCE444  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BCE448  D0 18 00 00 */	stfs f0, 0(r24)
/* 80BCE44C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BCE450  D0 18 00 04 */	stfs f0, 4(r24)
/* 80BCE454  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BCE458  D0 18 00 08 */	stfs f0, 8(r24)
/* 80BCE45C  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80BCE460  D0 17 00 00 */	stfs f0, 0(r23)
/* 80BCE464  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80BCE468  D0 17 00 04 */	stfs f0, 4(r23)
/* 80BCE46C  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80BCE470  D0 17 00 08 */	stfs f0, 8(r23)
/* 80BCE474  3B BD 00 01 */	addi r29, r29, 1
/* 80BCE478  2C 1D 00 63 */	cmpwi r29, 0x63
/* 80BCE47C  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80BCE480  3A F7 00 0C */	addi r23, r23, 0xc
/* 80BCE484  3B 18 00 0C */	addi r24, r24, 0xc
/* 80BCE488  41 80 FF 18 */	blt lbl_80BCE3A0
lbl_80BCE48C:
/* 80BCE48C  E3 E1 01 E8 */	psq_l f31, 488(r1), 0, 0 /* qr0 */
/* 80BCE490  CB E1 01 E0 */	lfd f31, 0x1e0(r1)
/* 80BCE494  E3 C1 01 D8 */	psq_l f30, 472(r1), 0, 0 /* qr0 */
/* 80BCE498  CB C1 01 D0 */	lfd f30, 0x1d0(r1)
/* 80BCE49C  E3 A1 01 C8 */	psq_l f29, 456(r1), 0, 0 /* qr0 */
/* 80BCE4A0  CB A1 01 C0 */	lfd f29, 0x1c0(r1)
/* 80BCE4A4  E3 81 01 B8 */	psq_l f28, 440(r1), 0, 0 /* qr0 */
/* 80BCE4A8  CB 81 01 B0 */	lfd f28, 0x1b0(r1)
/* 80BCE4AC  E3 61 01 A8 */	psq_l f27, 424(r1), 0, 0 /* qr0 */
/* 80BCE4B0  CB 61 01 A0 */	lfd f27, 0x1a0(r1)
/* 80BCE4B4  E3 41 01 98 */	psq_l f26, 408(r1), 0, 0 /* qr0 */
/* 80BCE4B8  CB 41 01 90 */	lfd f26, 0x190(r1)
/* 80BCE4BC  E3 21 01 88 */	psq_l f25, 392(r1), 0, 0 /* qr0 */
/* 80BCE4C0  CB 21 01 80 */	lfd f25, 0x180(r1)
/* 80BCE4C4  E3 01 01 78 */	psq_l f24, 376(r1), 0, 0 /* qr0 */
/* 80BCE4C8  CB 01 01 70 */	lfd f24, 0x170(r1)
/* 80BCE4CC  E2 E1 01 68 */	psq_l f23, 360(r1), 0, 0 /* qr0 */
/* 80BCE4D0  CA E1 01 60 */	lfd f23, 0x160(r1)
/* 80BCE4D4  E2 C1 01 58 */	psq_l f22, 344(r1), 0, 0 /* qr0 */
/* 80BCE4D8  CA C1 01 50 */	lfd f22, 0x150(r1)
/* 80BCE4DC  E2 A1 01 48 */	psq_l f21, 328(r1), 0, 0 /* qr0 */
/* 80BCE4E0  CA A1 01 40 */	lfd f21, 0x140(r1)
/* 80BCE4E4  39 61 01 40 */	addi r11, r1, 0x140
/* 80BCE4E8  4B 79 3D 28 */	b _restgpr_23
/* 80BCE4EC  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 80BCE4F0  7C 08 03 A6 */	mtlr r0
/* 80BCE4F4  38 21 01 F0 */	addi r1, r1, 0x1f0
/* 80BCE4F8  4E 80 00 20 */	blr 
