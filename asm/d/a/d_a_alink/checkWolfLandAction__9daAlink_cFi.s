lbl_8012987C:
/* 8012987C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80129880  7C 08 02 A6 */	mflr r0
/* 80129884  90 01 00 24 */	stw r0, 0x24(r1)
/* 80129888  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8012988C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80129890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80129894  93 C1 00 08 */	stw r30, 8(r1)
/* 80129898  7C 7E 1B 78 */	mr r30, r3
/* 8012989C  7C 9F 23 78 */	mr r31, r4
/* 801298A0  C0 42 93 88 */	lfs f2, lit_8782(r2)
/* 801298A4  C0 23 33 C4 */	lfs f1, 0x33c4(r3)
/* 801298A8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 801298AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801298B0  EF E2 00 32 */	fmuls f31, f2, f0
/* 801298B4  4B FA D6 79 */	bl checkNoLandDamageSlidePolygon__9daAlink_cFv
/* 801298B8  2C 03 00 00 */	cmpwi r3, 0
/* 801298BC  40 82 00 18 */	bne lbl_801298D4
/* 801298C0  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlDamFall_c0@ha
/* 801298C4  38 83 F3 74 */	addi r4, r3, m__23daAlinkHIO_wlDamFall_c0@l
/* 801298C8  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 801298CC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801298D0  40 80 00 44 */	bge lbl_80129914
lbl_801298D4:
/* 801298D4  2C 1F 00 00 */	cmpwi r31, 0
/* 801298D8  41 82 00 14 */	beq lbl_801298EC
/* 801298DC  7F C3 F3 78 */	mr r3, r30
/* 801298E0  38 80 00 00 */	li r4, 0
/* 801298E4  48 00 D3 35 */	bl procWolfLandDamageInit__9daAlink_cFi
/* 801298E8  48 00 00 4C */	b lbl_80129934
lbl_801298EC:
/* 801298EC  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 801298F0  28 00 01 1C */	cmplwi r0, 0x11c
/* 801298F4  41 82 00 0C */	beq lbl_80129900
/* 801298F8  28 00 00 F4 */	cmplwi r0, 0xf4
/* 801298FC  40 82 00 0C */	bne lbl_80129908
lbl_80129900:
/* 80129900  38 60 00 00 */	li r3, 0
/* 80129904  48 00 00 34 */	b lbl_80129938
lbl_80129908:
/* 80129908  7F C3 F3 78 */	mr r3, r30
/* 8012990C  48 00 58 2D */	bl procWolfLandInit__9daAlink_cFv
/* 80129910  48 00 00 24 */	b lbl_80129934
lbl_80129914:
/* 80129914  7F C3 F3 78 */	mr r3, r30
/* 80129918  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 8012991C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80129920  40 80 00 0C */	bge lbl_8012992C
/* 80129924  38 80 00 01 */	li r4, 1
/* 80129928  48 00 00 08 */	b lbl_80129930
lbl_8012992C:
/* 8012992C  38 80 00 02 */	li r4, 2
lbl_80129930:
/* 80129930  48 00 D2 E9 */	bl procWolfLandDamageInit__9daAlink_cFi
lbl_80129934:
/* 80129934  38 60 00 01 */	li r3, 1
lbl_80129938:
/* 80129938  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8012993C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80129940  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80129944  83 C1 00 08 */	lwz r30, 8(r1)
/* 80129948  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012994C  7C 08 03 A6 */	mtlr r0
/* 80129950  38 21 00 20 */	addi r1, r1, 0x20
/* 80129954  4E 80 00 20 */	blr 
