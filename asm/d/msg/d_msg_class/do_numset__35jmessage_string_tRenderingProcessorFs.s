lbl_802326E4:
/* 802326E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802326E8  7C 08 02 A6 */	mflr r0
/* 802326EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802326F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802326F4  93 C1 00 08 */	stw r30, 8(r1)
/* 802326F8  7C 7E 1B 78 */	mr r30, r3
/* 802326FC  7C 80 07 34 */	extsh r0, r4
/* 80232700  2C 00 27 0F */	cmpwi r0, 0x270f
/* 80232704  40 81 00 08 */	ble lbl_8023270C
/* 80232708  38 80 27 0F */	li r4, 0x270f
lbl_8023270C:
/* 8023270C  7C 80 07 35 */	extsh. r0, r4
/* 80232710  40 80 00 08 */	bge lbl_80232718
/* 80232714  38 80 00 00 */	li r4, 0
lbl_80232718:
/* 80232718  7C 9F 07 34 */	extsh r31, r4
/* 8023271C  38 00 03 E8 */	li r0, 0x3e8
/* 80232720  7C 7F 03 D6 */	divw r3, r31, r0
/* 80232724  4B FF 63 31 */	bl getOutFontNumberType__Fi
/* 80232728  7C 64 1B 78 */	mr r4, r3
/* 8023272C  7F C3 F3 78 */	mr r3, r30
/* 80232730  4B FF FB 9D */	bl do_outfont__35jmessage_string_tRenderingProcessorFUc
/* 80232734  38 60 03 E8 */	li r3, 0x3e8
/* 80232738  7C 1F 1B D6 */	divw r0, r31, r3
/* 8023273C  7C 00 19 D6 */	mullw r0, r0, r3
/* 80232740  7C 60 F8 50 */	subf r3, r0, r31
/* 80232744  38 00 00 64 */	li r0, 0x64
/* 80232748  7C 63 03 D6 */	divw r3, r3, r0
/* 8023274C  4B FF 63 09 */	bl getOutFontNumberType__Fi
/* 80232750  7C 64 1B 78 */	mr r4, r3
/* 80232754  7F C3 F3 78 */	mr r3, r30
/* 80232758  4B FF FB 75 */	bl do_outfont__35jmessage_string_tRenderingProcessorFUc
/* 8023275C  38 60 00 64 */	li r3, 0x64
/* 80232760  7C 1F 1B D6 */	divw r0, r31, r3
/* 80232764  7C 00 19 D6 */	mullw r0, r0, r3
/* 80232768  7C 60 F8 50 */	subf r3, r0, r31
/* 8023276C  38 00 00 0A */	li r0, 0xa
/* 80232770  7C 63 03 D6 */	divw r3, r3, r0
/* 80232774  4B FF 62 E1 */	bl getOutFontNumberType__Fi
/* 80232778  7C 64 1B 78 */	mr r4, r3
/* 8023277C  7F C3 F3 78 */	mr r3, r30
/* 80232780  4B FF FB 4D */	bl do_outfont__35jmessage_string_tRenderingProcessorFUc
/* 80232784  38 60 00 0A */	li r3, 0xa
/* 80232788  7C 1F 1B D6 */	divw r0, r31, r3
/* 8023278C  7C 00 19 D6 */	mullw r0, r0, r3
/* 80232790  7C 60 F8 50 */	subf r3, r0, r31
/* 80232794  4B FF 62 C1 */	bl getOutFontNumberType__Fi
/* 80232798  7C 64 1B 78 */	mr r4, r3
/* 8023279C  7F C3 F3 78 */	mr r3, r30
/* 802327A0  4B FF FB 2D */	bl do_outfont__35jmessage_string_tRenderingProcessorFUc
/* 802327A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802327A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802327AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802327B0  7C 08 03 A6 */	mtlr r0
/* 802327B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802327B8  4E 80 00 20 */	blr 
