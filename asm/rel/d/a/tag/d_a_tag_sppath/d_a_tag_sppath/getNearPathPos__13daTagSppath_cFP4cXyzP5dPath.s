lbl_80D62024:
/* 80D62024  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80D62028  7C 08 02 A6 */	mflr r0
/* 80D6202C  90 01 01 24 */	stw r0, 0x124(r1)
/* 80D62030  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 80D62034  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 80D62038  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 80D6203C  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 80D62040  39 61 01 00 */	addi r11, r1, 0x100
/* 80D62044  4B 60 01 84 */	b _savegpr_24
/* 80D62048  7C 98 23 78 */	mr r24, r4
/* 80D6204C  7C B9 2B 78 */	mr r25, r5
/* 80D62050  3C 60 80 D6 */	lis r3, lit_3694@ha
/* 80D62054  3B E3 2C 18 */	addi r31, r3, lit_3694@l
/* 80D62058  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D6205C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D62060  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D62064  3B A3 04 D0 */	addi r29, r3, 0x4d0
/* 80D62068  83 85 00 08 */	lwz r28, 8(r5)
/* 80D6206C  3C 60 80 45 */	lis r3, __float_max@ha
/* 80D62070  C3 E3 0A E8 */	lfs f31, __float_max@l(r3)
/* 80D62074  3C 60 80 D6 */	lis r3, __vt__8cM3dGLin@ha
/* 80D62078  38 03 2C E8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80D6207C  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80D62080  3B 40 00 00 */	li r26, 0
/* 80D62084  3B C1 00 CC */	addi r30, r1, 0xcc
/* 80D62088  48 00 08 AC */	b lbl_80D62934
lbl_80D6208C:
/* 80D6208C  38 03 FF FF */	addi r0, r3, -1
/* 80D62090  7C 1A 00 00 */	cmpw r26, r0
/* 80D62094  41 82 05 5C */	beq lbl_80D625F0
/* 80D62098  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80D6209C  38 9C 00 04 */	addi r4, r28, 4
/* 80D620A0  38 BC 00 14 */	addi r5, r28, 0x14
/* 80D620A4  4B 50 D2 78 */	b SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 80D620A8  88 19 00 05 */	lbz r0, 5(r25)
/* 80D620AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D620B0  40 82 05 24 */	bne lbl_80D625D4
/* 80D620B4  2C 1A 00 00 */	cmpwi r26, 0
/* 80D620B8  40 82 02 88 */	bne lbl_80D62340
/* 80D620BC  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 80D620C0  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80D620C4  EC 61 00 28 */	fsubs f3, f1, f0
/* 80D620C8  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 80D620CC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80D620D0  EC 41 00 28 */	fsubs f2, f1, f0
/* 80D620D4  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 80D620D8  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80D620DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D620E0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80D620E4  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 80D620E8  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 80D620EC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80D620F0  4B 5E 50 48 */	b PSVECSquareMag
/* 80D620F4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D620F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D620FC  40 81 00 58 */	ble lbl_80D62154
/* 80D62100  FC 00 08 34 */	frsqrte f0, f1
/* 80D62104  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80D62108  FC 44 00 32 */	fmul f2, f4, f0
/* 80D6210C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80D62110  FC 00 00 32 */	fmul f0, f0, f0
/* 80D62114  FC 01 00 32 */	fmul f0, f1, f0
/* 80D62118  FC 03 00 28 */	fsub f0, f3, f0
/* 80D6211C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D62120  FC 44 00 32 */	fmul f2, f4, f0
/* 80D62124  FC 00 00 32 */	fmul f0, f0, f0
/* 80D62128  FC 01 00 32 */	fmul f0, f1, f0
/* 80D6212C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D62130  FC 02 00 32 */	fmul f0, f2, f0
/* 80D62134  FC 44 00 32 */	fmul f2, f4, f0
/* 80D62138  FC 00 00 32 */	fmul f0, f0, f0
/* 80D6213C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D62140  FC 03 00 28 */	fsub f0, f3, f0
/* 80D62144  FC 02 00 32 */	fmul f0, f2, f0
/* 80D62148  FF C1 00 32 */	fmul f30, f1, f0
/* 80D6214C  FF C0 F0 18 */	frsp f30, f30
/* 80D62150  48 00 00 90 */	b lbl_80D621E0
lbl_80D62154:
/* 80D62154  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80D62158  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D6215C  40 80 00 10 */	bge lbl_80D6216C
/* 80D62160  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D62164  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80D62168  48 00 00 78 */	b lbl_80D621E0
lbl_80D6216C:
/* 80D6216C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D62170  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80D62174  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D62178  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D6217C  7C 03 00 00 */	cmpw r3, r0
/* 80D62180  41 82 00 14 */	beq lbl_80D62194
/* 80D62184  40 80 00 40 */	bge lbl_80D621C4
/* 80D62188  2C 03 00 00 */	cmpwi r3, 0
/* 80D6218C  41 82 00 20 */	beq lbl_80D621AC
/* 80D62190  48 00 00 34 */	b lbl_80D621C4
lbl_80D62194:
/* 80D62194  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D62198  41 82 00 0C */	beq lbl_80D621A4
/* 80D6219C  38 00 00 01 */	li r0, 1
/* 80D621A0  48 00 00 28 */	b lbl_80D621C8
lbl_80D621A4:
/* 80D621A4  38 00 00 02 */	li r0, 2
/* 80D621A8  48 00 00 20 */	b lbl_80D621C8
lbl_80D621AC:
/* 80D621AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D621B0  41 82 00 0C */	beq lbl_80D621BC
/* 80D621B4  38 00 00 05 */	li r0, 5
/* 80D621B8  48 00 00 10 */	b lbl_80D621C8
lbl_80D621BC:
/* 80D621BC  38 00 00 03 */	li r0, 3
/* 80D621C0  48 00 00 08 */	b lbl_80D621C8
lbl_80D621C4:
/* 80D621C4  38 00 00 04 */	li r0, 4
lbl_80D621C8:
/* 80D621C8  2C 00 00 01 */	cmpwi r0, 1
/* 80D621CC  40 82 00 10 */	bne lbl_80D621DC
/* 80D621D0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D621D4  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80D621D8  48 00 00 08 */	b lbl_80D621E0
lbl_80D621DC:
/* 80D621DC  FF C0 08 90 */	fmr f30, f1
lbl_80D621E0:
/* 80D621E0  38 61 00 9C */	addi r3, r1, 0x9c
/* 80D621E4  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80D621E8  4B 50 4D 60 */	b normalizeZP__4cXyzFv
/* 80D621EC  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80D621F0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D621F4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D621F8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D621FC  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80D62200  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D62204  38 61 00 3C */	addi r3, r1, 0x3c
/* 80D62208  4B 5E 4F 30 */	b PSVECSquareMag
/* 80D6220C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D62210  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D62214  40 81 00 58 */	ble lbl_80D6226C
/* 80D62218  FC 00 08 34 */	frsqrte f0, f1
/* 80D6221C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80D62220  FC 44 00 32 */	fmul f2, f4, f0
/* 80D62224  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80D62228  FC 00 00 32 */	fmul f0, f0, f0
/* 80D6222C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D62230  FC 03 00 28 */	fsub f0, f3, f0
/* 80D62234  FC 02 00 32 */	fmul f0, f2, f0
/* 80D62238  FC 44 00 32 */	fmul f2, f4, f0
/* 80D6223C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D62240  FC 01 00 32 */	fmul f0, f1, f0
/* 80D62244  FC 03 00 28 */	fsub f0, f3, f0
/* 80D62248  FC 02 00 32 */	fmul f0, f2, f0
/* 80D6224C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D62250  FC 00 00 32 */	fmul f0, f0, f0
/* 80D62254  FC 01 00 32 */	fmul f0, f1, f0
/* 80D62258  FC 03 00 28 */	fsub f0, f3, f0
/* 80D6225C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D62260  FC 21 00 32 */	fmul f1, f1, f0
/* 80D62264  FC 20 08 18 */	frsp f1, f1
/* 80D62268  48 00 00 88 */	b lbl_80D622F0
lbl_80D6226C:
/* 80D6226C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80D62270  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D62274  40 80 00 10 */	bge lbl_80D62284
/* 80D62278  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D6227C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D62280  48 00 00 70 */	b lbl_80D622F0
lbl_80D62284:
/* 80D62284  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80D62288  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80D6228C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D62290  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D62294  7C 03 00 00 */	cmpw r3, r0
/* 80D62298  41 82 00 14 */	beq lbl_80D622AC
/* 80D6229C  40 80 00 40 */	bge lbl_80D622DC
/* 80D622A0  2C 03 00 00 */	cmpwi r3, 0
/* 80D622A4  41 82 00 20 */	beq lbl_80D622C4
/* 80D622A8  48 00 00 34 */	b lbl_80D622DC
lbl_80D622AC:
/* 80D622AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D622B0  41 82 00 0C */	beq lbl_80D622BC
/* 80D622B4  38 00 00 01 */	li r0, 1
/* 80D622B8  48 00 00 28 */	b lbl_80D622E0
lbl_80D622BC:
/* 80D622BC  38 00 00 02 */	li r0, 2
/* 80D622C0  48 00 00 20 */	b lbl_80D622E0
lbl_80D622C4:
/* 80D622C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D622C8  41 82 00 0C */	beq lbl_80D622D4
/* 80D622CC  38 00 00 05 */	li r0, 5
/* 80D622D0  48 00 00 10 */	b lbl_80D622E0
lbl_80D622D4:
/* 80D622D4  38 00 00 03 */	li r0, 3
/* 80D622D8  48 00 00 08 */	b lbl_80D622E0
lbl_80D622DC:
/* 80D622DC  38 00 00 04 */	li r0, 4
lbl_80D622E0:
/* 80D622E0  2C 00 00 01 */	cmpwi r0, 1
/* 80D622E4  40 82 00 0C */	bne lbl_80D622F0
/* 80D622E8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D622EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D622F0:
/* 80D622F0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80D622F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D622F8  40 81 00 48 */	ble lbl_80D62340
/* 80D622FC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80D62300  EC 20 08 24 */	fdivs f1, f0, f1
/* 80D62304  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 80D62308  40 81 00 38 */	ble lbl_80D62340
/* 80D6230C  38 61 00 90 */	addi r3, r1, 0x90
/* 80D62310  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80D62314  4B 50 48 70 */	b __ml__4cXyzCFf
/* 80D62318  38 61 00 84 */	addi r3, r1, 0x84
/* 80D6231C  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80D62320  38 A1 00 90 */	addi r5, r1, 0x90
/* 80D62324  4B 50 47 C0 */	b __pl__4cXyzCFRC3Vec
/* 80D62328  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80D6232C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80D62330  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80D62334  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80D62338  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80D6233C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
lbl_80D62340:
/* 80D62340  A0 79 00 00 */	lhz r3, 0(r25)
/* 80D62344  38 03 FF FE */	addi r0, r3, -2
/* 80D62348  7C 1A 00 00 */	cmpw r26, r0
/* 80D6234C  40 82 02 88 */	bne lbl_80D625D4
/* 80D62350  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 80D62354  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80D62358  EC 61 00 28 */	fsubs f3, f1, f0
/* 80D6235C  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80D62360  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 80D62364  EC 41 00 28 */	fsubs f2, f1, f0
/* 80D62368  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80D6236C  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 80D62370  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D62374  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80D62378  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 80D6237C  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 80D62380  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80D62384  4B 5E 4D B4 */	b PSVECSquareMag
/* 80D62388  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D6238C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D62390  40 81 00 58 */	ble lbl_80D623E8
/* 80D62394  FC 00 08 34 */	frsqrte f0, f1
/* 80D62398  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80D6239C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D623A0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80D623A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D623A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D623AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D623B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D623B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D623B8  FC 00 00 32 */	fmul f0, f0, f0
/* 80D623BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80D623C0  FC 03 00 28 */	fsub f0, f3, f0
/* 80D623C4  FC 02 00 32 */	fmul f0, f2, f0
/* 80D623C8  FC 44 00 32 */	fmul f2, f4, f0
/* 80D623CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80D623D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D623D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D623D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D623DC  FF C1 00 32 */	fmul f30, f1, f0
/* 80D623E0  FF C0 F0 18 */	frsp f30, f30
/* 80D623E4  48 00 00 90 */	b lbl_80D62474
lbl_80D623E8:
/* 80D623E8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80D623EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D623F0  40 80 00 10 */	bge lbl_80D62400
/* 80D623F4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D623F8  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80D623FC  48 00 00 78 */	b lbl_80D62474
lbl_80D62400:
/* 80D62400  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D62404  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80D62408  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D6240C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D62410  7C 03 00 00 */	cmpw r3, r0
/* 80D62414  41 82 00 14 */	beq lbl_80D62428
/* 80D62418  40 80 00 40 */	bge lbl_80D62458
/* 80D6241C  2C 03 00 00 */	cmpwi r3, 0
/* 80D62420  41 82 00 20 */	beq lbl_80D62440
/* 80D62424  48 00 00 34 */	b lbl_80D62458
lbl_80D62428:
/* 80D62428  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D6242C  41 82 00 0C */	beq lbl_80D62438
/* 80D62430  38 00 00 01 */	li r0, 1
/* 80D62434  48 00 00 28 */	b lbl_80D6245C
lbl_80D62438:
/* 80D62438  38 00 00 02 */	li r0, 2
/* 80D6243C  48 00 00 20 */	b lbl_80D6245C
lbl_80D62440:
/* 80D62440  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D62444  41 82 00 0C */	beq lbl_80D62450
/* 80D62448  38 00 00 05 */	li r0, 5
/* 80D6244C  48 00 00 10 */	b lbl_80D6245C
lbl_80D62450:
/* 80D62450  38 00 00 03 */	li r0, 3
/* 80D62454  48 00 00 08 */	b lbl_80D6245C
lbl_80D62458:
/* 80D62458  38 00 00 04 */	li r0, 4
lbl_80D6245C:
/* 80D6245C  2C 00 00 01 */	cmpwi r0, 1
/* 80D62460  40 82 00 10 */	bne lbl_80D62470
/* 80D62464  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D62468  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80D6246C  48 00 00 08 */	b lbl_80D62474
lbl_80D62470:
/* 80D62470  FF C0 08 90 */	fmr f30, f1
lbl_80D62474:
/* 80D62474  38 61 00 78 */	addi r3, r1, 0x78
/* 80D62478  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80D6247C  4B 50 4A CC */	b normalizeZP__4cXyzFv
/* 80D62480  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80D62484  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D62488  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D6248C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D62490  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80D62494  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D62498  38 61 00 30 */	addi r3, r1, 0x30
/* 80D6249C  4B 5E 4C 9C */	b PSVECSquareMag
/* 80D624A0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D624A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D624A8  40 81 00 58 */	ble lbl_80D62500
/* 80D624AC  FC 00 08 34 */	frsqrte f0, f1
/* 80D624B0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80D624B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D624B8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80D624BC  FC 00 00 32 */	fmul f0, f0, f0
/* 80D624C0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D624C4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D624C8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D624CC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D624D0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D624D4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D624D8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D624DC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D624E0  FC 44 00 32 */	fmul f2, f4, f0
/* 80D624E4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D624E8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D624EC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D624F0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D624F4  FC 21 00 32 */	fmul f1, f1, f0
/* 80D624F8  FC 20 08 18 */	frsp f1, f1
/* 80D624FC  48 00 00 88 */	b lbl_80D62584
lbl_80D62500:
/* 80D62500  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80D62504  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D62508  40 80 00 10 */	bge lbl_80D62518
/* 80D6250C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D62510  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D62514  48 00 00 70 */	b lbl_80D62584
lbl_80D62518:
/* 80D62518  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D6251C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80D62520  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D62524  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D62528  7C 03 00 00 */	cmpw r3, r0
/* 80D6252C  41 82 00 14 */	beq lbl_80D62540
/* 80D62530  40 80 00 40 */	bge lbl_80D62570
/* 80D62534  2C 03 00 00 */	cmpwi r3, 0
/* 80D62538  41 82 00 20 */	beq lbl_80D62558
/* 80D6253C  48 00 00 34 */	b lbl_80D62570
lbl_80D62540:
/* 80D62540  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D62544  41 82 00 0C */	beq lbl_80D62550
/* 80D62548  38 00 00 01 */	li r0, 1
/* 80D6254C  48 00 00 28 */	b lbl_80D62574
lbl_80D62550:
/* 80D62550  38 00 00 02 */	li r0, 2
/* 80D62554  48 00 00 20 */	b lbl_80D62574
lbl_80D62558:
/* 80D62558  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D6255C  41 82 00 0C */	beq lbl_80D62568
/* 80D62560  38 00 00 05 */	li r0, 5
/* 80D62564  48 00 00 10 */	b lbl_80D62574
lbl_80D62568:
/* 80D62568  38 00 00 03 */	li r0, 3
/* 80D6256C  48 00 00 08 */	b lbl_80D62574
lbl_80D62570:
/* 80D62570  38 00 00 04 */	li r0, 4
lbl_80D62574:
/* 80D62574  2C 00 00 01 */	cmpwi r0, 1
/* 80D62578  40 82 00 0C */	bne lbl_80D62584
/* 80D6257C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D62580  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D62584:
/* 80D62584  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80D62588  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D6258C  40 81 00 48 */	ble lbl_80D625D4
/* 80D62590  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80D62594  EC 20 08 24 */	fdivs f1, f0, f1
/* 80D62598  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 80D6259C  40 81 00 38 */	ble lbl_80D625D4
/* 80D625A0  38 61 00 6C */	addi r3, r1, 0x6c
/* 80D625A4  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80D625A8  4B 50 45 DC */	b __ml__4cXyzCFf
/* 80D625AC  38 61 00 60 */	addi r3, r1, 0x60
/* 80D625B0  7F C4 F3 78 */	mr r4, r30
/* 80D625B4  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80D625B8  4B 50 45 2C */	b __pl__4cXyzCFRC3Vec
/* 80D625BC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80D625C0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80D625C4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80D625C8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80D625CC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80D625D0  D0 01 00 D4 */	stfs f0, 0xd4(r1)
lbl_80D625D4:
/* 80D625D4  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80D625D8  7F A4 EB 78 */	mr r4, r29
/* 80D625DC  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 80D625E0  38 C1 00 20 */	addi r6, r1, 0x20
/* 80D625E4  4B 50 61 2C */	b cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80D625E8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D625EC  48 00 00 44 */	b lbl_80D62630
lbl_80D625F0:
/* 80D625F0  88 19 00 05 */	lbz r0, 5(r25)
/* 80D625F4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D625F8  41 82 00 34 */	beq lbl_80D6262C
/* 80D625FC  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80D62600  38 9C 00 04 */	addi r4, r28, 4
/* 80D62604  80 B9 00 08 */	lwz r5, 8(r25)
/* 80D62608  38 A5 00 04 */	addi r5, r5, 4
/* 80D6260C  4B 50 CD 10 */	b SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 80D62610  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80D62614  7F A4 EB 78 */	mr r4, r29
/* 80D62618  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 80D6261C  38 C1 00 20 */	addi r6, r1, 0x20
/* 80D62620  4B 50 60 F0 */	b cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80D62624  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D62628  48 00 00 08 */	b lbl_80D62630
lbl_80D6262C:
/* 80D6262C  38 00 00 00 */	li r0, 0
lbl_80D62630:
/* 80D62630  2C 00 00 00 */	cmpwi r0, 0
/* 80D62634  40 82 02 C0 */	bne lbl_80D628F4
/* 80D62638  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80D6263C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80D62640  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80D62644  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80D62648  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80D6264C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80D62650  88 19 00 05 */	lbz r0, 5(r25)
/* 80D62654  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D62658  40 82 02 9C */	bne lbl_80D628F4
/* 80D6265C  2C 1A 00 00 */	cmpwi r26, 0
/* 80D62660  41 82 00 14 */	beq lbl_80D62674
/* 80D62664  A0 79 00 00 */	lhz r3, 0(r25)
/* 80D62668  38 03 FF FF */	addi r0, r3, -1
/* 80D6266C  7C 1A 00 00 */	cmpw r26, r0
/* 80D62670  40 82 02 84 */	bne lbl_80D628F4
lbl_80D62674:
/* 80D62674  2C 1A 00 00 */	cmpwi r26, 0
/* 80D62678  40 82 00 0C */	bne lbl_80D62684
/* 80D6267C  38 7C 00 10 */	addi r3, r28, 0x10
/* 80D62680  48 00 00 08 */	b lbl_80D62688
lbl_80D62684:
/* 80D62684  38 7C FF F0 */	addi r3, r28, -16
lbl_80D62688:
/* 80D62688  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80D6268C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80D62690  EC 61 00 28 */	fsubs f3, f1, f0
/* 80D62694  C0 23 00 08 */	lfs f1, 8(r3)
/* 80D62698  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80D6269C  EC 41 00 28 */	fsubs f2, f1, f0
/* 80D626A0  C0 23 00 04 */	lfs f1, 4(r3)
/* 80D626A4  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80D626A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D626AC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80D626B0  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 80D626B4  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 80D626B8  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80D626BC  4B 5E 4A 7C */	b PSVECSquareMag
/* 80D626C0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D626C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D626C8  40 81 00 58 */	ble lbl_80D62720
/* 80D626CC  FC 00 08 34 */	frsqrte f0, f1
/* 80D626D0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80D626D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D626D8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80D626DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80D626E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D626E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D626E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D626EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D626F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D626F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D626F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D626FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D62700  FC 44 00 32 */	fmul f2, f4, f0
/* 80D62704  FC 00 00 32 */	fmul f0, f0, f0
/* 80D62708  FC 01 00 32 */	fmul f0, f1, f0
/* 80D6270C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D62710  FC 02 00 32 */	fmul f0, f2, f0
/* 80D62714  FF C1 00 32 */	fmul f30, f1, f0
/* 80D62718  FF C0 F0 18 */	frsp f30, f30
/* 80D6271C  48 00 00 90 */	b lbl_80D627AC
lbl_80D62720:
/* 80D62720  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80D62724  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D62728  40 80 00 10 */	bge lbl_80D62738
/* 80D6272C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D62730  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80D62734  48 00 00 78 */	b lbl_80D627AC
lbl_80D62738:
/* 80D62738  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D6273C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80D62740  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D62744  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D62748  7C 03 00 00 */	cmpw r3, r0
/* 80D6274C  41 82 00 14 */	beq lbl_80D62760
/* 80D62750  40 80 00 40 */	bge lbl_80D62790
/* 80D62754  2C 03 00 00 */	cmpwi r3, 0
/* 80D62758  41 82 00 20 */	beq lbl_80D62778
/* 80D6275C  48 00 00 34 */	b lbl_80D62790
lbl_80D62760:
/* 80D62760  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D62764  41 82 00 0C */	beq lbl_80D62770
/* 80D62768  38 00 00 01 */	li r0, 1
/* 80D6276C  48 00 00 28 */	b lbl_80D62794
lbl_80D62770:
/* 80D62770  38 00 00 02 */	li r0, 2
/* 80D62774  48 00 00 20 */	b lbl_80D62794
lbl_80D62778:
/* 80D62778  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D6277C  41 82 00 0C */	beq lbl_80D62788
/* 80D62780  38 00 00 05 */	li r0, 5
/* 80D62784  48 00 00 10 */	b lbl_80D62794
lbl_80D62788:
/* 80D62788  38 00 00 03 */	li r0, 3
/* 80D6278C  48 00 00 08 */	b lbl_80D62794
lbl_80D62790:
/* 80D62790  38 00 00 04 */	li r0, 4
lbl_80D62794:
/* 80D62794  2C 00 00 01 */	cmpwi r0, 1
/* 80D62798  40 82 00 10 */	bne lbl_80D627A8
/* 80D6279C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D627A0  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80D627A4  48 00 00 08 */	b lbl_80D627AC
lbl_80D627A8:
/* 80D627A8  FF C0 08 90 */	fmr f30, f1
lbl_80D627AC:
/* 80D627AC  38 61 00 54 */	addi r3, r1, 0x54
/* 80D627B0  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80D627B4  4B 50 47 94 */	b normalizeZP__4cXyzFv
/* 80D627B8  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80D627BC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D627C0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D627C4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D627C8  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80D627CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D627D0  38 61 00 24 */	addi r3, r1, 0x24
/* 80D627D4  4B 5E 49 64 */	b PSVECSquareMag
/* 80D627D8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D627DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D627E0  40 81 00 58 */	ble lbl_80D62838
/* 80D627E4  FC 00 08 34 */	frsqrte f0, f1
/* 80D627E8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80D627EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D627F0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80D627F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D627F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D627FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D62800  FC 02 00 32 */	fmul f0, f2, f0
/* 80D62804  FC 44 00 32 */	fmul f2, f4, f0
/* 80D62808  FC 00 00 32 */	fmul f0, f0, f0
/* 80D6280C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D62810  FC 03 00 28 */	fsub f0, f3, f0
/* 80D62814  FC 02 00 32 */	fmul f0, f2, f0
/* 80D62818  FC 44 00 32 */	fmul f2, f4, f0
/* 80D6281C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D62820  FC 01 00 32 */	fmul f0, f1, f0
/* 80D62824  FC 03 00 28 */	fsub f0, f3, f0
/* 80D62828  FC 02 00 32 */	fmul f0, f2, f0
/* 80D6282C  FC 21 00 32 */	fmul f1, f1, f0
/* 80D62830  FC 20 08 18 */	frsp f1, f1
/* 80D62834  48 00 00 88 */	b lbl_80D628BC
lbl_80D62838:
/* 80D62838  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80D6283C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D62840  40 80 00 10 */	bge lbl_80D62850
/* 80D62844  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D62848  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D6284C  48 00 00 70 */	b lbl_80D628BC
lbl_80D62850:
/* 80D62850  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D62854  80 81 00 08 */	lwz r4, 8(r1)
/* 80D62858  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D6285C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D62860  7C 03 00 00 */	cmpw r3, r0
/* 80D62864  41 82 00 14 */	beq lbl_80D62878
/* 80D62868  40 80 00 40 */	bge lbl_80D628A8
/* 80D6286C  2C 03 00 00 */	cmpwi r3, 0
/* 80D62870  41 82 00 20 */	beq lbl_80D62890
/* 80D62874  48 00 00 34 */	b lbl_80D628A8
lbl_80D62878:
/* 80D62878  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D6287C  41 82 00 0C */	beq lbl_80D62888
/* 80D62880  38 00 00 01 */	li r0, 1
/* 80D62884  48 00 00 28 */	b lbl_80D628AC
lbl_80D62888:
/* 80D62888  38 00 00 02 */	li r0, 2
/* 80D6288C  48 00 00 20 */	b lbl_80D628AC
lbl_80D62890:
/* 80D62890  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D62894  41 82 00 0C */	beq lbl_80D628A0
/* 80D62898  38 00 00 05 */	li r0, 5
/* 80D6289C  48 00 00 10 */	b lbl_80D628AC
lbl_80D628A0:
/* 80D628A0  38 00 00 03 */	li r0, 3
/* 80D628A4  48 00 00 08 */	b lbl_80D628AC
lbl_80D628A8:
/* 80D628A8  38 00 00 04 */	li r0, 4
lbl_80D628AC:
/* 80D628AC  2C 00 00 01 */	cmpwi r0, 1
/* 80D628B0  40 82 00 0C */	bne lbl_80D628BC
/* 80D628B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D628B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D628BC:
/* 80D628BC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80D628C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D628C4  40 81 00 30 */	ble lbl_80D628F4
/* 80D628C8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80D628CC  EC 20 08 24 */	fdivs f1, f0, f1
/* 80D628D0  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 80D628D4  40 81 00 20 */	ble lbl_80D628F4
/* 80D628D8  38 61 00 48 */	addi r3, r1, 0x48
/* 80D628DC  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80D628E0  4B 50 42 A4 */	b __ml__4cXyzCFf
/* 80D628E4  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80D628E8  38 81 00 48 */	addi r4, r1, 0x48
/* 80D628EC  7C 65 1B 78 */	mr r5, r3
/* 80D628F0  4B 5E 47 A0 */	b PSVECAdd
lbl_80D628F4:
/* 80D628F4  7F A3 EB 78 */	mr r3, r29
/* 80D628F8  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80D628FC  4B 5E 4A A0 */	b PSVECSquareDistance
/* 80D62900  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80D62904  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80D62908  40 81 00 24 */	ble lbl_80D6292C
/* 80D6290C  FF E0 08 90 */	fmr f31, f1
/* 80D62910  7F 5B D3 78 */	mr r27, r26
/* 80D62914  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80D62918  D0 18 00 00 */	stfs f0, 0(r24)
/* 80D6291C  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80D62920  D0 18 00 04 */	stfs f0, 4(r24)
/* 80D62924  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80D62928  D0 18 00 08 */	stfs f0, 8(r24)
lbl_80D6292C:
/* 80D6292C  3B 5A 00 01 */	addi r26, r26, 1
/* 80D62930  3B 9C 00 10 */	addi r28, r28, 0x10
lbl_80D62934:
/* 80D62934  A0 79 00 00 */	lhz r3, 0(r25)
/* 80D62938  7C 1A 18 00 */	cmpw r26, r3
/* 80D6293C  41 80 F7 50 */	blt lbl_80D6208C
/* 80D62940  3C 60 80 D6 */	lis r3, __vt__8cM3dGLin@ha
/* 80D62944  38 03 2C E8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80D62948  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80D6294C  7F 63 DB 78 */	mr r3, r27
/* 80D62950  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 80D62954  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80D62958  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 80D6295C  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 80D62960  39 61 01 00 */	addi r11, r1, 0x100
/* 80D62964  4B 5F F8 B0 */	b _restgpr_24
/* 80D62968  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80D6296C  7C 08 03 A6 */	mtlr r0
/* 80D62970  38 21 01 20 */	addi r1, r1, 0x120
/* 80D62974  4E 80 00 20 */	blr 
