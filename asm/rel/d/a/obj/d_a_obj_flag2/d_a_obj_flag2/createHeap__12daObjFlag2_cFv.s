lbl_80BED480:
/* 80BED480  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BED484  7C 08 02 A6 */	mflr r0
/* 80BED488  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BED48C  39 61 00 40 */	addi r11, r1, 0x40
/* 80BED490  4B 77 4D 4C */	b _savegpr_29
/* 80BED494  7C 7E 1B 78 */	mr r30, r3
/* 80BED498  A8 03 04 E4 */	lha r0, 0x4e4(r3)
/* 80BED49C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BED4A0  7C 05 07 74 */	extsb r5, r0
/* 80BED4A4  88 03 10 AC */	lbz r0, 0x10ac(r3)
/* 80BED4A8  28 00 00 00 */	cmplwi r0, 0
/* 80BED4AC  41 82 01 70 */	beq lbl_80BED61C
/* 80BED4B0  38 61 00 08 */	addi r3, r1, 8
/* 80BED4B4  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BED4B8  38 84 E1 E8 */	addi r4, r4, stringBase0@l
/* 80BED4BC  38 84 00 09 */	addi r4, r4, 9
/* 80BED4C0  4C C6 31 82 */	crclr 6
/* 80BED4C4  4B 77 90 18 */	b sprintf
/* 80BED4C8  38 00 00 00 */	li r0, 0
/* 80BED4CC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80BED4D0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80BED4D4  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80BED4D8  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80BED4DC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80BED4E0  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80BED4E4  38 7E 10 AD */	addi r3, r30, 0x10ad
/* 80BED4E8  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BED4EC  38 84 E1 E8 */	addi r4, r4, stringBase0@l
/* 80BED4F0  38 84 00 16 */	addi r4, r4, 0x16
/* 80BED4F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BED4F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BED4FC  3C A5 00 02 */	addis r5, r5, 2
/* 80BED500  38 C0 00 80 */	li r6, 0x80
/* 80BED504  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BED508  4B 44 EE 74 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BED50C  7C 7F 1B 78 */	mr r31, r3
/* 80BED510  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80BED514  20 00 00 01 */	subfic r0, r0, 1
/* 80BED518  54 0A 0F FE */	srwi r10, r0, 0x1f
/* 80BED51C  3B BE 0A 98 */	addi r29, r30, 0xa98
/* 80BED520  7F A3 EB 78 */	mr r3, r29
/* 80BED524  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80BED528  7C 9F 02 14 */	add r4, r31, r0
/* 80BED52C  A0 BF 00 02 */	lhz r5, 2(r31)
/* 80BED530  A0 DF 00 04 */	lhz r6, 4(r31)
/* 80BED534  88 FF 00 00 */	lbz r7, 0(r31)
/* 80BED538  89 1F 00 06 */	lbz r8, 6(r31)
/* 80BED53C  89 3F 00 07 */	lbz r9, 7(r31)
/* 80BED540  4B 77 09 00 */	b GXInitTexObj
/* 80BED544  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 80BED548  28 00 00 01 */	cmplwi r0, 1
/* 80BED54C  40 81 00 98 */	ble lbl_80BED5E4
/* 80BED550  7F A3 EB 78 */	mr r3, r29
/* 80BED554  88 9F 00 14 */	lbz r4, 0x14(r31)
/* 80BED558  88 BF 00 15 */	lbz r5, 0x15(r31)
/* 80BED55C  3C C0 80 BF */	lis r6, lit_4020@ha
/* 80BED560  C0 46 E1 C8 */	lfs f2, lit_4020@l(r6)
/* 80BED564  88 1F 00 16 */	lbz r0, 0x16(r31)
/* 80BED568  7C 00 07 74 */	extsb r0, r0
/* 80BED56C  3C C0 80 BF */	lis r6, lit_4023@ha
/* 80BED570  C8 86 E1 D4 */	lfd f4, lit_4023@l(r6)
/* 80BED574  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BED578  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BED57C  3C E0 43 30 */	lis r7, 0x4330
/* 80BED580  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80BED584  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BED588  EC 00 20 28 */	fsubs f0, f0, f4
/* 80BED58C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80BED590  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 80BED594  7C 00 07 74 */	extsb r0, r0
/* 80BED598  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BED59C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BED5A0  90 E1 00 20 */	stw r7, 0x20(r1)
/* 80BED5A4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BED5A8  EC 00 20 28 */	fsubs f0, f0, f4
/* 80BED5AC  EC 42 00 32 */	fmuls f2, f2, f0
/* 80BED5B0  3C C0 80 BF */	lis r6, lit_4021@ha
/* 80BED5B4  C0 66 E1 CC */	lfs f3, lit_4021@l(r6)
/* 80BED5B8  A8 1F 00 1A */	lha r0, 0x1a(r31)
/* 80BED5BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BED5C0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BED5C4  90 E1 00 28 */	stw r7, 0x28(r1)
/* 80BED5C8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BED5CC  EC 00 20 28 */	fsubs f0, f0, f4
/* 80BED5D0  EC 63 00 32 */	fmuls f3, f3, f0
/* 80BED5D4  88 DF 00 12 */	lbz r6, 0x12(r31)
/* 80BED5D8  88 FF 00 11 */	lbz r7, 0x11(r31)
/* 80BED5DC  89 1F 00 13 */	lbz r8, 0x13(r31)
/* 80BED5E0  4B 77 0A F4 */	b GXInitTexObjLOD
lbl_80BED5E4:
/* 80BED5E4  A0 7F 00 02 */	lhz r3, 2(r31)
/* 80BED5E8  A0 1F 00 04 */	lhz r0, 4(r31)
/* 80BED5EC  7C 03 00 40 */	cmplw r3, r0
/* 80BED5F0  40 82 00 14 */	bne lbl_80BED604
/* 80BED5F4  3C 60 80 BF */	lis r3, l_texCoord_64x64@ha
/* 80BED5F8  38 03 E3 1C */	addi r0, r3, l_texCoord_64x64@l
/* 80BED5FC  90 1E 10 6C */	stw r0, 0x106c(r30)
/* 80BED600  48 00 00 1C */	b lbl_80BED61C
lbl_80BED604:
/* 80BED604  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80BED608  7C 03 00 00 */	cmpw r3, r0
/* 80BED60C  40 82 00 10 */	bne lbl_80BED61C
/* 80BED610  3C 60 80 BF */	lis r3, l_texCoord@ha
/* 80BED614  38 03 E3 C4 */	addi r0, r3, l_texCoord@l
/* 80BED618  90 1E 10 6C */	stw r0, 0x106c(r30)
lbl_80BED61C:
/* 80BED61C  7F C3 F3 78 */	mr r3, r30
/* 80BED620  4B 44 42 50 */	b getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 80BED624  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BED628  38 84 E1 E8 */	addi r4, r4, stringBase0@l
/* 80BED62C  38 84 00 1F */	addi r4, r4, 0x1f
/* 80BED630  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BED634  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BED638  3C A5 00 02 */	addis r5, r5, 2
/* 80BED63C  38 C0 00 80 */	li r6, 0x80
/* 80BED640  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BED644  4B 44 ED 38 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BED648  3C 80 00 08 */	lis r4, 8
/* 80BED64C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BED650  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BED654  4B 42 76 00 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BED658  90 7E 05 68 */	stw r3, 0x568(r30)
/* 80BED65C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80BED660  30 03 FF FF */	addic r0, r3, -1
/* 80BED664  7C 60 19 10 */	subfe r3, r0, r3
/* 80BED668  39 61 00 40 */	addi r11, r1, 0x40
/* 80BED66C  4B 77 4B BC */	b _restgpr_29
/* 80BED670  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BED674  7C 08 03 A6 */	mtlr r0
/* 80BED678  38 21 00 40 */	addi r1, r1, 0x40
/* 80BED67C  4E 80 00 20 */	blr 
