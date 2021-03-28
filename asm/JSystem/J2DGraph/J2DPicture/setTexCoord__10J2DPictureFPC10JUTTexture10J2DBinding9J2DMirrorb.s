lbl_802FED44:
/* 802FED44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FED48  7C 08 02 A6 */	mflr r0
/* 802FED4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FED50  7C 8A 23 78 */	mr r10, r4
/* 802FED54  7C A9 2B 78 */	mr r9, r5
/* 802FED58  7C C0 33 78 */	mr r0, r6
/* 802FED5C  7C E8 3B 78 */	mr r8, r7
/* 802FED60  38 83 01 0A */	addi r4, r3, 0x10a
/* 802FED64  7D 45 53 78 */	mr r5, r10
/* 802FED68  7D 26 4B 78 */	mr r6, r9
/* 802FED6C  7C 07 03 78 */	mr r7, r0
/* 802FED70  48 00 00 15 */	bl func_802FED84
/* 802FED74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FED78  7C 08 03 A6 */	mtlr r0
/* 802FED7C  38 21 00 10 */	addi r1, r1, 0x10
/* 802FED80  4E 80 00 20 */	blr 
