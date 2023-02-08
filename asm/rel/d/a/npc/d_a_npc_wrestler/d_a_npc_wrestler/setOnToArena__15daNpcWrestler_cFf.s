lbl_80B30D48:
/* 80B30D48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B30D4C  7C 08 02 A6 */	mflr r0
/* 80B30D50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B30D54  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B30D58  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B30D5C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B30D60  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B30D64  7C 7F 1B 78 */	mr r31, r3
/* 80B30D68  FF E0 08 90 */	fmr f31, f1
/* 80B30D6C  88 03 0E 9B */	lbz r0, 0xe9b(r3)
/* 80B30D70  28 00 00 00 */	cmplwi r0, 0
/* 80B30D74  40 82 00 50 */	bne lbl_80B30DC4
/* 80B30D78  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 80B30D7C  4B 4F 05 DD */	bl fpcEx_SearchByID__FUi
/* 80B30D80  C0 03 04 A8 */	lfs f0, 0x4a8(r3)
/* 80B30D84  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80B30D88  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80B30D8C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80B30D90  C0 03 04 B0 */	lfs f0, 0x4b0(r3)
/* 80B30D94  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80B30D98  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B30D9C  D0 03 04 BC */	stfs f0, 0x4bc(r3)
/* 80B30DA0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B30DA4  D0 03 04 C0 */	stfs f0, 0x4c0(r3)
/* 80B30DA8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B30DAC  D0 03 04 C4 */	stfs f0, 0x4c4(r3)
/* 80B30DB0  A8 03 04 B6 */	lha r0, 0x4b6(r3)
/* 80B30DB4  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 80B30DB8  38 00 00 00 */	li r0, 0
/* 80B30DBC  98 03 0D FF */	stb r0, 0xdff(r3)
/* 80B30DC0  48 00 00 1C */	b lbl_80B30DDC
lbl_80B30DC4:
/* 80B30DC4  28 00 00 01 */	cmplwi r0, 1
/* 80B30DC8  40 82 00 14 */	bne lbl_80B30DDC
/* 80B30DCC  3C 60 80 B3 */	lis r3, s_sub2__FPvPv@ha /* 0x80B30CC8@ha */
/* 80B30DD0  38 63 0C C8 */	addi r3, r3, s_sub2__FPvPv@l /* 0x80B30CC8@l */
/* 80B30DD4  7F E4 FB 78 */	mr r4, r31
/* 80B30DD8  4B 4F 05 61 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_80B30DDC:
/* 80B30DDC  3C 60 80 B4 */	lis r3, lit_4418@ha /* 0x80B41894@ha */
/* 80B30DE0  C0 03 18 94 */	lfs f0, lit_4418@l(r3)  /* 0x80B41894@l */
/* 80B30DE4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80B30DE8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80B30DEC  FC 00 F8 50 */	fneg f0, f31
/* 80B30DF0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80B30DF4  C0 1F 0D F0 */	lfs f0, 0xdf0(r31)
/* 80B30DF8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B30DFC  C0 1F 0D F4 */	lfs f0, 0xdf4(r31)
/* 80B30E00  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B30E04  C0 1F 0D F8 */	lfs f0, 0xdf8(r31)
/* 80B30E08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B30E0C  38 61 00 08 */	addi r3, r1, 8
/* 80B30E10  4B 4D BF 55 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B30E14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B30E18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B30E1C  A8 9F 0E 00 */	lha r4, 0xe00(r31)
/* 80B30E20  4B 4D B6 15 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B30E24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B30E28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B30E2C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B30E30  7C 85 23 78 */	mr r5, r4
/* 80B30E34  4B 81 5F 39 */	bl PSMTXMultVec
/* 80B30E38  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B30E3C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80B30E40  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B30E44  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80B30E48  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B30E4C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80B30E50  7F E3 FB 78 */	mr r3, r31
/* 80B30E54  A8 9F 0E 00 */	lha r4, 0xe00(r31)
/* 80B30E58  4B 62 33 F9 */	bl setAngle__8daNpcF_cFs
/* 80B30E5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B30E60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B30E64  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80B30E68  3C 60 80 B4 */	lis r3, lit_4418@ha /* 0x80B41894@ha */
/* 80B30E6C  C0 03 18 94 */	lfs f0, lit_4418@l(r3)  /* 0x80B41894@l */
/* 80B30E70  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B30E74  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B30E78  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 80B30E7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B30E80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B30E84  38 81 00 14 */	addi r4, r1, 0x14
/* 80B30E88  7C 85 23 78 */	mr r5, r4
/* 80B30E8C  4B 81 5E E1 */	bl PSMTXMultVec
/* 80B30E90  7F C3 F3 78 */	mr r3, r30
/* 80B30E94  38 81 00 14 */	addi r4, r1, 0x14
/* 80B30E98  A8 BF 0E 00 */	lha r5, 0xe00(r31)
/* 80B30E9C  3C A5 00 01 */	addis r5, r5, 1
/* 80B30EA0  38 05 80 00 */	addi r0, r5, -32768
/* 80B30EA4  7C 05 07 34 */	extsh r5, r0
/* 80B30EA8  38 C0 00 00 */	li r6, 0
/* 80B30EAC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80B30EB0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B30EB4  7D 89 03 A6 */	mtctr r12
/* 80B30EB8  4E 80 04 21 */	bctrl 
/* 80B30EBC  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B30EC0  28 00 00 00 */	cmplwi r0, 0
/* 80B30EC4  40 82 00 1C */	bne lbl_80B30EE0
/* 80B30EC8  7F C3 F3 78 */	mr r3, r30
/* 80B30ECC  38 80 00 01 */	li r4, 1
/* 80B30ED0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80B30ED4  81 8C 01 50 */	lwz r12, 0x150(r12)
/* 80B30ED8  7D 89 03 A6 */	mtctr r12
/* 80B30EDC  4E 80 04 21 */	bctrl 
lbl_80B30EE0:
/* 80B30EE0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B30EE4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B30EE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B30EEC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B30EF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B30EF4  7C 08 03 A6 */	mtlr r0
/* 80B30EF8  38 21 00 40 */	addi r1, r1, 0x40
/* 80B30EFC  4E 80 00 20 */	blr 
