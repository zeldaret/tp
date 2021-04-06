lbl_80029E1C:
/* 80029E1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80029E20  7C 08 02 A6 */	mflr r0
/* 80029E24  90 01 00 54 */	stw r0, 0x54(r1)
/* 80029E28  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80029E2C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80029E30  39 61 00 40 */	addi r11, r1, 0x40
/* 80029E34  48 33 83 A9 */	bl _savegpr_29
/* 80029E38  7C 7D 1B 78 */	mr r29, r3
/* 80029E3C  7C 9E 23 79 */	or. r30, r4, r4
/* 80029E40  7C BF 2B 78 */	mr r31, r5
/* 80029E44  C0 02 82 E4 */	lfs f0, lit_4321(r2)
/* 80029E48  41 80 01 10 */	blt lbl_80029F58
/* 80029E4C  4B FF F3 15 */	bl getStayType__15renderingAmap_cCFv
/* 80029E50  2C 03 00 00 */	cmpwi r3, 0
/* 80029E54  40 82 00 AC */	bne lbl_80029F00
/* 80029E58  C0 02 82 E4 */	lfs f0, lit_4321(r2)
/* 80029E5C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80029E60  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80029E64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80029E68  D0 01 00 08 */	stfs f0, 8(r1)
/* 80029E6C  7F A3 EB 78 */	mr r3, r29
/* 80029E70  7F C4 F3 78 */	mr r4, r30
/* 80029E74  38 A1 00 14 */	addi r5, r1, 0x14
/* 80029E78  38 C1 00 10 */	addi r6, r1, 0x10
/* 80029E7C  38 E1 00 0C */	addi r7, r1, 0xc
/* 80029E80  39 01 00 08 */	addi r8, r1, 8
/* 80029E84  4B FF FC 09 */	bl getMapMinMaxXZ__6dMap_cFiPfPfPfPf
/* 80029E88  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80029E8C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80029E90  EC 41 00 28 */	fsubs f2, f1, f0
/* 80029E94  C0 21 00 08 */	lfs f1, 8(r1)
/* 80029E98  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80029E9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80029EA0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80029EA4  4C 41 13 82 */	cror 2, 1, 2
/* 80029EA8  40 82 00 0C */	bne lbl_80029EB4
/* 80029EAC  FC 60 10 90 */	fmr f3, f2
/* 80029EB0  48 00 00 08 */	b lbl_80029EB8
lbl_80029EB4:
/* 80029EB4  FC 60 00 90 */	fmr f3, f0
lbl_80029EB8:
/* 80029EB8  A0 1D 00 7A */	lhz r0, 0x7a(r29)
/* 80029EBC  C8 22 82 B0 */	lfd f1, lit_3749(r2)
/* 80029EC0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80029EC4  3C 80 43 30 */	lis r4, 0x4330
/* 80029EC8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80029ECC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80029ED0  EC 40 08 28 */	fsubs f2, f0, f1
/* 80029ED4  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 80029ED8  38 03 00 04 */	addi r0, r3, 4
/* 80029EDC  C8 22 82 B8 */	lfd f1, lit_3751(r2)
/* 80029EE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80029EE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80029EE8  90 81 00 20 */	stw r4, 0x20(r1)
/* 80029EEC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80029EF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80029EF4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80029EF8  EC 03 00 24 */	fdivs f0, f3, f0
/* 80029EFC  48 00 00 5C */	b lbl_80029F58
lbl_80029F00:
/* 80029F00  C3 E2 82 E4 */	lfs f31, lit_4321(r2)
/* 80029F04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80029F08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80029F0C  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 80029F10  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80029F14  7D 89 03 A6 */	mtctr r12
/* 80029F18  4E 80 04 21 */	bctrl 
/* 80029F1C  28 03 00 00 */	cmplwi r3, 0
/* 80029F20  41 82 00 08 */	beq lbl_80029F28
/* 80029F24  C3 E3 00 20 */	lfs f31, 0x20(r3)
lbl_80029F28:
/* 80029F28  C0 02 82 E4 */	lfs f0, lit_4321(r2)
/* 80029F2C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80029F30  40 82 00 08 */	bne lbl_80029F38
/* 80029F34  C3 E2 82 E8 */	lfs f31, lit_4503(r2)
lbl_80029F38:
/* 80029F38  A0 1D 00 7A */	lhz r0, 0x7a(r29)
/* 80029F3C  C8 22 82 B0 */	lfd f1, lit_3749(r2)
/* 80029F40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80029F44  3C 00 43 30 */	lis r0, 0x4330
/* 80029F48  90 01 00 20 */	stw r0, 0x20(r1)
/* 80029F4C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80029F50  EC 00 08 28 */	fsubs f0, f0, f1
/* 80029F54  EC 1F 00 24 */	fdivs f0, f31, f0
lbl_80029F58:
/* 80029F58  28 1F 00 00 */	cmplwi r31, 0
/* 80029F5C  41 82 00 08 */	beq lbl_80029F64
/* 80029F60  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_80029F64:
/* 80029F64  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80029F68  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80029F6C  39 61 00 40 */	addi r11, r1, 0x40
/* 80029F70  48 33 82 B9 */	bl _restgpr_29
/* 80029F74  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80029F78  7C 08 03 A6 */	mtlr r0
/* 80029F7C  38 21 00 50 */	addi r1, r1, 0x50
/* 80029F80  4E 80 00 20 */	blr 
