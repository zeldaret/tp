lbl_80110C94:
/* 80110C94  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80110C98  7C 08 02 A6 */	mflr r0
/* 80110C9C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80110CA0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80110CA4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80110CA8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80110CAC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80110CB0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80110CB4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80110CB8  7C 7F 1B 78 */	mr r31, r3
/* 80110CBC  80 63 07 00 */	lwz r3, 0x700(r3)
/* 80110CC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80110CC4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80110CC8  83 C3 00 00 */	lwz r30, 0(r3)
/* 80110CCC  3C 60 80 39 */	lis r3, m__23daAlinkHIO_kandelaar_c0@ha /* 0x8038E77C@ha */
/* 80110CD0  38 63 E7 7C */	addi r3, r3, m__23daAlinkHIO_kandelaar_c0@l /* 0x8038E77C@l */
/* 80110CD4  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 80110CD8  B0 01 00 08 */	sth r0, 8(r1)
/* 80110CDC  A8 03 00 3E */	lha r0, 0x3e(r3)
/* 80110CE0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80110CE4  A8 03 00 40 */	lha r0, 0x40(r3)
/* 80110CE8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80110CEC  38 00 00 FF */	li r0, 0xff
/* 80110CF0  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80110CF4  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 80110CF8  38 80 00 01 */	li r4, 1
/* 80110CFC  38 A1 00 08 */	addi r5, r1, 8
/* 80110D00  81 83 00 00 */	lwz r12, 0(r3)
/* 80110D04  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80110D08  7D 89 03 A6 */	mtctr r12
/* 80110D0C  4E 80 04 21 */	bctrl 
/* 80110D10  3C 60 80 39 */	lis r3, m__23daAlinkHIO_kandelaar_c0@ha /* 0x8038E77C@ha */
/* 80110D14  38 63 E7 7C */	addi r3, r3, m__23daAlinkHIO_kandelaar_c0@l /* 0x8038E77C@l */
/* 80110D18  A8 03 00 42 */	lha r0, 0x42(r3)
/* 80110D1C  B0 01 00 08 */	sth r0, 8(r1)
/* 80110D20  A8 03 00 44 */	lha r0, 0x44(r3)
/* 80110D24  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80110D28  A8 03 00 46 */	lha r0, 0x46(r3)
/* 80110D2C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80110D30  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 80110D34  38 80 00 02 */	li r4, 2
/* 80110D38  38 A1 00 08 */	addi r5, r1, 8
/* 80110D3C  81 83 00 00 */	lwz r12, 0(r3)
/* 80110D40  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80110D44  7D 89 03 A6 */	mtctr r12
/* 80110D48  4E 80 04 21 */	bctrl 
/* 80110D4C  38 7F 36 0C */	addi r3, r31, 0x360c
/* 80110D50  38 81 00 10 */	addi r4, r1, 0x10
/* 80110D54  4B F0 45 BD */	bl mDoLib_project__FP3VecP3Vec
/* 80110D58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80110D5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80110D60  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80110D64  28 03 00 00 */	cmplwi r3, 0
/* 80110D68  41 82 00 0C */	beq lbl_80110D74
/* 80110D6C  C0 63 0B 68 */	lfs f3, 0xb68(r3)
/* 80110D70  48 00 00 08 */	b lbl_80110D78
lbl_80110D74:
/* 80110D74  C0 62 92 C0 */	lfs f3, lit_6108(r2)
lbl_80110D78:
/* 80110D78  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80110D7C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80110D80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80110D84  40 81 00 60 */	ble lbl_80110DE4
/* 80110D88  C0 02 96 10 */	lfs f0, lit_32830(r2)
/* 80110D8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80110D90  40 80 00 54 */	bge lbl_80110DE4
/* 80110D94  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80110D98  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80110D9C  40 81 00 48 */	ble lbl_80110DE4
/* 80110DA0  C0 02 96 14 */	lfs f0, lit_32831(r2)
/* 80110DA4  EC 00 18 28 */	fsubs f0, f0, f3
/* 80110DA8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80110DAC  40 80 00 38 */	bge lbl_80110DE4
/* 80110DB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80110DB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80110DB8  3C 63 00 02 */	addis r3, r3, 2
/* 80110DBC  FC 00 08 1E */	fctiwz f0, f1
/* 80110DC0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80110DC4  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80110DC8  FC 00 10 1E */	fctiwz f0, f2
/* 80110DCC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80110DD0  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80110DD4  38 DF 32 C8 */	addi r6, r31, 0x32c8
/* 80110DD8  38 63 C0 F4 */	addi r3, r3, -16140
/* 80110DDC  4B F4 52 3D */	bl newData__13dDlst_peekZ_cFssPUl
/* 80110DE0  48 00 00 0C */	b lbl_80110DEC
lbl_80110DE4:
/* 80110DE4  38 00 00 00 */	li r0, 0
/* 80110DE8  90 1F 32 C8 */	stw r0, 0x32c8(r31)
lbl_80110DEC:
/* 80110DEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80110DF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80110DF4  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 80110DF8  C3 E3 00 C8 */	lfs f31, 0xc8(r3)
/* 80110DFC  C3 C3 00 CC */	lfs f30, 0xcc(r3)
/* 80110E00  38 7F 36 0C */	addi r3, r31, 0x360c
/* 80110E04  38 81 00 10 */	addi r4, r1, 0x10
/* 80110E08  4B F0 46 E5 */	bl mDoLib_pos2camera__FP3VecP3Vec
/* 80110E0C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80110E10  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 80110E14  EC 21 00 2A */	fadds f1, f1, f0
/* 80110E18  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80110E1C  C0 02 96 18 */	lfs f0, lit_32832(r2)
/* 80110E20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80110E24  40 81 00 08 */	ble lbl_80110E2C
/* 80110E28  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80110E2C:
/* 80110E2C  C0 62 96 1C */	lfs f3, lit_32833(r2)
/* 80110E30  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 80110E34  EC 3E 07 F2 */	fmuls f1, f30, f31
/* 80110E38  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80110E3C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80110E40  EC 3F 00 2A */	fadds f1, f31, f0
/* 80110E44  EC 1E F8 28 */	fsubs f0, f30, f31
/* 80110E48  EC 01 00 24 */	fdivs f0, f1, f0
/* 80110E4C  EC 02 00 2A */	fadds f0, f2, f0
/* 80110E50  EC 03 00 32 */	fmuls f0, f3, f0
/* 80110E54  D0 1F 34 4C */	stfs f0, 0x344c(r31)
/* 80110E58  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80110E5C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80110E60  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80110E64  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80110E68  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80110E6C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80110E70  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80110E74  7C 08 03 A6 */	mtlr r0
/* 80110E78  38 21 00 60 */	addi r1, r1, 0x60
/* 80110E7C  4E 80 00 20 */	blr 
