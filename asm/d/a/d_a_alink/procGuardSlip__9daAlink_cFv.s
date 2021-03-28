lbl_800DD894:
/* 800DD894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DD898  7C 08 02 A6 */	mflr r0
/* 800DD89C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DD8A0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800DD8A4  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 800DD8A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DD8AC  7C 7F 1B 78 */	mr r31, r3
/* 800DD8B0  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800DD8B4  28 00 00 42 */	cmplwi r0, 0x42
/* 800DD8B8  41 82 00 0C */	beq lbl_800DD8C4
/* 800DD8BC  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800DD8C0  4B FF F7 49 */	bl setUpperGuardAnime__9daAlink_cFf
lbl_800DD8C4:
/* 800DD8C4  7F E3 FB 78 */	mr r3, r31
/* 800DD8C8  38 80 00 00 */	li r4, 0
/* 800DD8CC  4B FD 5E 69 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 800DD8D0  A8 7F 30 0A */	lha r3, 0x300a(r31)
/* 800DD8D4  2C 03 00 00 */	cmpwi r3, 0
/* 800DD8D8  41 82 00 2C */	beq lbl_800DD904
/* 800DD8DC  38 03 FF FF */	addi r0, r3, -1
/* 800DD8E0  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 800DD8E4  A8 7F 05 9E */	lha r3, 0x59e(r31)
/* 800DD8E8  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800DD8EC  7C 03 02 14 */	add r0, r3, r0
/* 800DD8F0  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 800DD8F4  A8 7F 05 9C */	lha r3, 0x59c(r31)
/* 800DD8F8  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800DD8FC  7C 03 02 14 */	add r0, r3, r0
/* 800DD900  B0 1F 05 9C */	sth r0, 0x59c(r31)
lbl_800DD904:
/* 800DD904  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800DD908  C0 02 93 D8 */	lfs f0, lit_11470(r2)
/* 800DD90C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DD910  40 81 00 0C */	ble lbl_800DD91C
/* 800DD914  38 00 00 60 */	li r0, 0x60
/* 800DD918  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
lbl_800DD91C:
/* 800DD91C  7F E3 FB 78 */	mr r3, r31
/* 800DD920  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DD924  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800DD928  7D 89 03 A6 */	mtctr r12
/* 800DD92C  4E 80 04 21 */	bctrl 
/* 800DD930  2C 03 00 00 */	cmpwi r3, 0
/* 800DD934  41 82 00 18 */	beq lbl_800DD94C
/* 800DD938  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 800DD93C  2C 00 00 00 */	cmpwi r0, 0
/* 800DD940  40 82 00 0C */	bne lbl_800DD94C
/* 800DD944  C3 E2 93 D8 */	lfs f31, lit_11470(r2)
/* 800DD948  48 00 00 08 */	b lbl_800DD950
lbl_800DD94C:
/* 800DD94C  C3 E2 93 DC */	lfs f31, lit_11471(r2)
lbl_800DD950:
/* 800DD950  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 800DD954  2C 00 00 00 */	cmpwi r0, 0
/* 800DD958  41 82 00 2C */	beq lbl_800DD984
/* 800DD95C  7F E3 FB 78 */	mr r3, r31
/* 800DD960  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DD964  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800DD968  7D 89 03 A6 */	mtctr r12
/* 800DD96C  4E 80 04 21 */	bctrl 
/* 800DD970  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 800DD974  7C 00 18 00 */	cmpw r0, r3
/* 800DD978  41 82 00 0C */	beq lbl_800DD984
/* 800DD97C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DD980  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_800DD984:
/* 800DD984  38 7F 33 98 */	addi r3, r31, 0x3398
/* 800DD988  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DD98C  FC 40 F8 90 */	fmr f2, f31
/* 800DD990  48 19 2D B1 */	bl cLib_chaseF__FPfff
/* 800DD994  2C 03 00 00 */	cmpwi r3, 0
/* 800DD998  41 82 00 58 */	beq lbl_800DD9F0
/* 800DD99C  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800DD9A0  48 08 0B 2D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DD9A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DD9A8  41 82 00 48 */	beq lbl_800DD9F0
/* 800DD9AC  38 00 00 00 */	li r0, 0
/* 800DD9B0  90 1F 08 44 */	stw r0, 0x844(r31)
/* 800DD9B4  7F E3 FB 78 */	mr r3, r31
/* 800DD9B8  4B FF EC C1 */	bl checkGuardActionChange__9daAlink_cFv
/* 800DD9BC  2C 03 00 00 */	cmpwi r3, 0
/* 800DD9C0  40 82 00 10 */	bne lbl_800DD9D0
/* 800DD9C4  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800DD9C8  60 00 00 20 */	ori r0, r0, 0x20
/* 800DD9CC  90 1F 05 8C */	stw r0, 0x58c(r31)
lbl_800DD9D0:
/* 800DD9D0  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DD9D4  28 00 00 42 */	cmplwi r0, 0x42
/* 800DD9D8  40 82 00 0C */	bne lbl_800DD9E4
/* 800DD9DC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DD9E0  D0 1F 1F 50 */	stfs f0, 0x1f50(r31)
lbl_800DD9E4:
/* 800DD9E4  7F E3 FB 78 */	mr r3, r31
/* 800DD9E8  38 80 00 00 */	li r4, 0
/* 800DD9EC  4B FD C6 E5 */	bl checkNextAction__9daAlink_cFi
lbl_800DD9F0:
/* 800DD9F0  38 60 00 01 */	li r3, 1
/* 800DD9F4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 800DD9F8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800DD9FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DDA00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DDA04  7C 08 03 A6 */	mtlr r0
/* 800DDA08  38 21 00 20 */	addi r1, r1, 0x20
/* 800DDA0C  4E 80 00 20 */	blr 
