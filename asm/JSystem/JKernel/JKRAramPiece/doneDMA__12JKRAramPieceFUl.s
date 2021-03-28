lbl_802D3944:
/* 802D3944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D3948  7C 08 02 A6 */	mflr r0
/* 802D394C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3950  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D3954  7C 7F 1B 78 */	mr r31, r3
/* 802D3958  80 03 00 40 */	lwz r0, 0x40(r3)
/* 802D395C  2C 00 00 01 */	cmpwi r0, 1
/* 802D3960  40 82 00 10 */	bne lbl_802D3970
/* 802D3964  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 802D3968  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802D396C  48 06 7C 15 */	bl DCInvalidateRange
lbl_802D3970:
/* 802D3970  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802D3974  2C 00 00 00 */	cmpwi r0, 0
/* 802D3978  41 82 00 18 */	beq lbl_802D3990
/* 802D397C  2C 00 00 02 */	cmpwi r0, 2
/* 802D3980  40 82 00 58 */	bne lbl_802D39D8
/* 802D3984  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802D3988  48 00 7F 49 */	bl sendCommand__9JKRDecompFP16JKRDecompCommand
/* 802D398C  48 00 00 4C */	b lbl_802D39D8
lbl_802D3990:
/* 802D3990  81 9F 00 58 */	lwz r12, 0x58(r31)
/* 802D3994  28 0C 00 00 */	cmplwi r12, 0
/* 802D3998  41 82 00 14 */	beq lbl_802D39AC
/* 802D399C  7F E3 FB 78 */	mr r3, r31
/* 802D39A0  7D 89 03 A6 */	mtctr r12
/* 802D39A4  4E 80 04 21 */	bctrl 
/* 802D39A8  48 00 00 30 */	b lbl_802D39D8
lbl_802D39AC:
/* 802D39AC  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 802D39B0  28 03 00 00 */	cmplwi r3, 0
/* 802D39B4  41 82 00 14 */	beq lbl_802D39C8
/* 802D39B8  7F E4 FB 78 */	mr r4, r31
/* 802D39BC  38 A0 00 00 */	li r5, 0
/* 802D39C0  48 06 B0 35 */	bl OSSendMessage
/* 802D39C4  48 00 00 14 */	b lbl_802D39D8
lbl_802D39C8:
/* 802D39C8  38 7F 00 68 */	addi r3, r31, 0x68
/* 802D39CC  7F E4 FB 78 */	mr r4, r31
/* 802D39D0  38 A0 00 00 */	li r5, 0
/* 802D39D4  48 06 B0 21 */	bl OSSendMessage
lbl_802D39D8:
/* 802D39D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D39DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D39E0  7C 08 03 A6 */	mtlr r0
/* 802D39E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D39E8  4E 80 00 20 */	blr 
