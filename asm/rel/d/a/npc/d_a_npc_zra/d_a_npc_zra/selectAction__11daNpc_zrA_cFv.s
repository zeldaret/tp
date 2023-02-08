lbl_80B7DBC8:
/* 80B7DBC8  3C 80 80 B9 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B8CE90@ha */
/* 80B7DBCC  38 84 CE 90 */	addi r4, r4, cNullVec__6Z2Calc@l /* 0x80B8CE90@l */
/* 80B7DBD0  3C A0 80 3A */	lis r5, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B7DBD4  38 C5 21 80 */	addi r6, r5, __ptmf_null@l /* 0x803A2180@l */
/* 80B7DBD8  80 A6 00 00 */	lwz r5, 0(r6)
/* 80B7DBDC  80 06 00 04 */	lwz r0, 4(r6)
/* 80B7DBE0  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DBE4  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DBE8  80 06 00 08 */	lwz r0, 8(r6)
/* 80B7DBEC  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DBF0  3C A0 80 B9 */	lis r5, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B7DBF4  38 A5 C4 58 */	addi r5, r5, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B7DBF8  88 05 00 6A */	lbz r0, 0x6a(r5)
/* 80B7DBFC  28 00 00 00 */	cmplwi r0, 0
/* 80B7DC00  41 82 00 20 */	beq lbl_80B7DC20
/* 80B7DC04  80 A4 06 EC */	lwz r5, 0x6ec(r4)
/* 80B7DC08  80 04 06 F0 */	lwz r0, 0x6f0(r4)
/* 80B7DC0C  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DC10  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DC14  80 04 06 F4 */	lwz r0, 0x6f4(r4)
/* 80B7DC18  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DC1C  48 00 03 1C */	b lbl_80B7DF38
lbl_80B7DC20:
/* 80B7DC20  88 03 14 E8 */	lbz r0, 0x14e8(r3)
/* 80B7DC24  28 00 00 06 */	cmplwi r0, 6
/* 80B7DC28  41 81 02 F8 */	bgt lbl_80B7DF20
/* 80B7DC2C  3C A0 80 B9 */	lis r5, lit_6586@ha /* 0x80B8D6C8@ha */
/* 80B7DC30  38 A5 D6 C8 */	addi r5, r5, lit_6586@l /* 0x80B8D6C8@l */
/* 80B7DC34  54 00 10 3A */	slwi r0, r0, 2
/* 80B7DC38  7C 05 00 2E */	lwzx r0, r5, r0
/* 80B7DC3C  7C 09 03 A6 */	mtctr r0
/* 80B7DC40  4E 80 04 20 */	bctr 
lbl_80B7DC44:
/* 80B7DC44  80 A4 06 F8 */	lwz r5, 0x6f8(r4)
/* 80B7DC48  80 04 06 FC */	lwz r0, 0x6fc(r4)
/* 80B7DC4C  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DC50  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DC54  80 04 07 00 */	lwz r0, 0x700(r4)
/* 80B7DC58  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DC5C  48 00 02 DC */	b lbl_80B7DF38
lbl_80B7DC60:
/* 80B7DC60  88 03 15 94 */	lbz r0, 0x1594(r3)
/* 80B7DC64  2C 00 00 02 */	cmpwi r0, 2
/* 80B7DC68  41 82 02 D0 */	beq lbl_80B7DF38
/* 80B7DC6C  40 80 00 14 */	bge lbl_80B7DC80
/* 80B7DC70  2C 00 00 00 */	cmpwi r0, 0
/* 80B7DC74  41 82 00 18 */	beq lbl_80B7DC8C
/* 80B7DC78  40 80 00 30 */	bge lbl_80B7DCA8
/* 80B7DC7C  48 00 02 BC */	b lbl_80B7DF38
lbl_80B7DC80:
/* 80B7DC80  2C 00 00 04 */	cmpwi r0, 4
/* 80B7DC84  40 80 02 B4 */	bge lbl_80B7DF38
/* 80B7DC88  48 00 00 3C */	b lbl_80B7DCC4
lbl_80B7DC8C:
/* 80B7DC8C  80 A4 07 04 */	lwz r5, 0x704(r4)
/* 80B7DC90  80 04 07 08 */	lwz r0, 0x708(r4)
/* 80B7DC94  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DC98  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DC9C  80 04 07 0C */	lwz r0, 0x70c(r4)
/* 80B7DCA0  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DCA4  48 00 02 94 */	b lbl_80B7DF38
lbl_80B7DCA8:
/* 80B7DCA8  80 A4 07 10 */	lwz r5, 0x710(r4)
/* 80B7DCAC  80 04 07 14 */	lwz r0, 0x714(r4)
/* 80B7DCB0  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DCB4  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DCB8  80 04 07 18 */	lwz r0, 0x718(r4)
/* 80B7DCBC  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DCC0  48 00 02 78 */	b lbl_80B7DF38
lbl_80B7DCC4:
/* 80B7DCC4  80 A4 07 1C */	lwz r5, 0x71c(r4)
/* 80B7DCC8  80 04 07 20 */	lwz r0, 0x720(r4)
/* 80B7DCCC  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DCD0  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DCD4  80 04 07 24 */	lwz r0, 0x724(r4)
/* 80B7DCD8  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DCDC  48 00 02 5C */	b lbl_80B7DF38
lbl_80B7DCE0:
/* 80B7DCE0  88 03 15 94 */	lbz r0, 0x1594(r3)
/* 80B7DCE4  28 00 00 06 */	cmplwi r0, 6
/* 80B7DCE8  41 81 00 A8 */	bgt lbl_80B7DD90
/* 80B7DCEC  3C A0 80 B9 */	lis r5, lit_6587@ha /* 0x80B8D6AC@ha */
/* 80B7DCF0  38 A5 D6 AC */	addi r5, r5, lit_6587@l /* 0x80B8D6AC@l */
/* 80B7DCF4  54 00 10 3A */	slwi r0, r0, 2
/* 80B7DCF8  7C 05 00 2E */	lwzx r0, r5, r0
/* 80B7DCFC  7C 09 03 A6 */	mtctr r0
/* 80B7DD00  4E 80 04 20 */	bctr 
lbl_80B7DD04:
/* 80B7DD04  80 A4 07 28 */	lwz r5, 0x728(r4)
/* 80B7DD08  80 04 07 2C */	lwz r0, 0x72c(r4)
/* 80B7DD0C  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DD10  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DD14  80 04 07 30 */	lwz r0, 0x730(r4)
/* 80B7DD18  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DD1C  48 00 02 1C */	b lbl_80B7DF38
lbl_80B7DD20:
/* 80B7DD20  80 A4 07 34 */	lwz r5, 0x734(r4)
/* 80B7DD24  80 04 07 38 */	lwz r0, 0x738(r4)
/* 80B7DD28  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DD2C  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DD30  80 04 07 3C */	lwz r0, 0x73c(r4)
/* 80B7DD34  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DD38  48 00 02 00 */	b lbl_80B7DF38
lbl_80B7DD3C:
/* 80B7DD3C  80 A4 07 40 */	lwz r5, 0x740(r4)
/* 80B7DD40  80 04 07 44 */	lwz r0, 0x744(r4)
/* 80B7DD44  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DD48  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DD4C  80 04 07 48 */	lwz r0, 0x748(r4)
/* 80B7DD50  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DD54  48 00 01 E4 */	b lbl_80B7DF38
lbl_80B7DD58:
/* 80B7DD58  80 A4 07 4C */	lwz r5, 0x74c(r4)
/* 80B7DD5C  80 04 07 50 */	lwz r0, 0x750(r4)
/* 80B7DD60  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DD64  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DD68  80 04 07 54 */	lwz r0, 0x754(r4)
/* 80B7DD6C  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DD70  48 00 01 C8 */	b lbl_80B7DF38
lbl_80B7DD74:
/* 80B7DD74  80 A4 07 58 */	lwz r5, 0x758(r4)
/* 80B7DD78  80 04 07 5C */	lwz r0, 0x75c(r4)
/* 80B7DD7C  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DD80  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DD84  80 04 07 60 */	lwz r0, 0x760(r4)
/* 80B7DD88  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DD8C  48 00 01 AC */	b lbl_80B7DF38
lbl_80B7DD90:
/* 80B7DD90  80 A4 07 64 */	lwz r5, 0x764(r4)
/* 80B7DD94  80 04 07 68 */	lwz r0, 0x768(r4)
/* 80B7DD98  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DD9C  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DDA0  80 04 07 6C */	lwz r0, 0x76c(r4)
/* 80B7DDA4  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DDA8  48 00 01 90 */	b lbl_80B7DF38
lbl_80B7DDAC:
/* 80B7DDAC  88 03 15 94 */	lbz r0, 0x1594(r3)
/* 80B7DDB0  28 00 00 06 */	cmplwi r0, 6
/* 80B7DDB4  41 81 01 84 */	bgt lbl_80B7DF38
/* 80B7DDB8  3C A0 80 B9 */	lis r5, lit_6588@ha /* 0x80B8D690@ha */
/* 80B7DDBC  38 A5 D6 90 */	addi r5, r5, lit_6588@l /* 0x80B8D690@l */
/* 80B7DDC0  54 00 10 3A */	slwi r0, r0, 2
/* 80B7DDC4  7C 05 00 2E */	lwzx r0, r5, r0
/* 80B7DDC8  7C 09 03 A6 */	mtctr r0
/* 80B7DDCC  4E 80 04 20 */	bctr 
lbl_80B7DDD0:
/* 80B7DDD0  80 A4 07 70 */	lwz r5, 0x770(r4)
/* 80B7DDD4  80 04 07 74 */	lwz r0, 0x774(r4)
/* 80B7DDD8  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DDDC  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DDE0  80 04 07 78 */	lwz r0, 0x778(r4)
/* 80B7DDE4  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DDE8  48 00 01 50 */	b lbl_80B7DF38
lbl_80B7DDEC:
/* 80B7DDEC  80 A4 07 7C */	lwz r5, 0x77c(r4)
/* 80B7DDF0  80 04 07 80 */	lwz r0, 0x780(r4)
/* 80B7DDF4  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DDF8  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DDFC  80 04 07 84 */	lwz r0, 0x784(r4)
/* 80B7DE00  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DE04  48 00 01 34 */	b lbl_80B7DF38
lbl_80B7DE08:
/* 80B7DE08  80 A4 07 88 */	lwz r5, 0x788(r4)
/* 80B7DE0C  80 04 07 8C */	lwz r0, 0x78c(r4)
/* 80B7DE10  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DE14  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DE18  80 04 07 90 */	lwz r0, 0x790(r4)
/* 80B7DE1C  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DE20  48 00 01 18 */	b lbl_80B7DF38
lbl_80B7DE24:
/* 80B7DE24  80 A4 07 94 */	lwz r5, 0x794(r4)
/* 80B7DE28  80 04 07 98 */	lwz r0, 0x798(r4)
/* 80B7DE2C  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DE30  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DE34  80 04 07 9C */	lwz r0, 0x79c(r4)
/* 80B7DE38  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DE3C  48 00 00 FC */	b lbl_80B7DF38
lbl_80B7DE40:
/* 80B7DE40  80 A4 07 A0 */	lwz r5, 0x7a0(r4)
/* 80B7DE44  80 04 07 A4 */	lwz r0, 0x7a4(r4)
/* 80B7DE48  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DE4C  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DE50  80 04 07 A8 */	lwz r0, 0x7a8(r4)
/* 80B7DE54  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DE58  48 00 00 E0 */	b lbl_80B7DF38
lbl_80B7DE5C:
/* 80B7DE5C  80 A4 07 AC */	lwz r5, 0x7ac(r4)
/* 80B7DE60  80 04 07 B0 */	lwz r0, 0x7b0(r4)
/* 80B7DE64  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DE68  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DE6C  80 04 07 B4 */	lwz r0, 0x7b4(r4)
/* 80B7DE70  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DE74  48 00 00 C4 */	b lbl_80B7DF38
lbl_80B7DE78:
/* 80B7DE78  80 A4 07 B8 */	lwz r5, 0x7b8(r4)
/* 80B7DE7C  80 04 07 BC */	lwz r0, 0x7bc(r4)
/* 80B7DE80  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DE84  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DE88  80 04 07 C0 */	lwz r0, 0x7c0(r4)
/* 80B7DE8C  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DE90  48 00 00 A8 */	b lbl_80B7DF38
lbl_80B7DE94:
/* 80B7DE94  88 03 15 94 */	lbz r0, 0x1594(r3)
/* 80B7DE98  2C 00 00 00 */	cmpwi r0, 0
/* 80B7DE9C  41 82 00 08 */	beq lbl_80B7DEA4
/* 80B7DEA0  48 00 00 98 */	b lbl_80B7DF38
lbl_80B7DEA4:
/* 80B7DEA4  80 A4 07 C4 */	lwz r5, 0x7c4(r4)
/* 80B7DEA8  80 04 07 C8 */	lwz r0, 0x7c8(r4)
/* 80B7DEAC  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DEB0  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DEB4  80 04 07 CC */	lwz r0, 0x7cc(r4)
/* 80B7DEB8  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DEBC  48 00 00 7C */	b lbl_80B7DF38
lbl_80B7DEC0:
/* 80B7DEC0  80 A4 07 D0 */	lwz r5, 0x7d0(r4)
/* 80B7DEC4  80 04 07 D4 */	lwz r0, 0x7d4(r4)
/* 80B7DEC8  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DECC  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DED0  80 04 07 D8 */	lwz r0, 0x7d8(r4)
/* 80B7DED4  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DED8  48 00 00 60 */	b lbl_80B7DF38
lbl_80B7DEDC:
/* 80B7DEDC  88 03 15 76 */	lbz r0, 0x1576(r3)
/* 80B7DEE0  28 00 00 06 */	cmplwi r0, 6
/* 80B7DEE4  40 82 00 20 */	bne lbl_80B7DF04
/* 80B7DEE8  80 A4 07 DC */	lwz r5, 0x7dc(r4)
/* 80B7DEEC  80 04 07 E0 */	lwz r0, 0x7e0(r4)
/* 80B7DEF0  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DEF4  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DEF8  80 04 07 E4 */	lwz r0, 0x7e4(r4)
/* 80B7DEFC  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DF00  48 00 00 38 */	b lbl_80B7DF38
lbl_80B7DF04:
/* 80B7DF04  80 A4 07 E8 */	lwz r5, 0x7e8(r4)
/* 80B7DF08  80 04 07 EC */	lwz r0, 0x7ec(r4)
/* 80B7DF0C  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DF10  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DF14  80 04 07 F0 */	lwz r0, 0x7f0(r4)
/* 80B7DF18  90 03 14 7C */	stw r0, 0x147c(r3)
/* 80B7DF1C  48 00 00 1C */	b lbl_80B7DF38
lbl_80B7DF20:
/* 80B7DF20  80 A4 07 F4 */	lwz r5, 0x7f4(r4)
/* 80B7DF24  80 04 07 F8 */	lwz r0, 0x7f8(r4)
/* 80B7DF28  90 A3 14 74 */	stw r5, 0x1474(r3)
/* 80B7DF2C  90 03 14 78 */	stw r0, 0x1478(r3)
/* 80B7DF30  80 04 07 FC */	lwz r0, 0x7fc(r4)
/* 80B7DF34  90 03 14 7C */	stw r0, 0x147c(r3)
lbl_80B7DF38:
/* 80B7DF38  38 60 00 01 */	li r3, 1
/* 80B7DF3C  4E 80 00 20 */	blr 
