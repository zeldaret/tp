lbl_802A7A20:
/* 802A7A20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A7A24  7C 08 02 A6 */	mflr r0
/* 802A7A28  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A7A2C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A7A30  48 0B A7 A9 */	bl _savegpr_28
/* 802A7A34  7C 7F 1B 78 */	mr r31, r3
/* 802A7A38  7C 9C 23 78 */	mr r28, r4
/* 802A7A3C  7C BD 2B 78 */	mr r29, r5
/* 802A7A40  7C DE 33 78 */	mr r30, r6
/* 802A7A44  7F 83 E3 78 */	mr r3, r28
/* 802A7A48  7F A4 EB 78 */	mr r4, r29
/* 802A7A4C  48 00 02 09 */	bl getResource_groupID__Q28JMessage10TProcessorCFUs
/* 802A7A50  28 03 00 00 */	cmplwi r3, 0
/* 802A7A54  40 82 00 0C */	bne lbl_802A7A60
/* 802A7A58  38 60 00 00 */	li r3, 0
/* 802A7A5C  48 00 00 30 */	b lbl_802A7A8C
lbl_802A7A60:
/* 802A7A60  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 802A7A64  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A7A68  A0 03 00 08 */	lhz r0, 8(r3)
/* 802A7A6C  7C 04 00 40 */	cmplw r4, r0
/* 802A7A70  40 80 00 18 */	bge lbl_802A7A88
/* 802A7A74  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 802A7A78  7C 04 01 D6 */	mullw r0, r4, r0
/* 802A7A7C  7C 63 02 14 */	add r3, r3, r0
/* 802A7A80  38 63 00 10 */	addi r3, r3, 0x10
/* 802A7A84  48 00 00 08 */	b lbl_802A7A8C
lbl_802A7A88:
/* 802A7A88  38 60 00 00 */	li r3, 0
lbl_802A7A8C:
/* 802A7A8C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 802A7A90  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802A7A94  28 00 00 00 */	cmplwi r0, 0
/* 802A7A98  40 82 00 0C */	bne lbl_802A7AA4
/* 802A7A9C  38 60 00 00 */	li r3, 0
/* 802A7AA0  48 00 00 40 */	b lbl_802A7AE0
lbl_802A7AA4:
/* 802A7AA4  B3 BF 00 0C */	sth r29, 0xc(r31)
/* 802A7AA8  B3 DF 00 0E */	sth r30, 0xe(r31)
/* 802A7AAC  80 1C 00 08 */	lwz r0, 8(r28)
/* 802A7AB0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802A7AB4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802A7AB8  80 83 00 10 */	lwz r4, 0x10(r3)
/* 802A7ABC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 802A7AC0  80 03 00 00 */	lwz r0, 0(r3)
/* 802A7AC4  7C 04 02 14 */	add r0, r4, r0
/* 802A7AC8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 802A7ACC  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 802A7AD0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802A7AD4  38 00 00 00 */	li r0, 0
/* 802A7AD8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802A7ADC  38 60 00 01 */	li r3, 1
lbl_802A7AE0:
/* 802A7AE0  39 61 00 20 */	addi r11, r1, 0x20
/* 802A7AE4  48 0B A7 41 */	bl _restgpr_28
/* 802A7AE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A7AEC  7C 08 03 A6 */	mtlr r0
/* 802A7AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 802A7AF4  4E 80 00 20 */	blr 
