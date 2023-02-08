lbl_804BD93C:
/* 804BD93C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BD940  7C 08 02 A6 */	mflr r0
/* 804BD944  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BD948  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804BD94C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804BD950  7C 7E 1B 78 */	mr r30, r3
/* 804BD954  3C 60 80 4C */	lis r3, lit_3777@ha /* 0x804C64C8@ha */
/* 804BD958  3B E3 64 C8 */	addi r31, r3, lit_3777@l /* 0x804C64C8@l */
/* 804BD95C  80 7E 06 48 */	lwz r3, 0x648(r30)
/* 804BD960  4B BE B8 E9 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 804BD964  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 804BD968  4B BE B8 E1 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 804BD96C  80 7E 06 4C */	lwz r3, 0x64c(r30)
/* 804BD970  4B BE B8 D9 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 804BD974  80 7E 06 54 */	lwz r3, 0x654(r30)
/* 804BD978  4B BE B8 D1 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 804BD97C  80 7E 06 68 */	lwz r3, 0x668(r30)
/* 804BD980  4B BE B8 C9 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 804BD984  80 7E 06 6C */	lwz r3, 0x66c(r30)
/* 804BD988  4B BE B8 C1 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 804BD98C  38 7E 05 84 */	addi r3, r30, 0x584
/* 804BD990  4B B4 FA 99 */	bl play__14mDoExt_baseAnmFv
/* 804BD994  80 1E 08 C0 */	lwz r0, 0x8c0(r30)
/* 804BD998  28 00 00 0C */	cmplwi r0, 0xc
/* 804BD99C  40 82 00 0C */	bne lbl_804BD9A8
/* 804BD9A0  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 804BD9A4  D0 1E 05 94 */	stfs f0, 0x594(r30)
lbl_804BD9A8:
/* 804BD9A8  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 804BD9AC  80 7E 05 98 */	lwz r3, 0x598(r30)
/* 804BD9B0  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BD9B4  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 804BD9B8  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 804BD9BC  41 82 00 78 */	beq lbl_804BDA34
/* 804BD9C0  4B D7 A9 E5 */	bl isMouthCheck__12dMsgObject_cFv
/* 804BD9C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804BD9C8  41 82 00 10 */	beq lbl_804BD9D8
/* 804BD9CC  38 00 00 14 */	li r0, 0x14
/* 804BD9D0  98 1E 08 4B */	stb r0, 0x84b(r30)
/* 804BD9D4  48 00 00 18 */	b lbl_804BD9EC
lbl_804BD9D8:
/* 804BD9D8  88 7E 08 4B */	lbz r3, 0x84b(r30)
/* 804BD9DC  28 03 00 00 */	cmplwi r3, 0
/* 804BD9E0  41 82 00 0C */	beq lbl_804BD9EC
/* 804BD9E4  38 03 FF FF */	addi r0, r3, -1
/* 804BD9E8  98 1E 08 4B */	stb r0, 0x84b(r30)
lbl_804BD9EC:
/* 804BD9EC  88 1E 08 4B */	lbz r0, 0x84b(r30)
/* 804BD9F0  28 00 00 00 */	cmplwi r0, 0
/* 804BD9F4  40 82 00 2C */	bne lbl_804BDA20
/* 804BD9F8  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 804BD9FC  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 804BDA00  4B E6 AA 2D */	bl checkPass__12J3DFrameCtrlFf
/* 804BDA04  2C 03 00 00 */	cmpwi r3, 0
/* 804BDA08  41 82 00 18 */	beq lbl_804BDA20
/* 804BDA0C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 804BDA10  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 804BDA14  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 804BDA18  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BDA1C  48 00 00 18 */	b lbl_804BDA34
lbl_804BDA20:
/* 804BDA20  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 804BDA24  4B B4 FA 05 */	bl play__14mDoExt_baseAnmFv
/* 804BDA28  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 804BDA2C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 804BDA30  D0 03 00 08 */	stfs f0, 8(r3)
lbl_804BDA34:
/* 804BDA34  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 804BDA38  28 00 00 00 */	cmplwi r0, 0
/* 804BDA3C  41 82 01 34 */	beq lbl_804BDB70
/* 804BDA40  80 1E 05 BC */	lwz r0, 0x5bc(r30)
/* 804BDA44  28 00 00 00 */	cmplwi r0, 0
/* 804BDA48  41 82 01 28 */	beq lbl_804BDB70
/* 804BDA4C  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 804BDA50  28 00 00 00 */	cmplwi r0, 0
/* 804BDA54  41 82 01 1C */	beq lbl_804BDB70
/* 804BDA58  80 7E 08 90 */	lwz r3, 0x890(r30)
/* 804BDA5C  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 804BDA60  41 82 00 60 */	beq lbl_804BDAC0
/* 804BDA64  88 7E 08 4A */	lbz r3, 0x84a(r30)
/* 804BDA68  28 03 00 00 */	cmplwi r3, 0
/* 804BDA6C  41 82 00 2C */	beq lbl_804BDA98
/* 804BDA70  38 03 00 01 */	addi r0, r3, 1
/* 804BDA74  98 1E 08 4A */	stb r0, 0x84a(r30)
/* 804BDA78  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 804BDA7C  A8 63 00 06 */	lha r3, 6(r3)
/* 804BDA80  88 1E 08 4A */	lbz r0, 0x84a(r30)
/* 804BDA84  7C 00 18 00 */	cmpw r0, r3
/* 804BDA88  40 81 00 2C */	ble lbl_804BDAB4
/* 804BDA8C  38 00 00 00 */	li r0, 0
/* 804BDA90  98 1E 08 4A */	stb r0, 0x84a(r30)
/* 804BDA94  48 00 00 20 */	b lbl_804BDAB4
lbl_804BDA98:
/* 804BDA98  4B DA 9D D5 */	bl cM_rnd__Fv
/* 804BDA9C  C0 1F 03 9C */	lfs f0, 0x39c(r31)
/* 804BDAA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BDAA4  40 80 00 10 */	bge lbl_804BDAB4
/* 804BDAA8  88 7E 08 4A */	lbz r3, 0x84a(r30)
/* 804BDAAC  38 03 00 01 */	addi r0, r3, 1
/* 804BDAB0  98 1E 08 4A */	stb r0, 0x84a(r30)
lbl_804BDAB4:
/* 804BDAB4  88 DE 08 4A */	lbz r6, 0x84a(r30)
/* 804BDAB8  7C C7 33 78 */	mr r7, r6
/* 804BDABC  48 00 00 38 */	b lbl_804BDAF4
lbl_804BDAC0:
/* 804BDAC0  54 60 02 11 */	rlwinm. r0, r3, 0, 8, 8
/* 804BDAC4  41 82 00 1C */	beq lbl_804BDAE0
/* 804BDAC8  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 804BDACC  FC 00 00 1E */	fctiwz f0, f0
/* 804BDAD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 804BDAD4  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804BDAD8  7C C7 33 78 */	mr r7, r6
/* 804BDADC  48 00 00 18 */	b lbl_804BDAF4
lbl_804BDAE0:
/* 804BDAE0  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 804BDAE4  FC 00 00 1E */	fctiwz f0, f0
/* 804BDAE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 804BDAEC  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804BDAF0  7C C7 33 78 */	mr r7, r6
lbl_804BDAF4:
/* 804BDAF4  80 BE 05 BC */	lwz r5, 0x5bc(r30)
/* 804BDAF8  A8 85 00 06 */	lha r4, 6(r5)
/* 804BDAFC  7C C3 07 34 */	extsh r3, r6
/* 804BDB00  7C 80 07 34 */	extsh r0, r4
/* 804BDB04  7C 03 00 00 */	cmpw r3, r0
/* 804BDB08  40 81 00 08 */	ble lbl_804BDB10
/* 804BDB0C  7C 86 23 78 */	mr r6, r4
lbl_804BDB10:
/* 804BDB10  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 804BDB14  A8 83 00 06 */	lha r4, 6(r3)
/* 804BDB18  7C E3 07 34 */	extsh r3, r7
/* 804BDB1C  7C 80 07 34 */	extsh r0, r4
/* 804BDB20  7C 03 00 00 */	cmpw r3, r0
/* 804BDB24  40 81 00 08 */	ble lbl_804BDB2C
/* 804BDB28  7C 87 23 78 */	mr r7, r4
lbl_804BDB2C:
/* 804BDB2C  7C C0 07 34 */	extsh r0, r6
/* 804BDB30  C8 3F 00 C0 */	lfd f1, 0xc0(r31)
/* 804BDB34  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804BDB38  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BDB3C  3C 60 43 30 */	lis r3, 0x4330
/* 804BDB40  90 61 00 08 */	stw r3, 8(r1)
/* 804BDB44  C8 01 00 08 */	lfd f0, 8(r1)
/* 804BDB48  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BDB4C  D0 05 00 08 */	stfs f0, 8(r5)
/* 804BDB50  7C E0 07 34 */	extsh r0, r7
/* 804BDB54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804BDB58  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BDB5C  90 61 00 10 */	stw r3, 0x10(r1)
/* 804BDB60  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804BDB64  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BDB68  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 804BDB6C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_804BDB70:
/* 804BDB70  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 804BDB74  38 80 00 00 */	li r4, 0
/* 804BDB78  88 BE 08 4D */	lbz r5, 0x84d(r30)
/* 804BDB7C  4B B5 35 35 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 804BDB80  80 1E 08 C0 */	lwz r0, 0x8c0(r30)
/* 804BDB84  28 00 00 0C */	cmplwi r0, 0xc
/* 804BDB88  40 82 00 10 */	bne lbl_804BDB98
/* 804BDB8C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 804BDB90  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 804BDB94  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_804BDB98:
/* 804BDB98  38 BF 01 1C */	addi r5, r31, 0x11c
/* 804BDB9C  A0 65 00 C0 */	lhz r3, 0xc0(r5)
/* 804BDBA0  A0 1E 05 E4 */	lhz r0, 0x5e4(r30)
/* 804BDBA4  7C 03 00 40 */	cmplw r3, r0
/* 804BDBA8  41 82 00 14 */	beq lbl_804BDBBC
/* 804BDBAC  A0 65 00 CC */	lhz r3, 0xcc(r5)
/* 804BDBB0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804BDBB4  7C 03 00 40 */	cmplw r3, r0
/* 804BDBB8  40 82 00 48 */	bne lbl_804BDC00
lbl_804BDBBC:
/* 804BDBBC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 804BDBC0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804BDBC4  80 7E 06 58 */	lwz r3, 0x658(r30)
/* 804BDBC8  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BDBCC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 804BDBD0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804BDBD4  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 804BDBD8  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BDBDC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 804BDBE0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804BDBE4  80 7E 06 60 */	lwz r3, 0x660(r30)
/* 804BDBE8  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BDBEC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 804BDBF0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804BDBF4  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 804BDBF8  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BDBFC  48 00 01 54 */	b lbl_804BDD50
lbl_804BDC00:
/* 804BDC00  88 1E 08 4E */	lbz r0, 0x84e(r30)
/* 804BDC04  28 00 00 01 */	cmplwi r0, 1
/* 804BDC08  41 82 00 0C */	beq lbl_804BDC14
/* 804BDC0C  28 00 00 02 */	cmplwi r0, 2
/* 804BDC10  40 82 00 2C */	bne lbl_804BDC3C
lbl_804BDC14:
/* 804BDC14  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 804BDC18  80 7E 06 58 */	lwz r3, 0x658(r30)
/* 804BDC1C  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BDC20  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 804BDC24  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BDC28  80 7E 06 60 */	lwz r3, 0x660(r30)
/* 804BDC2C  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BDC30  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 804BDC34  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BDC38  48 00 01 18 */	b lbl_804BDD50
lbl_804BDC3C:
/* 804BDC3C  80 7E 06 58 */	lwz r3, 0x658(r30)
/* 804BDC40  A8 03 00 06 */	lha r0, 6(r3)
/* 804BDC44  C8 5F 00 C0 */	lfd f2, 0xc0(r31)
/* 804BDC48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804BDC4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BDC50  3C 80 43 30 */	lis r4, 0x4330
/* 804BDC54  90 81 00 10 */	stw r4, 0x10(r1)
/* 804BDC58  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804BDC5C  EC 00 10 28 */	fsubs f0, f0, f2
/* 804BDC60  C0 3F 03 A0 */	lfs f1, 0x3a0(r31)
/* 804BDC64  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BDC68  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BDC6C  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 804BDC70  A8 03 00 06 */	lha r0, 6(r3)
/* 804BDC74  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804BDC78  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BDC7C  90 81 00 08 */	stw r4, 8(r1)
/* 804BDC80  C8 01 00 08 */	lfd f0, 8(r1)
/* 804BDC84  EC 00 10 28 */	fsubs f0, f0, f2
/* 804BDC88  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BDC8C  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BDC90  80 7E 06 60 */	lwz r3, 0x660(r30)
/* 804BDC94  A8 03 00 06 */	lha r0, 6(r3)
/* 804BDC98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804BDC9C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BDCA0  90 81 00 18 */	stw r4, 0x18(r1)
/* 804BDCA4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804BDCA8  EC 00 10 28 */	fsubs f0, f0, f2
/* 804BDCAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BDCB0  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BDCB4  A0 65 00 D8 */	lhz r3, 0xd8(r5)
/* 804BDCB8  A0 1E 05 E4 */	lhz r0, 0x5e4(r30)
/* 804BDCBC  7C 03 00 40 */	cmplw r3, r0
/* 804BDCC0  40 82 00 34 */	bne lbl_804BDCF4
/* 804BDCC4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 804BDCC8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 804BDCCC  A8 03 00 14 */	lha r0, 0x14(r3)
/* 804BDCD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804BDCD4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BDCD8  90 81 00 18 */	stw r4, 0x18(r1)
/* 804BDCDC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804BDCE0  EC 00 10 28 */	fsubs f0, f0, f2
/* 804BDCE4  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BDCE8  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 804BDCEC  D0 03 00 08 */	stfs f0, 8(r3)
/* 804BDCF0  48 00 00 60 */	b lbl_804BDD50
lbl_804BDCF4:
/* 804BDCF4  A0 65 01 50 */	lhz r3, 0x150(r5)
/* 804BDCF8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804BDCFC  7C 03 00 40 */	cmplw r3, r0
/* 804BDD00  40 82 00 2C */	bne lbl_804BDD2C
/* 804BDD04  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 804BDD08  C0 23 00 08 */	lfs f1, 8(r3)
/* 804BDD0C  C0 1F 03 A4 */	lfs f0, 0x3a4(r31)
/* 804BDD10  EC 21 00 28 */	fsubs f1, f1, f0
/* 804BDD14  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 804BDD18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BDD1C  40 80 00 08 */	bge lbl_804BDD24
/* 804BDD20  FC 20 00 90 */	fmr f1, f0
lbl_804BDD24:
/* 804BDD24  D0 23 00 08 */	stfs f1, 8(r3)
/* 804BDD28  48 00 00 28 */	b lbl_804BDD50
lbl_804BDD2C:
/* 804BDD2C  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 804BDD30  A8 03 00 06 */	lha r0, 6(r3)
/* 804BDD34  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804BDD38  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BDD3C  90 81 00 18 */	stw r4, 0x18(r1)
/* 804BDD40  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804BDD44  EC 00 10 28 */	fsubs f0, f0, f2
/* 804BDD48  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BDD4C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_804BDD50:
/* 804BDD50  A0 1E 08 78 */	lhz r0, 0x878(r30)
/* 804BDD54  28 00 00 FD */	cmplwi r0, 0xfd
/* 804BDD58  40 82 00 14 */	bne lbl_804BDD6C
/* 804BDD5C  80 7E 06 CC */	lwz r3, 0x6cc(r30)
/* 804BDD60  28 03 00 00 */	cmplwi r3, 0
/* 804BDD64  41 82 00 08 */	beq lbl_804BDD6C
/* 804BDD68  4B B4 F6 C1 */	bl play__14mDoExt_baseAnmFv
lbl_804BDD6C:
/* 804BDD6C  A0 1E 08 7A */	lhz r0, 0x87a(r30)
/* 804BDD70  28 00 00 FD */	cmplwi r0, 0xfd
/* 804BDD74  40 82 00 14 */	bne lbl_804BDD88
/* 804BDD78  80 7E 06 D4 */	lwz r3, 0x6d4(r30)
/* 804BDD7C  28 03 00 00 */	cmplwi r3, 0
/* 804BDD80  41 82 00 08 */	beq lbl_804BDD88
/* 804BDD84  4B B4 F6 A5 */	bl play__14mDoExt_baseAnmFv
lbl_804BDD88:
/* 804BDD88  80 1E 08 94 */	lwz r0, 0x894(r30)
/* 804BDD8C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804BDD90  41 82 00 14 */	beq lbl_804BDDA4
/* 804BDD94  80 7E 06 DC */	lwz r3, 0x6dc(r30)
/* 804BDD98  28 03 00 00 */	cmplwi r3, 0
/* 804BDD9C  41 82 00 08 */	beq lbl_804BDDA4
/* 804BDDA0  4B B4 F6 89 */	bl play__14mDoExt_baseAnmFv
lbl_804BDDA4:
/* 804BDDA4  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 804BDDA8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804BDDAC  41 82 00 40 */	beq lbl_804BDDEC
/* 804BDDB0  80 7E 06 C4 */	lwz r3, 0x6c4(r30)
/* 804BDDB4  28 03 00 00 */	cmplwi r3, 0
/* 804BDDB8  41 82 00 14 */	beq lbl_804BDDCC
/* 804BDDBC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 804BDDC0  28 03 00 00 */	cmplwi r3, 0
/* 804BDDC4  41 82 00 08 */	beq lbl_804BDDCC
/* 804BDDC8  4B BE B4 81 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
lbl_804BDDCC:
/* 804BDDCC  80 7E 06 B4 */	lwz r3, 0x6b4(r30)
/* 804BDDD0  28 03 00 00 */	cmplwi r3, 0
/* 804BDDD4  41 82 00 08 */	beq lbl_804BDDDC
/* 804BDDD8  4B BE B4 71 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
lbl_804BDDDC:
/* 804BDDDC  80 7E 06 B8 */	lwz r3, 0x6b8(r30)
/* 804BDDE0  28 03 00 00 */	cmplwi r3, 0
/* 804BDDE4  41 82 00 08 */	beq lbl_804BDDEC
/* 804BDDE8  4B B4 F6 41 */	bl play__14mDoExt_baseAnmFv
lbl_804BDDEC:
/* 804BDDEC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804BDDF0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804BDDF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BDDF8  7C 08 03 A6 */	mtlr r0
/* 804BDDFC  38 21 00 30 */	addi r1, r1, 0x30
/* 804BDE00  4E 80 00 20 */	blr 
