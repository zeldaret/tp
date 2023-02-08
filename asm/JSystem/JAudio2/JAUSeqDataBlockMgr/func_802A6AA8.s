lbl_802A6AA8:
/* 802A6AA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A6AAC  7C 08 02 A6 */	mflr r0
/* 802A6AB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A6AB4  39 61 00 30 */	addi r11, r1, 0x30
/* 802A6AB8  48 0B B7 1D */	bl _savegpr_27
/* 802A6ABC  7C 7B 1B 78 */	mr r27, r3
/* 802A6AC0  7C 9C 23 78 */	mr r28, r4
/* 802A6AC4  7C BD 2B 78 */	mr r29, r5
/* 802A6AC8  7C DE 33 78 */	mr r30, r6
/* 802A6ACC  7C FF 3B 78 */	mr r31, r7
/* 802A6AD0  48 00 04 0D */	bl rearrangeLoadingSeqs___23JAUDynamicSeqDataBlocksFv
/* 802A6AD4  80 1C 00 00 */	lwz r0, 0(r28)
/* 802A6AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6ADC  7F 63 DB 78 */	mr r3, r27
/* 802A6AE0  38 81 00 14 */	addi r4, r1, 0x14
/* 802A6AE4  4B FF FF 35 */	bl hasFailedBlock__16JAUSeqDataBlocksF10JAISoundID
/* 802A6AE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A6AEC  41 82 00 0C */	beq lbl_802A6AF8
/* 802A6AF0  38 60 00 00 */	li r3, 0
/* 802A6AF4  48 00 00 80 */	b lbl_802A6B74
lbl_802A6AF8:
/* 802A6AF8  80 1C 00 00 */	lwz r0, 0(r28)
/* 802A6AFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802A6B00  38 7B 00 0C */	addi r3, r27, 0xc
/* 802A6B04  38 81 00 10 */	addi r4, r1, 0x10
/* 802A6B08  4B FF FE 21 */	bl getSeqData__16JAUSeqDataBlocksF10JAISoundID
/* 802A6B0C  28 03 00 00 */	cmplwi r3, 0
/* 802A6B10  41 82 00 0C */	beq lbl_802A6B1C
/* 802A6B14  38 60 00 01 */	li r3, 1
/* 802A6B18  48 00 00 5C */	b lbl_802A6B74
lbl_802A6B1C:
/* 802A6B1C  80 1C 00 00 */	lwz r0, 0(r28)
/* 802A6B20  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A6B24  38 7B 00 18 */	addi r3, r27, 0x18
/* 802A6B28  38 81 00 0C */	addi r4, r1, 0xc
/* 802A6B2C  4B FF FD FD */	bl getSeqData__16JAUSeqDataBlocksF10JAISoundID
/* 802A6B30  28 03 00 00 */	cmplwi r3, 0
/* 802A6B34  41 82 00 18 */	beq lbl_802A6B4C
/* 802A6B38  90 7E 00 00 */	stw r3, 0(r30)
/* 802A6B3C  38 00 00 00 */	li r0, 0
/* 802A6B40  90 1E 00 04 */	stw r0, 4(r30)
/* 802A6B44  38 60 00 02 */	li r3, 2
/* 802A6B48  48 00 00 2C */	b lbl_802A6B74
lbl_802A6B4C:
/* 802A6B4C  80 1C 00 00 */	lwz r0, 0(r28)
/* 802A6B50  90 01 00 08 */	stw r0, 8(r1)
/* 802A6B54  7F 63 DB 78 */	mr r3, r27
/* 802A6B58  38 81 00 08 */	addi r4, r1, 8
/* 802A6B5C  7F E5 FB 78 */	mr r5, r31
/* 802A6B60  7F A6 EB 78 */	mr r6, r29
/* 802A6B64  48 00 00 B5 */	bl loadDynamicSeq__23JAUDynamicSeqDataBlocksF10JAISoundIDbP14JAISeqDataUser
/* 802A6B68  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 802A6B6C  30 03 FF FF */	addic r0, r3, -1
/* 802A6B70  7C 60 19 10 */	subfe r3, r0, r3
lbl_802A6B74:
/* 802A6B74  39 61 00 30 */	addi r11, r1, 0x30
/* 802A6B78  48 0B B6 A9 */	bl _restgpr_27
/* 802A6B7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A6B80  7C 08 03 A6 */	mtlr r0
/* 802A6B84  38 21 00 30 */	addi r1, r1, 0x30
/* 802A6B88  4E 80 00 20 */	blr 
