lbl_8014DBB4:
/* 8014DBB4  94 21 FD C0 */	stwu r1, -0x240(r1)
/* 8014DBB8  7C 08 02 A6 */	mflr r0
/* 8014DBBC  90 01 02 44 */	stw r0, 0x244(r1)
/* 8014DBC0  DB E1 02 30 */	stfd f31, 0x230(r1)
/* 8014DBC4  F3 E1 02 38 */	psq_st f31, 568(r1), 0, 0 /* qr0 */
/* 8014DBC8  DB C1 02 20 */	stfd f30, 0x220(r1)
/* 8014DBCC  F3 C1 02 28 */	psq_st f30, 552(r1), 0, 0 /* qr0 */
/* 8014DBD0  39 61 02 20 */	addi r11, r1, 0x220
/* 8014DBD4  48 21 45 D5 */	bl _savegpr_16
/* 8014DBD8  7C 7E 1B 78 */	mr r30, r3
/* 8014DBDC  7C 90 23 78 */	mr r16, r4
/* 8014DBE0  7C DF 33 78 */	mr r31, r6
/* 8014DBE4  80 03 00 98 */	lwz r0, 0x98(r3)
/* 8014DBE8  28 00 00 00 */	cmplwi r0, 0
/* 8014DBEC  40 82 01 34 */	bne lbl_8014DD20
/* 8014DBF0  3A 60 00 00 */	li r19, 0
/* 8014DBF4  3A 00 00 00 */	li r16, 0
/* 8014DBF8  CB C2 99 E0 */	lfd f30, lit_4142(r2)
/* 8014DBFC  3E 20 43 30 */	lis r17, 0x4330
lbl_8014DC00:
/* 8014DC00  7E DE 82 14 */	add r22, r30, r16
/* 8014DC04  A8 16 00 7C */	lha r0, 0x7c(r22)
/* 8014DC08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8014DC0C  90 01 01 94 */	stw r0, 0x194(r1)
/* 8014DC10  92 21 01 90 */	stw r17, 0x190(r1)
/* 8014DC14  C8 01 01 90 */	lfd f0, 0x190(r1)
/* 8014DC18  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8014DC1C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8014DC20  A8 16 00 7E */	lha r0, 0x7e(r22)
/* 8014DC24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8014DC28  90 01 01 9C */	stw r0, 0x19c(r1)
/* 8014DC2C  92 21 01 98 */	stw r17, 0x198(r1)
/* 8014DC30  C8 01 01 98 */	lfd f0, 0x198(r1)
/* 8014DC34  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8014DC38  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8014DC3C  A8 16 00 80 */	lha r0, 0x80(r22)
/* 8014DC40  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8014DC44  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 8014DC48  92 21 01 A0 */	stw r17, 0x1a0(r1)
/* 8014DC4C  C8 01 01 A0 */	lfd f0, 0x1a0(r1)
/* 8014DC50  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8014DC54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8014DC58  38 61 00 20 */	addi r3, r1, 0x20
/* 8014DC5C  C0 22 99 D8 */	lfs f1, lit_4116(r2)
/* 8014DC60  C0 42 9A 90 */	lfs f2, lit_8404(r2)
/* 8014DC64  38 80 08 00 */	li r4, 0x800
/* 8014DC68  38 13 00 01 */	addi r0, r19, 1
/* 8014DC6C  7E 44 03 D6 */	divw r18, r4, r0
/* 8014DC70  6E 40 80 00 */	xoris r0, r18, 0x8000
/* 8014DC74  90 01 01 AC */	stw r0, 0x1ac(r1)
/* 8014DC78  92 21 01 A8 */	stw r17, 0x1a8(r1)
/* 8014DC7C  C8 01 01 A8 */	lfd f0, 0x1a8(r1)
/* 8014DC80  EC 60 F0 28 */	fsubs f3, f0, f30
/* 8014DC84  48 12 1D B9 */	bl cLib_addCalc2__FPffff
/* 8014DC88  38 61 00 1C */	addi r3, r1, 0x1c
/* 8014DC8C  C0 22 99 D8 */	lfs f1, lit_4116(r2)
/* 8014DC90  C0 42 9A 90 */	lfs f2, lit_8404(r2)
/* 8014DC94  6E 40 80 00 */	xoris r0, r18, 0x8000
/* 8014DC98  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8014DC9C  92 21 01 B0 */	stw r17, 0x1b0(r1)
/* 8014DCA0  C8 01 01 B0 */	lfd f0, 0x1b0(r1)
/* 8014DCA4  EC 60 F0 28 */	fsubs f3, f0, f30
/* 8014DCA8  48 12 1D 95 */	bl cLib_addCalc2__FPffff
/* 8014DCAC  38 61 00 18 */	addi r3, r1, 0x18
/* 8014DCB0  C0 22 99 D8 */	lfs f1, lit_4116(r2)
/* 8014DCB4  C0 42 9A 90 */	lfs f2, lit_8404(r2)
/* 8014DCB8  6E 40 80 00 */	xoris r0, r18, 0x8000
/* 8014DCBC  90 01 01 BC */	stw r0, 0x1bc(r1)
/* 8014DCC0  92 21 01 B8 */	stw r17, 0x1b8(r1)
/* 8014DCC4  C8 01 01 B8 */	lfd f0, 0x1b8(r1)
/* 8014DCC8  EC 60 F0 28 */	fsubs f3, f0, f30
/* 8014DCCC  48 12 1D 71 */	bl cLib_addCalc2__FPffff
/* 8014DCD0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8014DCD4  FC 00 00 1E */	fctiwz f0, f0
/* 8014DCD8  D8 01 01 C0 */	stfd f0, 0x1c0(r1)
/* 8014DCDC  80 81 01 C4 */	lwz r4, 0x1c4(r1)
/* 8014DCE0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8014DCE4  FC 00 00 1E */	fctiwz f0, f0
/* 8014DCE8  D8 01 01 C8 */	stfd f0, 0x1c8(r1)
/* 8014DCEC  80 61 01 CC */	lwz r3, 0x1cc(r1)
/* 8014DCF0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8014DCF4  FC 00 00 1E */	fctiwz f0, f0
/* 8014DCF8  D8 01 01 D0 */	stfd f0, 0x1d0(r1)
/* 8014DCFC  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 8014DD00  B0 16 00 7C */	sth r0, 0x7c(r22)
/* 8014DD04  B0 76 00 7E */	sth r3, 0x7e(r22)
/* 8014DD08  B0 96 00 80 */	sth r4, 0x80(r22)
/* 8014DD0C  3A 73 00 01 */	addi r19, r19, 1
/* 8014DD10  2C 13 00 04 */	cmpwi r19, 4
/* 8014DD14  3A 10 00 06 */	addi r16, r16, 6
/* 8014DD18  41 80 FE E8 */	blt lbl_8014DC00
/* 8014DD1C  48 00 08 F0 */	b lbl_8014E60C
lbl_8014DD20:
/* 8014DD20  7C A3 2B 78 */	mr r3, r5
/* 8014DD24  38 81 01 2C */	addi r4, r1, 0x12c
/* 8014DD28  48 1F 87 89 */	bl PSMTXCopy
/* 8014DD2C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014DD30  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 8014DD34  D0 01 01 48 */	stfs f0, 0x148(r1)
/* 8014DD38  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 8014DD3C  38 61 01 2C */	addi r3, r1, 0x12c
/* 8014DD40  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014DD44  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014DD48  48 1F 87 69 */	bl PSMTXCopy
/* 8014DD4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014DD50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014DD54  7C 64 1B 78 */	mr r4, r3
/* 8014DD58  48 1F 88 59 */	bl PSMTXInverse
/* 8014DD5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014DD60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014DD64  38 81 01 2C */	addi r4, r1, 0x12c
/* 8014DD68  48 1F 87 49 */	bl PSMTXCopy
/* 8014DD6C  38 70 04 D0 */	addi r3, r16, 0x4d0
/* 8014DD70  4B EB EF F5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8014DD74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014DD78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014DD7C  38 81 01 2C */	addi r4, r1, 0x12c
/* 8014DD80  7C 65 1B 78 */	mr r5, r3
/* 8014DD84  48 1F 87 61 */	bl PSMTXConcat
/* 8014DD88  3A 60 00 00 */	li r19, 0
/* 8014DD8C  3A 20 00 00 */	li r17, 0
/* 8014DD90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014DD94  3A 43 D4 70 */	addi r18, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_8014DD98:
/* 8014DD98  38 61 00 98 */	addi r3, r1, 0x98
/* 8014DD9C  38 91 00 34 */	addi r4, r17, 0x34
/* 8014DDA0  7C 9E 22 14 */	add r4, r30, r4
/* 8014DDA4  38 B0 04 D0 */	addi r5, r16, 0x4d0
/* 8014DDA8  48 11 8D 8D */	bl __mi__4cXyzCFRC3Vec
/* 8014DDAC  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8014DDB0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8014DDB4  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8014DDB8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8014DDBC  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8014DDC0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8014DDC4  7E 43 93 78 */	mr r3, r18
/* 8014DDC8  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8014DDCC  38 A1 01 5C */	addi r5, r1, 0x15c
/* 8014DDD0  7C A5 8A 14 */	add r5, r5, r17
/* 8014DDD4  48 1F 8F 99 */	bl PSMTXMultVec
/* 8014DDD8  3A 73 00 01 */	addi r19, r19, 1
/* 8014DDDC  2C 13 00 04 */	cmpwi r19, 4
/* 8014DDE0  3A 31 00 0C */	addi r17, r17, 0xc
/* 8014DDE4  41 80 FF B4 */	blt lbl_8014DD98
/* 8014DDE8  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 8014DDEC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8014DDF0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8014DDF4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8014DDF8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8014DDFC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8014DE00  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8014DE04  38 61 00 8C */	addi r3, r1, 0x8c
/* 8014DE08  38 81 00 BC */	addi r4, r1, 0xbc
/* 8014DE0C  38 B0 04 D0 */	addi r5, r16, 0x4d0
/* 8014DE10  48 11 8D 25 */	bl __mi__4cXyzCFRC3Vec
/* 8014DE14  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8014DE18  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8014DE1C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8014DE20  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8014DE24  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8014DE28  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8014DE2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014DE30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014DE34  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8014DE38  38 A1 00 BC */	addi r5, r1, 0xbc
/* 8014DE3C  48 1F 8F 31 */	bl PSMTXMultVec
/* 8014DE40  3A 60 00 00 */	li r19, 0
/* 8014DE44  3A 00 00 00 */	li r16, 0
/* 8014DE48  3A 20 00 00 */	li r17, 0
/* 8014DE4C  3A 40 00 00 */	li r18, 0
/* 8014DE50  C3 C2 99 D8 */	lfs f30, lit_4116(r2)
/* 8014DE54  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8014DE58  3A E3 9A 20 */	addi r23, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8014DE5C  C3 E2 9A 94 */	lfs f31, lit_8405(r2)
/* 8014DE60  3A 81 00 D4 */	addi r20, r1, 0xd4
lbl_8014DE64:
/* 8014DE64  38 61 00 80 */	addi r3, r1, 0x80
/* 8014DE68  38 13 00 01 */	addi r0, r19, 1
/* 8014DE6C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8014DE70  38 81 01 5C */	addi r4, r1, 0x15c
/* 8014DE74  7C 84 02 14 */	add r4, r4, r0
/* 8014DE78  38 A1 01 5C */	addi r5, r1, 0x15c
/* 8014DE7C  7C A5 92 14 */	add r5, r5, r18
/* 8014DE80  48 11 8C B5 */	bl __mi__4cXyzCFRC3Vec
/* 8014DE84  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8014DE88  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 8014DE8C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8014DE90  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8014DE94  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8014DE98  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8014DE9C  38 00 00 00 */	li r0, 0
/* 8014DEA0  3A C1 00 E4 */	addi r22, r1, 0xe4
/* 8014DEA4  7E D6 8A 14 */	add r22, r22, r17
/* 8014DEA8  B0 16 00 00 */	sth r0, 0(r22)
/* 8014DEAC  B0 16 00 02 */	sth r0, 2(r22)
/* 8014DEB0  B0 16 00 04 */	sth r0, 4(r22)
/* 8014DEB4  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8014DEB8  D3 C1 00 48 */	stfs f30, 0x48(r1)
/* 8014DEBC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8014DEC0  38 61 00 44 */	addi r3, r1, 0x44
/* 8014DEC4  48 1F 92 75 */	bl PSVECSquareMag
/* 8014DEC8  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8014DECC  40 81 00 58 */	ble lbl_8014DF24
/* 8014DED0  FC 00 08 34 */	frsqrte f0, f1
/* 8014DED4  C8 82 9A 08 */	lfd f4, lit_4723(r2)
/* 8014DED8  FC 44 00 32 */	fmul f2, f4, f0
/* 8014DEDC  C8 62 9A 10 */	lfd f3, lit_4724(r2)
/* 8014DEE0  FC 00 00 32 */	fmul f0, f0, f0
/* 8014DEE4  FC 01 00 32 */	fmul f0, f1, f0
/* 8014DEE8  FC 03 00 28 */	fsub f0, f3, f0
/* 8014DEEC  FC 02 00 32 */	fmul f0, f2, f0
/* 8014DEF0  FC 44 00 32 */	fmul f2, f4, f0
/* 8014DEF4  FC 00 00 32 */	fmul f0, f0, f0
/* 8014DEF8  FC 01 00 32 */	fmul f0, f1, f0
/* 8014DEFC  FC 03 00 28 */	fsub f0, f3, f0
/* 8014DF00  FC 02 00 32 */	fmul f0, f2, f0
/* 8014DF04  FC 44 00 32 */	fmul f2, f4, f0
/* 8014DF08  FC 00 00 32 */	fmul f0, f0, f0
/* 8014DF0C  FC 01 00 32 */	fmul f0, f1, f0
/* 8014DF10  FC 03 00 28 */	fsub f0, f3, f0
/* 8014DF14  FC 02 00 32 */	fmul f0, f2, f0
/* 8014DF18  FC 41 00 32 */	fmul f2, f1, f0
/* 8014DF1C  FC 40 10 18 */	frsp f2, f2
/* 8014DF20  48 00 00 90 */	b lbl_8014DFB0
lbl_8014DF24:
/* 8014DF24  C8 02 9A 18 */	lfd f0, lit_4725(r2)
/* 8014DF28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014DF2C  40 80 00 10 */	bge lbl_8014DF3C
/* 8014DF30  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014DF34  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8014DF38  48 00 00 78 */	b lbl_8014DFB0
lbl_8014DF3C:
/* 8014DF3C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8014DF40  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8014DF44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8014DF48  3C 00 7F 80 */	lis r0, 0x7f80
/* 8014DF4C  7C 03 00 00 */	cmpw r3, r0
/* 8014DF50  41 82 00 14 */	beq lbl_8014DF64
/* 8014DF54  40 80 00 40 */	bge lbl_8014DF94
/* 8014DF58  2C 03 00 00 */	cmpwi r3, 0
/* 8014DF5C  41 82 00 20 */	beq lbl_8014DF7C
/* 8014DF60  48 00 00 34 */	b lbl_8014DF94
lbl_8014DF64:
/* 8014DF64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014DF68  41 82 00 0C */	beq lbl_8014DF74
/* 8014DF6C  38 00 00 01 */	li r0, 1
/* 8014DF70  48 00 00 28 */	b lbl_8014DF98
lbl_8014DF74:
/* 8014DF74  38 00 00 02 */	li r0, 2
/* 8014DF78  48 00 00 20 */	b lbl_8014DF98
lbl_8014DF7C:
/* 8014DF7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014DF80  41 82 00 0C */	beq lbl_8014DF8C
/* 8014DF84  38 00 00 05 */	li r0, 5
/* 8014DF88  48 00 00 10 */	b lbl_8014DF98
lbl_8014DF8C:
/* 8014DF8C  38 00 00 03 */	li r0, 3
/* 8014DF90  48 00 00 08 */	b lbl_8014DF98
lbl_8014DF94:
/* 8014DF94  38 00 00 04 */	li r0, 4
lbl_8014DF98:
/* 8014DF98  2C 00 00 01 */	cmpwi r0, 1
/* 8014DF9C  40 82 00 10 */	bne lbl_8014DFAC
/* 8014DFA0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014DFA4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8014DFA8  48 00 00 08 */	b lbl_8014DFB0
lbl_8014DFAC:
/* 8014DFAC  FC 40 08 90 */	fmr f2, f1
lbl_8014DFB0:
/* 8014DFB0  C0 21 00 CC */	lfs f1, 0xcc(r1)
/* 8014DFB4  48 11 96 C1 */	bl cM_atan2s__Fff
/* 8014DFB8  7C 03 00 D0 */	neg r0, r3
/* 8014DFBC  B0 16 00 00 */	sth r0, 0(r22)
/* 8014DFC0  A8 16 00 00 */	lha r0, 0(r22)
/* 8014DFC4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8014DFC8  7C 17 04 2E */	lfsx f0, r23, r0
/* 8014DFCC  FC 00 02 10 */	fabs f0, f0
/* 8014DFD0  FC 00 00 18 */	frsp f0, f0
/* 8014DFD4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8014DFD8  40 80 00 18 */	bge lbl_8014DFF0
/* 8014DFDC  C0 21 00 C8 */	lfs f1, 0xc8(r1)
/* 8014DFE0  C0 41 00 D0 */	lfs f2, 0xd0(r1)
/* 8014DFE4  48 11 96 91 */	bl cM_atan2s__Fff
/* 8014DFE8  B0 76 00 02 */	sth r3, 2(r22)
/* 8014DFEC  48 00 00 0C */	b lbl_8014DFF8
lbl_8014DFF0:
/* 8014DFF0  38 00 00 00 */	li r0, 0
/* 8014DFF4  B0 16 00 02 */	sth r0, 2(r22)
lbl_8014DFF8:
/* 8014DFF8  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8014DFFC  48 1F 91 3D */	bl PSVECSquareMag
/* 8014E000  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8014E004  40 81 00 58 */	ble lbl_8014E05C
/* 8014E008  FC 00 08 34 */	frsqrte f0, f1
/* 8014E00C  C8 82 9A 08 */	lfd f4, lit_4723(r2)
/* 8014E010  FC 44 00 32 */	fmul f2, f4, f0
/* 8014E014  C8 62 9A 10 */	lfd f3, lit_4724(r2)
/* 8014E018  FC 00 00 32 */	fmul f0, f0, f0
/* 8014E01C  FC 01 00 32 */	fmul f0, f1, f0
/* 8014E020  FC 03 00 28 */	fsub f0, f3, f0
/* 8014E024  FC 02 00 32 */	fmul f0, f2, f0
/* 8014E028  FC 44 00 32 */	fmul f2, f4, f0
/* 8014E02C  FC 00 00 32 */	fmul f0, f0, f0
/* 8014E030  FC 01 00 32 */	fmul f0, f1, f0
/* 8014E034  FC 03 00 28 */	fsub f0, f3, f0
/* 8014E038  FC 02 00 32 */	fmul f0, f2, f0
/* 8014E03C  FC 44 00 32 */	fmul f2, f4, f0
/* 8014E040  FC 00 00 32 */	fmul f0, f0, f0
/* 8014E044  FC 01 00 32 */	fmul f0, f1, f0
/* 8014E048  FC 03 00 28 */	fsub f0, f3, f0
/* 8014E04C  FC 02 00 32 */	fmul f0, f2, f0
/* 8014E050  FC 21 00 32 */	fmul f1, f1, f0
/* 8014E054  FC 20 08 18 */	frsp f1, f1
/* 8014E058  48 00 00 88 */	b lbl_8014E0E0
lbl_8014E05C:
/* 8014E05C  C8 02 9A 18 */	lfd f0, lit_4725(r2)
/* 8014E060  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014E064  40 80 00 10 */	bge lbl_8014E074
/* 8014E068  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014E06C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8014E070  48 00 00 70 */	b lbl_8014E0E0
lbl_8014E074:
/* 8014E074  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8014E078  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8014E07C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8014E080  3C 00 7F 80 */	lis r0, 0x7f80
/* 8014E084  7C 03 00 00 */	cmpw r3, r0
/* 8014E088  41 82 00 14 */	beq lbl_8014E09C
/* 8014E08C  40 80 00 40 */	bge lbl_8014E0CC
/* 8014E090  2C 03 00 00 */	cmpwi r3, 0
/* 8014E094  41 82 00 20 */	beq lbl_8014E0B4
/* 8014E098  48 00 00 34 */	b lbl_8014E0CC
lbl_8014E09C:
/* 8014E09C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014E0A0  41 82 00 0C */	beq lbl_8014E0AC
/* 8014E0A4  38 00 00 01 */	li r0, 1
/* 8014E0A8  48 00 00 28 */	b lbl_8014E0D0
lbl_8014E0AC:
/* 8014E0AC  38 00 00 02 */	li r0, 2
/* 8014E0B0  48 00 00 20 */	b lbl_8014E0D0
lbl_8014E0B4:
/* 8014E0B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014E0B8  41 82 00 0C */	beq lbl_8014E0C4
/* 8014E0BC  38 00 00 05 */	li r0, 5
/* 8014E0C0  48 00 00 10 */	b lbl_8014E0D0
lbl_8014E0C4:
/* 8014E0C4  38 00 00 03 */	li r0, 3
/* 8014E0C8  48 00 00 08 */	b lbl_8014E0D0
lbl_8014E0CC:
/* 8014E0CC  38 00 00 04 */	li r0, 4
lbl_8014E0D0:
/* 8014E0D0  2C 00 00 01 */	cmpwi r0, 1
/* 8014E0D4  40 82 00 0C */	bne lbl_8014E0E0
/* 8014E0D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014E0DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8014E0E0:
/* 8014E0E0  7C 34 85 2E */	stfsx f1, r20, r16
/* 8014E0E4  3A 73 00 01 */	addi r19, r19, 1
/* 8014E0E8  2C 13 00 03 */	cmpwi r19, 3
/* 8014E0EC  3A 10 00 04 */	addi r16, r16, 4
/* 8014E0F0  3A 31 00 06 */	addi r17, r17, 6
/* 8014E0F4  3A 52 00 0C */	addi r18, r18, 0xc
/* 8014E0F8  41 80 FD 6C */	blt lbl_8014DE64
/* 8014E0FC  3A 00 00 02 */	li r16, 2
/* 8014E100  3B A0 00 0C */	li r29, 0xc
/* 8014E104  3B 80 00 18 */	li r28, 0x18
/* 8014E108  3A 6D 8B E0 */	la r19, Zero__5csXyz(r13) /* 80451160-_SDA_BASE_ */
/* 8014E10C  3A C1 01 80 */	addi r22, r1, 0x180
/* 8014E110  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014E114  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014E118  7E F8 BB 78 */	mr r24, r23
/* 8014E11C  C3 E2 99 D8 */	lfs f31, lit_4116(r2)
/* 8014E120  3B 21 00 D4 */	addi r25, r1, 0xd4
/* 8014E124  7E FA BB 78 */	mr r26, r23
lbl_8014E128:
/* 8014E128  A8 0D 8B E0 */	lha r0, Zero__5csXyz(r13)
/* 8014E12C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8014E130  A8 13 00 02 */	lha r0, 2(r19)
/* 8014E134  B0 01 00 26 */	sth r0, 0x26(r1)
/* 8014E138  A8 13 00 04 */	lha r0, 4(r19)
/* 8014E13C  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8014E140  3A 20 00 00 */	li r17, 0
/* 8014E144  3A 40 00 00 */	li r18, 0
/* 8014E148  3A 80 00 00 */	li r20, 0
/* 8014E14C  3A A0 00 00 */	li r21, 0
lbl_8014E150:
/* 8014E150  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8014E154  7C 63 AA 14 */	add r3, r3, r21
/* 8014E158  4B EB ED 45 */	bl XYZrotS__14mDoMtx_stack_cFRC5csXyz
/* 8014E15C  7E E3 BB 78 */	mr r3, r23
/* 8014E160  38 81 00 FC */	addi r4, r1, 0xfc
/* 8014E164  48 1F 83 4D */	bl PSMTXCopy
/* 8014E168  38 61 01 5C */	addi r3, r1, 0x15c
/* 8014E16C  7C 63 A2 14 */	add r3, r3, r20
/* 8014E170  4B EB EB F5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8014E174  A8 61 00 24 */	lha r3, 0x24(r1)
/* 8014E178  7C 9E AA 14 */	add r4, r30, r21
/* 8014E17C  A8 04 00 64 */	lha r0, 0x64(r4)
/* 8014E180  7C 03 02 14 */	add r0, r3, r0
/* 8014E184  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8014E188  A8 61 00 26 */	lha r3, 0x26(r1)
/* 8014E18C  A8 04 00 66 */	lha r0, 0x66(r4)
/* 8014E190  7C 03 02 14 */	add r0, r3, r0
/* 8014E194  B0 01 00 26 */	sth r0, 0x26(r1)
/* 8014E198  38 61 00 24 */	addi r3, r1, 0x24
/* 8014E19C  4B EB ED A9 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8014E1A0  7E E3 BB 78 */	mr r3, r23
/* 8014E1A4  38 81 00 FC */	addi r4, r1, 0xfc
/* 8014E1A8  7F 05 C3 78 */	mr r5, r24
/* 8014E1AC  48 1F 83 39 */	bl PSMTXConcat
/* 8014E1B0  D3 E1 00 C8 */	stfs f31, 0xc8(r1)
/* 8014E1B4  D3 E1 00 CC */	stfs f31, 0xcc(r1)
/* 8014E1B8  7C 19 94 2E */	lfsx f0, r25, r18
/* 8014E1BC  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8014E1C0  7F 43 D3 78 */	mr r3, r26
/* 8014E1C4  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8014E1C8  38 11 00 01 */	addi r0, r17, 1
/* 8014E1CC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8014E1D0  38 A1 01 5C */	addi r5, r1, 0x15c
/* 8014E1D4  7C A5 02 14 */	add r5, r5, r0
/* 8014E1D8  48 1F 8B 95 */	bl PSMTXMultVec
/* 8014E1DC  3A 31 00 01 */	addi r17, r17, 1
/* 8014E1E0  2C 11 00 03 */	cmpwi r17, 3
/* 8014E1E4  3A 52 00 04 */	addi r18, r18, 4
/* 8014E1E8  3A 94 00 0C */	addi r20, r20, 0xc
/* 8014E1EC  3A B5 00 06 */	addi r21, r21, 6
/* 8014E1F0  41 80 FF 60 */	blt lbl_8014E150
/* 8014E1F4  2C 10 FF FF */	cmpwi r16, -1
/* 8014E1F8  41 82 03 BC */	beq lbl_8014E5B4
/* 8014E1FC  7F E0 07 35 */	extsh. r0, r31
/* 8014E200  40 82 00 10 */	bne lbl_8014E210
/* 8014E204  38 60 00 00 */	li r3, 0
/* 8014E208  38 10 00 94 */	addi r0, r16, 0x94
/* 8014E20C  7C 7E 01 AE */	stbx r3, r30, r0
lbl_8014E210:
/* 8014E210  3A 90 00 94 */	addi r20, r16, 0x94
/* 8014E214  7C 1E A0 AE */	lbzx r0, r30, r20
/* 8014E218  28 00 00 00 */	cmplwi r0, 0
/* 8014E21C  40 82 03 4C */	bne lbl_8014E568
/* 8014E220  38 61 00 74 */	addi r3, r1, 0x74
/* 8014E224  38 81 00 BC */	addi r4, r1, 0xbc
/* 8014E228  3A 21 01 5C */	addi r17, r1, 0x15c
/* 8014E22C  7E 31 E2 14 */	add r17, r17, r28
/* 8014E230  7E 25 8B 78 */	mr r5, r17
/* 8014E234  48 11 89 01 */	bl __mi__4cXyzCFRC3Vec
/* 8014E238  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8014E23C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8014E240  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8014E244  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8014E248  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8014E24C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8014E250  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8014E254  48 11 8E 59 */	bl isZero__4cXyzCFv
/* 8014E258  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014E25C  40 82 03 0C */	bne lbl_8014E568
/* 8014E260  38 61 00 68 */	addi r3, r1, 0x68
/* 8014E264  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8014E268  48 11 8C 8D */	bl normalize__4cXyzFv
/* 8014E26C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8014E270  7E C4 B3 78 */	mr r4, r22
/* 8014E274  7E 25 8B 78 */	mr r5, r17
/* 8014E278  48 11 88 BD */	bl __mi__4cXyzCFRC3Vec
/* 8014E27C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8014E280  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8014E284  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8014E288  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8014E28C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8014E290  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8014E294  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8014E298  48 11 8E 15 */	bl isZero__4cXyzCFv
/* 8014E29C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014E2A0  40 82 02 C8 */	bne lbl_8014E568
/* 8014E2A4  38 61 00 50 */	addi r3, r1, 0x50
/* 8014E2A8  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8014E2AC  48 11 8C 49 */	bl normalize__4cXyzFv
/* 8014E2B0  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8014E2B4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8014E2B8  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014E2BC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8014E2C0  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8014E2C4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8014E2C8  38 61 00 38 */	addi r3, r1, 0x38
/* 8014E2CC  48 1F 8E 6D */	bl PSVECSquareMag
/* 8014E2D0  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014E2D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014E2D8  40 81 00 58 */	ble lbl_8014E330
/* 8014E2DC  FC 00 08 34 */	frsqrte f0, f1
/* 8014E2E0  C8 82 9A 08 */	lfd f4, lit_4723(r2)
/* 8014E2E4  FC 44 00 32 */	fmul f2, f4, f0
/* 8014E2E8  C8 62 9A 10 */	lfd f3, lit_4724(r2)
/* 8014E2EC  FC 00 00 32 */	fmul f0, f0, f0
/* 8014E2F0  FC 01 00 32 */	fmul f0, f1, f0
/* 8014E2F4  FC 03 00 28 */	fsub f0, f3, f0
/* 8014E2F8  FC 02 00 32 */	fmul f0, f2, f0
/* 8014E2FC  FC 44 00 32 */	fmul f2, f4, f0
/* 8014E300  FC 00 00 32 */	fmul f0, f0, f0
/* 8014E304  FC 01 00 32 */	fmul f0, f1, f0
/* 8014E308  FC 03 00 28 */	fsub f0, f3, f0
/* 8014E30C  FC 02 00 32 */	fmul f0, f2, f0
/* 8014E310  FC 44 00 32 */	fmul f2, f4, f0
/* 8014E314  FC 00 00 32 */	fmul f0, f0, f0
/* 8014E318  FC 01 00 32 */	fmul f0, f1, f0
/* 8014E31C  FC 03 00 28 */	fsub f0, f3, f0
/* 8014E320  FC 02 00 32 */	fmul f0, f2, f0
/* 8014E324  FC 41 00 32 */	fmul f2, f1, f0
/* 8014E328  FC 40 10 18 */	frsp f2, f2
/* 8014E32C  48 00 00 90 */	b lbl_8014E3BC
lbl_8014E330:
/* 8014E330  C8 02 9A 18 */	lfd f0, lit_4725(r2)
/* 8014E334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014E338  40 80 00 10 */	bge lbl_8014E348
/* 8014E33C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014E340  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8014E344  48 00 00 78 */	b lbl_8014E3BC
lbl_8014E348:
/* 8014E348  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8014E34C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8014E350  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8014E354  3C 00 7F 80 */	lis r0, 0x7f80
/* 8014E358  7C 03 00 00 */	cmpw r3, r0
/* 8014E35C  41 82 00 14 */	beq lbl_8014E370
/* 8014E360  40 80 00 40 */	bge lbl_8014E3A0
/* 8014E364  2C 03 00 00 */	cmpwi r3, 0
/* 8014E368  41 82 00 20 */	beq lbl_8014E388
/* 8014E36C  48 00 00 34 */	b lbl_8014E3A0
lbl_8014E370:
/* 8014E370  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014E374  41 82 00 0C */	beq lbl_8014E380
/* 8014E378  38 00 00 01 */	li r0, 1
/* 8014E37C  48 00 00 28 */	b lbl_8014E3A4
lbl_8014E380:
/* 8014E380  38 00 00 02 */	li r0, 2
/* 8014E384  48 00 00 20 */	b lbl_8014E3A4
lbl_8014E388:
/* 8014E388  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014E38C  41 82 00 0C */	beq lbl_8014E398
/* 8014E390  38 00 00 05 */	li r0, 5
/* 8014E394  48 00 00 10 */	b lbl_8014E3A4
lbl_8014E398:
/* 8014E398  38 00 00 03 */	li r0, 3
/* 8014E39C  48 00 00 08 */	b lbl_8014E3A4
lbl_8014E3A0:
/* 8014E3A0  38 00 00 04 */	li r0, 4
lbl_8014E3A4:
/* 8014E3A4  2C 00 00 01 */	cmpwi r0, 1
/* 8014E3A8  40 82 00 10 */	bne lbl_8014E3B8
/* 8014E3AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014E3B0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8014E3B4  48 00 00 08 */	b lbl_8014E3BC
lbl_8014E3B8:
/* 8014E3B8  FC 40 08 90 */	fmr f2, f1
lbl_8014E3BC:
/* 8014E3BC  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 8014E3C0  48 11 92 B5 */	bl cM_atan2s__Fff
/* 8014E3C4  7C 03 00 D0 */	neg r0, r3
/* 8014E3C8  7C 12 07 34 */	extsh r18, r0
/* 8014E3CC  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 8014E3D0  C0 41 00 B8 */	lfs f2, 0xb8(r1)
/* 8014E3D4  48 11 92 A1 */	bl cM_atan2s__Fff
/* 8014E3D8  7C 7B 1B 78 */	mr r27, r3
/* 8014E3DC  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8014E3E0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8014E3E4  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014E3E8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8014E3EC  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8014E3F0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8014E3F4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8014E3F8  48 1F 8D 41 */	bl PSVECSquareMag
/* 8014E3FC  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014E400  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014E404  40 81 00 58 */	ble lbl_8014E45C
/* 8014E408  FC 00 08 34 */	frsqrte f0, f1
/* 8014E40C  C8 82 9A 08 */	lfd f4, lit_4723(r2)
/* 8014E410  FC 44 00 32 */	fmul f2, f4, f0
/* 8014E414  C8 62 9A 10 */	lfd f3, lit_4724(r2)
/* 8014E418  FC 00 00 32 */	fmul f0, f0, f0
/* 8014E41C  FC 01 00 32 */	fmul f0, f1, f0
/* 8014E420  FC 03 00 28 */	fsub f0, f3, f0
/* 8014E424  FC 02 00 32 */	fmul f0, f2, f0
/* 8014E428  FC 44 00 32 */	fmul f2, f4, f0
/* 8014E42C  FC 00 00 32 */	fmul f0, f0, f0
/* 8014E430  FC 01 00 32 */	fmul f0, f1, f0
/* 8014E434  FC 03 00 28 */	fsub f0, f3, f0
/* 8014E438  FC 02 00 32 */	fmul f0, f2, f0
/* 8014E43C  FC 44 00 32 */	fmul f2, f4, f0
/* 8014E440  FC 00 00 32 */	fmul f0, f0, f0
/* 8014E444  FC 01 00 32 */	fmul f0, f1, f0
/* 8014E448  FC 03 00 28 */	fsub f0, f3, f0
/* 8014E44C  FC 02 00 32 */	fmul f0, f2, f0
/* 8014E450  FC 41 00 32 */	fmul f2, f1, f0
/* 8014E454  FC 40 10 18 */	frsp f2, f2
/* 8014E458  48 00 00 90 */	b lbl_8014E4E8
lbl_8014E45C:
/* 8014E45C  C8 02 9A 18 */	lfd f0, lit_4725(r2)
/* 8014E460  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014E464  40 80 00 10 */	bge lbl_8014E474
/* 8014E468  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014E46C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8014E470  48 00 00 78 */	b lbl_8014E4E8
lbl_8014E474:
/* 8014E474  D0 21 00 08 */	stfs f1, 8(r1)
/* 8014E478  80 81 00 08 */	lwz r4, 8(r1)
/* 8014E47C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8014E480  3C 00 7F 80 */	lis r0, 0x7f80
/* 8014E484  7C 03 00 00 */	cmpw r3, r0
/* 8014E488  41 82 00 14 */	beq lbl_8014E49C
/* 8014E48C  40 80 00 40 */	bge lbl_8014E4CC
/* 8014E490  2C 03 00 00 */	cmpwi r3, 0
/* 8014E494  41 82 00 20 */	beq lbl_8014E4B4
/* 8014E498  48 00 00 34 */	b lbl_8014E4CC
lbl_8014E49C:
/* 8014E49C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014E4A0  41 82 00 0C */	beq lbl_8014E4AC
/* 8014E4A4  38 00 00 01 */	li r0, 1
/* 8014E4A8  48 00 00 28 */	b lbl_8014E4D0
lbl_8014E4AC:
/* 8014E4AC  38 00 00 02 */	li r0, 2
/* 8014E4B0  48 00 00 20 */	b lbl_8014E4D0
lbl_8014E4B4:
/* 8014E4B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014E4B8  41 82 00 0C */	beq lbl_8014E4C4
/* 8014E4BC  38 00 00 05 */	li r0, 5
/* 8014E4C0  48 00 00 10 */	b lbl_8014E4D0
lbl_8014E4C4:
/* 8014E4C4  38 00 00 03 */	li r0, 3
/* 8014E4C8  48 00 00 08 */	b lbl_8014E4D0
lbl_8014E4CC:
/* 8014E4CC  38 00 00 04 */	li r0, 4
lbl_8014E4D0:
/* 8014E4D0  2C 00 00 01 */	cmpwi r0, 1
/* 8014E4D4  40 82 00 10 */	bne lbl_8014E4E4
/* 8014E4D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014E4DC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8014E4E0  48 00 00 08 */	b lbl_8014E4E8
lbl_8014E4E4:
/* 8014E4E4  FC 40 08 90 */	fmr f2, f1
lbl_8014E4E8:
/* 8014E4E8  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 8014E4EC  48 11 91 89 */	bl cM_atan2s__Fff
/* 8014E4F0  7C 03 00 D0 */	neg r0, r3
/* 8014E4F4  7C 11 07 34 */	extsh r17, r0
/* 8014E4F8  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 8014E4FC  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 8014E500  48 11 91 75 */	bl cM_atan2s__Fff
/* 8014E504  7E BE EA 14 */	add r21, r30, r29
/* 8014E508  A8 95 00 64 */	lha r4, 0x64(r21)
/* 8014E50C  7C 11 90 50 */	subf r0, r17, r18
/* 8014E510  7C 00 07 34 */	extsh r0, r0
/* 8014E514  7C 04 02 14 */	add r0, r4, r0
/* 8014E518  B0 15 00 64 */	sth r0, 0x64(r21)
/* 8014E51C  A8 95 00 66 */	lha r4, 0x66(r21)
/* 8014E520  7C 03 D8 50 */	subf r0, r3, r27
/* 8014E524  7C 00 07 34 */	extsh r0, r0
/* 8014E528  7C 04 02 14 */	add r0, r4, r0
/* 8014E52C  B0 15 00 66 */	sth r0, 0x66(r21)
/* 8014E530  7F C3 F3 78 */	mr r3, r30
/* 8014E534  3A 21 00 E4 */	addi r17, r1, 0xe4
/* 8014E538  7E 31 EA 14 */	add r17, r17, r29
/* 8014E53C  A8 91 00 00 */	lha r4, 0(r17)
/* 8014E540  38 B5 00 64 */	addi r5, r21, 0x64
/* 8014E544  A8 D5 00 04 */	lha r6, 4(r21)
/* 8014E548  A8 F5 00 1C */	lha r7, 0x1c(r21)
/* 8014E54C  4B FF F5 F5 */	bl limitter__18daBaseNpc_lookat_cFsPsss
/* 8014E550  7F C3 F3 78 */	mr r3, r30
/* 8014E554  A8 91 00 02 */	lha r4, 2(r17)
/* 8014E558  38 B5 00 66 */	addi r5, r21, 0x66
/* 8014E55C  A8 D5 00 06 */	lha r6, 6(r21)
/* 8014E560  A8 F5 00 1E */	lha r7, 0x1e(r21)
/* 8014E564  4B FF F5 DD */	bl limitter__18daBaseNpc_lookat_cFsPsss
lbl_8014E568:
/* 8014E568  7F E0 07 35 */	extsh. r0, r31
/* 8014E56C  40 81 00 14 */	ble lbl_8014E580
/* 8014E570  38 1D 00 66 */	addi r0, r29, 0x66
/* 8014E574  7C 1E 02 AE */	lhax r0, r30, r0
/* 8014E578  2C 00 00 00 */	cmpwi r0, 0
/* 8014E57C  41 80 00 1C */	blt lbl_8014E598
lbl_8014E580:
/* 8014E580  7F E0 07 35 */	extsh. r0, r31
/* 8014E584  40 80 00 1C */	bge lbl_8014E5A0
/* 8014E588  38 1D 00 66 */	addi r0, r29, 0x66
/* 8014E58C  7C 1E 02 AE */	lhax r0, r30, r0
/* 8014E590  2C 00 00 00 */	cmpwi r0, 0
/* 8014E594  40 81 00 0C */	ble lbl_8014E5A0
lbl_8014E598:
/* 8014E598  38 00 00 01 */	li r0, 1
/* 8014E59C  7C 1E A1 AE */	stbx r0, r30, r20
lbl_8014E5A0:
/* 8014E5A0  3A 10 FF FF */	addi r16, r16, -1
/* 8014E5A4  2C 10 FF FF */	cmpwi r16, -1
/* 8014E5A8  3B BD FF FA */	addi r29, r29, -6
/* 8014E5AC  3B 9C FF F4 */	addi r28, r28, -12
/* 8014E5B0  40 80 FB 78 */	bge lbl_8014E128
lbl_8014E5B4:
/* 8014E5B4  A8 0D 8B E0 */	lha r0, Zero__5csXyz(r13)
/* 8014E5B8  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8014E5BC  A8 13 00 02 */	lha r0, 2(r19)
/* 8014E5C0  B0 01 00 26 */	sth r0, 0x26(r1)
/* 8014E5C4  A8 13 00 04 */	lha r0, 4(r19)
/* 8014E5C8  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8014E5CC  3A 40 00 00 */	li r18, 0
/* 8014E5D0  3A 00 00 00 */	li r16, 0
lbl_8014E5D4:
/* 8014E5D4  38 61 00 24 */	addi r3, r1, 0x24
/* 8014E5D8  7E 3E 82 14 */	add r17, r30, r16
/* 8014E5DC  38 91 00 64 */	addi r4, r17, 0x64
/* 8014E5E0  48 11 8E 7D */	bl __apl__5csXyzFR5csXyz
/* 8014E5E4  A8 01 00 24 */	lha r0, 0x24(r1)
/* 8014E5E8  B0 11 00 7C */	sth r0, 0x7c(r17)
/* 8014E5EC  A8 01 00 26 */	lha r0, 0x26(r1)
/* 8014E5F0  B0 11 00 7E */	sth r0, 0x7e(r17)
/* 8014E5F4  A8 01 00 28 */	lha r0, 0x28(r1)
/* 8014E5F8  B0 11 00 80 */	sth r0, 0x80(r17)
/* 8014E5FC  3A 52 00 01 */	addi r18, r18, 1
/* 8014E600  2C 12 00 04 */	cmpwi r18, 4
/* 8014E604  3A 10 00 06 */	addi r16, r16, 6
/* 8014E608  41 80 FF CC */	blt lbl_8014E5D4
lbl_8014E60C:
/* 8014E60C  E3 E1 02 38 */	psq_l f31, 568(r1), 0, 0 /* qr0 */
/* 8014E610  CB E1 02 30 */	lfd f31, 0x230(r1)
/* 8014E614  E3 C1 02 28 */	psq_l f30, 552(r1), 0, 0 /* qr0 */
/* 8014E618  CB C1 02 20 */	lfd f30, 0x220(r1)
/* 8014E61C  39 61 02 20 */	addi r11, r1, 0x220
/* 8014E620  48 21 3B D5 */	bl _restgpr_16
/* 8014E624  80 01 02 44 */	lwz r0, 0x244(r1)
/* 8014E628  7C 08 03 A6 */	mtlr r0
/* 8014E62C  38 21 02 40 */	addi r1, r1, 0x240
/* 8014E630  4E 80 00 20 */	blr 
