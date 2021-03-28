lbl_8025DBE0:
/* 8025DBE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025DBE4  7C 08 02 A6 */	mflr r0
/* 8025DBE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025DBEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8025DBF0  48 10 45 ED */	bl _savegpr_29
/* 8025DBF4  7C 7E 1B 78 */	mr r30, r3
/* 8025DBF8  3B E0 00 00 */	li r31, 0
/* 8025DBFC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8025DC00  28 00 00 00 */	cmplwi r0, 0
/* 8025DC04  41 82 00 BC */	beq lbl_8025DCC0
/* 8025DC08  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DC0C  54 05 10 3A */	slwi r5, r0, 2
/* 8025DC10  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8025DC14  38 04 EB C8 */	addi r0, r4, g_drawHIO@l
/* 8025DC18  7C 80 2A 14 */	add r4, r0, r5
/* 8025DC1C  C0 24 0A A4 */	lfs f1, 0xaa4(r4)
/* 8025DC20  C0 44 0A B0 */	lfs f2, 0xab0(r4)
/* 8025DC24  48 00 1D DD */	bl setParentPos__21dDlst_TimerScrnDraw_cFff
/* 8025DC28  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8025DC2C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8025DC30  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DC34  54 00 10 3A */	slwi r0, r0, 2
/* 8025DC38  7C 63 02 14 */	add r3, r3, r0
/* 8025DC3C  C0 03 0A 98 */	lfs f0, 0xa98(r3)
/* 8025DC40  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8025DC44  80 63 00 04 */	lwz r3, 4(r3)
/* 8025DC48  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8025DC4C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8025DC50  81 83 00 00 */	lwz r12, 0(r3)
/* 8025DC54  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8025DC58  7D 89 03 A6 */	mtctr r12
/* 8025DC5C  4E 80 04 21 */	bctrl 
/* 8025DC60  88 1E 03 DF */	lbz r0, 0x3df(r30)
/* 8025DC64  28 00 00 00 */	cmplwi r0, 0
/* 8025DC68  41 82 00 58 */	beq lbl_8025DCC0
/* 8025DC6C  88 1E 03 E0 */	lbz r0, 0x3e0(r30)
/* 8025DC70  28 00 00 00 */	cmplwi r0, 0
/* 8025DC74  41 82 00 4C */	beq lbl_8025DCC0
/* 8025DC78  C0 1E 03 B0 */	lfs f0, 0x3b0(r30)
/* 8025DC7C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8025DC80  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8025DC84  3B A3 0A BC */	addi r29, r3, 0xabc
/* 8025DC88  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DC8C  54 00 10 3A */	slwi r0, r0, 2
/* 8025DC90  7C 3D 04 2E */	lfsx f1, r29, r0
/* 8025DC94  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8025DC98  41 82 00 28 */	beq lbl_8025DCC0
/* 8025DC9C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8025DCA0  28 03 00 00 */	cmplwi r3, 0
/* 8025DCA4  41 82 00 08 */	beq lbl_8025DCAC
/* 8025DCA8  4B FF 7B 29 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_8025DCAC:
/* 8025DCAC  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DCB0  54 00 10 3A */	slwi r0, r0, 2
/* 8025DCB4  7C 1D 04 2E */	lfsx f0, r29, r0
/* 8025DCB8  D0 1E 03 B0 */	stfs f0, 0x3b0(r30)
/* 8025DCBC  3B E0 00 01 */	li r31, 1
lbl_8025DCC0:
/* 8025DCC0  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8025DCC4  28 00 00 00 */	cmplwi r0, 0
/* 8025DCC8  41 82 01 44 */	beq lbl_8025DE0C
/* 8025DCCC  88 1E 03 E2 */	lbz r0, 0x3e2(r30)
/* 8025DCD0  28 00 00 00 */	cmplwi r0, 0
/* 8025DCD4  41 82 00 2C */	beq lbl_8025DD00
/* 8025DCD8  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DCDC  28 00 00 00 */	cmplwi r0, 0
/* 8025DCE0  40 82 00 20 */	bne lbl_8025DD00
/* 8025DCE4  7F C3 F3 78 */	mr r3, r30
/* 8025DCE8  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8025DCEC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 8025DCF0  C0 24 0B 84 */	lfs f1, 0xb84(r4)
/* 8025DCF4  C0 44 0B 88 */	lfs f2, 0xb88(r4)
/* 8025DCF8  48 00 1D 35 */	bl setTimerPos__21dDlst_TimerScrnDraw_cFff
/* 8025DCFC  48 00 00 28 */	b lbl_8025DD24
lbl_8025DD00:
/* 8025DD00  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DD04  54 05 10 3A */	slwi r5, r0, 2
/* 8025DD08  7F C3 F3 78 */	mr r3, r30
/* 8025DD0C  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8025DD10  38 04 EB C8 */	addi r0, r4, g_drawHIO@l
/* 8025DD14  7C 80 2A 14 */	add r4, r0, r5
/* 8025DD18  C0 24 0A E0 */	lfs f1, 0xae0(r4)
/* 8025DD1C  C0 44 0A EC */	lfs f2, 0xaec(r4)
/* 8025DD20  48 00 1D 0D */	bl setTimerPos__21dDlst_TimerScrnDraw_cFff
lbl_8025DD24:
/* 8025DD24  88 1E 03 E2 */	lbz r0, 0x3e2(r30)
/* 8025DD28  28 00 00 00 */	cmplwi r0, 0
/* 8025DD2C  41 82 00 44 */	beq lbl_8025DD70
/* 8025DD30  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DD34  28 00 00 00 */	cmplwi r0, 0
/* 8025DD38  40 82 00 38 */	bne lbl_8025DD70
/* 8025DD3C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8025DD40  38 83 EB C8 */	addi r4, r3, g_drawHIO@l
/* 8025DD44  C0 24 0B 80 */	lfs f1, 0xb80(r4)
/* 8025DD48  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8025DD4C  80 63 00 04 */	lwz r3, 4(r3)
/* 8025DD50  C0 04 0B 7C */	lfs f0, 0xb7c(r4)
/* 8025DD54  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8025DD58  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8025DD5C  81 83 00 00 */	lwz r12, 0(r3)
/* 8025DD60  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8025DD64  7D 89 03 A6 */	mtctr r12
/* 8025DD68  4E 80 04 21 */	bctrl 
/* 8025DD6C  48 00 00 40 */	b lbl_8025DDAC
lbl_8025DD70:
/* 8025DD70  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8025DD74  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8025DD78  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DD7C  54 00 10 3A */	slwi r0, r0, 2
/* 8025DD80  7C 83 02 14 */	add r4, r3, r0
/* 8025DD84  C0 24 0A D4 */	lfs f1, 0xad4(r4)
/* 8025DD88  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8025DD8C  80 63 00 04 */	lwz r3, 4(r3)
/* 8025DD90  C0 04 0A C8 */	lfs f0, 0xac8(r4)
/* 8025DD94  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8025DD98  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8025DD9C  81 83 00 00 */	lwz r12, 0(r3)
/* 8025DDA0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8025DDA4  7D 89 03 A6 */	mtctr r12
/* 8025DDA8  4E 80 04 21 */	bctrl 
lbl_8025DDAC:
/* 8025DDAC  88 1E 03 DF */	lbz r0, 0x3df(r30)
/* 8025DDB0  28 00 00 00 */	cmplwi r0, 0
/* 8025DDB4  41 82 00 58 */	beq lbl_8025DE0C
/* 8025DDB8  C0 1E 03 B4 */	lfs f0, 0x3b4(r30)
/* 8025DDBC  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8025DDC0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8025DDC4  3B A3 0A F8 */	addi r29, r3, 0xaf8
/* 8025DDC8  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DDCC  54 00 10 3A */	slwi r0, r0, 2
/* 8025DDD0  7C 3D 04 2E */	lfsx f1, r29, r0
/* 8025DDD4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8025DDD8  40 82 00 0C */	bne lbl_8025DDE4
/* 8025DDDC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8025DDE0  41 82 00 2C */	beq lbl_8025DE0C
lbl_8025DDE4:
/* 8025DDE4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8025DDE8  28 03 00 00 */	cmplwi r3, 0
/* 8025DDEC  41 82 00 10 */	beq lbl_8025DDFC
/* 8025DDF0  C0 1E 03 B0 */	lfs f0, 0x3b0(r30)
/* 8025DDF4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8025DDF8  4B FF 79 D9 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_8025DDFC:
/* 8025DDFC  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DE00  54 00 10 3A */	slwi r0, r0, 2
/* 8025DE04  7C 1D 04 2E */	lfsx f0, r29, r0
/* 8025DE08  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
lbl_8025DE0C:
/* 8025DE0C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8025DE10  28 00 00 00 */	cmplwi r0, 0
/* 8025DE14  41 82 00 C4 */	beq lbl_8025DED8
/* 8025DE18  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DE1C  54 05 10 3A */	slwi r5, r0, 2
/* 8025DE20  7F C3 F3 78 */	mr r3, r30
/* 8025DE24  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8025DE28  38 04 EB C8 */	addi r0, r4, g_drawHIO@l
/* 8025DE2C  7C 80 2A 14 */	add r4, r0, r5
/* 8025DE30  C0 24 0B 1C */	lfs f1, 0xb1c(r4)
/* 8025DE34  C0 44 0B 28 */	lfs f2, 0xb28(r4)
/* 8025DE38  48 00 1C 35 */	bl setCounterPos__21dDlst_TimerScrnDraw_cFff
/* 8025DE3C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8025DE40  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8025DE44  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DE48  54 00 10 3A */	slwi r0, r0, 2
/* 8025DE4C  7C 83 02 14 */	add r4, r3, r0
/* 8025DE50  C0 24 0B 10 */	lfs f1, 0xb10(r4)
/* 8025DE54  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8025DE58  80 63 00 04 */	lwz r3, 4(r3)
/* 8025DE5C  C0 04 0B 04 */	lfs f0, 0xb04(r4)
/* 8025DE60  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8025DE64  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8025DE68  81 83 00 00 */	lwz r12, 0(r3)
/* 8025DE6C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8025DE70  7D 89 03 A6 */	mtctr r12
/* 8025DE74  4E 80 04 21 */	bctrl 
/* 8025DE78  88 1E 03 E0 */	lbz r0, 0x3e0(r30)
/* 8025DE7C  28 00 00 00 */	cmplwi r0, 0
/* 8025DE80  41 82 00 58 */	beq lbl_8025DED8
/* 8025DE84  C0 1E 03 B8 */	lfs f0, 0x3b8(r30)
/* 8025DE88  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8025DE8C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8025DE90  3B A3 0B 34 */	addi r29, r3, 0xb34
/* 8025DE94  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DE98  54 00 10 3A */	slwi r0, r0, 2
/* 8025DE9C  7C 3D 04 2E */	lfsx f1, r29, r0
/* 8025DEA0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8025DEA4  40 82 00 0C */	bne lbl_8025DEB0
/* 8025DEA8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8025DEAC  41 82 00 2C */	beq lbl_8025DED8
lbl_8025DEB0:
/* 8025DEB0  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8025DEB4  28 03 00 00 */	cmplwi r3, 0
/* 8025DEB8  41 82 00 10 */	beq lbl_8025DEC8
/* 8025DEBC  C0 1E 03 B0 */	lfs f0, 0x3b0(r30)
/* 8025DEC0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8025DEC4  4B FF 79 0D */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_8025DEC8:
/* 8025DEC8  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DECC  54 00 10 3A */	slwi r0, r0, 2
/* 8025DED0  7C 1D 04 2E */	lfsx f0, r29, r0
/* 8025DED4  D0 1E 03 B8 */	stfs f0, 0x3b8(r30)
lbl_8025DED8:
/* 8025DED8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8025DEDC  28 00 00 00 */	cmplwi r0, 0
/* 8025DEE0  41 82 00 C4 */	beq lbl_8025DFA4
/* 8025DEE4  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DEE8  54 05 10 3A */	slwi r5, r0, 2
/* 8025DEEC  7F C3 F3 78 */	mr r3, r30
/* 8025DEF0  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8025DEF4  38 04 EB C8 */	addi r0, r4, g_drawHIO@l
/* 8025DEF8  7C 80 2A 14 */	add r4, r0, r5
/* 8025DEFC  C0 24 0B 58 */	lfs f1, 0xb58(r4)
/* 8025DF00  C0 44 0B 64 */	lfs f2, 0xb64(r4)
/* 8025DF04  48 00 1B 95 */	bl setImagePos__21dDlst_TimerScrnDraw_cFff
/* 8025DF08  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8025DF0C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8025DF10  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DF14  54 00 10 3A */	slwi r0, r0, 2
/* 8025DF18  7C 83 02 14 */	add r4, r3, r0
/* 8025DF1C  C0 24 0B 4C */	lfs f1, 0xb4c(r4)
/* 8025DF20  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8025DF24  80 63 00 04 */	lwz r3, 4(r3)
/* 8025DF28  C0 04 0B 40 */	lfs f0, 0xb40(r4)
/* 8025DF2C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8025DF30  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8025DF34  81 83 00 00 */	lwz r12, 0(r3)
/* 8025DF38  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8025DF3C  7D 89 03 A6 */	mtctr r12
/* 8025DF40  4E 80 04 21 */	bctrl 
/* 8025DF44  88 1E 03 E0 */	lbz r0, 0x3e0(r30)
/* 8025DF48  28 00 00 00 */	cmplwi r0, 0
/* 8025DF4C  41 82 00 58 */	beq lbl_8025DFA4
/* 8025DF50  C0 1E 03 BC */	lfs f0, 0x3bc(r30)
/* 8025DF54  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8025DF58  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8025DF5C  3B A3 0B 70 */	addi r29, r3, 0xb70
/* 8025DF60  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DF64  54 00 10 3A */	slwi r0, r0, 2
/* 8025DF68  7C 3D 04 2E */	lfsx f1, r29, r0
/* 8025DF6C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8025DF70  40 82 00 0C */	bne lbl_8025DF7C
/* 8025DF74  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8025DF78  41 82 00 2C */	beq lbl_8025DFA4
lbl_8025DF7C:
/* 8025DF7C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8025DF80  28 03 00 00 */	cmplwi r3, 0
/* 8025DF84  41 82 00 10 */	beq lbl_8025DF94
/* 8025DF88  C0 1E 03 B0 */	lfs f0, 0x3b0(r30)
/* 8025DF8C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8025DF90  4B FF 78 41 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_8025DF94:
/* 8025DF94  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 8025DF98  54 00 10 3A */	slwi r0, r0, 2
/* 8025DF9C  7C 1D 04 2E */	lfsx f0, r29, r0
/* 8025DFA0  D0 1E 03 BC */	stfs f0, 0x3bc(r30)
lbl_8025DFA4:
/* 8025DFA4  39 61 00 20 */	addi r11, r1, 0x20
/* 8025DFA8  48 10 42 81 */	bl _restgpr_29
/* 8025DFAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025DFB0  7C 08 03 A6 */	mtlr r0
/* 8025DFB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8025DFB8  4E 80 00 20 */	blr 
