lbl_800B5CCC:
/* 800B5CCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800B5CD0  7C 08 02 A6 */	mflr r0
/* 800B5CD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 800B5CD8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800B5CDC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 800B5CE0  39 61 00 30 */	addi r11, r1, 0x30
/* 800B5CE4  48 2A C4 F1 */	bl _savegpr_27
/* 800B5CE8  7C 7E 1B 78 */	mr r30, r3
/* 800B5CEC  7C 9F 23 78 */	mr r31, r4
/* 800B5CF0  C0 42 93 88 */	lfs f2, lit_8782(r2)
/* 800B5CF4  C0 23 33 C4 */	lfs f1, 0x33c4(r3)
/* 800B5CF8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 800B5CFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800B5D00  EF E2 00 32 */	fmuls f31, f2, f0
/* 800B5D04  A8 63 04 DE */	lha r3, 0x4de(r3)
/* 800B5D08  A8 1E 2F E2 */	lha r0, 0x2fe2(r30)
/* 800B5D0C  7C 03 00 50 */	subf r0, r3, r0
/* 800B5D10  7C 03 07 34 */	extsh r3, r0
/* 800B5D14  4B FF D7 81 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800B5D18  7C 7C 1B 78 */	mr r28, r3
/* 800B5D1C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800B5D20  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 800B5D24  7C 03 00 50 */	subf r0, r3, r0
/* 800B5D28  7C 03 07 34 */	extsh r3, r0
/* 800B5D2C  4B FF D7 69 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800B5D30  7C 7B 1B 78 */	mr r27, r3
/* 800B5D34  3B A0 00 00 */	li r29, 0
/* 800B5D38  C0 3E 33 A8 */	lfs f1, 0x33a8(r30)
/* 800B5D3C  C0 02 94 08 */	lfs f0, lit_14064(r2)
/* 800B5D40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B5D44  40 81 00 34 */	ble lbl_800B5D78
/* 800B5D48  2C 1B 00 01 */	cmpwi r27, 1
/* 800B5D4C  41 82 00 2C */	beq lbl_800B5D78
/* 800B5D50  7F C3 F3 78 */	mr r3, r30
/* 800B5D54  48 02 DF 19 */	bl checkGrabAnime__9daAlink_cCFv
/* 800B5D58  2C 03 00 00 */	cmpwi r3, 0
/* 800B5D5C  40 82 00 1C */	bne lbl_800B5D78
/* 800B5D60  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800B5D64  28 00 00 2D */	cmplwi r0, 0x2d
/* 800B5D68  41 82 00 10 */	beq lbl_800B5D78
/* 800B5D6C  2C 1C 00 00 */	cmpwi r28, 0
/* 800B5D70  40 82 00 08 */	bne lbl_800B5D78
/* 800B5D74  3B A0 00 01 */	li r29, 1
lbl_800B5D78:
/* 800B5D78  57 BD 06 3E */	clrlwi r29, r29, 0x18
/* 800B5D7C  2C 1F 00 00 */	cmpwi r31, 0
/* 800B5D80  40 82 00 1C */	bne lbl_800B5D9C
/* 800B5D84  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damFall_c0@ha /* 0x8038E454@ha */
/* 800B5D88  38 63 E4 54 */	addi r3, r3, m__21daAlinkHIO_damFall_c0@l /* 0x8038E454@l */
/* 800B5D8C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800B5D90  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800B5D94  4C 41 13 82 */	cror 2, 1, 2
/* 800B5D98  40 82 00 44 */	bne lbl_800B5DDC
lbl_800B5D9C:
/* 800B5D9C  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damFall_c0@ha /* 0x8038E454@ha */
/* 800B5DA0  38 63 E4 54 */	addi r3, r3, m__21daAlinkHIO_damFall_c0@l /* 0x8038E454@l */
/* 800B5DA4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800B5DA8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800B5DAC  40 80 00 30 */	bge lbl_800B5DDC
/* 800B5DB0  2C 1D 00 00 */	cmpwi r29, 0
/* 800B5DB4  41 82 00 28 */	beq lbl_800B5DDC
/* 800B5DB8  2C 1B 00 00 */	cmpwi r27, 0
/* 800B5DBC  40 82 00 10 */	bne lbl_800B5DCC
/* 800B5DC0  7F C3 F3 78 */	mr r3, r30
/* 800B5DC4  48 00 EB 89 */	bl procFrontRollInit__9daAlink_cFv
/* 800B5DC8  48 00 01 80 */	b lbl_800B5F48
lbl_800B5DCC:
/* 800B5DCC  7F C3 F3 78 */	mr r3, r30
/* 800B5DD0  7F 64 DB 78 */	mr r4, r27
/* 800B5DD4  48 00 F5 55 */	bl procSideRollInit__9daAlink_cFi
/* 800B5DD8  48 00 01 70 */	b lbl_800B5F48
lbl_800B5DDC:
/* 800B5DDC  7F C3 F3 78 */	mr r3, r30
/* 800B5DE0  48 02 11 4D */	bl checkNoLandDamageSlidePolygon__9daAlink_cFv
/* 800B5DE4  2C 03 00 00 */	cmpwi r3, 0
/* 800B5DE8  40 82 00 18 */	bne lbl_800B5E00
/* 800B5DEC  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damFall_c0@ha /* 0x8038E454@ha */
/* 800B5DF0  38 83 E4 54 */	addi r4, r3, m__21daAlinkHIO_damFall_c0@l /* 0x8038E454@l */
/* 800B5DF4  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 800B5DF8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800B5DFC  40 80 01 2C */	bge lbl_800B5F28
lbl_800B5E00:
/* 800B5E00  2C 1F 00 00 */	cmpwi r31, 0
/* 800B5E04  41 82 00 14 */	beq lbl_800B5E18
/* 800B5E08  7F C3 F3 78 */	mr r3, r30
/* 800B5E0C  38 80 00 00 */	li r4, 0
/* 800B5E10  48 02 50 01 */	bl procLandDamageInit__9daAlink_cFi
/* 800B5E14  48 00 01 34 */	b lbl_800B5F48
lbl_800B5E18:
/* 800B5E18  2C 1D 00 00 */	cmpwi r29, 0
/* 800B5E1C  41 82 00 34 */	beq lbl_800B5E50
/* 800B5E20  A0 1E 30 F0 */	lhz r0, 0x30f0(r30)
/* 800B5E24  28 00 00 32 */	cmplwi r0, 0x32
/* 800B5E28  40 81 00 28 */	ble lbl_800B5E50
/* 800B5E2C  2C 1B 00 00 */	cmpwi r27, 0
/* 800B5E30  40 82 00 10 */	bne lbl_800B5E40
/* 800B5E34  7F C3 F3 78 */	mr r3, r30
/* 800B5E38  48 00 EB 15 */	bl procFrontRollInit__9daAlink_cFv
/* 800B5E3C  48 00 01 0C */	b lbl_800B5F48
lbl_800B5E40:
/* 800B5E40  7F C3 F3 78 */	mr r3, r30
/* 800B5E44  7F 64 DB 78 */	mr r4, r27
/* 800B5E48  48 00 F4 E1 */	bl procSideRollInit__9daAlink_cFi
/* 800B5E4C  48 00 00 FC */	b lbl_800B5F48
lbl_800B5E50:
/* 800B5E50  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800B5E54  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B5E58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B5E5C  40 81 00 BC */	ble lbl_800B5F18
/* 800B5E60  2C 1B 00 00 */	cmpwi r27, 0
/* 800B5E64  40 82 00 B4 */	bne lbl_800B5F18
/* 800B5E68  2C 1C 00 00 */	cmpwi r28, 0
/* 800B5E6C  40 82 00 AC */	bne lbl_800B5F18
/* 800B5E70  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800B5E74  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800B5E78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B5E7C  40 81 00 9C */	ble lbl_800B5F18
/* 800B5E80  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800B5E84  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800B5E88  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800B5E8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B5E90  40 81 00 08 */	ble lbl_800B5E98
/* 800B5E94  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_800B5E98:
/* 800B5E98  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800B5E9C  C0 02 92 AC */	lfs f0, lit_6023(r2)
/* 800B5EA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800B5EA4  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800B5EA8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800B5EAC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800B5EB0  7F C3 F3 78 */	mr r3, r30
/* 800B5EB4  48 00 D8 19 */	bl procMoveInit__9daAlink_cFv
/* 800B5EB8  7F C3 F3 78 */	mr r3, r30
/* 800B5EBC  38 80 00 02 */	li r4, 2
/* 800B5EC0  48 06 B3 01 */	bl setFootEffectProcType__9daAlink_cFi
/* 800B5EC4  38 00 00 04 */	li r0, 4
/* 800B5EC8  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 800B5ECC  7F C3 F3 78 */	mr r3, r30
/* 800B5ED0  48 00 96 11 */	bl resetBasAnime__9daAlink_cFv
/* 800B5ED4  7F C3 F3 78 */	mr r3, r30
/* 800B5ED8  3C 80 00 03 */	lis r4, 0x0003 /* 0x00030001@ha */
/* 800B5EDC  38 84 00 01 */	addi r4, r4, 0x0001 /* 0x00030001@l */
/* 800B5EE0  48 00 92 B5 */	bl seStartMapInfo__9daAlink_cFUl
/* 800B5EE4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800B5EE8  D0 21 00 08 */	stfs f1, 8(r1)
/* 800B5EEC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800B5EF0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800B5EF4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800B5EF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B5EFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B5F00  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800B5F04  38 80 00 01 */	li r4, 1
/* 800B5F08  38 A0 00 0F */	li r5, 0xf
/* 800B5F0C  38 C1 00 08 */	addi r6, r1, 8
/* 800B5F10  4B FB 9B 15 */	bl StartShock__12dVibration_cFii4cXyz
/* 800B5F14  48 00 00 34 */	b lbl_800B5F48
lbl_800B5F18:
/* 800B5F18  7F C3 F3 78 */	mr r3, r30
/* 800B5F1C  FC 20 F8 90 */	fmr f1, f31
/* 800B5F20  48 01 0F F9 */	bl procLandInit__9daAlink_cFf
/* 800B5F24  48 00 00 24 */	b lbl_800B5F48
lbl_800B5F28:
/* 800B5F28  7F C3 F3 78 */	mr r3, r30
/* 800B5F2C  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 800B5F30  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800B5F34  40 80 00 0C */	bge lbl_800B5F40
/* 800B5F38  38 80 00 01 */	li r4, 1
/* 800B5F3C  48 00 00 08 */	b lbl_800B5F44
lbl_800B5F40:
/* 800B5F40  38 80 00 02 */	li r4, 2
lbl_800B5F44:
/* 800B5F44  48 02 4E CD */	bl procLandDamageInit__9daAlink_cFi
lbl_800B5F48:
/* 800B5F48  38 60 00 01 */	li r3, 1
/* 800B5F4C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 800B5F50  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800B5F54  39 61 00 30 */	addi r11, r1, 0x30
/* 800B5F58  48 2A C2 C9 */	bl _restgpr_27
/* 800B5F5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800B5F60  7C 08 03 A6 */	mtlr r0
/* 800B5F64  38 21 00 40 */	addi r1, r1, 0x40
/* 800B5F68  4E 80 00 20 */	blr 
