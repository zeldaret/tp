lbl_800483E8:
/* 800483E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800483EC  7C 08 02 A6 */	mflr r0
/* 800483F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800483F4  A8 83 01 AA */	lha r4, 0x1aa(r3)
/* 800483F8  2C 04 FF FF */	cmpwi r4, -1
/* 800483FC  40 82 00 14 */	bne lbl_80048410
/* 80048400  3C 60 80 38 */	lis r3, d_event_d_event_manager__stringBase0@ha /* 0x80379F60@ha */
/* 80048404  38 63 9F 60 */	addi r3, r3, d_event_d_event_manager__stringBase0@l /* 0x80379F60@l */
/* 80048408  38 63 01 6A */	addi r3, r3, 0x16a
/* 8004840C  48 00 00 50 */	b lbl_8004845C
lbl_80048410:
/* 80048410  80 03 01 B4 */	lwz r0, 0x1b4(r3)
/* 80048414  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80048418  7C 03 00 2E */	lwzx r0, r3, r0
/* 8004841C  28 00 00 00 */	cmplwi r0, 0
/* 80048420  40 82 00 14 */	bne lbl_80048434
/* 80048424  3C 60 80 38 */	lis r3, d_event_d_event_manager__stringBase0@ha /* 0x80379F60@ha */
/* 80048428  38 63 9F 60 */	addi r3, r3, d_event_d_event_manager__stringBase0@l /* 0x80379F60@l */
/* 8004842C  38 63 01 6A */	addi r3, r3, 0x16a
/* 80048430  48 00 00 2C */	b lbl_8004845C
lbl_80048434:
/* 80048434  4B FF F0 89 */	bl getEventData__16dEvent_manager_cFs
/* 80048438  28 03 00 00 */	cmplwi r3, 0
/* 8004843C  41 82 00 14 */	beq lbl_80048450
/* 80048440  80 03 00 A4 */	lwz r0, 0xa4(r3)
/* 80048444  2C 00 00 01 */	cmpwi r0, 1
/* 80048448  40 82 00 08 */	bne lbl_80048450
/* 8004844C  48 00 00 10 */	b lbl_8004845C
lbl_80048450:
/* 80048450  3C 60 80 38 */	lis r3, d_event_d_event_manager__stringBase0@ha /* 0x80379F60@ha */
/* 80048454  38 63 9F 60 */	addi r3, r3, d_event_d_event_manager__stringBase0@l /* 0x80379F60@l */
/* 80048458  38 63 01 72 */	addi r3, r3, 0x172
lbl_8004845C:
/* 8004845C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80048460  7C 08 03 A6 */	mtlr r0
/* 80048464  38 21 00 10 */	addi r1, r1, 0x10
/* 80048468  4E 80 00 20 */	blr 
