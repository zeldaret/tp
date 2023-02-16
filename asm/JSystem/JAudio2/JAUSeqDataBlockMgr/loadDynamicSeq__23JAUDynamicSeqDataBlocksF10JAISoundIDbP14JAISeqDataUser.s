lbl_802A6C18:
/* 802A6C18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A6C1C  7C 08 02 A6 */	mflr r0
/* 802A6C20  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A6C24  39 61 00 30 */	addi r11, r1, 0x30
/* 802A6C28  48 0B B5 A5 */	bl _savegpr_25
/* 802A6C2C  7C 7F 1B 78 */	mr r31, r3
/* 802A6C30  7C 99 23 78 */	mr r25, r4
/* 802A6C34  7C BA 2B 78 */	mr r26, r5
/* 802A6C38  7C DB 33 78 */	mr r27, r6
/* 802A6C3C  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802A6C40  28 00 00 00 */	cmplwi r0, 0
/* 802A6C44  40 82 00 0C */	bne lbl_802A6C50
/* 802A6C48  38 60 00 00 */	li r3, 0
/* 802A6C4C  48 00 00 E4 */	b lbl_802A6D30
lbl_802A6C50:
/* 802A6C50  80 6D 85 D0 */	lwz r3, __OSReport_disable-0x48(r13)
/* 802A6C54  28 03 00 00 */	cmplwi r3, 0
/* 802A6C58  40 82 00 0C */	bne lbl_802A6C64
/* 802A6C5C  38 60 00 00 */	li r3, 0
/* 802A6C60  48 00 00 D0 */	b lbl_802A6D30
lbl_802A6C64:
/* 802A6C64  80 19 00 00 */	lwz r0, 0(r25)
/* 802A6C68  90 01 00 08 */	stw r0, 8(r1)
/* 802A6C6C  38 81 00 08 */	addi r4, r1, 8
/* 802A6C70  81 83 00 00 */	lwz r12, 0(r3)
/* 802A6C74  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A6C78  7D 89 03 A6 */	mtctr r12
/* 802A6C7C  4E 80 04 21 */	bctrl 
/* 802A6C80  7C 7E 1B 78 */	mr r30, r3
/* 802A6C84  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802A6C88  7F C4 F3 78 */	mr r4, r30
/* 802A6C8C  4B FE 9F 45 */	bl getResSize__15JASResArcLoaderFPC10JKRArchiveUs
/* 802A6C90  7C 7D 1B 78 */	mr r29, r3
/* 802A6C94  7F E3 FB 78 */	mr r3, r31
/* 802A6C98  7F A4 EB 78 */	mr r4, r29
/* 802A6C9C  4B FF FC D9 */	bl seekFreeBlock__16JAUSeqDataBlocksFUl
/* 802A6CA0  7C 7C 1B 79 */	or. r28, r3, r3
/* 802A6CA4  40 82 00 34 */	bne lbl_802A6CD8
/* 802A6CA8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802A6CAC  41 82 00 24 */	beq lbl_802A6CD0
/* 802A6CB0  7F E3 FB 78 */	mr r3, r31
/* 802A6CB4  7F 64 DB 78 */	mr r4, r27
/* 802A6CB8  7F A5 EB 78 */	mr r5, r29
/* 802A6CBC  48 00 01 45 */	bl releaseIdleDynamicSeqDataBlock___23JAUDynamicSeqDataBlocksFP14JAISeqDataUserUl
/* 802A6CC0  7C 7C 1B 79 */	or. r28, r3, r3
/* 802A6CC4  40 82 00 14 */	bne lbl_802A6CD8
/* 802A6CC8  38 60 00 00 */	li r3, 0
/* 802A6CCC  48 00 00 64 */	b lbl_802A6D30
lbl_802A6CD0:
/* 802A6CD0  38 60 00 00 */	li r3, 0
/* 802A6CD4  48 00 00 5C */	b lbl_802A6D30
lbl_802A6CD8:
/* 802A6CD8  7F E3 FB 78 */	mr r3, r31
/* 802A6CDC  7F 84 E3 78 */	mr r4, r28
/* 802A6CE0  4B FF FD 19 */	bl func_802A69F8
/* 802A6CE4  80 7C 00 00 */	lwz r3, 0(r28)
/* 802A6CE8  80 19 00 00 */	lwz r0, 0(r25)
/* 802A6CEC  90 03 00 10 */	stw r0, 0x10(r3)
/* 802A6CF0  38 00 00 01 */	li r0, 1
/* 802A6CF4  80 7C 00 00 */	lwz r3, 0(r28)
/* 802A6CF8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802A6CFC  38 7F 00 0C */	addi r3, r31, 0xc
/* 802A6D00  7F 84 E3 78 */	mr r4, r28
/* 802A6D04  4B FF FC D5 */	bl func_802A69D8
/* 802A6D08  80 DC 00 00 */	lwz r6, 0(r28)
/* 802A6D0C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802A6D10  7F C4 F3 78 */	mr r4, r30
/* 802A6D14  80 A6 00 14 */	lwz r5, 0x14(r6)
/* 802A6D18  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 802A6D1C  3C E0 80 2A */	lis r7, JAUDynamicSeqDataBlocks_receiveLoaded___FUlUl@ha /* 0x802A6BF4@ha */
/* 802A6D20  38 E7 6B F4 */	addi r7, r7, JAUDynamicSeqDataBlocks_receiveLoaded___FUlUl@l /* 0x802A6BF4@l */
/* 802A6D24  7F 88 E3 78 */	mr r8, r28
/* 802A6D28  4B FE 9F F1 */	bl loadResourceAsync__15JASResArcLoaderFP10JKRArchiveUsPUcUlPFUlUl_vUl
/* 802A6D2C  38 60 00 01 */	li r3, 1
lbl_802A6D30:
/* 802A6D30  39 61 00 30 */	addi r11, r1, 0x30
/* 802A6D34  48 0B B4 E5 */	bl _restgpr_25
/* 802A6D38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A6D3C  7C 08 03 A6 */	mtlr r0
/* 802A6D40  38 21 00 30 */	addi r1, r1, 0x30
/* 802A6D44  4E 80 00 20 */	blr 
