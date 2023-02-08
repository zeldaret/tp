lbl_800F9D7C:
/* 800F9D7C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800F9D80  7C 08 02 A6 */	mflr r0
/* 800F9D84  90 01 00 64 */	stw r0, 0x64(r1)
/* 800F9D88  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800F9D8C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 800F9D90  39 61 00 50 */	addi r11, r1, 0x50
/* 800F9D94  48 26 84 41 */	bl _savegpr_27
/* 800F9D98  7C 7F 1B 78 */	mr r31, r3
/* 800F9D9C  7C 9B 23 78 */	mr r27, r4
/* 800F9DA0  7C BC 2B 78 */	mr r28, r5
/* 800F9DA4  7C DD 33 78 */	mr r29, r6
/* 800F9DA8  C3 E3 1F E0 */	lfs f31, 0x1fe0(r3)
/* 800F9DAC  38 80 00 38 */	li r4, 0x38
/* 800F9DB0  4B FC 81 BD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F9DB4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F9DB8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800F9DBC  38 00 00 0C */	li r0, 0xc
/* 800F9DC0  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800F9DC4  3C 60 80 39 */	lis r3, m__20daAlinkHIO_crouch_c0@ha /* 0x8038E01C@ha */
/* 800F9DC8  3B C3 E0 1C */	addi r30, r3, m__20daAlinkHIO_crouch_c0@l /* 0x8038E01C@l */
/* 800F9DCC  7F E3 FB 78 */	mr r3, r31
/* 800F9DD0  38 80 00 34 */	li r4, 0x34
/* 800F9DD4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 800F9DD8  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 800F9DDC  A8 BE 00 14 */	lha r5, 0x14(r30)
/* 800F9DE0  2C 1B 00 00 */	cmpwi r27, 0
/* 800F9DE4  41 82 00 0C */	beq lbl_800F9DF0
/* 800F9DE8  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 800F9DEC  48 00 00 08 */	b lbl_800F9DF4
lbl_800F9DF0:
/* 800F9DF0  C0 62 92 BC */	lfs f3, lit_6041(r2)
lbl_800F9DF4:
/* 800F9DF4  4B FB 32 19 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800F9DF8  2C 1B 00 00 */	cmpwi r27, 0
/* 800F9DFC  40 82 00 60 */	bne lbl_800F9E5C
/* 800F9E00  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 800F9E04  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 800F9E08  40 81 00 0C */	ble lbl_800F9E14
/* 800F9E0C  FF E0 00 90 */	fmr f31, f0
/* 800F9E10  48 00 00 40 */	b lbl_800F9E50
lbl_800F9E14:
/* 800F9E14  A8 1E 00 14 */	lha r0, 0x14(r30)
/* 800F9E18  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800F9E1C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800F9E20  90 61 00 2C */	stw r3, 0x2c(r1)
/* 800F9E24  3C 00 43 30 */	lis r0, 0x4330
/* 800F9E28  90 01 00 28 */	stw r0, 0x28(r1)
/* 800F9E2C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800F9E30  EC 00 08 28 */	fsubs f0, f0, f1
/* 800F9E34  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 800F9E38  4C 40 13 82 */	cror 2, 0, 2
/* 800F9E3C  40 82 00 14 */	bne lbl_800F9E50
/* 800F9E40  90 61 00 2C */	stw r3, 0x2c(r1)
/* 800F9E44  90 01 00 28 */	stw r0, 0x28(r1)
/* 800F9E48  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800F9E4C  EF E0 08 28 */	fsubs f31, f0, f1
lbl_800F9E50:
/* 800F9E50  D3 FF 1F E0 */	stfs f31, 0x1fe0(r31)
/* 800F9E54  80 7F 1F 2C */	lwz r3, 0x1f2c(r31)
/* 800F9E58  D3 E3 00 08 */	stfs f31, 8(r3)
lbl_800F9E5C:
/* 800F9E5C  80 7F 1F 2C */	lwz r3, 0x1f2c(r31)
/* 800F9E60  38 80 00 00 */	li r4, 0
/* 800F9E64  38 A1 00 08 */	addi r5, r1, 8
/* 800F9E68  81 83 00 00 */	lwz r12, 0(r3)
/* 800F9E6C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800F9E70  7D 89 03 A6 */	mtctr r12
/* 800F9E74  4E 80 04 21 */	bctrl 
/* 800F9E78  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800F9E7C  D0 1F 34 D4 */	stfs f0, 0x34d4(r31)
/* 800F9E80  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800F9E84  D0 1F 34 D8 */	stfs f0, 0x34d8(r31)
/* 800F9E88  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800F9E8C  D0 1F 34 DC */	stfs f0, 0x34dc(r31)
/* 800F9E90  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F9E94  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800F9E98  B3 9F 04 E4 */	sth r28, 0x4e4(r31)
/* 800F9E9C  B3 BF 04 E8 */	sth r29, 0x4e8(r31)
/* 800F9EA0  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 800F9EA4  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 800F9EA8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800F9EAC  40 81 00 0C */	ble lbl_800F9EB8
/* 800F9EB0  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 800F9EB4  48 00 00 08 */	b lbl_800F9EBC
lbl_800F9EB8:
/* 800F9EB8  D0 3F 34 7C */	stfs f1, 0x347c(r31)
lbl_800F9EBC:
/* 800F9EBC  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800F9EC0  A8 1E 00 14 */	lha r0, 0x14(r30)
/* 800F9EC4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800F9EC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F9ECC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800F9ED0  3C 00 43 30 */	lis r0, 0x4330
/* 800F9ED4  90 01 00 28 */	stw r0, 0x28(r1)
/* 800F9ED8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800F9EDC  EC 20 08 28 */	fsubs f1, f0, f1
/* 800F9EE0  C0 1F 34 7C */	lfs f0, 0x347c(r31)
/* 800F9EE4  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F9EE8  EC 02 00 24 */	fdivs f0, f2, f0
/* 800F9EEC  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800F9EF0  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha /* 0x80425514@ha */
/* 800F9EF4  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)  /* 0x80425514@l */
/* 800F9EF8  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 800F9EFC  C0 03 00 04 */	lfs f0, 4(r3)
/* 800F9F00  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 800F9F04  C0 03 00 08 */	lfs f0, 8(r3)
/* 800F9F08  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 800F9F0C  38 60 00 01 */	li r3, 1
/* 800F9F10  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 800F9F14  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800F9F18  39 61 00 50 */	addi r11, r1, 0x50
/* 800F9F1C  48 26 83 05 */	bl _restgpr_27
/* 800F9F20  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800F9F24  7C 08 03 A6 */	mtlr r0
/* 800F9F28  38 21 00 60 */	addi r1, r1, 0x60
/* 800F9F2C  4E 80 00 20 */	blr 
