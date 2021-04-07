lbl_801FC0FC:
/* 801FC0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC100  7C 08 02 A6 */	mflr r0
/* 801FC104  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC10C  93 C1 00 08 */	stw r30, 8(r1)
/* 801FC110  7C 7E 1B 78 */	mr r30, r3
/* 801FC114  48 00 0F 81 */	bl markMemSize__5dMw_cFv
/* 801FC118  38 60 00 02 */	li r3, 2
/* 801FC11C  4B E3 1F C5 */	bl dComIfGp_setHeapLockFlag__FUc
/* 801FC120  3B E0 00 00 */	li r31, 0
/* 801FC124  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FC128  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FC12C  A0 83 00 AA */	lhz r4, 0xaa(r3)
/* 801FC130  28 04 04 00 */	cmplwi r4, 0x400
/* 801FC134  41 82 00 40 */	beq lbl_801FC174
/* 801FC138  88 03 00 BF */	lbz r0, 0xbf(r3)
/* 801FC13C  28 00 00 03 */	cmplwi r0, 3
/* 801FC140  41 82 00 34 */	beq lbl_801FC174
/* 801FC144  28 00 00 04 */	cmplwi r0, 4
/* 801FC148  41 82 00 2C */	beq lbl_801FC174
/* 801FC14C  28 00 00 05 */	cmplwi r0, 5
/* 801FC150  41 82 00 24 */	beq lbl_801FC174
/* 801FC154  28 00 00 07 */	cmplwi r0, 7
/* 801FC158  41 82 00 1C */	beq lbl_801FC174
/* 801FC15C  28 00 00 08 */	cmplwi r0, 8
/* 801FC160  41 82 00 14 */	beq lbl_801FC174
/* 801FC164  28 00 00 09 */	cmplwi r0, 9
/* 801FC168  41 82 00 0C */	beq lbl_801FC174
/* 801FC16C  28 00 00 06 */	cmplwi r0, 6
/* 801FC170  40 82 00 0C */	bne lbl_801FC17C
lbl_801FC174:
/* 801FC174  3B E0 00 01 */	li r31, 1
/* 801FC178  48 00 00 30 */	b lbl_801FC1A8
lbl_801FC17C:
/* 801FC17C  28 04 02 00 */	cmplwi r4, 0x200
/* 801FC180  40 82 00 0C */	bne lbl_801FC18C
/* 801FC184  3B E0 00 03 */	li r31, 3
/* 801FC188  48 00 00 20 */	b lbl_801FC1A8
lbl_801FC18C:
/* 801FC18C  28 04 01 00 */	cmplwi r4, 0x100
/* 801FC190  40 82 00 0C */	bne lbl_801FC19C
/* 801FC194  3B E0 00 02 */	li r31, 2
/* 801FC198  48 00 00 10 */	b lbl_801FC1A8
lbl_801FC19C:
/* 801FC19C  28 04 00 80 */	cmplwi r4, 0x80
/* 801FC1A0  40 82 00 08 */	bne lbl_801FC1A8
/* 801FC1A4  3B E0 00 03 */	li r31, 3
lbl_801FC1A8:
/* 801FC1A8  38 60 03 14 */	li r3, 0x314
/* 801FC1AC  48 0D 2A A1 */	bl __nw__FUl
/* 801FC1B0  7C 60 1B 79 */	or. r0, r3, r3
/* 801FC1B4  41 82 00 30 */	beq lbl_801FC1E4
/* 801FC1B8  80 9E 01 00 */	lwz r4, 0x100(r30)
/* 801FC1BC  80 BE 01 04 */	lwz r5, 0x104(r30)
/* 801FC1C0  80 DE 01 08 */	lwz r6, 0x108(r30)
/* 801FC1C4  88 FE 01 4E */	lbz r7, 0x14e(r30)
/* 801FC1C8  89 1E 01 4F */	lbz r8, 0x14f(r30)
/* 801FC1CC  89 3E 01 50 */	lbz r9, 0x150(r30)
/* 801FC1D0  C0 3E 01 3C */	lfs f1, 0x13c(r30)
/* 801FC1D4  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 801FC1D8  7F EA FB 78 */	mr r10, r31
/* 801FC1DC  4B FC A5 09 */	bl __ct__12dMenu_Fmap_cFP10JKRExpHeapP9STControlP10CSTControlUcUcUcffUc
/* 801FC1E0  7C 60 1B 78 */	mr r0, r3
lbl_801FC1E4:
/* 801FC1E4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 801FC1E8  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 801FC1EC  28 00 00 00 */	cmplwi r0, 0
/* 801FC1F0  40 82 00 44 */	bne lbl_801FC234
/* 801FC1F4  38 60 00 08 */	li r3, 8
/* 801FC1F8  48 0D 2A 55 */	bl __nw__FUl
/* 801FC1FC  28 03 00 00 */	cmplwi r3, 0
/* 801FC200  41 82 00 30 */	beq lbl_801FC230
/* 801FC204  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 801FC208  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 801FC20C  90 03 00 00 */	stw r0, 0(r3)
/* 801FC210  3C 80 80 3C */	lis r4, __vt__20dDlst_MENU_CAPTURE_c@ha /* 0x803BF0D4@ha */
/* 801FC214  38 04 F0 D4 */	addi r0, r4, __vt__20dDlst_MENU_CAPTURE_c@l /* 0x803BF0D4@l */
/* 801FC218  90 03 00 00 */	stw r0, 0(r3)
/* 801FC21C  38 80 00 00 */	li r4, 0
/* 801FC220  98 83 00 04 */	stb r4, 4(r3)
/* 801FC224  38 00 00 FF */	li r0, 0xff
/* 801FC228  98 03 00 05 */	stb r0, 5(r3)
/* 801FC22C  98 83 00 06 */	stb r4, 6(r3)
lbl_801FC230:
/* 801FC230  90 7E 01 0C */	stw r3, 0x10c(r30)
lbl_801FC234:
/* 801FC234  38 00 00 01 */	li r0, 1
/* 801FC238  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 801FC23C  98 03 00 04 */	stb r0, 4(r3)
/* 801FC240  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FC244  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FC248  48 02 07 95 */	bl resetWarpStatus__13dMeter2Info_cFv
/* 801FC24C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC250  83 C1 00 08 */	lwz r30, 8(r1)
/* 801FC254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC258  7C 08 03 A6 */	mtlr r0
/* 801FC25C  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC260  4E 80 00 20 */	blr 
