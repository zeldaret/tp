lbl_802A1B48:
/* 802A1B48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A1B4C  7C 08 02 A6 */	mflr r0
/* 802A1B50  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A1B54  39 61 00 40 */	addi r11, r1, 0x40
/* 802A1B58  48 0C 06 75 */	bl _savegpr_25
/* 802A1B5C  7C 79 1B 78 */	mr r25, r3
/* 802A1B60  7C 9A 23 78 */	mr r26, r4
/* 802A1B64  7C BB 2B 79 */	or. r27, r5, r5
/* 802A1B68  7C DC 33 78 */	mr r28, r6
/* 802A1B6C  41 82 00 14 */	beq lbl_802A1B80
/* 802A1B70  80 7B 00 00 */	lwz r3, 0(r27)
/* 802A1B74  28 03 00 00 */	cmplwi r3, 0
/* 802A1B78  41 82 00 08 */	beq lbl_802A1B80
/* 802A1B7C  48 00 0A 1D */	bl stop__8JAISoundFv
lbl_802A1B80:
/* 802A1B80  83 CD 85 DC */	lwz r30, __OSReport_disable-0x3C(r13)
/* 802A1B84  28 1E 00 00 */	cmplwi r30, 0
/* 802A1B88  41 82 00 2C */	beq lbl_802A1BB4
/* 802A1B8C  80 1A 00 00 */	lwz r0, 0(r26)
/* 802A1B90  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A1B94  7F C3 F3 78 */	mr r3, r30
/* 802A1B98  38 81 00 14 */	addi r4, r1, 0x14
/* 802A1B9C  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A1BA0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A1BA4  7D 89 03 A6 */	mtctr r12
/* 802A1BA8  4E 80 04 21 */	bctrl 
/* 802A1BAC  7C 7F 1B 78 */	mr r31, r3
/* 802A1BB0  48 00 00 08 */	b lbl_802A1BB8
lbl_802A1BB4:
/* 802A1BB4  3B E0 FF FF */	li r31, -1
lbl_802A1BB8:
/* 802A1BB8  38 00 00 00 */	li r0, 0
/* 802A1BBC  90 01 00 18 */	stw r0, 0x18(r1)
/* 802A1BC0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802A1BC4  80 1A 00 00 */	lwz r0, 0(r26)
/* 802A1BC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802A1BCC  80 79 00 0C */	lwz r3, 0xc(r25)
/* 802A1BD0  38 81 00 10 */	addi r4, r1, 0x10
/* 802A1BD4  38 A1 00 18 */	addi r5, r1, 0x18
/* 802A1BD8  81 83 00 00 */	lwz r12, 0(r3)
/* 802A1BDC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A1BE0  7D 89 03 A6 */	mtctr r12
/* 802A1BE4  4E 80 04 21 */	bctrl 
/* 802A1BE8  2C 03 00 00 */	cmpwi r3, 0
/* 802A1BEC  40 82 00 0C */	bne lbl_802A1BF8
/* 802A1BF0  38 60 00 00 */	li r3, 0
/* 802A1BF4  48 00 00 84 */	b lbl_802A1C78
lbl_802A1BF8:
/* 802A1BF8  7F 23 CB 78 */	mr r3, r25
/* 802A1BFC  48 00 03 5D */	bl beginStartSeq___9JAISeqMgrFv
/* 802A1C00  7C 7D 1B 79 */	or. r29, r3, r3
/* 802A1C04  41 82 00 70 */	beq lbl_802A1C74
/* 802A1C08  80 1A 00 00 */	lwz r0, 0(r26)
/* 802A1C0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A1C10  38 81 00 0C */	addi r4, r1, 0xc
/* 802A1C14  7F 85 E3 78 */	mr r5, r28
/* 802A1C18  80 D9 00 08 */	lwz r6, 8(r25)
/* 802A1C1C  7F E7 FB 78 */	mr r7, r31
/* 802A1C20  81 19 00 70 */	lwz r8, 0x70(r25)
/* 802A1C24  4B FF EF 41 */	bl func_802A0B64
/* 802A1C28  7F 23 CB 78 */	mr r3, r25
/* 802A1C2C  7F A4 EB 78 */	mr r4, r29
/* 802A1C30  7F 65 DB 78 */	mr r5, r27
/* 802A1C34  48 00 03 B5 */	bl endStartSeq___9JAISeqMgrFP6JAISeqP14JAISoundHandle
/* 802A1C38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A1C3C  41 82 00 38 */	beq lbl_802A1C74
/* 802A1C40  28 1E 00 00 */	cmplwi r30, 0
/* 802A1C44  41 82 00 28 */	beq lbl_802A1C6C
/* 802A1C48  80 1A 00 00 */	lwz r0, 0(r26)
/* 802A1C4C  90 01 00 08 */	stw r0, 8(r1)
/* 802A1C50  7F C3 F3 78 */	mr r3, r30
/* 802A1C54  38 81 00 08 */	addi r4, r1, 8
/* 802A1C58  7F A5 EB 78 */	mr r5, r29
/* 802A1C5C  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A1C60  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A1C64  7D 89 03 A6 */	mtctr r12
/* 802A1C68  4E 80 04 21 */	bctrl 
lbl_802A1C6C:
/* 802A1C6C  38 60 00 01 */	li r3, 1
/* 802A1C70  48 00 00 08 */	b lbl_802A1C78
lbl_802A1C74:
/* 802A1C74  38 60 00 00 */	li r3, 0
lbl_802A1C78:
/* 802A1C78  39 61 00 40 */	addi r11, r1, 0x40
/* 802A1C7C  48 0C 05 9D */	bl _restgpr_25
/* 802A1C80  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802A1C84  7C 08 03 A6 */	mtlr r0
/* 802A1C88  38 21 00 40 */	addi r1, r1, 0x40
/* 802A1C8C  4E 80 00 20 */	blr 
