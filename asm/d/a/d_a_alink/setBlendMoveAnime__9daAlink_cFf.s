lbl_800ADE14:
/* 800ADE14  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 800ADE18  7C 08 02 A6 */	mflr r0
/* 800ADE1C  90 01 01 04 */	stw r0, 0x104(r1)
/* 800ADE20  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 800ADE24  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 800ADE28  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 800ADE2C  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 800ADE30  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 800ADE34  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 800ADE38  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 800ADE3C  F3 81 00 C8 */	psq_st f28, 200(r1), 0, 0 /* qr0 */
/* 800ADE40  DB 61 00 B0 */	stfd f27, 0xb0(r1)
/* 800ADE44  F3 61 00 B8 */	psq_st f27, 184(r1), 0, 0 /* qr0 */
/* 800ADE48  DB 41 00 A0 */	stfd f26, 0xa0(r1)
/* 800ADE4C  F3 41 00 A8 */	psq_st f26, 168(r1), 0, 0 /* qr0 */
/* 800ADE50  DB 21 00 90 */	stfd f25, 0x90(r1)
/* 800ADE54  F3 21 00 98 */	psq_st f25, 152(r1), 0, 0 /* qr0 */
/* 800ADE58  DB 01 00 80 */	stfd f24, 0x80(r1)
/* 800ADE5C  F3 01 00 88 */	psq_st f24, 136(r1), 0, 0 /* qr0 */
/* 800ADE60  39 61 00 80 */	addi r11, r1, 0x80
/* 800ADE64  48 2B 43 59 */	bl _savegpr_21
/* 800ADE68  7C 7F 1B 78 */	mr r31, r3
/* 800ADE6C  FF 20 08 90 */	fmr f25, f1
/* 800ADE70  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800ADE74  3B 84 D6 58 */	addi r28, r4, lit_3757@l /* 0x8038D658@l */
/* 800ADE78  3B 5F 1F D0 */	addi r26, r31, 0x1fd0
/* 800ADE7C  3B 3F 1F E8 */	addi r25, r31, 0x1fe8
/* 800ADE80  4B FF FF 09 */	bl getMoveGroundAngleSpeedRate__9daAlink_cFv
/* 800ADE84  FF C0 08 90 */	fmr f30, f1
/* 800ADE88  38 7C 00 64 */	addi r3, r28, 0x64
/* 800ADE8C  C3 83 00 48 */	lfs f28, 0x48(r3)
/* 800ADE90  7F E3 FB 78 */	mr r3, r31
/* 800ADE94  48 06 7D 8D */	bl checkEventRun__9daAlink_cCFv
/* 800ADE98  7C 7D 1B 78 */	mr r29, r3
/* 800ADE9C  7F E3 FB 78 */	mr r3, r31
/* 800ADEA0  38 80 00 01 */	li r4, 1
/* 800ADEA4  48 03 46 79 */	bl checkBootsMoveAnime__9daAlink_cFi
/* 800ADEA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 800ADEAC  41 82 00 10 */	beq lbl_800ADEBC
/* 800ADEB0  C3 E2 92 B8 */	lfs f31, lit_6040(r2)
/* 800ADEB4  FF A0 F8 90 */	fmr f29, f31
/* 800ADEB8  48 00 00 10 */	b lbl_800ADEC8
lbl_800ADEBC:
/* 800ADEBC  38 7C 00 64 */	addi r3, r28, 0x64
/* 800ADEC0  C3 E3 00 20 */	lfs f31, 0x20(r3)
/* 800ADEC4  C3 A3 00 24 */	lfs f29, 0x24(r3)
lbl_800ADEC8:
/* 800ADEC8  88 7F 2F B3 */	lbz r3, 0x2fb3(r31)
/* 800ADECC  28 03 00 00 */	cmplwi r3, 0
/* 800ADED0  41 82 00 0C */	beq lbl_800ADEDC
/* 800ADED4  38 03 FF FF */	addi r0, r3, -1
/* 800ADED8  98 1F 2F B3 */	stb r0, 0x2fb3(r31)
lbl_800ADEDC:
/* 800ADEDC  80 7F 27 E0 */	lwz r3, 0x27e0(r31)
/* 800ADEE0  38 80 00 00 */	li r4, 0
/* 800ADEE4  4B FC 56 59 */	bl LockonTarget__12dAttention_cFl
/* 800ADEE8  7C 75 1B 78 */	mr r21, r3
/* 800ADEEC  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800ADEF0  28 00 02 62 */	cmplwi r0, 0x262
/* 800ADEF4  40 82 00 0C */	bne lbl_800ADF00
/* 800ADEF8  3B 60 01 14 */	li r27, 0x114
/* 800ADEFC  48 00 02 0C */	b lbl_800AE108
lbl_800ADF00:
/* 800ADF00  2C 1D 00 00 */	cmpwi r29, 0
/* 800ADF04  40 82 00 38 */	bne lbl_800ADF3C
/* 800ADF08  28 15 00 00 */	cmplwi r21, 0
/* 800ADF0C  41 82 00 24 */	beq lbl_800ADF30
/* 800ADF10  48 02 E6 39 */	bl checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
/* 800ADF14  2C 03 00 00 */	cmpwi r3, 0
/* 800ADF18  40 82 00 4C */	bne lbl_800ADF64
/* 800ADF1C  7F E3 FB 78 */	mr r3, r31
/* 800ADF20  7E A4 AB 78 */	mr r4, r21
/* 800ADF24  48 03 A3 8D */	bl checkGoatCatchActor__9daAlink_cFP10fopAc_ac_c
/* 800ADF28  2C 03 00 00 */	cmpwi r3, 0
/* 800ADF2C  40 82 00 38 */	bne lbl_800ADF64
lbl_800ADF30:
/* 800ADF30  A8 1F 31 1C */	lha r0, 0x311c(r31)
/* 800ADF34  2C 00 00 00 */	cmpwi r0, 0
/* 800ADF38  40 82 00 2C */	bne lbl_800ADF64
lbl_800ADF3C:
/* 800ADF3C  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800ADF40  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800ADF44  40 82 00 20 */	bne lbl_800ADF64
/* 800ADF48  7F E3 FB 78 */	mr r3, r31
/* 800ADF4C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800ADF50  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800ADF54  7D 89 03 A6 */	mtctr r12
/* 800ADF58  4E 80 04 21 */	bctrl 
/* 800ADF5C  2C 03 00 00 */	cmpwi r3, 0
/* 800ADF60  41 82 00 14 */	beq lbl_800ADF74
lbl_800ADF64:
/* 800ADF64  3B 60 00 1A */	li r27, 0x1a
/* 800ADF68  38 00 00 2D */	li r0, 0x2d
/* 800ADF6C  98 1F 2F B3 */	stb r0, 0x2fb3(r31)
/* 800ADF70  48 00 01 98 */	b lbl_800AE108
lbl_800ADF74:
/* 800ADF74  2C 1D 00 00 */	cmpwi r29, 0
/* 800ADF78  40 82 01 5C */	bne lbl_800AE0D4
/* 800ADF7C  88 1F 2F B3 */	lbz r0, 0x2fb3(r31)
/* 800ADF80  28 00 00 00 */	cmplwi r0, 0
/* 800ADF84  40 82 01 48 */	bne lbl_800AE0CC
/* 800ADF88  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800ADF8C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800ADF90  40 82 01 3C */	bne lbl_800AE0CC
/* 800ADF94  C0 3F 35 CC */	lfs f1, 0x35cc(r31)
/* 800ADF98  C0 1F 35 C4 */	lfs f0, 0x35c4(r31)
/* 800ADF9C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800ADFA0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800ADFA4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800ADFA8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 800ADFAC  38 61 00 24 */	addi r3, r1, 0x24
/* 800ADFB0  48 29 91 89 */	bl PSVECSquareMag
/* 800ADFB4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800ADFB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800ADFBC  40 81 00 58 */	ble lbl_800AE014
/* 800ADFC0  FC 00 08 34 */	frsqrte f0, f1
/* 800ADFC4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800ADFC8  FC 44 00 32 */	fmul f2, f4, f0
/* 800ADFCC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800ADFD0  FC 00 00 32 */	fmul f0, f0, f0
/* 800ADFD4  FC 01 00 32 */	fmul f0, f1, f0
/* 800ADFD8  FC 03 00 28 */	fsub f0, f3, f0
/* 800ADFDC  FC 02 00 32 */	fmul f0, f2, f0
/* 800ADFE0  FC 44 00 32 */	fmul f2, f4, f0
/* 800ADFE4  FC 00 00 32 */	fmul f0, f0, f0
/* 800ADFE8  FC 01 00 32 */	fmul f0, f1, f0
/* 800ADFEC  FC 03 00 28 */	fsub f0, f3, f0
/* 800ADFF0  FC 02 00 32 */	fmul f0, f2, f0
/* 800ADFF4  FC 44 00 32 */	fmul f2, f4, f0
/* 800ADFF8  FC 00 00 32 */	fmul f0, f0, f0
/* 800ADFFC  FC 01 00 32 */	fmul f0, f1, f0
/* 800AE000  FC 03 00 28 */	fsub f0, f3, f0
/* 800AE004  FC 02 00 32 */	fmul f0, f2, f0
/* 800AE008  FC 21 00 32 */	fmul f1, f1, f0
/* 800AE00C  FC 20 08 18 */	frsp f1, f1
/* 800AE010  48 00 00 88 */	b lbl_800AE098
lbl_800AE014:
/* 800AE014  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800AE018  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AE01C  40 80 00 10 */	bge lbl_800AE02C
/* 800AE020  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800AE024  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800AE028  48 00 00 70 */	b lbl_800AE098
lbl_800AE02C:
/* 800AE02C  D0 21 00 08 */	stfs f1, 8(r1)
/* 800AE030  80 81 00 08 */	lwz r4, 8(r1)
/* 800AE034  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800AE038  3C 00 7F 80 */	lis r0, 0x7f80
/* 800AE03C  7C 03 00 00 */	cmpw r3, r0
/* 800AE040  41 82 00 14 */	beq lbl_800AE054
/* 800AE044  40 80 00 40 */	bge lbl_800AE084
/* 800AE048  2C 03 00 00 */	cmpwi r3, 0
/* 800AE04C  41 82 00 20 */	beq lbl_800AE06C
/* 800AE050  48 00 00 34 */	b lbl_800AE084
lbl_800AE054:
/* 800AE054  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800AE058  41 82 00 0C */	beq lbl_800AE064
/* 800AE05C  38 00 00 01 */	li r0, 1
/* 800AE060  48 00 00 28 */	b lbl_800AE088
lbl_800AE064:
/* 800AE064  38 00 00 02 */	li r0, 2
/* 800AE068  48 00 00 20 */	b lbl_800AE088
lbl_800AE06C:
/* 800AE06C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800AE070  41 82 00 0C */	beq lbl_800AE07C
/* 800AE074  38 00 00 05 */	li r0, 5
/* 800AE078  48 00 00 10 */	b lbl_800AE088
lbl_800AE07C:
/* 800AE07C  38 00 00 03 */	li r0, 3
/* 800AE080  48 00 00 08 */	b lbl_800AE088
lbl_800AE084:
/* 800AE084  38 00 00 04 */	li r0, 4
lbl_800AE088:
/* 800AE088  2C 00 00 01 */	cmpwi r0, 1
/* 800AE08C  40 82 00 0C */	bne lbl_800AE098
/* 800AE090  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800AE094  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800AE098:
/* 800AE098  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AE09C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AE0A0  41 81 00 2C */	bgt lbl_800AE0CC
/* 800AE0A4  7F E3 FB 78 */	mr r3, r31
/* 800AE0A8  38 80 00 1A */	li r4, 0x1a
/* 800AE0AC  4B FF E4 AD */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800AE0B0  2C 03 00 00 */	cmpwi r3, 0
/* 800AE0B4  41 82 00 20 */	beq lbl_800AE0D4
/* 800AE0B8  7F 43 D3 78 */	mr r3, r26
/* 800AE0BC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800AE0C0  48 27 A3 6D */	bl checkPass__12J3DFrameCtrlFf
/* 800AE0C4  2C 03 00 00 */	cmpwi r3, 0
/* 800AE0C8  40 82 00 0C */	bne lbl_800AE0D4
lbl_800AE0CC:
/* 800AE0CC  3B 60 00 1A */	li r27, 0x1a
/* 800AE0D0  48 00 00 38 */	b lbl_800AE108
lbl_800AE0D4:
/* 800AE0D4  7F E3 FB 78 */	mr r3, r31
/* 800AE0D8  48 00 53 0D */	bl checkRestHPAnime__9daAlink_cFv
/* 800AE0DC  2C 03 00 00 */	cmpwi r3, 0
/* 800AE0E0  41 82 00 1C */	beq lbl_800AE0FC
/* 800AE0E4  7F E3 FB 78 */	mr r3, r31
/* 800AE0E8  48 02 ED 09 */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800AE0EC  2C 03 00 00 */	cmpwi r3, 0
/* 800AE0F0  40 82 00 0C */	bne lbl_800AE0FC
/* 800AE0F4  3B 60 00 B6 */	li r27, 0xb6
/* 800AE0F8  48 00 00 08 */	b lbl_800AE100
lbl_800AE0FC:
/* 800AE0FC  3B 60 00 19 */	li r27, 0x19
lbl_800AE100:
/* 800AE100  38 00 00 00 */	li r0, 0
/* 800AE104  98 1F 2F B3 */	stb r0, 0x2fb3(r31)
lbl_800AE108:
/* 800AE108  3B 40 00 12 */	li r26, 0x12
/* 800AE10C  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800AE110  28 00 00 26 */	cmplwi r0, 0x26
/* 800AE114  38 00 00 13 */	li r0, 0x13
/* 800AE118  40 82 00 08 */	bne lbl_800AE120
/* 800AE11C  38 00 00 1C */	li r0, 0x1c
lbl_800AE120:
/* 800AE120  7C 18 03 78 */	mr r24, r0
/* 800AE124  C3 62 94 64 */	lfs f27, lit_14954(r2)
/* 800AE128  C3 42 92 C4 */	lfs f26, lit_6109(r2)
/* 800AE12C  2C 1E 00 00 */	cmpwi r30, 0
/* 800AE130  41 82 01 00 */	beq lbl_800AE230
/* 800AE134  7F E3 FB 78 */	mr r3, r31
/* 800AE138  38 80 00 00 */	li r4, 0
/* 800AE13C  48 03 43 E1 */	bl checkBootsMoveAnime__9daAlink_cFi
/* 800AE140  2C 03 00 00 */	cmpwi r3, 0
/* 800AE144  41 82 00 88 */	beq lbl_800AE1CC
/* 800AE148  3B 40 00 0E */	li r26, 0xe
/* 800AE14C  38 7C 11 9C */	addi r3, r28, 0x119c
/* 800AE150  C3 83 00 18 */	lfs f28, 0x18(r3)
/* 800AE154  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800AE158  C0 1F 34 34 */	lfs f0, 0x3434(r31)
/* 800AE15C  EC 00 00 32 */	fmuls f0, f0, f0
/* 800AE160  EC 01 00 24 */	fdivs f0, f1, f0
/* 800AE164  EF DE 00 32 */	fmuls f30, f30, f0
/* 800AE168  7F E3 FB 78 */	mr r3, r31
/* 800AE16C  38 80 00 01 */	li r4, 1
/* 800AE170  38 A0 00 00 */	li r5, 0
/* 800AE174  48 00 D3 45 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800AE178  2C 03 00 00 */	cmpwi r3, 0
/* 800AE17C  41 82 00 28 */	beq lbl_800AE1A4
/* 800AE180  C0 3F 2B A8 */	lfs f1, 0x2ba8(r31)
/* 800AE184  C0 02 94 0C */	lfs f0, lit_14614(r2)
/* 800AE188  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AE18C  40 80 00 18 */	bge lbl_800AE1A4
/* 800AE190  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800AE194  38 7C 11 9C */	addi r3, r28, 0x119c
/* 800AE198  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800AE19C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800AE1A0  48 00 00 0C */	b lbl_800AE1AC
lbl_800AE1A4:
/* 800AE1A4  38 7C 11 9C */	addi r3, r28, 0x119c
/* 800AE1A8  C0 03 00 1C */	lfs f0, 0x1c(r3)
lbl_800AE1AC:
/* 800AE1AC  38 7C 11 9C */	addi r3, r28, 0x119c
/* 800AE1B0  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 800AE1B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 800AE1B8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 800AE1BC  EF E1 00 2A */	fadds f31, f1, f0
/* 800AE1C0  C3 62 92 C0 */	lfs f27, lit_6108(r2)
/* 800AE1C4  C3 42 94 74 */	lfs f26, lit_15341(r2)
/* 800AE1C8  48 00 00 44 */	b lbl_800AE20C
lbl_800AE1CC:
/* 800AE1CC  3B 60 01 60 */	li r27, 0x160
/* 800AE1D0  3B 40 01 61 */	li r26, 0x161
/* 800AE1D4  38 7C 14 18 */	addi r3, r28, 0x1418
/* 800AE1D8  C3 83 00 80 */	lfs f28, 0x80(r3)
/* 800AE1DC  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800AE1E0  C0 1F 34 34 */	lfs f0, 0x3434(r31)
/* 800AE1E4  EC 00 00 32 */	fmuls f0, f0, f0
/* 800AE1E8  EC 01 00 24 */	fdivs f0, f1, f0
/* 800AE1EC  EF DE 00 32 */	fmuls f30, f30, f0
/* 800AE1F0  C0 23 00 88 */	lfs f1, 0x88(r3)
/* 800AE1F4  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 800AE1F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 800AE1FC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 800AE200  EF E1 00 2A */	fadds f31, f1, f0
/* 800AE204  C3 62 93 C0 */	lfs f27, lit_10193(r2)
/* 800AE208  C3 42 92 C4 */	lfs f26, lit_6109(r2)
lbl_800AE20C:
/* 800AE20C  38 7C 00 64 */	addi r3, r28, 0x64
/* 800AE210  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 800AE214  EF DE 00 72 */	fmuls f30, f30, f1
/* 800AE218  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 800AE21C  4C 41 13 82 */	cror 2, 1, 2
/* 800AE220  40 82 00 44 */	bne lbl_800AE264
/* 800AE224  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 800AE228  EF C1 00 28 */	fsubs f30, f1, f0
/* 800AE22C  48 00 00 38 */	b lbl_800AE264
lbl_800AE230:
/* 800AE230  7F E3 FB 78 */	mr r3, r31
/* 800AE234  48 00 3F B9 */	bl checkSlope__9daAlink_cCFv
/* 800AE238  2C 03 00 00 */	cmpwi r3, 0
/* 800AE23C  41 82 00 28 */	beq lbl_800AE264
/* 800AE240  3B 40 00 BC */	li r26, 0xbc
/* 800AE244  3B 00 00 BC */	li r24, 0xbc
/* 800AE248  38 7C 02 74 */	addi r3, r28, 0x274
/* 800AE24C  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 800AE250  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 800AE254  EC 00 08 28 */	fsubs f0, f0, f1
/* 800AE258  EC 1E 00 32 */	fmuls f0, f30, f0
/* 800AE25C  EF E1 00 2A */	fadds f31, f1, f0
/* 800AE260  FF A0 F8 90 */	fmr f29, f31
lbl_800AE264:
/* 800AE264  38 7C 00 64 */	addi r3, r28, 0x64
/* 800AE268  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 800AE26C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800AE270  40 80 05 48 */	bge lbl_800AE7B8
/* 800AE274  EF BE 00 24 */	fdivs f29, f30, f0
/* 800AE278  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800AE27C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AE280  40 82 00 14 */	bne lbl_800AE294
/* 800AE284  7F E3 FB 78 */	mr r3, r31
/* 800AE288  48 00 56 7D */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800AE28C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AE290  41 82 04 0C */	beq lbl_800AE69C
lbl_800AE294:
/* 800AE294  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AE298  D0 1F 33 9C */	stfs f0, 0x339c(r31)
/* 800AE29C  7F E3 FB 78 */	mr r3, r31
/* 800AE2A0  48 02 EB 51 */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800AE2A4  2C 03 00 00 */	cmpwi r3, 0
/* 800AE2A8  40 82 00 A8 */	bne lbl_800AE350
/* 800AE2AC  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800AE2B0  28 00 01 02 */	cmplwi r0, 0x102
/* 800AE2B4  40 82 00 34 */	bne lbl_800AE2E8
/* 800AE2B8  82 FF 27 E0 */	lwz r23, 0x27e0(r31)
/* 800AE2BC  3A C0 00 01 */	li r22, 1
/* 800AE2C0  7E E3 BB 78 */	mr r3, r23
/* 800AE2C4  4B FC 55 21 */	bl LockonTruth__12dAttention_cFv
/* 800AE2C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AE2CC  40 82 00 14 */	bne lbl_800AE2E0
/* 800AE2D0  80 17 03 34 */	lwz r0, 0x334(r23)
/* 800AE2D4  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800AE2D8  40 82 00 08 */	bne lbl_800AE2E0
/* 800AE2DC  3A C0 00 00 */	li r22, 0
lbl_800AE2E0:
/* 800AE2E0  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 800AE2E4  40 82 00 6C */	bne lbl_800AE350
lbl_800AE2E8:
/* 800AE2E8  38 60 00 00 */	li r3, 0
/* 800AE2EC  A0 9F 1F BC */	lhz r4, 0x1fbc(r31)
/* 800AE2F0  28 04 00 62 */	cmplwi r4, 0x62
/* 800AE2F4  41 82 00 10 */	beq lbl_800AE304
/* 800AE2F8  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 800AE2FC  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800AE300  40 82 00 08 */	bne lbl_800AE308
lbl_800AE304:
/* 800AE304  38 60 00 01 */	li r3, 1
lbl_800AE308:
/* 800AE308  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AE30C  40 82 00 44 */	bne lbl_800AE350
/* 800AE310  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 800AE314  28 04 00 16 */	cmplwi r4, 0x16
/* 800AE318  41 82 00 38 */	beq lbl_800AE350
/* 800AE31C  38 60 00 00 */	li r3, 0
/* 800AE320  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800AE324  28 00 00 46 */	cmplwi r0, 0x46
/* 800AE328  40 82 00 10 */	bne lbl_800AE338
/* 800AE32C  28 04 00 53 */	cmplwi r4, 0x53
/* 800AE330  40 82 00 08 */	bne lbl_800AE338
/* 800AE334  38 60 00 01 */	li r3, 1
lbl_800AE338:
/* 800AE338  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AE33C  40 82 00 14 */	bne lbl_800AE350
/* 800AE340  7F E3 FB 78 */	mr r3, r31
/* 800AE344  48 03 21 69 */	bl checkBoomerangThrowAnime__9daAlink_cCFv
/* 800AE348  2C 03 00 00 */	cmpwi r3, 0
/* 800AE34C  41 82 01 1C */	beq lbl_800AE468
lbl_800AE350:
/* 800AE350  7F E3 FB 78 */	mr r3, r31
/* 800AE354  48 03 21 59 */	bl checkBoomerangThrowAnime__9daAlink_cCFv
/* 800AE358  2C 03 00 00 */	cmpwi r3, 0
/* 800AE35C  40 82 00 A0 */	bne lbl_800AE3FC
/* 800AE360  38 60 00 00 */	li r3, 0
/* 800AE364  A0 9F 2F DC */	lhz r4, 0x2fdc(r31)
/* 800AE368  28 04 00 46 */	cmplwi r4, 0x46
/* 800AE36C  40 82 00 14 */	bne lbl_800AE380
/* 800AE370  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800AE374  28 00 00 53 */	cmplwi r0, 0x53
/* 800AE378  40 82 00 08 */	bne lbl_800AE380
/* 800AE37C  38 60 00 01 */	li r3, 1
lbl_800AE380:
/* 800AE380  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AE384  40 82 00 78 */	bne lbl_800AE3FC
/* 800AE388  28 04 01 02 */	cmplwi r4, 0x102
/* 800AE38C  40 82 00 34 */	bne lbl_800AE3C0
/* 800AE390  82 FF 27 E0 */	lwz r23, 0x27e0(r31)
/* 800AE394  3A C0 00 01 */	li r22, 1
/* 800AE398  7E E3 BB 78 */	mr r3, r23
/* 800AE39C  4B FC 54 49 */	bl LockonTruth__12dAttention_cFv
/* 800AE3A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AE3A4  40 82 00 14 */	bne lbl_800AE3B8
/* 800AE3A8  80 17 03 34 */	lwz r0, 0x334(r23)
/* 800AE3AC  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800AE3B0  40 82 00 08 */	bne lbl_800AE3B8
/* 800AE3B4  3A C0 00 00 */	li r22, 0
lbl_800AE3B8:
/* 800AE3B8  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 800AE3BC  40 82 00 40 */	bne lbl_800AE3FC
lbl_800AE3C0:
/* 800AE3C0  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800AE3C4  28 00 00 02 */	cmplwi r0, 2
/* 800AE3C8  41 82 00 14 */	beq lbl_800AE3DC
/* 800AE3CC  7F E3 FB 78 */	mr r3, r31
/* 800AE3D0  4B FF F8 81 */	bl checkAtnLeftAnime__9daAlink_cFv
/* 800AE3D4  2C 03 00 00 */	cmpwi r3, 0
/* 800AE3D8  41 82 00 24 */	beq lbl_800AE3FC
lbl_800AE3DC:
/* 800AE3DC  38 80 00 10 */	li r4, 0x10
/* 800AE3E0  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800AE3E4  28 00 00 00 */	cmplwi r0, 0
/* 800AE3E8  41 82 00 0C */	beq lbl_800AE3F4
/* 800AE3EC  38 A0 00 07 */	li r5, 7
/* 800AE3F0  48 00 00 28 */	b lbl_800AE418
lbl_800AE3F4:
/* 800AE3F4  38 A0 00 06 */	li r5, 6
/* 800AE3F8  48 00 00 20 */	b lbl_800AE418
lbl_800AE3FC:
/* 800AE3FC  38 80 00 11 */	li r4, 0x11
/* 800AE400  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800AE404  28 00 00 00 */	cmplwi r0, 0
/* 800AE408  41 82 00 0C */	beq lbl_800AE414
/* 800AE40C  38 A0 00 09 */	li r5, 9
/* 800AE410  48 00 00 08 */	b lbl_800AE418
lbl_800AE414:
/* 800AE414  38 A0 00 06 */	li r5, 6
lbl_800AE418:
/* 800AE418  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800AE41C  28 00 00 00 */	cmplwi r0, 0
/* 800AE420  41 82 00 14 */	beq lbl_800AE434
/* 800AE424  38 7C 00 BC */	addi r3, r28, 0xbc
/* 800AE428  C0 43 00 08 */	lfs f2, 8(r3)
/* 800AE42C  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 800AE430  48 00 00 10 */	b lbl_800AE440
lbl_800AE434:
/* 800AE434  38 7C 01 10 */	addi r3, r28, 0x110
/* 800AE438  C0 43 00 08 */	lfs f2, 8(r3)
/* 800AE43C  C0 63 00 0C */	lfs f3, 0xc(r3)
lbl_800AE440:
/* 800AE440  2C 04 01 60 */	cmpwi r4, 0x160
/* 800AE444  40 82 00 0C */	bne lbl_800AE450
/* 800AE448  38 7C 14 18 */	addi r3, r28, 0x1418
/* 800AE44C  C0 43 00 18 */	lfs f2, 0x18(r3)
lbl_800AE450:
/* 800AE450  7F E3 FB 78 */	mr r3, r31
/* 800AE454  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800AE458  38 C0 00 02 */	li r6, 2
/* 800AE45C  FC 80 C8 90 */	fmr f4, f25
/* 800AE460  4B FF E5 B5 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800AE464  48 00 05 B4 */	b lbl_800AEA18
lbl_800AE468:
/* 800AE468  3A E0 00 02 */	li r23, 2
/* 800AE46C  A8 7F 2F E6 */	lha r3, 0x2fe6(r31)
/* 800AE470  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800AE474  7C 03 00 50 */	subf r0, r3, r0
/* 800AE478  7C 1E 07 34 */	extsh r30, r0
/* 800AE47C  7F C3 F3 78 */	mr r3, r30
/* 800AE480  48 2B 6C 51 */	bl abs
/* 800AE484  2C 03 00 64 */	cmpwi r3, 0x64
/* 800AE488  40 81 01 1C */	ble lbl_800AE5A4
/* 800AE48C  C0 1F 33 A8 */	lfs f0, 0x33a8(r31)
/* 800AE490  C0 42 94 A8 */	lfs f2, lit_16570(r2)
/* 800AE494  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800AE498  40 80 01 0C */	bge lbl_800AE5A4
/* 800AE49C  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800AE4A0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800AE4A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AE4A8  40 81 00 FC */	ble lbl_800AE5A4
/* 800AE4AC  C0 3F 33 A4 */	lfs f1, 0x33a4(r31)
/* 800AE4B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AE4B4  40 81 00 F0 */	ble lbl_800AE5A4
/* 800AE4B8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 800AE4BC  40 80 00 E8 */	bge lbl_800AE5A4
/* 800AE4C0  82 DF 27 E0 */	lwz r22, 0x27e0(r31)
/* 800AE4C4  3A A0 00 01 */	li r21, 1
/* 800AE4C8  7E C3 B3 78 */	mr r3, r22
/* 800AE4CC  4B FC 53 19 */	bl LockonTruth__12dAttention_cFv
/* 800AE4D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AE4D4  40 82 00 14 */	bne lbl_800AE4E8
/* 800AE4D8  80 16 03 34 */	lwz r0, 0x334(r22)
/* 800AE4DC  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800AE4E0  40 82 00 08 */	bne lbl_800AE4E8
/* 800AE4E4  3A A0 00 00 */	li r21, 0
lbl_800AE4E8:
/* 800AE4E8  56 A0 06 3F */	clrlwi. r0, r21, 0x18
/* 800AE4EC  40 82 00 B8 */	bne lbl_800AE5A4
/* 800AE4F0  2C 1B 00 B6 */	cmpwi r27, 0xb6
/* 800AE4F4  40 82 00 1C */	bne lbl_800AE510
/* 800AE4F8  7F C0 07 35 */	extsh. r0, r30
/* 800AE4FC  3B 40 00 18 */	li r26, 0x18
/* 800AE500  40 81 00 08 */	ble lbl_800AE508
/* 800AE504  3B 40 00 17 */	li r26, 0x17
lbl_800AE508:
/* 800AE508  C3 02 92 B8 */	lfs f24, lit_6040(r2)
/* 800AE50C  48 00 00 28 */	b lbl_800AE534
lbl_800AE510:
/* 800AE510  2C 1B 01 60 */	cmpwi r27, 0x160
/* 800AE514  40 82 00 08 */	bne lbl_800AE51C
/* 800AE518  3B 60 00 19 */	li r27, 0x19
lbl_800AE51C:
/* 800AE51C  7F C0 07 35 */	extsh. r0, r30
/* 800AE520  3B 40 00 16 */	li r26, 0x16
/* 800AE524  40 81 00 08 */	ble lbl_800AE52C
/* 800AE528  3B 40 00 15 */	li r26, 0x15
lbl_800AE52C:
/* 800AE52C  38 7C 00 64 */	addi r3, r28, 0x64
/* 800AE530  C3 03 00 1C */	lfs f24, 0x1c(r3)
lbl_800AE534:
/* 800AE534  7F C0 07 35 */	extsh. r0, r30
/* 800AE538  40 81 00 10 */	ble lbl_800AE548
/* 800AE53C  C3 62 93 8C */	lfs f27, lit_8783(r2)
/* 800AE540  C3 42 93 C8 */	lfs f26, lit_10286(r2)
/* 800AE544  48 00 00 0C */	b lbl_800AE550
lbl_800AE548:
/* 800AE548  C3 42 93 8C */	lfs f26, lit_8783(r2)
/* 800AE54C  C3 62 93 C8 */	lfs f27, lit_10286(r2)
lbl_800AE550:
/* 800AE550  38 7C 00 0C */	addi r3, r28, 0xc
/* 800AE554  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 800AE558  7F C3 F3 78 */	mr r3, r30
/* 800AE55C  48 2B 6B 75 */	bl abs
/* 800AE560  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800AE564  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800AE568  90 01 00 4C */	stw r0, 0x4c(r1)
/* 800AE56C  3C 00 43 30 */	lis r0, 0x4330
/* 800AE570  90 01 00 48 */	stw r0, 0x48(r1)
/* 800AE574  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 800AE578  EC 20 08 28 */	fsubs f1, f0, f1
/* 800AE57C  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 800AE580  EC 20 00 72 */	fmuls f1, f0, f1
/* 800AE584  C0 02 95 DC */	lfs f0, lit_27477(r2)
/* 800AE588  EF A0 08 2A */	fadds f29, f0, f1
/* 800AE58C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AE590  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 800AE594  40 81 00 08 */	ble lbl_800AE59C
/* 800AE598  FF A0 00 90 */	fmr f29, f0
lbl_800AE59C:
/* 800AE59C  3A E0 00 01 */	li r23, 1
/* 800AE5A0  48 00 01 44 */	b lbl_800AE6E4
lbl_800AE5A4:
/* 800AE5A4  C0 3F 35 B4 */	lfs f1, 0x35b4(r31)
/* 800AE5A8  C0 1F 35 AC */	lfs f0, 0x35ac(r31)
/* 800AE5AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800AE5B0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AE5B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800AE5B8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800AE5BC  38 61 00 18 */	addi r3, r1, 0x18
/* 800AE5C0  48 29 8B 79 */	bl PSVECSquareMag
/* 800AE5C4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AE5C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AE5CC  40 81 00 30 */	ble lbl_800AE5FC
/* 800AE5D0  2C 1D 00 00 */	cmpwi r29, 0
/* 800AE5D4  40 82 00 28 */	bne lbl_800AE5FC
/* 800AE5D8  2C 1B 00 19 */	cmpwi r27, 0x19
/* 800AE5DC  41 82 00 14 */	beq lbl_800AE5F0
/* 800AE5E0  2C 1B 00 B6 */	cmpwi r27, 0xb6
/* 800AE5E4  41 82 00 0C */	beq lbl_800AE5F0
/* 800AE5E8  2C 1B 00 1A */	cmpwi r27, 0x1a
/* 800AE5EC  40 82 00 10 */	bne lbl_800AE5FC
lbl_800AE5F0:
/* 800AE5F0  3B 60 00 FF */	li r27, 0xff
/* 800AE5F4  C3 02 92 B8 */	lfs f24, lit_6040(r2)
/* 800AE5F8  48 00 00 EC */	b lbl_800AE6E4
lbl_800AE5FC:
/* 800AE5FC  2C 1D 00 00 */	cmpwi r29, 0
/* 800AE600  40 82 00 4C */	bne lbl_800AE64C
/* 800AE604  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800AE608  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800AE60C  40 82 00 24 */	bne lbl_800AE630
/* 800AE610  7F E3 FB 78 */	mr r3, r31
/* 800AE614  48 05 74 85 */	bl checkSnowCode__9daAlink_cCFv
/* 800AE618  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AE61C  40 82 00 30 */	bne lbl_800AE64C
/* 800AE620  C0 3F 2B A8 */	lfs f1, 0x2ba8(r31)
/* 800AE624  C0 02 94 0C */	lfs f0, lit_14614(r2)
/* 800AE628  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AE62C  40 80 00 20 */	bge lbl_800AE64C
lbl_800AE630:
/* 800AE630  3B 60 01 85 */	li r27, 0x185
/* 800AE634  7F E3 FB 78 */	mr r3, r31
/* 800AE638  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010090@ha */
/* 800AE63C  38 84 00 90 */	addi r4, r4, 0x0090 /* 0x00010090@l */
/* 800AE640  48 01 0A 79 */	bl voiceStartLevel__9daAlink_cFUl
/* 800AE644  C3 02 92 B8 */	lfs f24, lit_6040(r2)
/* 800AE648  48 00 00 9C */	b lbl_800AE6E4
lbl_800AE64C:
/* 800AE64C  38 7C 00 64 */	addi r3, r28, 0x64
/* 800AE650  C3 03 00 1C */	lfs f24, 0x1c(r3)
/* 800AE654  2C 1B 00 B6 */	cmpwi r27, 0xb6
/* 800AE658  40 82 00 8C */	bne lbl_800AE6E4
/* 800AE65C  7F E3 FB 78 */	mr r3, r31
/* 800AE660  38 80 00 15 */	li r4, 0x15
/* 800AE664  4B FF DF 51 */	bl checkUnderMove1BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800AE668  2C 03 00 00 */	cmpwi r3, 0
/* 800AE66C  41 82 00 10 */	beq lbl_800AE67C
/* 800AE670  3B 40 00 17 */	li r26, 0x17
/* 800AE674  C3 22 92 C4 */	lfs f25, lit_6109(r2)
/* 800AE678  48 00 00 6C */	b lbl_800AE6E4
lbl_800AE67C:
/* 800AE67C  7F E3 FB 78 */	mr r3, r31
/* 800AE680  38 80 00 16 */	li r4, 0x16
/* 800AE684  4B FF DF 31 */	bl checkUnderMove1BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800AE688  2C 03 00 00 */	cmpwi r3, 0
/* 800AE68C  41 82 00 58 */	beq lbl_800AE6E4
/* 800AE690  3B 40 00 18 */	li r26, 0x18
/* 800AE694  C3 22 92 C4 */	lfs f25, lit_6109(r2)
/* 800AE698  48 00 00 4C */	b lbl_800AE6E4
lbl_800AE69C:
/* 800AE69C  2C 1B 00 B6 */	cmpwi r27, 0xb6
/* 800AE6A0  40 82 00 10 */	bne lbl_800AE6B0
/* 800AE6A4  38 7C 00 64 */	addi r3, r28, 0x64
/* 800AE6A8  C0 43 00 54 */	lfs f2, 0x54(r3)
/* 800AE6AC  48 00 00 0C */	b lbl_800AE6B8
lbl_800AE6B0:
/* 800AE6B0  38 7C 00 64 */	addi r3, r28, 0x64
/* 800AE6B4  C0 43 00 50 */	lfs f2, 0x50(r3)
lbl_800AE6B8:
/* 800AE6B8  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800AE6BC  EC 01 10 28 */	fsubs f0, f1, f2
/* 800AE6C0  EC 1D 00 32 */	fmuls f0, f29, f0
/* 800AE6C4  EF A2 00 2A */	fadds f29, f2, f0
/* 800AE6C8  EC 01 E0 28 */	fsubs f0, f1, f28
/* 800AE6CC  EC 00 07 72 */	fmuls f0, f0, f29
/* 800AE6D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800AE6D4  D0 1F 33 9C */	stfs f0, 0x339c(r31)
/* 800AE6D8  3A E0 00 01 */	li r23, 1
/* 800AE6DC  38 7C 00 64 */	addi r3, r28, 0x64
/* 800AE6E0  C3 03 00 1C */	lfs f24, 0x1c(r3)
lbl_800AE6E4:
/* 800AE6E4  2C 1B 01 60 */	cmpwi r27, 0x160
/* 800AE6E8  40 82 00 10 */	bne lbl_800AE6F8
/* 800AE6EC  38 7C 14 18 */	addi r3, r28, 0x1418
/* 800AE6F0  C3 03 00 18 */	lfs f24, 0x18(r3)
/* 800AE6F4  48 00 00 18 */	b lbl_800AE70C
lbl_800AE6F8:
/* 800AE6F8  2C 1B 01 14 */	cmpwi r27, 0x114
/* 800AE6FC  41 82 00 0C */	beq lbl_800AE708
/* 800AE700  2C 1B 00 B6 */	cmpwi r27, 0xb6
/* 800AE704  40 82 00 08 */	bne lbl_800AE70C
lbl_800AE708:
/* 800AE708  C3 02 92 B8 */	lfs f24, lit_6040(r2)
lbl_800AE70C:
/* 800AE70C  7F E3 FB 78 */	mr r3, r31
/* 800AE710  FC 20 E8 90 */	fmr f1, f29
/* 800AE714  FC 40 C0 90 */	fmr f2, f24
/* 800AE718  FC 60 F8 90 */	fmr f3, f31
/* 800AE71C  7F 64 DB 78 */	mr r4, r27
/* 800AE720  7F 45 D3 78 */	mr r5, r26
/* 800AE724  7E E6 BB 78 */	mr r6, r23
/* 800AE728  FC 80 C8 90 */	fmr f4, f25
/* 800AE72C  4B FF E2 E9 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800AE730  2C 1A 00 0E */	cmpwi r26, 0xe
/* 800AE734  40 82 01 D4 */	bne lbl_800AE908
/* 800AE738  88 1F 2F 8C */	lbz r0, 0x2f8c(r31)
/* 800AE73C  28 00 00 02 */	cmplwi r0, 2
/* 800AE740  40 82 00 30 */	bne lbl_800AE770
/* 800AE744  C0 3F 35 C0 */	lfs f1, 0x35c0(r31)
/* 800AE748  C0 1F 35 B8 */	lfs f0, 0x35b8(r31)
/* 800AE74C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800AE750  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AE754  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800AE758  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800AE75C  38 61 00 0C */	addi r3, r1, 0xc
/* 800AE760  48 29 89 D9 */	bl PSVECSquareMag
/* 800AE764  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AE768  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AE76C  41 81 00 14 */	bgt lbl_800AE780
lbl_800AE770:
/* 800AE770  7F E3 FB 78 */	mr r3, r31
/* 800AE774  4B FF 91 DD */	bl checkWindSpeedOnAngle__9daAlink_cCFv
/* 800AE778  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AE77C  41 82 01 8C */	beq lbl_800AE908
lbl_800AE780:
/* 800AE780  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800AE784  60 00 20 00 */	ori r0, r0, 0x2000
/* 800AE788  90 1F 05 88 */	stw r0, 0x588(r31)
/* 800AE78C  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800AE790  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AE794  40 82 01 74 */	bne lbl_800AE908
/* 800AE798  7F E3 FB 78 */	mr r3, r31
/* 800AE79C  38 80 00 CE */	li r4, 0xce
/* 800AE7A0  4B FF EB A1 */	bl setUpperAnimeBase__9daAlink_cFUs
/* 800AE7A4  38 00 00 01 */	li r0, 1
/* 800AE7A8  98 1F 2F 96 */	stb r0, 0x2f96(r31)
/* 800AE7AC  38 00 00 06 */	li r0, 6
/* 800AE7B0  98 1F 2F 97 */	stb r0, 0x2f97(r31)
/* 800AE7B4  48 00 01 54 */	b lbl_800AE908
lbl_800AE7B8:
/* 800AE7B8  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 800AE7BC  FC 1E 10 40 */	fcmpo cr0, f30, f2
/* 800AE7C0  40 80 00 9C */	bge lbl_800AE85C
/* 800AE7C4  EC 3E 00 28 */	fsubs f1, f30, f0
/* 800AE7C8  EC 02 00 28 */	fsubs f0, f2, f0
/* 800AE7CC  EF 01 00 24 */	fdivs f24, f1, f0
/* 800AE7D0  7F E3 FB 78 */	mr r3, r31
/* 800AE7D4  FC 20 C0 90 */	fmr f1, f24
/* 800AE7D8  FC 40 F8 90 */	fmr f2, f31
/* 800AE7DC  FC 60 E8 90 */	fmr f3, f29
/* 800AE7E0  7F 44 D3 78 */	mr r4, r26
/* 800AE7E4  7F 05 C3 78 */	mr r5, r24
/* 800AE7E8  38 C0 00 01 */	li r6, 1
/* 800AE7EC  FC 80 C8 90 */	fmr f4, f25
/* 800AE7F0  4B FF E2 25 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800AE7F4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AE7F8  EC 00 C0 28 */	fsubs f0, f0, f24
/* 800AE7FC  EC 1C 00 32 */	fmuls f0, f28, f0
/* 800AE800  D0 1F 33 9C */	stfs f0, 0x339c(r31)
/* 800AE804  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800AE808  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800AE80C  41 82 00 FC */	beq lbl_800AE908
/* 800AE810  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800AE814  FC 18 00 40 */	fcmpo cr0, f24, f0
/* 800AE818  40 81 00 F0 */	ble lbl_800AE908
/* 800AE81C  7F 23 CB 78 */	mr r3, r25
/* 800AE820  FC 20 D8 90 */	fmr f1, f27
/* 800AE824  48 27 9C 09 */	bl checkPass__12J3DFrameCtrlFf
/* 800AE828  2C 03 00 00 */	cmpwi r3, 0
/* 800AE82C  41 82 00 10 */	beq lbl_800AE83C
/* 800AE830  38 00 00 20 */	li r0, 0x20
/* 800AE834  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 800AE838  48 00 00 D0 */	b lbl_800AE908
lbl_800AE83C:
/* 800AE83C  7F 23 CB 78 */	mr r3, r25
/* 800AE840  FC 20 D0 90 */	fmr f1, f26
/* 800AE844  48 27 9B E9 */	bl checkPass__12J3DFrameCtrlFf
/* 800AE848  2C 03 00 00 */	cmpwi r3, 0
/* 800AE84C  41 82 00 BC */	beq lbl_800AE908
/* 800AE850  38 00 00 40 */	li r0, 0x40
/* 800AE854  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 800AE858  48 00 00 B0 */	b lbl_800AE908
lbl_800AE85C:
/* 800AE85C  7F E3 FB 78 */	mr r3, r31
/* 800AE860  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800AE864  FC 40 E8 90 */	fmr f2, f29
/* 800AE868  FC 60 E8 90 */	fmr f3, f29
/* 800AE86C  7F 04 C3 78 */	mr r4, r24
/* 800AE870  7F 05 C3 78 */	mr r5, r24
/* 800AE874  38 C0 00 01 */	li r6, 1
/* 800AE878  FC 80 C8 90 */	fmr f4, f25
/* 800AE87C  4B FF E1 99 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800AE880  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AE884  D0 1F 33 9C */	stfs f0, 0x339c(r31)
/* 800AE888  7F 23 CB 78 */	mr r3, r25
/* 800AE88C  FC 20 D8 90 */	fmr f1, f27
/* 800AE890  48 27 9B 9D */	bl checkPass__12J3DFrameCtrlFf
/* 800AE894  2C 03 00 00 */	cmpwi r3, 0
/* 800AE898  41 82 00 10 */	beq lbl_800AE8A8
/* 800AE89C  38 00 00 20 */	li r0, 0x20
/* 800AE8A0  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 800AE8A4  48 00 00 20 */	b lbl_800AE8C4
lbl_800AE8A8:
/* 800AE8A8  7F 23 CB 78 */	mr r3, r25
/* 800AE8AC  FC 20 D0 90 */	fmr f1, f26
/* 800AE8B0  48 27 9B 7D */	bl checkPass__12J3DFrameCtrlFf
/* 800AE8B4  2C 03 00 00 */	cmpwi r3, 0
/* 800AE8B8  41 82 00 0C */	beq lbl_800AE8C4
/* 800AE8BC  38 00 00 40 */	li r0, 0x40
/* 800AE8C0  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
lbl_800AE8C4:
/* 800AE8C4  7F E3 FB 78 */	mr r3, r31
/* 800AE8C8  4B FF 90 89 */	bl checkWindSpeedOnAngle__9daAlink_cCFv
/* 800AE8CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AE8D0  41 82 00 38 */	beq lbl_800AE908
/* 800AE8D4  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800AE8D8  60 00 20 00 */	ori r0, r0, 0x2000
/* 800AE8DC  90 1F 05 88 */	stw r0, 0x588(r31)
/* 800AE8E0  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800AE8E4  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AE8E8  40 82 00 20 */	bne lbl_800AE908
/* 800AE8EC  7F E3 FB 78 */	mr r3, r31
/* 800AE8F0  38 80 00 CE */	li r4, 0xce
/* 800AE8F4  4B FF EA 4D */	bl setUpperAnimeBase__9daAlink_cFUs
/* 800AE8F8  38 00 00 01 */	li r0, 1
/* 800AE8FC  98 1F 2F 96 */	stb r0, 0x2f96(r31)
/* 800AE900  38 00 00 06 */	li r0, 6
/* 800AE904  98 1F 2F 97 */	stb r0, 0x2f97(r31)
lbl_800AE908:
/* 800AE908  88 1F 2F 8C */	lbz r0, 0x2f8c(r31)
/* 800AE90C  28 00 00 02 */	cmplwi r0, 2
/* 800AE910  41 82 00 E0 */	beq lbl_800AE9F0
/* 800AE914  7F 23 CB 78 */	mr r3, r25
/* 800AE918  FC 20 D8 90 */	fmr f1, f27
/* 800AE91C  48 27 9B 11 */	bl checkPass__12J3DFrameCtrlFf
/* 800AE920  2C 03 00 00 */	cmpwi r3, 0
/* 800AE924  41 82 00 60 */	beq lbl_800AE984
/* 800AE928  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 800AE92C  60 00 00 10 */	ori r0, r0, 0x10
/* 800AE930  90 1F 05 84 */	stw r0, 0x584(r31)
/* 800AE934  7F E3 FB 78 */	mr r3, r31
/* 800AE938  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800AE93C  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800AE940  7D 89 03 A6 */	mtctr r12
/* 800AE944  4E 80 04 21 */	bctrl 
/* 800AE948  2C 03 00 00 */	cmpwi r3, 0
/* 800AE94C  41 82 00 A4 */	beq lbl_800AE9F0
/* 800AE950  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800AE954  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 800AE958  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AE95C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800AE960  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 800AE964  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AE968  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AE96C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800AE970  38 80 00 01 */	li r4, 1
/* 800AE974  38 A0 00 0F */	li r5, 0xf
/* 800AE978  38 C1 00 3C */	addi r6, r1, 0x3c
/* 800AE97C  4B FC 10 A9 */	bl StartShock__12dVibration_cFii4cXyz
/* 800AE980  48 00 00 70 */	b lbl_800AE9F0
lbl_800AE984:
/* 800AE984  7F 23 CB 78 */	mr r3, r25
/* 800AE988  FC 20 D0 90 */	fmr f1, f26
/* 800AE98C  48 27 9A A1 */	bl checkPass__12J3DFrameCtrlFf
/* 800AE990  2C 03 00 00 */	cmpwi r3, 0
/* 800AE994  41 82 00 5C */	beq lbl_800AE9F0
/* 800AE998  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 800AE99C  60 00 00 20 */	ori r0, r0, 0x20
/* 800AE9A0  90 1F 05 84 */	stw r0, 0x584(r31)
/* 800AE9A4  7F E3 FB 78 */	mr r3, r31
/* 800AE9A8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800AE9AC  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800AE9B0  7D 89 03 A6 */	mtctr r12
/* 800AE9B4  4E 80 04 21 */	bctrl 
/* 800AE9B8  2C 03 00 00 */	cmpwi r3, 0
/* 800AE9BC  41 82 00 34 */	beq lbl_800AE9F0
/* 800AE9C0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800AE9C4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800AE9C8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AE9CC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800AE9D0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 800AE9D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AE9D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AE9DC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800AE9E0  38 80 00 01 */	li r4, 1
/* 800AE9E4  38 A0 00 0F */	li r5, 0xf
/* 800AE9E8  38 C1 00 30 */	addi r6, r1, 0x30
/* 800AE9EC  4B FC 10 39 */	bl StartShock__12dVibration_cFii4cXyz
lbl_800AE9F0:
/* 800AE9F0  C0 02 93 A8 */	lfs f0, lit_9652(r2)
/* 800AE9F4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800AE9F8  40 80 00 14 */	bge lbl_800AEA0C
/* 800AE9FC  7F E3 FB 78 */	mr r3, r31
/* 800AEA00  7F 64 DB 78 */	mr r4, r27
/* 800AEA04  4B FF B8 B9 */	bl setHandIndex__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800AEA08  48 00 00 10 */	b lbl_800AEA18
lbl_800AEA0C:
/* 800AEA0C  7F E3 FB 78 */	mr r3, r31
/* 800AEA10  7F 04 C3 78 */	mr r4, r24
/* 800AEA14  4B FF B8 A9 */	bl setHandIndex__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800AEA18:
/* 800AEA18  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 800AEA1C  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 800AEA20  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 800AEA24  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 800AEA28  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 800AEA2C  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 800AEA30  E3 81 00 C8 */	psq_l f28, 200(r1), 0, 0 /* qr0 */
/* 800AEA34  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 800AEA38  E3 61 00 B8 */	psq_l f27, 184(r1), 0, 0 /* qr0 */
/* 800AEA3C  CB 61 00 B0 */	lfd f27, 0xb0(r1)
/* 800AEA40  E3 41 00 A8 */	psq_l f26, 168(r1), 0, 0 /* qr0 */
/* 800AEA44  CB 41 00 A0 */	lfd f26, 0xa0(r1)
/* 800AEA48  E3 21 00 98 */	psq_l f25, 152(r1), 0, 0 /* qr0 */
/* 800AEA4C  CB 21 00 90 */	lfd f25, 0x90(r1)
/* 800AEA50  E3 01 00 88 */	psq_l f24, 136(r1), 0, 0 /* qr0 */
/* 800AEA54  CB 01 00 80 */	lfd f24, 0x80(r1)
/* 800AEA58  39 61 00 80 */	addi r11, r1, 0x80
/* 800AEA5C  48 2B 37 AD */	bl _restgpr_21
/* 800AEA60  80 01 01 04 */	lwz r0, 0x104(r1)
/* 800AEA64  7C 08 03 A6 */	mtlr r0
/* 800AEA68  38 21 01 00 */	addi r1, r1, 0x100
/* 800AEA6C  4E 80 00 20 */	blr 
