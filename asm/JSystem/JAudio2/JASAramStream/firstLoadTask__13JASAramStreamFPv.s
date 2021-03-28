lbl_8029676C:
/* 8029676C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80296770  7C 08 02 A6 */	mflr r0
/* 80296774  90 01 00 24 */	stw r0, 0x24(r1)
/* 80296778  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029677C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80296780  7C 7F 1B 78 */	mr r31, r3
/* 80296784  83 C3 00 00 */	lwz r30, 0(r3)
/* 80296788  7F C3 F3 78 */	mr r3, r30
/* 8029678C  48 00 03 5D */	bl load__13JASAramStreamFv
/* 80296790  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80296794  41 82 00 9C */	beq lbl_80296830
/* 80296798  80 7F 00 08 */	lwz r3, 8(r31)
/* 8029679C  2C 03 00 00 */	cmpwi r3, 0
/* 802967A0  40 81 00 3C */	ble lbl_802967DC
/* 802967A4  38 03 FF FF */	addi r0, r3, -1
/* 802967A8  90 1F 00 08 */	stw r0, 8(r31)
/* 802967AC  80 1F 00 08 */	lwz r0, 8(r31)
/* 802967B0  2C 00 00 00 */	cmpwi r0, 0
/* 802967B4  40 82 00 28 */	bne lbl_802967DC
/* 802967B8  80 6D 8C D0 */	lwz r3, sLoadThread__13JASAramStream(r13)
/* 802967BC  3C 80 80 29 */	lis r4, prepareFinishTask__13JASAramStreamFPv@ha
/* 802967C0  38 84 68 C8 */	addi r4, r4, prepareFinishTask__13JASAramStreamFPv@l
/* 802967C4  7F C5 F3 78 */	mr r5, r30
/* 802967C8  4B FF 94 8D */	bl sendCmdMsg__13JASTaskThreadFPFPv_vPv
/* 802967CC  2C 03 00 00 */	cmpwi r3, 0
/* 802967D0  40 82 00 0C */	bne lbl_802967DC
/* 802967D4  38 00 00 01 */	li r0, 1
/* 802967D8  98 0D 8C E1 */	stb r0, struct_80451260+0x1(r13)
lbl_802967DC:
/* 802967DC  80 7F 00 04 */	lwz r3, 4(r31)
/* 802967E0  28 03 00 00 */	cmplwi r3, 0
/* 802967E4  41 82 00 4C */	beq lbl_80296830
/* 802967E8  38 03 FF FF */	addi r0, r3, -1
/* 802967EC  90 1F 00 04 */	stw r0, 4(r31)
/* 802967F0  80 6D 8C D0 */	lwz r3, sLoadThread__13JASAramStream(r13)
/* 802967F4  3C 80 80 29 */	lis r4, firstLoadTask__13JASAramStreamFPv@ha
/* 802967F8  38 84 67 6C */	addi r4, r4, firstLoadTask__13JASAramStreamFPv@l
/* 802967FC  7F E5 FB 78 */	mr r5, r31
/* 80296800  38 C0 00 0C */	li r6, 0xc
/* 80296804  4B FF 93 59 */	bl sendCmdMsg__13JASTaskThreadFPFPv_vPCvUl
/* 80296808  2C 03 00 00 */	cmpwi r3, 0
/* 8029680C  40 82 00 0C */	bne lbl_80296818
/* 80296810  38 00 00 01 */	li r0, 1
/* 80296814  98 0D 8C E1 */	stb r0, struct_80451260+0x1(r13)
lbl_80296818:
/* 80296818  48 0A 6E DD */	bl OSDisableInterrupts
/* 8029681C  90 61 00 08 */	stw r3, 8(r1)
/* 80296820  80 9E 01 18 */	lwz r4, 0x118(r30)
/* 80296824  38 04 00 01 */	addi r0, r4, 1
/* 80296828  90 1E 01 18 */	stw r0, 0x118(r30)
/* 8029682C  48 0A 6E F1 */	bl OSRestoreInterrupts
lbl_80296830:
/* 80296830  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80296834  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80296838  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029683C  7C 08 03 A6 */	mtlr r0
/* 80296840  38 21 00 20 */	addi r1, r1, 0x20
/* 80296844  4E 80 00 20 */	blr 
