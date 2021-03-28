lbl_80BEEA78:
/* 80BEEA78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BEEA7C  7C 08 02 A6 */	mflr r0
/* 80BEEA80  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BEEA84  39 61 00 40 */	addi r11, r1, 0x40
/* 80BEEA88  4B 77 37 54 */	b _savegpr_29
/* 80BEEA8C  7C 7E 1B 78 */	mr r30, r3
/* 80BEEA90  A8 03 04 E4 */	lha r0, 0x4e4(r3)
/* 80BEEA94  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BEEA98  7C 05 07 74 */	extsb r5, r0
/* 80BEEA9C  88 03 13 2C */	lbz r0, 0x132c(r3)
/* 80BEEAA0  28 00 00 00 */	cmplwi r0, 0
/* 80BEEAA4  41 82 01 34 */	beq lbl_80BEEBD8
/* 80BEEAA8  38 61 00 08 */	addi r3, r1, 8
/* 80BEEAAC  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BEEAB0  38 84 05 54 */	addi r4, r4, stringBase0@l
/* 80BEEAB4  4C C6 31 82 */	crclr 6
/* 80BEEAB8  4B 77 7A 24 */	b sprintf
/* 80BEEABC  38 00 00 00 */	li r0, 0
/* 80BEEAC0  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80BEEAC4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80BEEAC8  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80BEEACC  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80BEEAD0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80BEEAD4  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80BEEAD8  38 7E 13 2D */	addi r3, r30, 0x132d
/* 80BEEADC  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BEEAE0  38 84 05 54 */	addi r4, r4, stringBase0@l
/* 80BEEAE4  38 84 00 0D */	addi r4, r4, 0xd
/* 80BEEAE8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BEEAEC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BEEAF0  3C A5 00 02 */	addis r5, r5, 2
/* 80BEEAF4  38 C0 00 80 */	li r6, 0x80
/* 80BEEAF8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BEEAFC  4B 44 D8 80 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BEEB00  7C 7F 1B 78 */	mr r31, r3
/* 80BEEB04  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80BEEB08  20 00 00 01 */	subfic r0, r0, 1
/* 80BEEB0C  54 0A 0F FE */	srwi r10, r0, 0x1f
/* 80BEEB10  3B BE 05 90 */	addi r29, r30, 0x590
/* 80BEEB14  7F A3 EB 78 */	mr r3, r29
/* 80BEEB18  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80BEEB1C  7C 9F 02 14 */	add r4, r31, r0
/* 80BEEB20  A0 BF 00 02 */	lhz r5, 2(r31)
/* 80BEEB24  A0 DF 00 04 */	lhz r6, 4(r31)
/* 80BEEB28  88 FF 00 00 */	lbz r7, 0(r31)
/* 80BEEB2C  89 1F 00 06 */	lbz r8, 6(r31)
/* 80BEEB30  89 3F 00 07 */	lbz r9, 7(r31)
/* 80BEEB34  4B 76 F3 0C */	b GXInitTexObj
/* 80BEEB38  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 80BEEB3C  28 00 00 01 */	cmplwi r0, 1
/* 80BEEB40  40 81 00 98 */	ble lbl_80BEEBD8
/* 80BEEB44  7F A3 EB 78 */	mr r3, r29
/* 80BEEB48  88 9F 00 14 */	lbz r4, 0x14(r31)
/* 80BEEB4C  88 BF 00 15 */	lbz r5, 0x15(r31)
/* 80BEEB50  3C C0 80 BF */	lis r6, lit_3813@ha
/* 80BEEB54  C0 46 04 F8 */	lfs f2, lit_3813@l(r6)
/* 80BEEB58  88 1F 00 16 */	lbz r0, 0x16(r31)
/* 80BEEB5C  7C 00 07 74 */	extsb r0, r0
/* 80BEEB60  3C C0 80 BF */	lis r6, lit_3816@ha
/* 80BEEB64  C8 86 05 00 */	lfd f4, lit_3816@l(r6)
/* 80BEEB68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BEEB6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BEEB70  3C E0 43 30 */	lis r7, 0x4330
/* 80BEEB74  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80BEEB78  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BEEB7C  EC 00 20 28 */	fsubs f0, f0, f4
/* 80BEEB80  EC 22 00 32 */	fmuls f1, f2, f0
/* 80BEEB84  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 80BEEB88  7C 00 07 74 */	extsb r0, r0
/* 80BEEB8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BEEB90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BEEB94  90 E1 00 20 */	stw r7, 0x20(r1)
/* 80BEEB98  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BEEB9C  EC 00 20 28 */	fsubs f0, f0, f4
/* 80BEEBA0  EC 42 00 32 */	fmuls f2, f2, f0
/* 80BEEBA4  3C C0 80 BF */	lis r6, lit_3814@ha
/* 80BEEBA8  C0 66 04 FC */	lfs f3, lit_3814@l(r6)
/* 80BEEBAC  A8 1F 00 1A */	lha r0, 0x1a(r31)
/* 80BEEBB0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BEEBB4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BEEBB8  90 E1 00 28 */	stw r7, 0x28(r1)
/* 80BEEBBC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BEEBC0  EC 00 20 28 */	fsubs f0, f0, f4
/* 80BEEBC4  EC 63 00 32 */	fmuls f3, f3, f0
/* 80BEEBC8  88 DF 00 12 */	lbz r6, 0x12(r31)
/* 80BEEBCC  88 FF 00 11 */	lbz r7, 0x11(r31)
/* 80BEEBD0  89 1F 00 13 */	lbz r8, 0x13(r31)
/* 80BEEBD4  4B 76 F5 00 */	b GXInitTexObjLOD
lbl_80BEEBD8:
/* 80BEEBD8  7F C3 F3 78 */	mr r3, r30
/* 80BEEBDC  4B 44 2C 94 */	b getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 80BEEBE0  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BEEBE4  38 84 05 54 */	addi r4, r4, stringBase0@l
/* 80BEEBE8  38 84 00 16 */	addi r4, r4, 0x16
/* 80BEEBEC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BEEBF0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BEEBF4  3C A5 00 02 */	addis r5, r5, 2
/* 80BEEBF8  38 C0 00 80 */	li r6, 0x80
/* 80BEEBFC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BEEC00  4B 44 D7 7C */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BEEC04  3C 80 00 08 */	lis r4, 8
/* 80BEEC08  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BEEC0C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BEEC10  4B 42 60 44 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BEEC14  90 7E 05 68 */	stw r3, 0x568(r30)
/* 80BEEC18  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80BEEC1C  30 03 FF FF */	addic r0, r3, -1
/* 80BEEC20  7C 60 19 10 */	subfe r3, r0, r3
/* 80BEEC24  39 61 00 40 */	addi r11, r1, 0x40
/* 80BEEC28  4B 77 36 00 */	b _restgpr_29
/* 80BEEC2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BEEC30  7C 08 03 A6 */	mtlr r0
/* 80BEEC34  38 21 00 40 */	addi r1, r1, 0x40
/* 80BEEC38  4E 80 00 20 */	blr 
