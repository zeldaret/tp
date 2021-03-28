lbl_80C5D184:
/* 80C5D184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D188  7C 08 02 A6 */	mflr r0
/* 80C5D18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5D194  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5D198  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C5D19C  7C 9F 23 78 */	mr r31, r4
/* 80C5D1A0  41 82 00 48 */	beq lbl_80C5D1E8
/* 80C5D1A4  3C 60 80 C6 */	lis r3, __vt__20dalv4CandleDemoTag_c@ha
/* 80C5D1A8  38 63 D2 E8 */	addi r3, r3, __vt__20dalv4CandleDemoTag_c@l
/* 80C5D1AC  90 7E 05 80 */	stw r3, 0x580(r30)
/* 80C5D1B0  38 03 00 08 */	addi r0, r3, 8
/* 80C5D1B4  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80C5D1B8  34 1E 05 70 */	addic. r0, r30, 0x570
/* 80C5D1BC  41 82 00 10 */	beq lbl_80C5D1CC
/* 80C5D1C0  3C 60 80 C6 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80C5D1C4  38 03 D3 10 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80C5D1C8  90 1E 05 70 */	stw r0, 0x570(r30)
lbl_80C5D1CC:
/* 80C5D1CC  7F C3 F3 78 */	mr r3, r30
/* 80C5D1D0  38 80 00 00 */	li r4, 0
/* 80C5D1D4  4B 3B BA B8 */	b __dt__10fopAc_ac_cFv
/* 80C5D1D8  7F E0 07 35 */	extsh. r0, r31
/* 80C5D1DC  40 81 00 0C */	ble lbl_80C5D1E8
/* 80C5D1E0  7F C3 F3 78 */	mr r3, r30
/* 80C5D1E4  4B 67 1B 58 */	b __dl__FPv
lbl_80C5D1E8:
/* 80C5D1E8  7F C3 F3 78 */	mr r3, r30
/* 80C5D1EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5D1F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5D1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D1F8  7C 08 03 A6 */	mtlr r0
/* 80C5D1FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D200  4E 80 00 20 */	blr 
