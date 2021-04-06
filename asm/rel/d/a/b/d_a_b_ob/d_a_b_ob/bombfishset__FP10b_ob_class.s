lbl_80611D10:
/* 80611D10  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80611D14  7C 08 02 A6 */	mflr r0
/* 80611D18  90 01 00 44 */	stw r0, 0x44(r1)
/* 80611D1C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80611D20  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80611D24  7C 7E 1B 78 */	mr r30, r3
/* 80611D28  3C 80 80 62 */	lis r4, lit_3772@ha /* 0x8061AD84@ha */
/* 80611D2C  3B E4 AD 84 */	addi r31, r4, lit_3772@l /* 0x8061AD84@l */
/* 80611D30  38 00 00 14 */	li r0, 0x14
/* 80611D34  B0 03 47 84 */	sth r0, 0x4784(r3)
/* 80611D38  A8 03 47 54 */	lha r0, 0x4754(r3)
/* 80611D3C  2C 00 00 01 */	cmpwi r0, 1
/* 80611D40  41 82 00 60 */	beq lbl_80611DA0
/* 80611D44  40 80 01 9C */	bge lbl_80611EE0
/* 80611D48  2C 00 00 00 */	cmpwi r0, 0
/* 80611D4C  40 80 00 08 */	bge lbl_80611D54
/* 80611D50  48 00 01 90 */	b lbl_80611EE0
lbl_80611D54:
/* 80611D54  38 80 00 1E */	li r4, 0x1e
/* 80611D58  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80611D5C  38 A0 00 02 */	li r5, 2
/* 80611D60  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80611D64  4B FF E8 59 */	bl anm_init__FP10b_ob_classifUcf
/* 80611D68  38 60 00 01 */	li r3, 1
/* 80611D6C  B0 7E 47 54 */	sth r3, 0x4754(r30)
/* 80611D70  88 1E 05 67 */	lbz r0, 0x567(r30)
/* 80611D74  7C 00 07 75 */	extsb. r0, r0
/* 80611D78  40 82 00 1C */	bne lbl_80611D94
/* 80611D7C  A8 1E 5C 80 */	lha r0, 0x5c80(r30)
/* 80611D80  2C 00 00 00 */	cmpwi r0, 0
/* 80611D84  40 82 00 10 */	bne lbl_80611D94
/* 80611D88  38 00 00 3C */	li r0, 0x3c
/* 80611D8C  B0 1E 5C 80 */	sth r0, 0x5c80(r30)
/* 80611D90  98 7E 05 67 */	stb r3, 0x567(r30)
lbl_80611D94:
/* 80611D94  38 00 00 96 */	li r0, 0x96
/* 80611D98  B0 1E 47 78 */	sth r0, 0x4778(r30)
/* 80611D9C  48 00 01 44 */	b lbl_80611EE0
lbl_80611DA0:
/* 80611DA0  A8 1E 47 78 */	lha r0, 0x4778(r30)
/* 80611DA4  2C 00 00 64 */	cmpwi r0, 0x64
/* 80611DA8  40 80 00 F0 */	bge lbl_80611E98
/* 80611DAC  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80611DB0  40 82 00 E8 */	bne lbl_80611E98
/* 80611DB4  38 00 00 00 */	li r0, 0
/* 80611DB8  3C 60 80 62 */	lis r3, bf_ct@ha /* 0x8061B53C@ha */
/* 80611DBC  90 03 B5 3C */	stw r0, bf_ct@l(r3)  /* 0x8061B53C@l */
/* 80611DC0  3C 60 80 61 */	lis r3, s_bf_sub__FPvPv@ha /* 0x80611C20@ha */
/* 80611DC4  38 63 1C 20 */	addi r3, r3, s_bf_sub__FPvPv@l /* 0x80611C20@l */
/* 80611DC8  7F C4 F3 78 */	mr r4, r30
/* 80611DCC  4B A0 F5 6D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80611DD0  3C 60 80 62 */	lis r3, bf_ct@ha /* 0x8061B53C@ha */
/* 80611DD4  80 03 B5 3C */	lwz r0, bf_ct@l(r3)  /* 0x8061B53C@l */
/* 80611DD8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80611DDC  40 80 00 BC */	bge lbl_80611E98
/* 80611DE0  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80611DE4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80611DE8  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80611DEC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80611DF0  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80611DF4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80611DF8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80611DFC  EC 01 00 2A */	fadds f0, f1, f0
/* 80611E00  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80611E04  38 61 00 14 */	addi r3, r1, 0x14
/* 80611E08  38 80 C8 00 */	li r4, -14336
/* 80611E0C  38 A0 00 00 */	li r5, 0
/* 80611E10  38 C0 00 00 */	li r6, 0
/* 80611E14  4B C5 55 E1 */	bl __ct__5csXyzFsss
/* 80611E18  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80611E1C  4B C5 5B 39 */	bl cM_rndF__Ff
/* 80611E20  FC 00 08 1E */	fctiwz f0, f1
/* 80611E24  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80611E28  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80611E2C  B0 01 00 16 */	sth r0, 0x16(r1)
/* 80611E30  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80611E34  7C 07 07 74 */	extsb r7, r0
/* 80611E38  38 00 00 00 */	li r0, 0
/* 80611E3C  90 01 00 08 */	stw r0, 8(r1)
/* 80611E40  38 60 02 02 */	li r3, 0x202
/* 80611E44  28 1E 00 00 */	cmplwi r30, 0
/* 80611E48  41 82 00 0C */	beq lbl_80611E54
/* 80611E4C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80611E50  48 00 00 08 */	b lbl_80611E58
lbl_80611E54:
/* 80611E54  38 80 FF FF */	li r4, -1
lbl_80611E58:
/* 80611E58  38 A0 FF FF */	li r5, -1
/* 80611E5C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80611E60  39 01 00 14 */	addi r8, r1, 0x14
/* 80611E64  39 20 00 00 */	li r9, 0
/* 80611E68  39 40 FF FF */	li r10, -1
/* 80611E6C  4B A0 80 85 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80611E70  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070374@ha */
/* 80611E74  38 03 03 74 */	addi r0, r3, 0x0374 /* 0x00070374@l */
/* 80611E78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80611E7C  38 7E 59 E0 */	addi r3, r30, 0x59e0
/* 80611E80  38 81 00 10 */	addi r4, r1, 0x10
/* 80611E84  38 A0 FF FF */	li r5, -1
/* 80611E88  81 9E 59 E0 */	lwz r12, 0x59e0(r30)
/* 80611E8C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80611E90  7D 89 03 A6 */	mtctr r12
/* 80611E94  4E 80 04 21 */	bctrl 
lbl_80611E98:
/* 80611E98  A8 1E 47 78 */	lha r0, 0x4778(r30)
/* 80611E9C  2C 00 00 00 */	cmpwi r0, 0
/* 80611EA0  40 82 00 40 */	bne lbl_80611EE0
/* 80611EA4  A8 1E 5C 80 */	lha r0, 0x5c80(r30)
/* 80611EA8  2C 00 00 00 */	cmpwi r0, 0
/* 80611EAC  41 82 00 0C */	beq lbl_80611EB8
/* 80611EB0  38 00 00 65 */	li r0, 0x65
/* 80611EB4  B0 1E 5C 80 */	sth r0, 0x5c80(r30)
lbl_80611EB8:
/* 80611EB8  38 00 00 01 */	li r0, 1
/* 80611EBC  B0 1E 47 52 */	sth r0, 0x4752(r30)
/* 80611EC0  38 00 00 00 */	li r0, 0
/* 80611EC4  B0 1E 47 54 */	sth r0, 0x4754(r30)
/* 80611EC8  7F C3 F3 78 */	mr r3, r30
/* 80611ECC  38 80 00 1E */	li r4, 0x1e
/* 80611ED0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80611ED4  38 A0 00 02 */	li r5, 2
/* 80611ED8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80611EDC  4B FF E6 E1 */	bl anm_init__FP10b_ob_classifUcf
lbl_80611EE0:
/* 80611EE0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80611EE4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80611EE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80611EEC  7C 08 03 A6 */	mtlr r0
/* 80611EF0  38 21 00 40 */	addi r1, r1, 0x40
/* 80611EF4  4E 80 00 20 */	blr 
