lbl_80369274:
/* 80369274  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80369278  7C 08 02 A6 */	mflr r0
/* 8036927C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80369280  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80369284  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80369288  D8 21 00 08 */	stfd f1, 8(r1)
/* 8036928C  3C 00 3F F0 */	lis r0, 0x3ff0
/* 80369290  80 81 00 08 */	lwz r4, 8(r1)
/* 80369294  54 83 00 7E */	clrlwi r3, r4, 1
/* 80369298  7C 03 00 00 */	cmpw r3, r0
/* 8036929C  41 80 00 38 */	blt lbl_803692D4
/* 803692A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803692A4  3C 63 C0 10 */	addis r3, r3, 0xc010
/* 803692A8  7C 60 03 79 */	or. r0, r3, r0
/* 803692AC  40 82 00 1C */	bne lbl_803692C8
/* 803692B0  2C 04 00 00 */	cmpwi r4, 0
/* 803692B4  40 81 00 0C */	ble lbl_803692C0
/* 803692B8  C8 22 CC 78 */	lfd f1, lit_83(r2)
/* 803692BC  48 00 01 DC */	b lbl_80369498
lbl_803692C0:
/* 803692C0  C8 22 CC 80 */	lfd f1, lit_84(r2)
/* 803692C4  48 00 01 D4 */	b lbl_80369498
lbl_803692C8:
/* 803692C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 803692CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 803692D0  48 00 01 C8 */	b lbl_80369498
lbl_803692D4:
/* 803692D4  3C 00 3F E0 */	lis r0, 0x3fe0
/* 803692D8  7C 03 00 00 */	cmpw r3, r0
/* 803692DC  40 80 00 8C */	bge lbl_80369368
/* 803692E0  3C 00 3C 60 */	lis r0, 0x3c60
/* 803692E4  7C 03 00 00 */	cmpw r3, r0
/* 803692E8  41 81 00 0C */	bgt lbl_803692F4
/* 803692EC  C8 22 CC 88 */	lfd f1, lit_85(r2)
/* 803692F0  48 00 01 A8 */	b lbl_80369498
lbl_803692F4:
/* 803692F4  FD 41 00 72 */	fmul f10, f1, f1
/* 803692F8  C8 42 CC C0 */	lfd f2, lit_92(r2)
/* 803692FC  C8 02 CC B8 */	lfd f0, lit_91(r2)
/* 80369300  C8 62 CC B0 */	lfd f3, lit_90(r2)
/* 80369304  C9 02 CC A8 */	lfd f8, lit_89(r2)
/* 80369308  FC 82 02 BA */	fmadd f4, f2, f10, f0
/* 8036930C  C8 42 CC E8 */	lfd f2, lit_97(r2)
/* 80369310  C8 02 CC E0 */	lfd f0, lit_96(r2)
/* 80369314  C8 E2 CC A0 */	lfd f7, lit_88(r2)
/* 80369318  FD 2A 19 3A */	fmadd f9, f10, f4, f3
/* 8036931C  C8 82 CC D8 */	lfd f4, lit_95(r2)
/* 80369320  C8 C2 CC 98 */	lfd f6, lit_87(r2)
/* 80369324  FC A2 02 BA */	fmadd f5, f2, f10, f0
/* 80369328  C8 62 CC D0 */	lfd f3, lit_94(r2)
/* 8036932C  C8 42 CC C8 */	lfd f2, lit_93(r2)
/* 80369330  FD 0A 42 7A */	fmadd f8, f10, f9, f8
/* 80369334  C8 02 CC 90 */	lfd f0, lit_86(r2)
/* 80369338  C9 22 CC 88 */	lfd f9, lit_85(r2)
/* 8036933C  FC 8A 21 7A */	fmadd f4, f10, f5, f4
/* 80369340  FC AA 3A 3A */	fmadd f5, f10, f8, f7
/* 80369344  FC 6A 19 3A */	fmadd f3, f10, f4, f3
/* 80369348  FC 8A 31 7A */	fmadd f4, f10, f5, f6
/* 8036934C  FC 4A 10 FA */	fmadd f2, f10, f3, f2
/* 80369350  FC 6A 01 32 */	fmul f3, f10, f4
/* 80369354  FC 43 10 24 */	fdiv f2, f3, f2
/* 80369358  FC 01 00 BC */	fnmsub f0, f1, f2, f0
/* 8036935C  FC 01 00 28 */	fsub f0, f1, f0
/* 80369360  FC 29 00 28 */	fsub f1, f9, f0
/* 80369364  48 00 01 34 */	b lbl_80369498
lbl_80369368:
/* 80369368  2C 04 00 00 */	cmpwi r4, 0
/* 8036936C  40 80 00 90 */	bge lbl_803693FC
/* 80369370  C8 02 CC C8 */	lfd f0, lit_93(r2)
/* 80369374  C8 42 CC F0 */	lfd f2, lit_98(r2)
/* 80369378  FC 00 08 2A */	fadd f0, f0, f1
/* 8036937C  FF E2 00 32 */	fmul f31, f2, f0
/* 80369380  FC 20 F8 90 */	fmr f1, f31
/* 80369384  48 00 36 D1 */	bl sqrt
/* 80369388  C8 62 CC C0 */	lfd f3, lit_92(r2)
/* 8036938C  C8 42 CC B8 */	lfd f2, lit_91(r2)
/* 80369390  C8 02 CC B0 */	lfd f0, lit_90(r2)
/* 80369394  FC 83 17 FA */	fmadd f4, f3, f31, f2
/* 80369398  C8 A2 CC A8 */	lfd f5, lit_89(r2)
/* 8036939C  C8 62 CC E8 */	lfd f3, lit_97(r2)
/* 803693A0  C8 42 CC E0 */	lfd f2, lit_96(r2)
/* 803693A4  C8 E2 CC A0 */	lfd f7, lit_88(r2)
/* 803693A8  FD 1F 01 3A */	fmadd f8, f31, f4, f0
/* 803693AC  C8 02 CC D8 */	lfd f0, lit_95(r2)
/* 803693B0  FC 43 17 FA */	fmadd f2, f3, f31, f2
/* 803693B4  C8 C2 CC 98 */	lfd f6, lit_87(r2)
/* 803693B8  C8 82 CC D0 */	lfd f4, lit_94(r2)
/* 803693BC  FD 1F 2A 3A */	fmadd f8, f31, f8, f5
/* 803693C0  C8 62 CC C8 */	lfd f3, lit_93(r2)
/* 803693C4  FC BF 00 BA */	fmadd f5, f31, f2, f0
/* 803693C8  C8 42 CC 90 */	lfd f2, lit_86(r2)
/* 803693CC  FC FF 3A 3A */	fmadd f7, f31, f8, f7
/* 803693D0  C9 02 CC F8 */	lfd f8, lit_99(r2)
/* 803693D4  C8 02 CC 80 */	lfd f0, lit_84(r2)
/* 803693D8  FC 9F 21 7A */	fmadd f4, f31, f5, f4
/* 803693DC  FC BF 31 FA */	fmadd f5, f31, f7, f6
/* 803693E0  FC 7F 19 3A */	fmadd f3, f31, f4, f3
/* 803693E4  FC 9F 01 72 */	fmul f4, f31, f5
/* 803693E8  FC 64 18 24 */	fdiv f3, f4, f3
/* 803693EC  FC 43 10 78 */	fmsub f2, f3, f1, f2
/* 803693F0  FC 21 10 2A */	fadd f1, f1, f2
/* 803693F4  FC 28 00 7C */	fnmsub f1, f8, f1, f0
/* 803693F8  48 00 00 A0 */	b lbl_80369498
lbl_803693FC:
/* 803693FC  C8 02 CC C8 */	lfd f0, lit_93(r2)
/* 80369400  C8 42 CC F0 */	lfd f2, lit_98(r2)
/* 80369404  FC 00 08 28 */	fsub f0, f0, f1
/* 80369408  FF E2 00 32 */	fmul f31, f2, f0
/* 8036940C  FC 20 F8 90 */	fmr f1, f31
/* 80369410  48 00 36 45 */	bl sqrt
/* 80369414  C8 42 CC C0 */	lfd f2, lit_92(r2)
/* 80369418  38 00 00 00 */	li r0, 0
/* 8036941C  C8 02 CC B8 */	lfd f0, lit_91(r2)
/* 80369420  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 80369424  FC 62 07 FA */	fmadd f3, f2, f31, f0
/* 80369428  C8 02 CC B0 */	lfd f0, lit_90(r2)
/* 8036942C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80369430  C8 42 CC A8 */	lfd f2, lit_89(r2)
/* 80369434  C9 21 00 10 */	lfd f9, 0x10(r1)
/* 80369438  FC BF 00 FA */	fmadd f5, f31, f3, f0
/* 8036943C  C8 82 CC E8 */	lfd f4, lit_97(r2)
/* 80369440  C8 02 CC E0 */	lfd f0, lit_96(r2)
/* 80369444  FC 69 FA 7C */	fnmsub f3, f9, f9, f31
/* 80369448  C8 E2 CC A0 */	lfd f7, lit_88(r2)
/* 8036944C  FD 1F 11 7A */	fmadd f8, f31, f5, f2
/* 80369450  C8 42 CC D8 */	lfd f2, lit_95(r2)
/* 80369454  FC A4 07 FA */	fmadd f5, f4, f31, f0
/* 80369458  C8 C2 CC 98 */	lfd f6, lit_87(r2)
/* 8036945C  C8 02 CC D0 */	lfd f0, lit_94(r2)
/* 80369460  FC FF 3A 3A */	fmadd f7, f31, f8, f7
/* 80369464  C8 82 CC C8 */	lfd f4, lit_93(r2)
/* 80369468  FC BF 11 7A */	fmadd f5, f31, f5, f2
/* 8036946C  C8 42 CC F8 */	lfd f2, lit_99(r2)
/* 80369470  FC DF 31 FA */	fmadd f6, f31, f7, f6
/* 80369474  FC BF 01 7A */	fmadd f5, f31, f5, f0
/* 80369478  FC 01 48 2A */	fadd f0, f1, f9
/* 8036947C  FC DF 01 B2 */	fmul f6, f31, f6
/* 80369480  FC 9F 21 7A */	fmadd f4, f31, f5, f4
/* 80369484  FC 03 00 24 */	fdiv f0, f3, f0
/* 80369488  FC 66 20 24 */	fdiv f3, f6, f4
/* 8036948C  FC 03 00 7A */	fmadd f0, f3, f1, f0
/* 80369490  FC 09 00 2A */	fadd f0, f9, f0
/* 80369494  FC 22 00 32 */	fmul f1, f2, f0
lbl_80369498:
/* 80369498  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8036949C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803694A0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 803694A4  7C 08 03 A6 */	mtlr r0
/* 803694A8  38 21 00 30 */	addi r1, r1, 0x30
/* 803694AC  4E 80 00 20 */	blr 
