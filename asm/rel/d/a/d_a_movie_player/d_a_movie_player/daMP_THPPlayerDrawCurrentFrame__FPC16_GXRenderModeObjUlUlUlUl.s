lbl_80878438:
/* 80878438  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8087843C  7C 08 02 A6 */	mflr r0
/* 80878440  90 01 00 34 */	stw r0, 0x34(r1)
/* 80878444  39 61 00 30 */	addi r11, r1, 0x30
/* 80878448  4B AE 9D 8D */	bl _savegpr_27
/* 8087844C  7C 9B 23 78 */	mr r27, r4
/* 80878450  7C BC 2B 78 */	mr r28, r5
/* 80878454  7C DD 33 78 */	mr r29, r6
/* 80878458  7C FE 3B 78 */	mr r30, r7
/* 8087845C  3C 80 80 88 */	lis r4, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80878460  3B E4 9B D0 */	addi r31, r4, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80878464  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80878468  2C 00 00 00 */	cmpwi r0, 0
/* 8087846C  41 82 00 AC */	beq lbl_80878518
/* 80878470  88 1F 00 A4 */	lbz r0, 0xa4(r31)
/* 80878474  28 00 00 00 */	cmplwi r0, 0
/* 80878478  41 82 00 A0 */	beq lbl_80878518
/* 8087847C  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 80878480  28 00 00 00 */	cmplwi r0, 0
/* 80878484  41 82 00 94 */	beq lbl_80878518
/* 80878488  4B FF E1 F5 */	bl daMP_THPGXYuv2RgbSetup__FPC16_GXRenderModeObj
/* 8087848C  80 BF 00 F8 */	lwz r5, 0xf8(r31)
/* 80878490  7F C0 07 34 */	extsh r0, r30
/* 80878494  90 01 00 08 */	stw r0, 8(r1)
/* 80878498  80 65 00 00 */	lwz r3, 0(r5)
/* 8087849C  80 85 00 04 */	lwz r4, 4(r5)
/* 808784A0  80 A5 00 08 */	lwz r5, 8(r5)
/* 808784A4  7F 66 07 34 */	extsh r6, r27
/* 808784A8  7F 87 07 34 */	extsh r7, r28
/* 808784AC  3D 00 80 88 */	lis r8, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 808784B0  39 28 9B D0 */	addi r9, r8, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 808784B4  80 09 00 80 */	lwz r0, 0x80(r9)
/* 808784B8  7C 08 07 34 */	extsh r8, r0
/* 808784BC  80 09 00 84 */	lwz r0, 0x84(r9)
/* 808784C0  7C 09 07 34 */	extsh r9, r0
/* 808784C4  7F AA 07 34 */	extsh r10, r29
/* 808784C8  4B FF E7 09 */	bl daMP_THPGXYuv2RgbDraw__FPUcPUcPUcssssss
/* 808784CC  4B FF E0 99 */	bl daMP_THPGXRestore__Fv
/* 808784D0  80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 808784D4  80 83 00 0C */	lwz r4, 0xc(r3)
/* 808784D8  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 808784DC  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 808784E0  80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 808784E4  7C 84 02 14 */	add r4, r4, r0
/* 808784E8  80 63 00 50 */	lwz r3, 0x50(r3)
/* 808784EC  7C 04 1B 96 */	divwu r0, r4, r3
/* 808784F0  7C 00 19 D6 */	mullw r0, r0, r3
/* 808784F4  7F E0 20 50 */	subf r31, r0, r4
/* 808784F8  48 00 00 61 */	bl isFade__13mDoGph_gInf_cFv
/* 808784FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80878500  41 82 00 10 */	beq lbl_80878510
/* 80878504  3C 60 80 88 */	lis r3, lit_4811@ha /* 0x80879104@ha */
/* 80878508  C0 23 91 04 */	lfs f1, lit_4811@l(r3)  /* 0x80879104@l */
/* 8087850C  48 00 00 29 */	bl fadeIn__13mDoGph_gInf_cFf
lbl_80878510:
/* 80878510  7F E3 FB 78 */	mr r3, r31
/* 80878514  48 00 00 08 */	b lbl_8087851C
lbl_80878518:
/* 80878518  38 60 FF FF */	li r3, -1
lbl_8087851C:
/* 8087851C  39 61 00 30 */	addi r11, r1, 0x30
/* 80878520  4B AE 9D 01 */	bl _restgpr_27
/* 80878524  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80878528  7C 08 03 A6 */	mtlr r0
/* 8087852C  38 21 00 30 */	addi r1, r1, 0x30
/* 80878530  4E 80 00 20 */	blr 
