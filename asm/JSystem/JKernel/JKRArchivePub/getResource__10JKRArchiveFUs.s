lbl_802D5D38:
/* 802D5D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5D3C  7C 08 02 A6 */	mflr r0
/* 802D5D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5D48  7C 7F 1B 78 */	mr r31, r3
/* 802D5D4C  48 00 0A 25 */	bl findIdResource__10JKRArchiveCFUs
/* 802D5D50  7C 64 1B 79 */	or. r4, r3, r3
/* 802D5D54  41 82 00 20 */	beq lbl_802D5D74
/* 802D5D58  7F E3 FB 78 */	mr r3, r31
/* 802D5D5C  38 A0 00 00 */	li r5, 0
/* 802D5D60  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D5D64  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802D5D68  7D 89 03 A6 */	mtctr r12
/* 802D5D6C  4E 80 04 21 */	bctrl 
/* 802D5D70  48 00 00 08 */	b lbl_802D5D78
lbl_802D5D74:
/* 802D5D74  38 60 00 00 */	li r3, 0
lbl_802D5D78:
/* 802D5D78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5D80  7C 08 03 A6 */	mtlr r0
/* 802D5D84  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5D88  4E 80 00 20 */	blr 
