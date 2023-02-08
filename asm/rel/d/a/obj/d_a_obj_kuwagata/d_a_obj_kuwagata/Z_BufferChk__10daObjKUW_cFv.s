lbl_80C4BD20:
/* 80C4BD20  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C4BD24  7C 08 02 A6 */	mflr r0
/* 80C4BD28  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C4BD2C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C4BD30  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C4BD34  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80C4BD38  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80C4BD3C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C4BD40  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C4BD44  7C 7E 1B 78 */	mr r30, r3
/* 80C4BD48  3C 60 80 C5 */	lis r3, lit_3775@ha /* 0x80C4D490@ha */
/* 80C4BD4C  3B E3 D4 90 */	addi r31, r3, lit_3775@l /* 0x80C4D490@l */
/* 80C4BD50  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C4BD54  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C4BD58  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C4BD5C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C4BD60  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C4BD64  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C4BD68  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C4BD6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C4BD70  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C4BD74  38 61 00 08 */	addi r3, r1, 8
/* 80C4BD78  38 81 00 14 */	addi r4, r1, 0x14
/* 80C4BD7C  4B 3C 95 95 */	bl mDoLib_project__FP3VecP3Vec
/* 80C4BD80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4BD84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4BD88  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80C4BD8C  28 03 00 00 */	cmplwi r3, 0
/* 80C4BD90  41 82 00 0C */	beq lbl_80C4BD9C
/* 80C4BD94  C0 63 0B 68 */	lfs f3, 0xb68(r3)
/* 80C4BD98  48 00 00 08 */	b lbl_80C4BDA0
lbl_80C4BD9C:
/* 80C4BD9C  C0 7F 00 50 */	lfs f3, 0x50(r31)
lbl_80C4BDA0:
/* 80C4BDA0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80C4BDA4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4BDA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4BDAC  40 81 00 5C */	ble lbl_80C4BE08
/* 80C4BDB0  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80C4BDB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4BDB8  40 80 00 50 */	bge lbl_80C4BE08
/* 80C4BDBC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80C4BDC0  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80C4BDC4  40 81 00 44 */	ble lbl_80C4BE08
/* 80C4BDC8  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80C4BDCC  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C4BDD0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C4BDD4  40 80 00 34 */	bge lbl_80C4BE08
/* 80C4BDD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4BDDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4BDE0  3C 63 00 02 */	addis r3, r3, 2
/* 80C4BDE4  FC 00 08 1E */	fctiwz f0, f1
/* 80C4BDE8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C4BDEC  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80C4BDF0  FC 00 10 1E */	fctiwz f0, f2
/* 80C4BDF4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C4BDF8  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80C4BDFC  38 DE 09 BC */	addi r6, r30, 0x9bc
/* 80C4BE00  38 63 C0 F4 */	addi r3, r3, -16140
/* 80C4BE04  4B 40 A2 15 */	bl newData__13dDlst_peekZ_cFssPUl
lbl_80C4BE08:
/* 80C4BE08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4BE0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4BE10  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 80C4BE14  C3 E3 00 C8 */	lfs f31, 0xc8(r3)
/* 80C4BE18  C3 C3 00 CC */	lfs f30, 0xcc(r3)
/* 80C4BE1C  38 61 00 08 */	addi r3, r1, 8
/* 80C4BE20  38 81 00 14 */	addi r4, r1, 0x14
/* 80C4BE24  4B 3C 96 C9 */	bl mDoLib_pos2camera__FP3VecP3Vec
/* 80C4BE28  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80C4BE2C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C4BE30  EC 21 00 2A */	fadds f1, f1, f0
/* 80C4BE34  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C4BE38  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4BE3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4BE40  40 81 00 08 */	ble lbl_80C4BE48
/* 80C4BE44  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80C4BE48:
/* 80C4BE48  C0 7F 00 C8 */	lfs f3, 0xc8(r31)
/* 80C4BE4C  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80C4BE50  EC 3E 07 F2 */	fmuls f1, f30, f31
/* 80C4BE54  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C4BE58  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C4BE5C  EC 3F 00 2A */	fadds f1, f31, f0
/* 80C4BE60  EC 1E F8 28 */	fsubs f0, f30, f31
/* 80C4BE64  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C4BE68  EC 02 00 2A */	fadds f0, f2, f0
/* 80C4BE6C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C4BE70  D0 1E 09 B8 */	stfs f0, 0x9b8(r30)
/* 80C4BE74  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C4BE78  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C4BE7C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80C4BE80  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80C4BE84  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C4BE88  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C4BE8C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C4BE90  7C 08 03 A6 */	mtlr r0
/* 80C4BE94  38 21 00 60 */	addi r1, r1, 0x60
/* 80C4BE98  4E 80 00 20 */	blr 
