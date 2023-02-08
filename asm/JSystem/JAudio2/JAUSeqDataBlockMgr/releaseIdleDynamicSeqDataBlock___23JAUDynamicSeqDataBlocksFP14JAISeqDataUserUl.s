lbl_802A6E00:
/* 802A6E00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A6E04  7C 08 02 A6 */	mflr r0
/* 802A6E08  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A6E0C  39 61 00 30 */	addi r11, r1, 0x30
/* 802A6E10  48 0B B3 B9 */	bl _savegpr_24
/* 802A6E14  7C 78 1B 78 */	mr r24, r3
/* 802A6E18  7C 99 23 78 */	mr r25, r4
/* 802A6E1C  7C BA 2B 78 */	mr r26, r5
/* 802A6E20  48 00 00 BD */	bl rearrangeLoadingSeqs___23JAUDynamicSeqDataBlocksFv
/* 802A6E24  3B A0 FF FF */	li r29, -1
/* 802A6E28  3B 80 00 00 */	li r28, 0
/* 802A6E2C  83 78 00 18 */	lwz r27, 0x18(r24)
/* 802A6E30  48 00 00 54 */	b lbl_802A6E84
lbl_802A6E34:
/* 802A6E34  83 FB 00 0C */	lwz r31, 0xc(r27)
/* 802A6E38  83 DB 00 00 */	lwz r30, 0(r27)
/* 802A6E3C  28 19 00 00 */	cmplwi r25, 0
/* 802A6E40  41 82 00 24 */	beq lbl_802A6E64
/* 802A6E44  7F 23 CB 78 */	mr r3, r25
/* 802A6E48  38 9E 00 14 */	addi r4, r30, 0x14
/* 802A6E4C  81 99 00 00 */	lwz r12, 0(r25)
/* 802A6E50  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A6E54  7D 89 03 A6 */	mtctr r12
/* 802A6E58  4E 80 04 21 */	bctrl 
/* 802A6E5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A6E60  40 82 00 20 */	bne lbl_802A6E80
lbl_802A6E64:
/* 802A6E64  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 802A6E68  7C 00 D0 40 */	cmplw r0, r26
/* 802A6E6C  41 80 00 14 */	blt lbl_802A6E80
/* 802A6E70  7C 00 E8 40 */	cmplw r0, r29
/* 802A6E74  40 80 00 0C */	bge lbl_802A6E80
/* 802A6E78  7F 7C DB 78 */	mr r28, r27
/* 802A6E7C  7C 1D 03 78 */	mr r29, r0
lbl_802A6E80:
/* 802A6E80  7F FB FB 78 */	mr r27, r31
lbl_802A6E84:
/* 802A6E84  28 1B 00 00 */	cmplwi r27, 0
/* 802A6E88  40 82 FF AC */	bne lbl_802A6E34
/* 802A6E8C  28 1C 00 00 */	cmplwi r28, 0
/* 802A6E90  41 82 00 30 */	beq lbl_802A6EC0
/* 802A6E94  38 78 00 18 */	addi r3, r24, 0x18
/* 802A6E98  7F 84 E3 78 */	mr r4, r28
/* 802A6E9C  4B FF FB 5D */	bl func_802A69F8
/* 802A6EA0  80 7C 00 00 */	lwz r3, 0(r28)
/* 802A6EA4  38 00 FF FF */	li r0, -1
/* 802A6EA8  90 03 00 10 */	stw r0, 0x10(r3)
/* 802A6EAC  7F 03 C3 78 */	mr r3, r24
/* 802A6EB0  7F 84 E3 78 */	mr r4, r28
/* 802A6EB4  4B FF FB 25 */	bl func_802A69D8
/* 802A6EB8  80 7C 00 00 */	lwz r3, 0(r28)
/* 802A6EBC  48 00 00 08 */	b lbl_802A6EC4
lbl_802A6EC0:
/* 802A6EC0  38 60 00 00 */	li r3, 0
lbl_802A6EC4:
/* 802A6EC4  39 61 00 30 */	addi r11, r1, 0x30
/* 802A6EC8  48 0B B3 4D */	bl _restgpr_24
/* 802A6ECC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A6ED0  7C 08 03 A6 */	mtlr r0
/* 802A6ED4  38 21 00 30 */	addi r1, r1, 0x30
/* 802A6ED8  4E 80 00 20 */	blr 
