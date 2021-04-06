lbl_804E8DD8:
/* 804E8DD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E8DDC  7C 08 02 A6 */	mflr r0
/* 804E8DE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E8DE4  39 61 00 30 */	addi r11, r1, 0x30
/* 804E8DE8  4B E7 93 F5 */	bl _savegpr_29
/* 804E8DEC  7C 7E 1B 78 */	mr r30, r3
/* 804E8DF0  3C 80 80 4F */	lis r4, lit_3789@ha /* 0x804EE8AC@ha */
/* 804E8DF4  3B E4 E8 AC */	addi r31, r4, lit_3789@l /* 0x804EE8AC@l */
/* 804E8DF8  80 83 05 DC */	lwz r4, 0x5dc(r3)
/* 804E8DFC  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 804E8E00  FC 00 00 1E */	fctiwz f0, f0
/* 804E8E04  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804E8E08  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 804E8E0C  38 00 00 01 */	li r0, 1
/* 804E8E10  98 03 06 F4 */	stb r0, 0x6f4(r3)
/* 804E8E14  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 804E8E18  2C 00 00 01 */	cmpwi r0, 1
/* 804E8E1C  41 82 00 58 */	beq lbl_804E8E74
/* 804E8E20  40 80 00 B4 */	bge lbl_804E8ED4
/* 804E8E24  2C 00 00 00 */	cmpwi r0, 0
/* 804E8E28  40 80 00 08 */	bge lbl_804E8E30
/* 804E8E2C  48 00 00 A8 */	b lbl_804E8ED4
lbl_804E8E30:
/* 804E8E30  38 80 00 04 */	li r4, 4
/* 804E8E34  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 804E8E38  38 A0 00 00 */	li r5, 0
/* 804E8E3C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E8E40  4B FF C4 91 */	bl anm_init__FP10e_dn_classifUcf
/* 804E8E44  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070041@ha */
/* 804E8E48  38 03 00 41 */	addi r0, r3, 0x0041 /* 0x00070041@l */
/* 804E8E4C  90 01 00 08 */	stw r0, 8(r1)
/* 804E8E50  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E8E54  38 81 00 08 */	addi r4, r1, 8
/* 804E8E58  38 A0 FF FF */	li r5, -1
/* 804E8E5C  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E8E60  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E8E64  7D 89 03 A6 */	mtctr r12
/* 804E8E68  4E 80 04 21 */	bctrl 
/* 804E8E6C  38 00 00 01 */	li r0, 1
/* 804E8E70  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E8E74:
/* 804E8E74  2C 1D 00 16 */	cmpwi r29, 0x16
/* 804E8E78  41 80 00 1C */	blt lbl_804E8E94
/* 804E8E7C  2C 1D 00 1C */	cmpwi r29, 0x1c
/* 804E8E80  41 81 00 14 */	bgt lbl_804E8E94
/* 804E8E84  38 00 00 01 */	li r0, 1
/* 804E8E88  98 1E 06 EF */	stb r0, 0x6ef(r30)
/* 804E8E8C  38 00 00 00 */	li r0, 0
/* 804E8E90  98 1E 06 EE */	stb r0, 0x6ee(r30)
lbl_804E8E94:
/* 804E8E94  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E8E98  38 80 00 01 */	li r4, 1
/* 804E8E9C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804E8EA0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E8EA4  40 82 00 18 */	bne lbl_804E8EBC
/* 804E8EA8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E8EAC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804E8EB0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E8EB4  41 82 00 08 */	beq lbl_804E8EBC
/* 804E8EB8  38 80 00 00 */	li r4, 0
lbl_804E8EBC:
/* 804E8EBC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804E8EC0  41 82 00 14 */	beq lbl_804E8ED4
/* 804E8EC4  38 00 00 03 */	li r0, 3
/* 804E8EC8  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E8ECC  38 00 00 00 */	li r0, 0
/* 804E8ED0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E8ED4:
/* 804E8ED4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804E8ED8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E8EDC  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 804E8EE0  4B D8 6B A1 */	bl cLib_addCalc0__FPfff
/* 804E8EE4  88 1E 06 EF */	lbz r0, 0x6ef(r30)
/* 804E8EE8  7C 00 07 75 */	extsb. r0, r0
/* 804E8EEC  41 82 00 74 */	beq lbl_804E8F60
/* 804E8EF0  7F C3 F3 78 */	mr r3, r30
/* 804E8EF4  4B FF FE 85 */	bl at_hit_check__FP10e_dn_class
/* 804E8EF8  28 03 00 00 */	cmplwi r3, 0
/* 804E8EFC  41 82 00 64 */	beq lbl_804E8F60
/* 804E8F00  A8 03 00 08 */	lha r0, 8(r3)
/* 804E8F04  2C 00 00 FD */	cmpwi r0, 0xfd
/* 804E8F08  40 82 00 58 */	bne lbl_804E8F60
/* 804E8F0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E8F10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E8F14  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804E8F18  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804E8F1C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 804E8F20  7D 89 03 A6 */	mtctr r12
/* 804E8F24  4E 80 04 21 */	bctrl 
/* 804E8F28  2C 03 00 00 */	cmpwi r3, 0
/* 804E8F2C  41 82 00 34 */	beq lbl_804E8F60
/* 804E8F30  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E8F34  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804E8F38  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804E8F3C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804E8F40  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804E8F44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E8F48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E8F4C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804E8F50  38 80 00 03 */	li r4, 3
/* 804E8F54  38 A0 00 1F */	li r5, 0x1f
/* 804E8F58  38 C1 00 0C */	addi r6, r1, 0xc
/* 804E8F5C  4B B8 6A C9 */	bl StartShock__12dVibration_cFii4cXyz
lbl_804E8F60:
/* 804E8F60  39 61 00 30 */	addi r11, r1, 0x30
/* 804E8F64  4B E7 92 C5 */	bl _restgpr_29
/* 804E8F68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E8F6C  7C 08 03 A6 */	mtlr r0
/* 804E8F70  38 21 00 30 */	addi r1, r1, 0x30
/* 804E8F74  4E 80 00 20 */	blr 
