lbl_80BCB320:
/* 80BCB320  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BCB324  7C 08 02 A6 */	mflr r0
/* 80BCB328  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BCB32C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80BCB330  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80BCB334  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80BCB338  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80BCB33C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BCB340  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BCB344  7C 7E 1B 78 */	mr r30, r3
/* 80BCB348  3C 60 80 BD */	lis r3, lit_3775@ha /* 0x80BCC578@ha */
/* 80BCB34C  3B E3 C5 78 */	addi r31, r3, lit_3775@l /* 0x80BCC578@l */
/* 80BCB350  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BCB354  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BCB358  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BCB35C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BCB360  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BCB364  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BCB368  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80BCB36C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCB370  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BCB374  38 61 00 08 */	addi r3, r1, 8
/* 80BCB378  38 81 00 14 */	addi r4, r1, 0x14
/* 80BCB37C  4B 44 9F 95 */	bl mDoLib_project__FP3VecP3Vec
/* 80BCB380  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCB384  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCB388  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80BCB38C  28 03 00 00 */	cmplwi r3, 0
/* 80BCB390  41 82 00 0C */	beq lbl_80BCB39C
/* 80BCB394  C0 63 0B 68 */	lfs f3, 0xb68(r3)
/* 80BCB398  48 00 00 08 */	b lbl_80BCB3A0
lbl_80BCB39C:
/* 80BCB39C  C0 7F 00 4C */	lfs f3, 0x4c(r31)
lbl_80BCB3A0:
/* 80BCB3A0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80BCB3A4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BCB3A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCB3AC  40 81 00 5C */	ble lbl_80BCB408
/* 80BCB3B0  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80BCB3B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCB3B8  40 80 00 50 */	bge lbl_80BCB408
/* 80BCB3BC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80BCB3C0  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80BCB3C4  40 81 00 44 */	ble lbl_80BCB408
/* 80BCB3C8  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80BCB3CC  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BCB3D0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BCB3D4  40 80 00 34 */	bge lbl_80BCB408
/* 80BCB3D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCB3DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCB3E0  3C 63 00 02 */	addis r3, r3, 2
/* 80BCB3E4  FC 00 08 1E */	fctiwz f0, f1
/* 80BCB3E8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BCB3EC  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80BCB3F0  FC 00 10 1E */	fctiwz f0, f2
/* 80BCB3F4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BCB3F8  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80BCB3FC  38 DE 09 9C */	addi r6, r30, 0x99c
/* 80BCB400  38 63 C0 F4 */	addi r3, r3, -16140
/* 80BCB404  4B 48 AC 15 */	bl newData__13dDlst_peekZ_cFssPUl
lbl_80BCB408:
/* 80BCB408  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCB40C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCB410  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 80BCB414  C3 E3 00 C8 */	lfs f31, 0xc8(r3)
/* 80BCB418  C3 C3 00 CC */	lfs f30, 0xcc(r3)
/* 80BCB41C  38 61 00 08 */	addi r3, r1, 8
/* 80BCB420  38 81 00 14 */	addi r4, r1, 0x14
/* 80BCB424  4B 44 A0 C9 */	bl mDoLib_pos2camera__FP3VecP3Vec
/* 80BCB428  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80BCB42C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80BCB430  EC 21 00 2A */	fadds f1, f1, f0
/* 80BCB434  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BCB438  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BCB43C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCB440  40 81 00 08 */	ble lbl_80BCB448
/* 80BCB444  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80BCB448:
/* 80BCB448  C0 7F 00 D8 */	lfs f3, 0xd8(r31)
/* 80BCB44C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80BCB450  EC 3E 07 F2 */	fmuls f1, f30, f31
/* 80BCB454  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BCB458  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BCB45C  EC 3F 00 2A */	fadds f1, f31, f0
/* 80BCB460  EC 1E F8 28 */	fsubs f0, f30, f31
/* 80BCB464  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BCB468  EC 02 00 2A */	fadds f0, f2, f0
/* 80BCB46C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BCB470  D0 1E 09 98 */	stfs f0, 0x998(r30)
/* 80BCB474  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80BCB478  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80BCB47C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80BCB480  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80BCB484  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BCB488  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BCB48C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BCB490  7C 08 03 A6 */	mtlr r0
/* 80BCB494  38 21 00 60 */	addi r1, r1, 0x60
/* 80BCB498  4E 80 00 20 */	blr 
