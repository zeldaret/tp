lbl_80CDAB74:
/* 80CDAB74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDAB78  7C 08 02 A6 */	mflr r0
/* 80CDAB7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDAB80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDAB84  7C 7F 1B 78 */	mr r31, r3
/* 80CDAB88  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80CDAB8C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CDAB90  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CDAB94  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 80CDAB98  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CDAB9C  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 80CDABA0  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 80CDABA4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CDABA8  90 03 08 0C */	stw r0, 0x80c(r3)
/* 80CDABAC  4B 35 CE B9 */	bl hide__12daItemBase_cFv
/* 80CDABB0  7F E3 FB 78 */	mr r3, r31
/* 80CDABB4  48 00 05 25 */	bl effectStop__7daKey_cFv
/* 80CDABB8  7F E3 FB 78 */	mr r3, r31
/* 80CDABBC  38 80 00 00 */	li r4, 0
/* 80CDABC0  38 A0 00 00 */	li r5, 0
/* 80CDABC4  4B 34 0E 0D */	bl fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 80CDABC8  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CDABCC  60 00 00 08 */	ori r0, r0, 8
/* 80CDABD0  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80CDABD4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CDABD8  88 9F 09 2A */	lbz r4, 0x92a(r31)
/* 80CDABDC  38 A0 FF FF */	li r5, -1
/* 80CDABE0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CDABE4  7C 06 07 74 */	extsb r6, r0
/* 80CDABE8  38 E0 00 00 */	li r7, 0
/* 80CDABEC  39 00 00 00 */	li r8, 0
/* 80CDABF0  4B 34 10 85 */	bl fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz
/* 80CDABF4  90 7F 09 2C */	stw r3, 0x92c(r31)
/* 80CDABF8  38 00 00 03 */	li r0, 3
/* 80CDABFC  98 1F 09 34 */	stb r0, 0x934(r31)
/* 80CDAC00  38 60 00 01 */	li r3, 1
/* 80CDAC04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDAC08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDAC0C  7C 08 03 A6 */	mtlr r0
/* 80CDAC10  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDAC14  4E 80 00 20 */	blr 
