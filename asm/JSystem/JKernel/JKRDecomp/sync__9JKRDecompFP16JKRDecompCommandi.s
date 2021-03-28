lbl_802DB934:
/* 802DB934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DB938  7C 08 02 A6 */	mflr r0
/* 802DB93C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DB940  2C 04 00 00 */	cmpwi r4, 0
/* 802DB944  40 82 00 1C */	bne lbl_802DB960
/* 802DB948  38 63 00 28 */	addi r3, r3, 0x28
/* 802DB94C  38 81 00 08 */	addi r4, r1, 8
/* 802DB950  38 A0 00 01 */	li r5, 1
/* 802DB954  48 06 31 69 */	bl OSReceiveMessage
/* 802DB958  38 60 00 01 */	li r3, 1
/* 802DB95C  48 00 00 1C */	b lbl_802DB978
lbl_802DB960:
/* 802DB960  38 63 00 28 */	addi r3, r3, 0x28
/* 802DB964  38 81 00 08 */	addi r4, r1, 8
/* 802DB968  38 A0 00 00 */	li r5, 0
/* 802DB96C  48 06 31 51 */	bl OSReceiveMessage
/* 802DB970  30 03 FF FF */	addic r0, r3, -1
/* 802DB974  7C 60 19 10 */	subfe r3, r0, r3
lbl_802DB978:
/* 802DB978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DB97C  7C 08 03 A6 */	mtlr r0
/* 802DB980  38 21 00 10 */	addi r1, r1, 0x10
/* 802DB984  4E 80 00 20 */	blr 
