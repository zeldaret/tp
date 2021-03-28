lbl_800DC8C4:
/* 800DC8C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DC8C8  7C 08 02 A6 */	mflr r0
/* 800DC8CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DC8D0  39 61 00 20 */	addi r11, r1, 0x20
/* 800DC8D4  48 28 59 09 */	bl _savegpr_29
/* 800DC8D8  7C 7D 1B 78 */	mr r29, r3
/* 800DC8DC  7C BE 2B 78 */	mr r30, r5
/* 800DC8E0  28 04 00 00 */	cmplwi r4, 0
/* 800DC8E4  41 82 00 0C */	beq lbl_800DC8F0
/* 800DC8E8  83 E4 00 04 */	lwz r31, 4(r4)
/* 800DC8EC  48 00 00 08 */	b lbl_800DC8F4
lbl_800DC8F0:
/* 800DC8F0  3B E0 FF FF */	li r31, -1
lbl_800DC8F4:
/* 800DC8F4  38 A0 00 00 */	li r5, 0
/* 800DC8F8  38 60 00 00 */	li r3, 0
/* 800DC8FC  38 00 00 10 */	li r0, 0x10
/* 800DC900  7C 09 03 A6 */	mtctr r0
lbl_800DC904:
/* 800DC904  38 03 28 B0 */	addi r0, r3, 0x28b0
/* 800DC908  7C 9D 00 2E */	lwzx r4, r29, r0
/* 800DC90C  3C 04 00 01 */	addis r0, r4, 1
/* 800DC910  28 00 FF FF */	cmplwi r0, 0xffff
/* 800DC914  40 82 00 1C */	bne lbl_800DC930
/* 800DC918  7C 7D 1A 14 */	add r3, r29, r3
/* 800DC91C  93 E3 28 B0 */	stw r31, 0x28b0(r3)
/* 800DC920  38 00 00 0A */	li r0, 0xa
/* 800DC924  7C 7D 2A 14 */	add r3, r29, r5
/* 800DC928  98 03 2F 7C */	stb r0, 0x2f7c(r3)
/* 800DC92C  48 00 00 10 */	b lbl_800DC93C
lbl_800DC930:
/* 800DC930  38 A5 00 01 */	addi r5, r5, 1
/* 800DC934  38 63 00 04 */	addi r3, r3, 4
/* 800DC938  42 00 FF CC */	bdnz lbl_800DC904
lbl_800DC93C:
/* 800DC93C  2C 05 00 10 */	cmpwi r5, 0x10
/* 800DC940  40 82 00 A8 */	bne lbl_800DC9E8
/* 800DC944  80 1D 28 B0 */	lwz r0, 0x28b0(r29)
/* 800DC948  90 01 00 08 */	stw r0, 8(r1)
/* 800DC94C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 800DC950  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 800DC954  38 81 00 08 */	addi r4, r1, 8
/* 800DC958  4B F3 CE A1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800DC95C  28 03 00 00 */	cmplwi r3, 0
/* 800DC960  41 82 00 08 */	beq lbl_800DC968
/* 800DC964  4B F3 D3 19 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_800DC968:
/* 800DC968  38 A0 00 00 */	li r5, 0
/* 800DC96C  38 60 00 00 */	li r3, 0
/* 800DC970  38 00 00 0F */	li r0, 0xf
/* 800DC974  7C 09 03 A6 */	mtctr r0
lbl_800DC978:
/* 800DC978  7C 9D 1A 14 */	add r4, r29, r3
/* 800DC97C  80 04 28 B4 */	lwz r0, 0x28b4(r4)
/* 800DC980  90 04 28 B0 */	stw r0, 0x28b0(r4)
/* 800DC984  7C 9D 2A 14 */	add r4, r29, r5
/* 800DC988  88 04 2F 7D */	lbz r0, 0x2f7d(r4)
/* 800DC98C  98 04 2F 7C */	stb r0, 0x2f7c(r4)
/* 800DC990  38 A5 00 01 */	addi r5, r5, 1
/* 800DC994  38 63 00 04 */	addi r3, r3, 4
/* 800DC998  42 00 FF E0 */	bdnz lbl_800DC978
/* 800DC99C  54 A0 10 3A */	slwi r0, r5, 2
/* 800DC9A0  7C 7D 02 14 */	add r3, r29, r0
/* 800DC9A4  93 E3 28 B0 */	stw r31, 0x28b0(r3)
/* 800DC9A8  38 00 00 0A */	li r0, 0xa
/* 800DC9AC  7C 7D 2A 14 */	add r3, r29, r5
/* 800DC9B0  98 03 2F 7C */	stb r0, 0x2f7c(r3)
/* 800DC9B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DC9B8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800DC9BC  A8 64 5D F4 */	lha r3, 0x5df4(r4)
/* 800DC9C0  38 03 00 01 */	addi r0, r3, 1
/* 800DC9C4  B0 04 5D F4 */	sth r0, 0x5df4(r4)
/* 800DC9C8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 800DC9CC  38 80 00 0E */	li r4, 0xe
/* 800DC9D0  38 A0 FF FF */	li r5, -1
/* 800DC9D4  38 C0 00 00 */	li r6, 0
/* 800DC9D8  38 E0 00 00 */	li r7, 0
/* 800DC9DC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DC9E0  FC 40 08 90 */	fmr f2, f1
/* 800DC9E4  4B F3 F8 19 */	bl fopAcM_createItemForSimpleDemo__FPC4cXyziiPC5csXyzPC4cXyzff
lbl_800DC9E8:
/* 800DC9E8  2C 1E 00 00 */	cmpwi r30, 0
/* 800DC9EC  41 82 00 28 */	beq lbl_800DCA14
/* 800DC9F0  88 1D 2F CB */	lbz r0, 0x2fcb(r29)
/* 800DC9F4  28 00 00 00 */	cmplwi r0, 0
/* 800DC9F8  40 82 00 1C */	bne lbl_800DCA14
/* 800DC9FC  7F A3 EB 78 */	mr r3, r29
/* 800DCA00  4B FF AD C9 */	bl checkMagicArmorNoDamage__9daAlink_cFv
/* 800DCA04  2C 03 00 00 */	cmpwi r3, 0
/* 800DCA08  40 82 00 0C */	bne lbl_800DCA14
/* 800DCA0C  38 00 00 78 */	li r0, 0x78
/* 800DCA10  98 1D 2F CB */	stb r0, 0x2fcb(r29)
lbl_800DCA14:
/* 800DCA14  39 61 00 20 */	addi r11, r1, 0x20
/* 800DCA18  48 28 58 11 */	bl _restgpr_29
/* 800DCA1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DCA20  7C 08 03 A6 */	mtlr r0
/* 800DCA24  38 21 00 20 */	addi r1, r1, 0x20
/* 800DCA28  4E 80 00 20 */	blr 
