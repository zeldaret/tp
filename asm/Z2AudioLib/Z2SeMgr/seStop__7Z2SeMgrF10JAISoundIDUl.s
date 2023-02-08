lbl_802AD8B0:
/* 802AD8B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802AD8B4  7C 08 02 A6 */	mflr r0
/* 802AD8B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AD8BC  39 61 00 30 */	addi r11, r1, 0x30
/* 802AD8C0  48 0B 49 15 */	bl _savegpr_27
/* 802AD8C4  7C 7B 1B 78 */	mr r27, r3
/* 802AD8C8  7C 9C 23 78 */	mr r28, r4
/* 802AD8CC  7C BD 2B 78 */	mr r29, r5
/* 802AD8D0  80 64 00 00 */	lwz r3, 0(r4)
/* 802AD8D4  3C 03 00 01 */	addis r0, r3, 1
/* 802AD8D8  28 00 FF FF */	cmplwi r0, 0xffff
/* 802AD8DC  41 82 00 58 */	beq lbl_802AD934
/* 802AD8E0  3B C0 00 00 */	li r30, 0
/* 802AD8E4  48 00 00 44 */	b lbl_802AD928
lbl_802AD8E8:
/* 802AD8E8  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 802AD8EC  57 DF 15 BA */	rlwinm r31, r30, 2, 0x16, 0x1d
/* 802AD8F0  7C 63 F8 2E */	lwzx r3, r3, r31
/* 802AD8F4  28 03 00 00 */	cmplwi r3, 0
/* 802AD8F8  41 82 00 2C */	beq lbl_802AD924
/* 802AD8FC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802AD900  90 81 00 08 */	stw r4, 8(r1)
/* 802AD904  80 1C 00 00 */	lwz r0, 0(r28)
/* 802AD908  7C 04 00 40 */	cmplw r4, r0
/* 802AD90C  40 82 00 18 */	bne lbl_802AD924
/* 802AD910  7F A4 EB 78 */	mr r4, r29
/* 802AD914  4B FF 4B C9 */	bl stop__8JAISoundFUl
/* 802AD918  80 1B 00 60 */	lwz r0, 0x60(r27)
/* 802AD91C  7C 60 FA 14 */	add r3, r0, r31
/* 802AD920  4B FF 48 65 */	bl releaseSound__14JAISoundHandleFv
lbl_802AD924:
/* 802AD924  3B DE 00 01 */	addi r30, r30, 1
lbl_802AD928:
/* 802AD928  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802AD92C  28 00 00 18 */	cmplwi r0, 0x18
/* 802AD930  41 80 FF B8 */	blt lbl_802AD8E8
lbl_802AD934:
/* 802AD934  39 61 00 30 */	addi r11, r1, 0x30
/* 802AD938  48 0B 48 E9 */	bl _restgpr_27
/* 802AD93C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802AD940  7C 08 03 A6 */	mtlr r0
/* 802AD944  38 21 00 30 */	addi r1, r1, 0x30
/* 802AD948  4E 80 00 20 */	blr 
