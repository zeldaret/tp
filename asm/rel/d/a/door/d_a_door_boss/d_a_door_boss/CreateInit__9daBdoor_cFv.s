lbl_8066F7EC:
/* 8066F7EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8066F7F0  7C 08 02 A6 */	mflr r0
/* 8066F7F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8066F7F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8066F7FC  7C 7F 1B 78 */	mr r31, r3
/* 8066F800  38 00 00 00 */	li r0, 0
/* 8066F804  90 01 00 08 */	stw r0, 8(r1)
/* 8066F808  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8066F80C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8066F810  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 8066F814  7F E6 FB 78 */	mr r6, r31
/* 8066F818  38 E0 00 01 */	li r7, 1
/* 8066F81C  39 1F 07 84 */	addi r8, r31, 0x784
/* 8066F820  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 8066F824  39 40 00 00 */	li r10, 0
/* 8066F828  4B A0 6A 20 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8066F82C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066F830  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066F834  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8066F838  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 8066F83C  7F E5 FB 78 */	mr r5, r31
/* 8066F840  4B A0 51 C8 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8066F844  38 00 00 01 */	li r0, 1
/* 8066F848  98 1F 05 81 */	stb r0, 0x581(r31)
/* 8066F84C  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 8066F850  3C 60 80 67 */	lis r3, lit_3769@ha
/* 8066F854  C0 23 09 1C */	lfs f1, lit_3769@l(r3)
/* 8066F858  EC 00 08 2A */	fadds f0, f0, f1
/* 8066F85C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8066F860  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8066F864  EC 00 08 2A */	fadds f0, f0, f1
/* 8066F868  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8066F86C  38 00 00 20 */	li r0, 0x20
/* 8066F870  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8066F874  7F E3 FB 78 */	mr r3, r31
/* 8066F878  4B FF FE C1 */	bl calcMtx__9daBdoor_cFv
/* 8066F87C  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 8066F880  4B A0 C1 40 */	b Move__4dBgWFv
/* 8066F884  7F E3 FB 78 */	mr r3, r31
/* 8066F888  4B 9C A9 48 */	b getSwbit__13door_param2_cFP10fopAc_ac_c
/* 8066F88C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8066F890  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066F894  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066F898  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8066F89C  7C 05 07 74 */	extsb r5, r0
/* 8066F8A0  4B 9C 5A C0 */	b isSwitch__10dSv_info_cCFii
/* 8066F8A4  2C 03 00 00 */	cmpwi r3, 0
/* 8066F8A8  40 82 00 10 */	bne lbl_8066F8B8
/* 8066F8AC  38 00 00 01 */	li r0, 1
/* 8066F8B0  98 1F 05 94 */	stb r0, 0x594(r31)
/* 8066F8B4  48 00 00 0C */	b lbl_8066F8C0
lbl_8066F8B8:
/* 8066F8B8  38 00 00 00 */	li r0, 0
/* 8066F8BC  98 1F 05 94 */	stb r0, 0x594(r31)
lbl_8066F8C0:
/* 8066F8C0  3C 60 80 67 */	lis r3, lit_3770@ha
/* 8066F8C4  C0 03 09 20 */	lfs f0, lit_3770@l(r3)
/* 8066F8C8  D0 1F 05 90 */	stfs f0, 0x590(r31)
/* 8066F8CC  38 60 00 01 */	li r3, 1
/* 8066F8D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8066F8D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8066F8D8  7C 08 03 A6 */	mtlr r0
/* 8066F8DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8066F8E0  4E 80 00 20 */	blr 
