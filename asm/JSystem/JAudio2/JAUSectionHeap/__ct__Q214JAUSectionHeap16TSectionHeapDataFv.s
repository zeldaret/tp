lbl_802A5DF4:
/* 802A5DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A5DF8  7C 08 02 A6 */	mflr r0
/* 802A5DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A5E00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5E04  7C 7F 1B 78 */	mr r31, r3
/* 802A5E08  38 1F 00 08 */	addi r0, r31, 8
/* 802A5E0C  90 03 00 00 */	stw r0, 0(r3)
/* 802A5E10  38 00 00 FF */	li r0, 0xff
/* 802A5E14  90 03 00 04 */	stw r0, 4(r3)
/* 802A5E18  80 63 00 00 */	lwz r3, 0(r3)
/* 802A5E1C  38 80 00 00 */	li r4, 0
/* 802A5E20  38 A0 03 FC */	li r5, 0x3fc
/* 802A5E24  4B D5 D6 35 */	bl memset
/* 802A5E28  38 7F 04 08 */	addi r3, r31, 0x408
/* 802A5E2C  48 00 0C 2D */	bl __ct__23JAUDynamicSeqDataBlocksFv
/* 802A5E30  38 00 00 00 */	li r0, 0
/* 802A5E34  90 1F 04 30 */	stw r0, 0x430(r31)
/* 802A5E38  90 1F 04 34 */	stw r0, 0x434(r31)
/* 802A5E3C  90 1F 04 38 */	stw r0, 0x438(r31)
/* 802A5E40  90 1F 04 3C */	stw r0, 0x43c(r31)
/* 802A5E44  90 1F 04 04 */	stw r0, 0x404(r31)
/* 802A5E48  7F E3 FB 78 */	mr r3, r31
/* 802A5E4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A5E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5E54  7C 08 03 A6 */	mtlr r0
/* 802A5E58  38 21 00 10 */	addi r1, r1, 0x10
/* 802A5E5C  4E 80 00 20 */	blr 
