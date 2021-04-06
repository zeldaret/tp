lbl_8052DEB8:
/* 8052DEB8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8052DEBC  7C 08 02 A6 */	mflr r0
/* 8052DEC0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8052DEC4  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8052DEC8  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8052DECC  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8052DED0  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 8052DED4  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8052DED8  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 8052DEDC  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 8052DEE0  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 8052DEE4  39 61 00 80 */	addi r11, r1, 0x80
/* 8052DEE8  4B E3 42 ED */	bl _savegpr_27
/* 8052DEEC  7C 7B 1B 78 */	mr r27, r3
/* 8052DEF0  3C 60 80 53 */	lis r3, lit_3679@ha /* 0x80536168@ha */
/* 8052DEF4  3B C3 61 68 */	addi r30, r3, lit_3679@l /* 0x80536168@l */
/* 8052DEF8  3B A0 00 00 */	li r29, 0
/* 8052DEFC  80 1B 06 4C */	lwz r0, 0x64c(r27)
/* 8052DF00  90 01 00 10 */	stw r0, 0x10(r1)
/* 8052DF04  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8052DF08  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8052DF0C  38 81 00 10 */	addi r4, r1, 0x10
/* 8052DF10  4B AE B8 E9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8052DF14  7C 7F 1B 79 */	or. r31, r3, r3
/* 8052DF18  41 82 00 10 */	beq lbl_8052DF28
/* 8052DF1C  88 1F 10 08 */	lbz r0, 0x1008(r31)
/* 8052DF20  7C 00 07 75 */	extsb. r0, r0
/* 8052DF24  41 82 00 0C */	beq lbl_8052DF30
lbl_8052DF28:
/* 8052DF28  3B A0 00 01 */	li r29, 1
/* 8052DF2C  48 00 00 64 */	b lbl_8052DF90
lbl_8052DF30:
/* 8052DF30  88 1F 10 0A */	lbz r0, 0x100a(r31)
/* 8052DF34  7C 00 07 75 */	extsb. r0, r0
/* 8052DF38  40 82 00 10 */	bne lbl_8052DF48
/* 8052DF3C  88 1F 10 0D */	lbz r0, 0x100d(r31)
/* 8052DF40  7C 00 07 75 */	extsb. r0, r0
/* 8052DF44  40 82 00 0C */	bne lbl_8052DF50
lbl_8052DF48:
/* 8052DF48  3B A0 00 01 */	li r29, 1
/* 8052DF4C  48 00 00 44 */	b lbl_8052DF90
lbl_8052DF50:
/* 8052DF50  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 8052DF54  2C 00 00 04 */	cmpwi r0, 4
/* 8052DF58  41 82 00 38 */	beq lbl_8052DF90
/* 8052DF5C  2C 00 00 05 */	cmpwi r0, 5
/* 8052DF60  41 80 00 2C */	blt lbl_8052DF8C
/* 8052DF64  80 7F 10 AC */	lwz r3, 0x10ac(r31)
/* 8052DF68  28 1B 00 00 */	cmplwi r27, 0
/* 8052DF6C  41 82 00 0C */	beq lbl_8052DF78
/* 8052DF70  80 1B 00 04 */	lwz r0, 4(r27)
/* 8052DF74  48 00 00 08 */	b lbl_8052DF7C
lbl_8052DF78:
/* 8052DF78  38 00 FF FF */	li r0, -1
lbl_8052DF7C:
/* 8052DF7C  7C 03 00 40 */	cmplw r3, r0
/* 8052DF80  40 82 00 0C */	bne lbl_8052DF8C
/* 8052DF84  3B A0 00 00 */	li r29, 0
/* 8052DF88  48 00 00 08 */	b lbl_8052DF90
lbl_8052DF8C:
/* 8052DF8C  3B A0 00 01 */	li r29, 1
lbl_8052DF90:
/* 8052DF90  2C 1D 00 00 */	cmpwi r29, 0
/* 8052DF94  41 82 00 0C */	beq lbl_8052DFA0
/* 8052DF98  38 00 00 64 */	li r0, 0x64
/* 8052DF9C  B0 1B 05 B8 */	sth r0, 0x5b8(r27)
lbl_8052DFA0:
/* 8052DFA0  38 00 08 00 */	li r0, 0x800
/* 8052DFA4  B0 1B 05 D0 */	sth r0, 0x5d0(r27)
/* 8052DFA8  C3 FE 00 18 */	lfs f31, 0x18(r30)
/* 8052DFAC  C3 DE 00 80 */	lfs f30, 0x80(r30)
/* 8052DFB0  3B 80 00 00 */	li r28, 0
/* 8052DFB4  A8 1B 05 B8 */	lha r0, 0x5b8(r27)
/* 8052DFB8  2C 00 00 04 */	cmpwi r0, 4
/* 8052DFBC  41 82 09 B8 */	beq lbl_8052E974
/* 8052DFC0  40 80 00 28 */	bge lbl_8052DFE8
/* 8052DFC4  2C 00 00 01 */	cmpwi r0, 1
/* 8052DFC8  41 82 00 50 */	beq lbl_8052E018
/* 8052DFCC  40 80 00 10 */	bge lbl_8052DFDC
/* 8052DFD0  2C 00 00 00 */	cmpwi r0, 0
/* 8052DFD4  40 80 00 2C */	bge lbl_8052E000
/* 8052DFD8  48 00 0A 10 */	b lbl_8052E9E8
lbl_8052DFDC:
/* 8052DFDC  2C 00 00 03 */	cmpwi r0, 3
/* 8052DFE0  40 80 04 C8 */	bge lbl_8052E4A8
/* 8052DFE4  48 00 00 3C */	b lbl_8052E020
lbl_8052DFE8:
/* 8052DFE8  2C 00 00 64 */	cmpwi r0, 0x64
/* 8052DFEC  41 82 09 FC */	beq lbl_8052E9E8
/* 8052DFF0  40 80 09 F8 */	bge lbl_8052E9E8
/* 8052DFF4  2C 00 00 06 */	cmpwi r0, 6
/* 8052DFF8  40 80 09 F0 */	bge lbl_8052E9E8
/* 8052DFFC  48 00 09 D4 */	b lbl_8052E9D0
lbl_8052E000:
/* 8052E000  38 80 00 00 */	li r4, 0
/* 8052E004  B0 9B 06 24 */	sth r4, 0x624(r27)
/* 8052E008  A8 7B 05 B8 */	lha r3, 0x5b8(r27)
/* 8052E00C  38 03 00 01 */	addi r0, r3, 1
/* 8052E010  B0 1B 05 B8 */	sth r0, 0x5b8(r27)
/* 8052E014  B0 9B 05 F8 */	sth r4, 0x5f8(r27)
lbl_8052E018:
/* 8052E018  38 00 00 02 */	li r0, 2
/* 8052E01C  B0 1B 05 B8 */	sth r0, 0x5b8(r27)
lbl_8052E020:
/* 8052E020  38 61 00 40 */	addi r3, r1, 0x40
/* 8052E024  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8052E028  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 8052E02C  4B D3 8B 09 */	bl __mi__4cXyzCFRC3Vec
/* 8052E030  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8052E034  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8052E038  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 8052E03C  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 8052E040  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 8052E044  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8052E048  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8052E04C  EC 03 00 28 */	fsubs f0, f3, f0
/* 8052E050  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8052E054  4B D3 96 21 */	bl cM_atan2s__Fff
/* 8052E058  B0 7B 05 CC */	sth r3, 0x5cc(r27)
/* 8052E05C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8052E060  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052E064  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8052E068  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052E06C  EC 41 00 2A */	fadds f2, f1, f0
/* 8052E070  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8052E074  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052E078  40 81 00 0C */	ble lbl_8052E084
/* 8052E07C  FC 00 10 34 */	frsqrte f0, f2
/* 8052E080  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052E084:
/* 8052E084  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8052E088  4B D3 95 ED */	bl cM_atan2s__Fff
/* 8052E08C  7C 03 00 D0 */	neg r0, r3
/* 8052E090  B0 1B 05 CE */	sth r0, 0x5ce(r27)
/* 8052E094  A8 1B 05 CE */	lha r0, 0x5ce(r27)
/* 8052E098  2C 00 E0 00 */	cmpwi r0, -8192
/* 8052E09C  40 80 00 0C */	bge lbl_8052E0A8
/* 8052E0A0  38 00 E0 00 */	li r0, -8192
/* 8052E0A4  B0 1B 05 CE */	sth r0, 0x5ce(r27)
lbl_8052E0A8:
/* 8052E0A8  38 61 00 4C */	addi r3, r1, 0x4c
/* 8052E0AC  4B E1 90 8D */	bl PSVECSquareMag
/* 8052E0B0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8052E0B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052E0B8  40 81 00 58 */	ble lbl_8052E110
/* 8052E0BC  FC 00 08 34 */	frsqrte f0, f1
/* 8052E0C0  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 8052E0C4  FC 44 00 32 */	fmul f2, f4, f0
/* 8052E0C8  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 8052E0CC  FC 00 00 32 */	fmul f0, f0, f0
/* 8052E0D0  FC 01 00 32 */	fmul f0, f1, f0
/* 8052E0D4  FC 03 00 28 */	fsub f0, f3, f0
/* 8052E0D8  FC 02 00 32 */	fmul f0, f2, f0
/* 8052E0DC  FC 44 00 32 */	fmul f2, f4, f0
/* 8052E0E0  FC 00 00 32 */	fmul f0, f0, f0
/* 8052E0E4  FC 01 00 32 */	fmul f0, f1, f0
/* 8052E0E8  FC 03 00 28 */	fsub f0, f3, f0
/* 8052E0EC  FC 02 00 32 */	fmul f0, f2, f0
/* 8052E0F0  FC 44 00 32 */	fmul f2, f4, f0
/* 8052E0F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8052E0F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8052E0FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8052E100  FC 02 00 32 */	fmul f0, f2, f0
/* 8052E104  FF A1 00 32 */	fmul f29, f1, f0
/* 8052E108  FF A0 E8 18 */	frsp f29, f29
/* 8052E10C  48 00 00 90 */	b lbl_8052E19C
lbl_8052E110:
/* 8052E110  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 8052E114  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052E118  40 80 00 10 */	bge lbl_8052E128
/* 8052E11C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8052E120  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8052E124  48 00 00 78 */	b lbl_8052E19C
lbl_8052E128:
/* 8052E128  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8052E12C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8052E130  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052E134  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052E138  7C 03 00 00 */	cmpw r3, r0
/* 8052E13C  41 82 00 14 */	beq lbl_8052E150
/* 8052E140  40 80 00 40 */	bge lbl_8052E180
/* 8052E144  2C 03 00 00 */	cmpwi r3, 0
/* 8052E148  41 82 00 20 */	beq lbl_8052E168
/* 8052E14C  48 00 00 34 */	b lbl_8052E180
lbl_8052E150:
/* 8052E150  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052E154  41 82 00 0C */	beq lbl_8052E160
/* 8052E158  38 00 00 01 */	li r0, 1
/* 8052E15C  48 00 00 28 */	b lbl_8052E184
lbl_8052E160:
/* 8052E160  38 00 00 02 */	li r0, 2
/* 8052E164  48 00 00 20 */	b lbl_8052E184
lbl_8052E168:
/* 8052E168  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052E16C  41 82 00 0C */	beq lbl_8052E178
/* 8052E170  38 00 00 05 */	li r0, 5
/* 8052E174  48 00 00 10 */	b lbl_8052E184
lbl_8052E178:
/* 8052E178  38 00 00 03 */	li r0, 3
/* 8052E17C  48 00 00 08 */	b lbl_8052E184
lbl_8052E180:
/* 8052E180  38 00 00 04 */	li r0, 4
lbl_8052E184:
/* 8052E184  2C 00 00 01 */	cmpwi r0, 1
/* 8052E188  40 82 00 10 */	bne lbl_8052E198
/* 8052E18C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8052E190  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8052E194  48 00 00 08 */	b lbl_8052E19C
lbl_8052E198:
/* 8052E198  FF A0 08 90 */	fmr f29, f1
lbl_8052E19C:
/* 8052E19C  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 8052E1A0  7C 00 07 74 */	extsb r0, r0
/* 8052E1A4  2C 00 00 04 */	cmpwi r0, 4
/* 8052E1A8  41 82 00 28 */	beq lbl_8052E1D0
/* 8052E1AC  2C 00 00 02 */	cmpwi r0, 2
/* 8052E1B0  41 82 00 20 */	beq lbl_8052E1D0
/* 8052E1B4  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8052E1B8  C0 1B 05 EC */	lfs f0, 0x5ec(r27)
/* 8052E1BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8052E1C0  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8052E1C4  40 81 00 0C */	ble lbl_8052E1D0
/* 8052E1C8  3B A0 00 01 */	li r29, 1
/* 8052E1CC  48 00 02 74 */	b lbl_8052E440
lbl_8052E1D0:
/* 8052E1D0  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8052E1D4  FC 1D 08 40 */	fcmpo cr0, f29, f1
/* 8052E1D8  40 81 00 CC */	ble lbl_8052E2A4
/* 8052E1DC  C3 FE 00 58 */	lfs f31, 0x58(r30)
/* 8052E1E0  4B D3 97 75 */	bl cM_rndF__Ff
/* 8052E1E4  FC 00 08 1E */	fctiwz f0, f1
/* 8052E1E8  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8052E1EC  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8052E1F0  B0 1B 06 24 */	sth r0, 0x624(r27)
/* 8052E1F4  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8052E1F8  4B D3 97 5D */	bl cM_rndF__Ff
/* 8052E1FC  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8052E200  EC 00 08 2A */	fadds f0, f0, f1
/* 8052E204  FC 00 00 1E */	fctiwz f0, f0
/* 8052E208  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E20C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052E210  B0 1B 06 26 */	sth r0, 0x626(r27)
/* 8052E214  88 1B 06 34 */	lbz r0, 0x634(r27)
/* 8052E218  28 00 00 02 */	cmplwi r0, 2
/* 8052E21C  41 82 00 0C */	beq lbl_8052E228
/* 8052E220  28 00 00 00 */	cmplwi r0, 0
/* 8052E224  40 82 02 1C */	bne lbl_8052E440
lbl_8052E228:
/* 8052E228  80 7F 14 F0 */	lwz r3, 0x14f0(r31)
/* 8052E22C  2C 03 00 00 */	cmpwi r3, 0
/* 8052E230  41 82 00 08 */	beq lbl_8052E238
/* 8052E234  C3 FE 00 4C */	lfs f31, 0x4c(r30)
lbl_8052E238:
/* 8052E238  28 00 00 02 */	cmplwi r0, 2
/* 8052E23C  40 82 00 0C */	bne lbl_8052E248
/* 8052E240  C3 9E 00 80 */	lfs f28, 0x80(r30)
/* 8052E244  48 00 00 08 */	b lbl_8052E24C
lbl_8052E248:
/* 8052E248  C3 9E 01 04 */	lfs f28, 0x104(r30)
lbl_8052E24C:
/* 8052E24C  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 8052E250  C0 1B 05 EC */	lfs f0, 0x5ec(r27)
/* 8052E254  EC 01 00 32 */	fmuls f0, f1, f0
/* 8052E258  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8052E25C  40 80 01 E4 */	bge lbl_8052E440
/* 8052E260  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 8052E264  7C 00 07 74 */	extsb r0, r0
/* 8052E268  2C 00 00 04 */	cmpwi r0, 4
/* 8052E26C  41 82 00 0C */	beq lbl_8052E278
/* 8052E270  2C 00 00 03 */	cmpwi r0, 3
/* 8052E274  40 82 01 CC */	bne lbl_8052E440
lbl_8052E278:
/* 8052E278  2C 03 00 00 */	cmpwi r3, 0
/* 8052E27C  41 82 01 C4 */	beq lbl_8052E440
/* 8052E280  A8 1B 05 B4 */	lha r0, 0x5b4(r27)
/* 8052E284  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 8052E288  40 82 01 B8 */	bne lbl_8052E440
/* 8052E28C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8052E290  4B D3 96 C5 */	bl cM_rndF__Ff
/* 8052E294  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 8052E298  40 80 01 A8 */	bge lbl_8052E440
/* 8052E29C  3B 80 00 5A */	li r28, 0x5a
/* 8052E2A0  48 00 01 A0 */	b lbl_8052E440
lbl_8052E2A4:
/* 8052E2A4  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 8052E2A8  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8052E2AC  40 80 00 2C */	bge lbl_8052E2D8
/* 8052E2B0  C3 FE 00 BC */	lfs f31, 0xbc(r30)
/* 8052E2B4  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8052E2B8  4B D3 96 9D */	bl cM_rndF__Ff
/* 8052E2BC  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8052E2C0  EC 00 08 2A */	fadds f0, f0, f1
/* 8052E2C4  FC 00 00 1E */	fctiwz f0, f0
/* 8052E2C8  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E2CC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052E2D0  B0 1B 06 24 */	sth r0, 0x624(r27)
/* 8052E2D4  48 00 01 6C */	b lbl_8052E440
lbl_8052E2D8:
/* 8052E2D8  A8 7B 06 24 */	lha r3, 0x624(r27)
/* 8052E2DC  7C 60 07 35 */	extsh. r0, r3
/* 8052E2E0  40 82 00 54 */	bne lbl_8052E334
/* 8052E2E4  88 1F 10 09 */	lbz r0, 0x1009(r31)
/* 8052E2E8  7C 00 07 75 */	extsb. r0, r0
/* 8052E2EC  41 82 01 54 */	beq lbl_8052E440
/* 8052E2F0  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8052E2F4  4B D3 96 61 */	bl cM_rndF__Ff
/* 8052E2F8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8052E2FC  EC 00 08 2A */	fadds f0, f0, f1
/* 8052E300  FC 00 00 1E */	fctiwz f0, f0
/* 8052E304  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E308  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052E30C  B0 1B 06 24 */	sth r0, 0x624(r27)
/* 8052E310  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8052E314  4B D3 96 41 */	bl cM_rndF__Ff
/* 8052E318  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8052E31C  EC 00 08 2A */	fadds f0, f0, f1
/* 8052E320  FC 00 00 1E */	fctiwz f0, f0
/* 8052E324  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8052E328  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8052E32C  B0 1B 06 26 */	sth r0, 0x626(r27)
/* 8052E330  48 00 01 10 */	b lbl_8052E440
lbl_8052E334:
/* 8052E334  2C 03 00 01 */	cmpwi r3, 1
/* 8052E338  40 82 01 08 */	bne lbl_8052E440
/* 8052E33C  C3 9E 01 08 */	lfs f28, 0x108(r30)
/* 8052E340  C3 BE 00 A0 */	lfs f29, 0xa0(r30)
/* 8052E344  A8 7B 05 F8 */	lha r3, 0x5f8(r27)
/* 8052E348  38 03 00 01 */	addi r0, r3, 1
/* 8052E34C  B0 1B 05 F8 */	sth r0, 0x5f8(r27)
/* 8052E350  88 1B 06 34 */	lbz r0, 0x634(r27)
/* 8052E354  28 00 00 03 */	cmplwi r0, 3
/* 8052E358  40 82 00 14 */	bne lbl_8052E36C
/* 8052E35C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8052E360  EF 9C 00 32 */	fmuls f28, f28, f0
/* 8052E364  EF BD 00 32 */	fmuls f29, f29, f0
/* 8052E368  48 00 00 2C */	b lbl_8052E394
lbl_8052E36C:
/* 8052E36C  28 00 00 01 */	cmplwi r0, 1
/* 8052E370  40 82 00 24 */	bne lbl_8052E394
/* 8052E374  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 8052E378  7C 00 07 75 */	extsb. r0, r0
/* 8052E37C  41 82 00 18 */	beq lbl_8052E394
/* 8052E380  A8 1B 05 F8 */	lha r0, 0x5f8(r27)
/* 8052E384  2C 00 00 0A */	cmpwi r0, 0xa
/* 8052E388  40 80 00 0C */	bge lbl_8052E394
/* 8052E38C  C3 BE 00 48 */	lfs f29, 0x48(r30)
/* 8052E390  FF 80 E8 90 */	fmr f28, f29
lbl_8052E394:
/* 8052E394  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8052E398  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8052E39C  C0 23 12 44 */	lfs f1, 0x1244(r3)
/* 8052E3A0  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 8052E3A4  EC 01 00 24 */	fdivs f0, f1, f0
/* 8052E3A8  FC 00 00 1E */	fctiwz f0, f0
/* 8052E3AC  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E3B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052E3B4  2C 00 00 08 */	cmpwi r0, 8
/* 8052E3B8  41 80 00 0C */	blt lbl_8052E3C4
/* 8052E3BC  2C 00 00 10 */	cmpwi r0, 0x10
/* 8052E3C0  40 81 00 10 */	ble lbl_8052E3D0
lbl_8052E3C4:
/* 8052E3C4  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8052E3C8  EF 9C 00 32 */	fmuls f28, f28, f0
/* 8052E3CC  EF BD 00 32 */	fmuls f29, f29, f0
lbl_8052E3D0:
/* 8052E3D0  80 03 0E 80 */	lwz r0, 0xe80(r3)
/* 8052E3D4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8052E3D8  40 81 00 10 */	ble lbl_8052E3E8
/* 8052E3DC  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 8052E3E0  EF 9C 00 32 */	fmuls f28, f28, f0
/* 8052E3E4  EF BD 00 32 */	fmuls f29, f29, f0
lbl_8052E3E8:
/* 8052E3E8  3C 60 80 53 */	lis r3, l_HIO@ha /* 0x80536BCC@ha */
/* 8052E3EC  38 63 6B CC */	addi r3, r3, l_HIO@l /* 0x80536BCC@l */
/* 8052E3F0  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8052E3F4  28 00 00 00 */	cmplwi r0, 0
/* 8052E3F8  40 82 00 10 */	bne lbl_8052E408
/* 8052E3FC  88 1F 10 A4 */	lbz r0, 0x10a4(r31)
/* 8052E400  7C 00 07 75 */	extsb. r0, r0
/* 8052E404  41 82 00 0C */	beq lbl_8052E410
lbl_8052E408:
/* 8052E408  C3 BE 00 00 */	lfs f29, 0(r30)
/* 8052E40C  FF 80 E8 90 */	fmr f28, f29
lbl_8052E410:
/* 8052E410  88 1F 10 09 */	lbz r0, 0x1009(r31)
/* 8052E414  7C 00 07 75 */	extsb. r0, r0
/* 8052E418  41 82 00 14 */	beq lbl_8052E42C
/* 8052E41C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8052E420  4B D3 95 35 */	bl cM_rndF__Ff
/* 8052E424  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 8052E428  41 80 00 14 */	blt lbl_8052E43C
lbl_8052E42C:
/* 8052E42C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8052E430  4B D3 95 25 */	bl cM_rndF__Ff
/* 8052E434  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 8052E438  40 80 00 08 */	bge lbl_8052E440
lbl_8052E43C:
/* 8052E43C  3B 80 00 3C */	li r28, 0x3c
lbl_8052E440:
/* 8052E440  7F 80 07 35 */	extsh. r0, r28
/* 8052E444  41 82 00 10 */	beq lbl_8052E454
/* 8052E448  38 00 00 03 */	li r0, 3
/* 8052E44C  B0 1B 05 B8 */	sth r0, 0x5b8(r27)
/* 8052E450  B3 9B 06 28 */	sth r28, 0x628(r27)
lbl_8052E454:
/* 8052E454  38 7B 04 D4 */	addi r3, r27, 0x4d4
/* 8052E458  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8052E45C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8052E460  EC 21 00 28 */	fsubs f1, f1, f0
/* 8052E464  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 8052E468  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 8052E46C  4B D4 15 D1 */	bl cLib_addCalc2__FPffff
/* 8052E470  A8 1B 06 26 */	lha r0, 0x626(r27)
/* 8052E474  2C 00 00 01 */	cmpwi r0, 1
/* 8052E478  40 82 05 70 */	bne lbl_8052E9E8
/* 8052E47C  38 00 00 05 */	li r0, 5
/* 8052E480  B0 1B 05 B8 */	sth r0, 0x5b8(r27)
/* 8052E484  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8052E488  4B D3 94 CD */	bl cM_rndF__Ff
/* 8052E48C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8052E490  EC 00 08 2A */	fadds f0, f0, f1
/* 8052E494  FC 00 00 1E */	fctiwz f0, f0
/* 8052E498  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E49C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052E4A0  B0 1B 06 24 */	sth r0, 0x624(r27)
/* 8052E4A4  48 00 05 44 */	b lbl_8052E9E8
lbl_8052E4A8:
/* 8052E4A8  A8 1B 06 28 */	lha r0, 0x628(r27)
/* 8052E4AC  2C 00 00 00 */	cmpwi r0, 0
/* 8052E4B0  40 82 00 0C */	bne lbl_8052E4BC
/* 8052E4B4  3B A0 00 01 */	li r29, 1
/* 8052E4B8  48 00 05 30 */	b lbl_8052E9E8
lbl_8052E4BC:
/* 8052E4BC  38 61 00 34 */	addi r3, r1, 0x34
/* 8052E4C0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8052E4C4  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 8052E4C8  4B D3 86 6D */	bl __mi__4cXyzCFRC3Vec
/* 8052E4CC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8052E4D0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8052E4D4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8052E4D8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8052E4DC  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8052E4E0  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8052E4E4  4B D3 91 91 */	bl cM_atan2s__Fff
/* 8052E4E8  B0 7B 05 CC */	sth r3, 0x5cc(r27)
/* 8052E4EC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8052E4F0  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052E4F4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8052E4F8  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052E4FC  EC 41 00 2A */	fadds f2, f1, f0
/* 8052E500  FC 00 F8 90 */	fmr f0, f31
/* 8052E504  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052E508  40 81 00 0C */	ble lbl_8052E514
/* 8052E50C  FC 00 10 34 */	frsqrte f0, f2
/* 8052E510  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052E514:
/* 8052E514  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8052E518  4B D3 91 5D */	bl cM_atan2s__Fff
/* 8052E51C  7C 03 00 D0 */	neg r0, r3
/* 8052E520  B0 1B 05 CE */	sth r0, 0x5ce(r27)
/* 8052E524  C3 FE 00 F8 */	lfs f31, 0xf8(r30)
/* 8052E528  80 1F 14 F0 */	lwz r0, 0x14f0(r31)
/* 8052E52C  2C 00 00 00 */	cmpwi r0, 0
/* 8052E530  41 82 00 08 */	beq lbl_8052E538
/* 8052E534  C3 FE 00 04 */	lfs f31, 4(r30)
lbl_8052E538:
/* 8052E538  C3 DE 00 00 */	lfs f30, 0(r30)
/* 8052E53C  38 61 00 4C */	addi r3, r1, 0x4c
/* 8052E540  4B E1 8B F9 */	bl PSVECSquareMag
/* 8052E544  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8052E548  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052E54C  40 81 00 58 */	ble lbl_8052E5A4
/* 8052E550  FC 00 08 34 */	frsqrte f0, f1
/* 8052E554  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 8052E558  FC 44 00 32 */	fmul f2, f4, f0
/* 8052E55C  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 8052E560  FC 00 00 32 */	fmul f0, f0, f0
/* 8052E564  FC 01 00 32 */	fmul f0, f1, f0
/* 8052E568  FC 03 00 28 */	fsub f0, f3, f0
/* 8052E56C  FC 02 00 32 */	fmul f0, f2, f0
/* 8052E570  FC 44 00 32 */	fmul f2, f4, f0
/* 8052E574  FC 00 00 32 */	fmul f0, f0, f0
/* 8052E578  FC 01 00 32 */	fmul f0, f1, f0
/* 8052E57C  FC 03 00 28 */	fsub f0, f3, f0
/* 8052E580  FC 02 00 32 */	fmul f0, f2, f0
/* 8052E584  FC 44 00 32 */	fmul f2, f4, f0
/* 8052E588  FC 00 00 32 */	fmul f0, f0, f0
/* 8052E58C  FC 01 00 32 */	fmul f0, f1, f0
/* 8052E590  FC 03 00 28 */	fsub f0, f3, f0
/* 8052E594  FC 02 00 32 */	fmul f0, f2, f0
/* 8052E598  FF A1 00 32 */	fmul f29, f1, f0
/* 8052E59C  FF A0 E8 18 */	frsp f29, f29
/* 8052E5A0  48 00 00 90 */	b lbl_8052E630
lbl_8052E5A4:
/* 8052E5A4  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 8052E5A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052E5AC  40 80 00 10 */	bge lbl_8052E5BC
/* 8052E5B0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8052E5B4  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8052E5B8  48 00 00 78 */	b lbl_8052E630
lbl_8052E5BC:
/* 8052E5BC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8052E5C0  80 81 00 08 */	lwz r4, 8(r1)
/* 8052E5C4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052E5C8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052E5CC  7C 03 00 00 */	cmpw r3, r0
/* 8052E5D0  41 82 00 14 */	beq lbl_8052E5E4
/* 8052E5D4  40 80 00 40 */	bge lbl_8052E614
/* 8052E5D8  2C 03 00 00 */	cmpwi r3, 0
/* 8052E5DC  41 82 00 20 */	beq lbl_8052E5FC
/* 8052E5E0  48 00 00 34 */	b lbl_8052E614
lbl_8052E5E4:
/* 8052E5E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052E5E8  41 82 00 0C */	beq lbl_8052E5F4
/* 8052E5EC  38 00 00 01 */	li r0, 1
/* 8052E5F0  48 00 00 28 */	b lbl_8052E618
lbl_8052E5F4:
/* 8052E5F4  38 00 00 02 */	li r0, 2
/* 8052E5F8  48 00 00 20 */	b lbl_8052E618
lbl_8052E5FC:
/* 8052E5FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052E600  41 82 00 0C */	beq lbl_8052E60C
/* 8052E604  38 00 00 05 */	li r0, 5
/* 8052E608  48 00 00 10 */	b lbl_8052E618
lbl_8052E60C:
/* 8052E60C  38 00 00 03 */	li r0, 3
/* 8052E610  48 00 00 08 */	b lbl_8052E618
lbl_8052E614:
/* 8052E614  38 00 00 04 */	li r0, 4
lbl_8052E618:
/* 8052E618  2C 00 00 01 */	cmpwi r0, 1
/* 8052E61C  40 82 00 10 */	bne lbl_8052E62C
/* 8052E620  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8052E624  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8052E628  48 00 00 08 */	b lbl_8052E630
lbl_8052E62C:
/* 8052E62C  FF A0 08 90 */	fmr f29, f1
lbl_8052E630:
/* 8052E630  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 8052E634  C0 1B 05 BC */	lfs f0, 0x5bc(r27)
/* 8052E638  EC 01 00 32 */	fmuls f0, f1, f0
/* 8052E63C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8052E640  40 80 00 0C */	bge lbl_8052E64C
/* 8052E644  7F 63 DB 78 */	mr r3, r27
/* 8052E648  4B FF BB 79 */	bl mouth_open__FP13mg_fish_class
lbl_8052E64C:
/* 8052E64C  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 8052E650  C0 3B 05 BC */	lfs f1, 0x5bc(r27)
/* 8052E654  EC 00 00 72 */	fmuls f0, f0, f1
/* 8052E658  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8052E65C  40 80 03 8C */	bge lbl_8052E9E8
/* 8052E660  88 1B 06 34 */	lbz r0, 0x634(r27)
/* 8052E664  28 00 00 03 */	cmplwi r0, 3
/* 8052E668  40 82 00 58 */	bne lbl_8052E6C0
/* 8052E66C  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 8052E670  2C 00 00 04 */	cmpwi r0, 4
/* 8052E674  40 82 00 28 */	bne lbl_8052E69C
/* 8052E678  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8052E67C  4B D3 92 D9 */	bl cM_rndF__Ff
/* 8052E680  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8052E684  EC 00 08 2A */	fadds f0, f0, f1
/* 8052E688  FC 00 00 1E */	fctiwz f0, f0
/* 8052E68C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E690  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052E694  B0 1B 06 30 */	sth r0, 0x630(r27)
/* 8052E698  48 00 01 14 */	b lbl_8052E7AC
lbl_8052E69C:
/* 8052E69C  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 8052E6A0  4B D3 92 B5 */	bl cM_rndF__Ff
/* 8052E6A4  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8052E6A8  EC 00 08 2A */	fadds f0, f0, f1
/* 8052E6AC  FC 00 00 1E */	fctiwz f0, f0
/* 8052E6B0  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E6B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052E6B8  B0 1B 06 30 */	sth r0, 0x630(r27)
/* 8052E6BC  48 00 00 F0 */	b lbl_8052E7AC
lbl_8052E6C0:
/* 8052E6C0  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 8052E6C4  2C 00 00 04 */	cmpwi r0, 4
/* 8052E6C8  40 82 00 90 */	bne lbl_8052E758
/* 8052E6CC  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 8052E6D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052E6D4  4C 41 13 82 */	cror 2, 1, 2
/* 8052E6D8  40 82 00 28 */	bne lbl_8052E700
/* 8052E6DC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8052E6E0  4B D3 92 75 */	bl cM_rndF__Ff
/* 8052E6E4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8052E6E8  EC 00 08 2A */	fadds f0, f0, f1
/* 8052E6EC  FC 00 00 1E */	fctiwz f0, f0
/* 8052E6F0  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E6F4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052E6F8  B0 1B 06 30 */	sth r0, 0x630(r27)
/* 8052E6FC  48 00 00 B0 */	b lbl_8052E7AC
lbl_8052E700:
/* 8052E700  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8052E704  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052E708  4C 41 13 82 */	cror 2, 1, 2
/* 8052E70C  40 82 00 28 */	bne lbl_8052E734
/* 8052E710  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 8052E714  4B D3 92 41 */	bl cM_rndF__Ff
/* 8052E718  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 8052E71C  EC 00 08 2A */	fadds f0, f0, f1
/* 8052E720  FC 00 00 1E */	fctiwz f0, f0
/* 8052E724  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E728  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052E72C  B0 1B 06 30 */	sth r0, 0x630(r27)
/* 8052E730  48 00 00 7C */	b lbl_8052E7AC
lbl_8052E734:
/* 8052E734  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8052E738  4B D3 92 1D */	bl cM_rndF__Ff
/* 8052E73C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8052E740  EC 00 08 2A */	fadds f0, f0, f1
/* 8052E744  FC 00 00 1E */	fctiwz f0, f0
/* 8052E748  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E74C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052E750  B0 1B 06 30 */	sth r0, 0x630(r27)
/* 8052E754  48 00 00 58 */	b lbl_8052E7AC
lbl_8052E758:
/* 8052E758  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 8052E75C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052E760  4C 41 13 82 */	cror 2, 1, 2
/* 8052E764  40 82 00 28 */	bne lbl_8052E78C
/* 8052E768  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8052E76C  4B D3 91 E9 */	bl cM_rndF__Ff
/* 8052E770  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 8052E774  EC 00 08 2A */	fadds f0, f0, f1
/* 8052E778  FC 00 00 1E */	fctiwz f0, f0
/* 8052E77C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E780  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052E784  B0 1B 06 30 */	sth r0, 0x630(r27)
/* 8052E788  48 00 00 24 */	b lbl_8052E7AC
lbl_8052E78C:
/* 8052E78C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8052E790  4B D3 91 C5 */	bl cM_rndF__Ff
/* 8052E794  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 8052E798  EC 00 08 2A */	fadds f0, f0, f1
/* 8052E79C  FC 00 00 1E */	fctiwz f0, f0
/* 8052E7A0  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E7A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052E7A8  B0 1B 06 30 */	sth r0, 0x630(r27)
lbl_8052E7AC:
/* 8052E7AC  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 8052E7B0  7C 00 07 75 */	extsb. r0, r0
/* 8052E7B4  40 82 00 24 */	bne lbl_8052E7D8
/* 8052E7B8  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8052E7BC  4B D3 91 99 */	bl cM_rndF__Ff
/* 8052E7C0  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 8052E7C4  EC 00 08 2A */	fadds f0, f0, f1
/* 8052E7C8  FC 00 00 1E */	fctiwz f0, f0
/* 8052E7CC  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E7D0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052E7D4  B0 1B 06 30 */	sth r0, 0x630(r27)
lbl_8052E7D8:
/* 8052E7D8  38 00 00 05 */	li r0, 5
/* 8052E7DC  B0 1F 0F 7E */	sth r0, 0xf7e(r31)
/* 8052E7E0  38 00 00 02 */	li r0, 2
/* 8052E7E4  98 1F 10 A5 */	stb r0, 0x10a5(r31)
/* 8052E7E8  28 1B 00 00 */	cmplwi r27, 0
/* 8052E7EC  41 82 00 0C */	beq lbl_8052E7F8
/* 8052E7F0  80 1B 00 04 */	lwz r0, 4(r27)
/* 8052E7F4  48 00 00 08 */	b lbl_8052E7FC
lbl_8052E7F8:
/* 8052E7F8  38 00 FF FF */	li r0, -1
lbl_8052E7FC:
/* 8052E7FC  90 1F 10 AC */	stw r0, 0x10ac(r31)
/* 8052E800  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 8052E804  4B D3 91 89 */	bl cM_rndFX__Ff
/* 8052E808  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8052E80C  EC 00 08 2A */	fadds f0, f0, f1
/* 8052E810  FC 00 00 1E */	fctiwz f0, f0
/* 8052E814  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E818  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052E81C  B0 1F 10 06 */	sth r0, 0x1006(r31)
/* 8052E820  38 00 00 01 */	li r0, 1
/* 8052E824  98 1B 06 58 */	stb r0, 0x658(r27)
/* 8052E828  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8052E82C  4B D3 91 61 */	bl cM_rndFX__Ff
/* 8052E830  FC 00 08 1E */	fctiwz f0, f1
/* 8052E834  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8052E838  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8052E83C  B0 1B 05 CC */	sth r0, 0x5cc(r27)
/* 8052E840  38 00 20 00 */	li r0, 0x2000
/* 8052E844  B0 1B 05 CE */	sth r0, 0x5ce(r27)
/* 8052E848  38 00 10 00 */	li r0, 0x1000
/* 8052E84C  B0 1B 05 D0 */	sth r0, 0x5d0(r27)
/* 8052E850  38 00 00 04 */	li r0, 4
/* 8052E854  B0 1B 05 B8 */	sth r0, 0x5b8(r27)
/* 8052E858  7F 63 DB 78 */	mr r3, r27
/* 8052E85C  4B FF B9 C1 */	bl mouth_close__FP13mg_fish_class
/* 8052E860  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8052E864  C0 3B 05 D8 */	lfs f1, 0x5d8(r27)
/* 8052E868  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 8052E86C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8052E870  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052E874  40 81 00 94 */	ble lbl_8052E908
/* 8052E878  C0 1B 06 38 */	lfs f0, 0x638(r27)
/* 8052E87C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8052E880  C0 1B 06 3C */	lfs f0, 0x63c(r27)
/* 8052E884  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8052E888  C0 1B 06 40 */	lfs f0, 0x640(r27)
/* 8052E88C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8052E890  7F 63 DB 78 */	mr r3, r27
/* 8052E894  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 8052E898  38 81 00 28 */	addi r4, r1, 0x28
/* 8052E89C  4B FF B5 ED */	bl sibuki_set__FP13mg_fish_classf4cXyz
/* 8052E8A0  88 1B 06 34 */	lbz r0, 0x634(r27)
/* 8052E8A4  28 00 00 01 */	cmplwi r0, 1
/* 8052E8A8  40 82 00 34 */	bne lbl_8052E8DC
/* 8052E8AC  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200C8@ha */
/* 8052E8B0  38 03 00 C8 */	addi r0, r3, 0x00C8 /* 0x000200C8@l */
/* 8052E8B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8052E8B8  38 7B 08 00 */	addi r3, r27, 0x800
/* 8052E8BC  38 81 00 18 */	addi r4, r1, 0x18
/* 8052E8C0  38 A0 00 00 */	li r5, 0
/* 8052E8C4  38 C0 FF FF */	li r6, -1
/* 8052E8C8  81 9B 08 00 */	lwz r12, 0x800(r27)
/* 8052E8CC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8052E8D0  7D 89 03 A6 */	mtctr r12
/* 8052E8D4  4E 80 04 21 */	bctrl 
/* 8052E8D8  48 00 00 30 */	b lbl_8052E908
lbl_8052E8DC:
/* 8052E8DC  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020086@ha */
/* 8052E8E0  38 03 00 86 */	addi r0, r3, 0x0086 /* 0x00020086@l */
/* 8052E8E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052E8E8  38 7B 08 00 */	addi r3, r27, 0x800
/* 8052E8EC  38 81 00 14 */	addi r4, r1, 0x14
/* 8052E8F0  38 A0 00 00 */	li r5, 0
/* 8052E8F4  38 C0 FF FF */	li r6, -1
/* 8052E8F8  81 9B 08 00 */	lwz r12, 0x800(r27)
/* 8052E8FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8052E900  7D 89 03 A6 */	mtctr r12
/* 8052E904  4E 80 04 21 */	bctrl 
lbl_8052E908:
/* 8052E908  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8052E90C  D0 1F 14 10 */	stfs f0, 0x1410(r31)
/* 8052E910  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8052E914  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8052E918  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8052E91C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8052E920  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8052E924  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8052E928  38 61 00 1C */	addi r3, r1, 0x1c
/* 8052E92C  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 8052E930  C0 1B 05 BC */	lfs f0, 0x5bc(r27)
/* 8052E934  EC 01 00 32 */	fmuls f0, f1, f0
/* 8052E938  FC 00 00 1E */	fctiwz f0, f0
/* 8052E93C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052E940  80 81 00 64 */	lwz r4, 0x64(r1)
/* 8052E944  28 1B 00 00 */	cmplwi r27, 0
/* 8052E948  41 82 00 0C */	beq lbl_8052E954
/* 8052E94C  80 BB 00 04 */	lwz r5, 4(r27)
/* 8052E950  48 00 00 08 */	b lbl_8052E958
lbl_8052E954:
/* 8052E954  38 A0 FF FF */	li r5, -1
lbl_8052E958:
/* 8052E958  38 C0 00 05 */	li r6, 5
/* 8052E95C  4B C7 98 65 */	bl dKy_Sound_set__F4cXyziUii
/* 8052E960  38 00 00 05 */	li r0, 5
/* 8052E964  98 1F 10 AB */	stb r0, 0x10ab(r31)
/* 8052E968  38 00 00 03 */	li r0, 3
/* 8052E96C  98 1F 10 AA */	stb r0, 0x10aa(r31)
/* 8052E970  48 00 00 78 */	b lbl_8052E9E8
lbl_8052E974:
/* 8052E974  38 00 00 02 */	li r0, 2
/* 8052E978  98 1F 10 A5 */	stb r0, 0x10a5(r31)
/* 8052E97C  C3 FE 01 20 */	lfs f31, 0x120(r30)
/* 8052E980  C3 DE 00 5C */	lfs f30, 0x5c(r30)
/* 8052E984  98 1B 06 58 */	stb r0, 0x658(r27)
/* 8052E988  A8 1B 06 30 */	lha r0, 0x630(r27)
/* 8052E98C  2C 00 00 00 */	cmpwi r0, 0
/* 8052E990  40 82 00 58 */	bne lbl_8052E9E8
/* 8052E994  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 8052E998  2C 00 00 04 */	cmpwi r0, 4
/* 8052E99C  41 82 00 20 */	beq lbl_8052E9BC
/* 8052E9A0  38 00 00 1E */	li r0, 0x1e
/* 8052E9A4  98 1F 10 A6 */	stb r0, 0x10a6(r31)
/* 8052E9A8  88 1F 10 A7 */	lbz r0, 0x10a7(r31)
/* 8052E9AC  2C 00 00 04 */	cmpwi r0, 4
/* 8052E9B0  41 82 00 0C */	beq lbl_8052E9BC
/* 8052E9B4  38 00 00 01 */	li r0, 1
/* 8052E9B8  98 1F 10 A7 */	stb r0, 0x10a7(r31)
lbl_8052E9BC:
/* 8052E9BC  38 00 00 02 */	li r0, 2
/* 8052E9C0  B0 1B 05 B6 */	sth r0, 0x5b6(r27)
/* 8052E9C4  38 00 FF FF */	li r0, -1
/* 8052E9C8  B0 1B 05 B8 */	sth r0, 0x5b8(r27)
/* 8052E9CC  48 00 00 9C */	b lbl_8052EA68
lbl_8052E9D0:
/* 8052E9D0  C3 FE 01 24 */	lfs f31, 0x124(r30)
/* 8052E9D4  C3 DE 00 94 */	lfs f30, 0x94(r30)
/* 8052E9D8  A8 1B 06 24 */	lha r0, 0x624(r27)
/* 8052E9DC  2C 00 00 00 */	cmpwi r0, 0
/* 8052E9E0  40 82 00 08 */	bne lbl_8052E9E8
/* 8052E9E4  3B A0 00 01 */	li r29, 1
lbl_8052E9E8:
/* 8052E9E8  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8052E9EC  FC 20 F8 90 */	fmr f1, f31
/* 8052E9F0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8052E9F4  FC 60 F0 90 */	fmr f3, f30
/* 8052E9F8  4B D4 10 45 */	bl cLib_addCalc2__FPffff
/* 8052E9FC  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8052EA00  A8 9B 05 CC */	lha r4, 0x5cc(r27)
/* 8052EA04  38 A0 00 02 */	li r5, 2
/* 8052EA08  A8 DB 05 D0 */	lha r6, 0x5d0(r27)
/* 8052EA0C  4B D4 1B FD */	bl cLib_addCalcAngleS2__FPssss
/* 8052EA10  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 8052EA14  A8 9B 05 CE */	lha r4, 0x5ce(r27)
/* 8052EA18  38 A0 00 02 */	li r5, 2
/* 8052EA1C  A8 DB 05 D0 */	lha r6, 0x5d0(r27)
/* 8052EA20  4B D4 1B E9 */	bl cLib_addCalcAngleS2__FPssss
/* 8052EA24  2C 1D 00 00 */	cmpwi r29, 0
/* 8052EA28  41 82 00 40 */	beq lbl_8052EA68
/* 8052EA2C  38 00 00 01 */	li r0, 1
/* 8052EA30  B0 1B 05 B6 */	sth r0, 0x5b6(r27)
/* 8052EA34  38 00 00 00 */	li r0, 0
/* 8052EA38  B0 1B 05 B8 */	sth r0, 0x5b8(r27)
/* 8052EA3C  B0 1B 06 24 */	sth r0, 0x624(r27)
/* 8052EA40  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8052EA44  4B D3 8F 11 */	bl cM_rndF__Ff
/* 8052EA48  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8052EA4C  EC 00 08 2A */	fadds f0, f0, f1
/* 8052EA50  FC 00 00 1E */	fctiwz f0, f0
/* 8052EA54  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052EA58  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052EA5C  B0 1B 06 2E */	sth r0, 0x62e(r27)
/* 8052EA60  7F 63 DB 78 */	mr r3, r27
/* 8052EA64  4B FF B7 B9 */	bl mouth_close__FP13mg_fish_class
lbl_8052EA68:
/* 8052EA68  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8052EA6C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8052EA70  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 8052EA74  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8052EA78  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 8052EA7C  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8052EA80  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 8052EA84  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 8052EA88  39 61 00 80 */	addi r11, r1, 0x80
/* 8052EA8C  4B E3 37 95 */	bl _restgpr_27
/* 8052EA90  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8052EA94  7C 08 03 A6 */	mtlr r0
/* 8052EA98  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8052EA9C  4E 80 00 20 */	blr 
