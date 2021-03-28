lbl_80107218:
/* 80107218  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010721C  7C 08 02 A6 */	mflr r0
/* 80107220  90 01 00 24 */	stw r0, 0x24(r1)
/* 80107224  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80107228  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8010722C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80107230  93 C1 00 08 */	stw r30, 8(r1)
/* 80107234  7C 7E 1B 78 */	mr r30, r3
/* 80107238  FF E0 08 90 */	fmr f31, f1
/* 8010723C  7C 9F 23 78 */	mr r31, r4
/* 80107240  38 80 00 AA */	li r4, 0xaa
/* 80107244  4B FB AD 29 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80107248  38 00 00 00 */	li r0, 0
/* 8010724C  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 80107250  38 00 00 01 */	li r0, 1
/* 80107254  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 80107258  7F C3 F3 78 */	mr r3, r30
/* 8010725C  38 80 00 F7 */	li r4, 0xf7
/* 80107260  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80107264  3C A0 80 39 */	lis r5, m__19daAlinkHIO_board_c0@ha
/* 80107268  38 C5 E8 70 */	addi r6, r5, m__19daAlinkHIO_board_c0@l
/* 8010726C  C0 46 00 1C */	lfs f2, 0x1c(r6)
/* 80107270  A8 A6 00 14 */	lha r5, 0x14(r6)
/* 80107274  C0 66 00 20 */	lfs f3, 0x20(r6)
/* 80107278  4B FA 5D 95 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 8010727C  2C 1F 00 00 */	cmpwi r31, 0
/* 80107280  40 82 00 38 */	bne lbl_801072B8
/* 80107284  3C 60 80 39 */	lis r3, m__19daAlinkHIO_board_c0@ha
/* 80107288  38 63 E8 70 */	addi r3, r3, m__19daAlinkHIO_board_c0@l
/* 8010728C  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 80107290  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 80107294  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80107298  40 80 00 08 */	bge lbl_801072A0
/* 8010729C  48 00 00 18 */	b lbl_801072B4
lbl_801072A0:
/* 801072A0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801072A4  40 81 00 0C */	ble lbl_801072B0
/* 801072A8  FC 20 00 90 */	fmr f1, f0
/* 801072AC  48 00 00 08 */	b lbl_801072B4
lbl_801072B0:
/* 801072B0  FC 20 F8 90 */	fmr f1, f31
lbl_801072B4:
/* 801072B4  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
lbl_801072B8:
/* 801072B8  38 00 00 00 */	li r0, 0
/* 801072BC  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 801072C0  7F C3 F3 78 */	mr r3, r30
/* 801072C4  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020093@ha */
/* 801072C8  38 84 00 93 */	addi r4, r4, 0x0093 /* 0x00020093@l */
/* 801072CC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 801072D0  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 801072D4  7D 89 03 A6 */	mtctr r12
/* 801072D8  4E 80 04 21 */	bctrl 
/* 801072DC  38 60 00 01 */	li r3, 1
/* 801072E0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 801072E4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801072E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801072EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801072F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801072F4  7C 08 03 A6 */	mtlr r0
/* 801072F8  38 21 00 20 */	addi r1, r1, 0x20
/* 801072FC  4E 80 00 20 */	blr 
