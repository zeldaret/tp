lbl_80691DC4:
/* 80691DC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80691DC8  7C 08 02 A6 */	mflr r0
/* 80691DCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80691DD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80691DD4  4B CD 04 09 */	bl _savegpr_29
/* 80691DD8  7C 7D 1B 78 */	mr r29, r3
/* 80691DDC  3C 80 80 69 */	lis r4, lit_3788@ha /* 0x80694690@ha */
/* 80691DE0  3B E4 46 90 */	addi r31, r4, lit_3788@l /* 0x80694690@l */
/* 80691DE4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80691DE8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80691DEC  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80691DF0  A8 03 06 74 */	lha r0, 0x674(r3)
/* 80691DF4  2C 00 00 01 */	cmpwi r0, 1
/* 80691DF8  41 82 00 44 */	beq lbl_80691E3C
/* 80691DFC  40 80 00 BC */	bge lbl_80691EB8
/* 80691E00  2C 00 00 00 */	cmpwi r0, 0
/* 80691E04  40 80 00 08 */	bge lbl_80691E0C
/* 80691E08  48 00 00 B0 */	b lbl_80691EB8
lbl_80691E0C:
/* 80691E0C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80691E10  4B BD 5B 45 */	bl cM_rndF__Ff
/* 80691E14  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80691E18  EC 40 08 2A */	fadds f2, f0, f1
/* 80691E1C  7F A3 EB 78 */	mr r3, r29
/* 80691E20  38 80 00 07 */	li r4, 7
/* 80691E24  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80691E28  38 A0 00 02 */	li r5, 2
/* 80691E2C  4B FF F4 25 */	bl anm_init__FP10e_bu_classifUcf
/* 80691E30  38 00 00 01 */	li r0, 1
/* 80691E34  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80691E38  48 00 00 80 */	b lbl_80691EB8
lbl_80691E3C:
/* 80691E3C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80691E40  38 80 00 01 */	li r4, 1
/* 80691E44  4B FF F7 99 */	bl pl_check__FP10e_bu_classfs
/* 80691E48  2C 03 00 00 */	cmpwi r3, 0
/* 80691E4C  40 82 00 3C */	bne lbl_80691E88
/* 80691E50  7F A3 EB 78 */	mr r3, r29
/* 80691E54  4B FF F9 D9 */	bl path_check__FP10e_bu_class
/* 80691E58  2C 03 00 00 */	cmpwi r3, 0
/* 80691E5C  40 82 00 18 */	bne lbl_80691E74
/* 80691E60  38 00 00 05 */	li r0, 5
/* 80691E64  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80691E68  38 00 00 01 */	li r0, 1
/* 80691E6C  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80691E70  48 00 00 48 */	b lbl_80691EB8
lbl_80691E74:
/* 80691E74  38 00 00 06 */	li r0, 6
/* 80691E78  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80691E7C  38 00 00 01 */	li r0, 1
/* 80691E80  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80691E84  48 00 00 34 */	b lbl_80691EB8
lbl_80691E88:
/* 80691E88  7F A3 EB 78 */	mr r3, r29
/* 80691E8C  3C 80 80 69 */	lis r4, l_HIO@ha /* 0x80694968@ha */
/* 80691E90  38 84 49 68 */	addi r4, r4, l_HIO@l /* 0x80694968@l */
/* 80691E94  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80691E98  38 80 00 01 */	li r4, 1
/* 80691E9C  4B FF F7 41 */	bl pl_check__FP10e_bu_classfs
/* 80691EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80691EA4  41 82 00 14 */	beq lbl_80691EB8
/* 80691EA8  38 00 00 02 */	li r0, 2
/* 80691EAC  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80691EB0  38 00 00 00 */	li r0, 0
/* 80691EB4  B0 1D 06 74 */	sth r0, 0x674(r29)
lbl_80691EB8:
/* 80691EB8  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x80694968@ha */
/* 80691EBC  38 63 49 68 */	addi r3, r3, l_HIO@l /* 0x80694968@l */
/* 80691EC0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80691EC4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80691EC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80691ECC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80691ED0  EC 60 00 72 */	fmuls f3, f0, f1
/* 80691ED4  4B BD DB 69 */	bl cLib_addCalc2__FPffff
/* 80691ED8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80691EDC  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 80691EE0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80691EE4  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 80691EE8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80691EEC  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 80691EF0  7F A3 EB 78 */	mr r3, r29
/* 80691EF4  4B FF FB A1 */	bl fly_move__FP10e_bu_class
/* 80691EF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80691EFC  4B CD 03 2D */	bl _restgpr_29
/* 80691F00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80691F04  7C 08 03 A6 */	mtlr r0
/* 80691F08  38 21 00 20 */	addi r1, r1, 0x20
/* 80691F0C  4E 80 00 20 */	blr 
