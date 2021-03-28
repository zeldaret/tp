lbl_802D1A70:
/* 802D1A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1A74  7C 08 02 A6 */	mflr r0
/* 802D1A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1A7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1A80  93 C1 00 08 */	stw r30, 8(r1)
/* 802D1A84  7C 9E 23 79 */	or. r30, r4, r4
/* 802D1A88  7C BF 2B 78 */	mr r31, r5
/* 802D1A8C  40 82 00 0C */	bne lbl_802D1A98
/* 802D1A90  38 60 00 00 */	li r3, 0
/* 802D1A94  48 00 00 38 */	b lbl_802D1ACC
lbl_802D1A98:
/* 802D1A98  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 802D1A9C  4B FF FE C5 */	bl searchThread__9JKRThreadFP8OSThread
/* 802D1AA0  28 03 00 00 */	cmplwi r3, 0
/* 802D1AA4  41 82 00 08 */	beq lbl_802D1AAC
/* 802D1AA8  7C 7E 1B 78 */	mr r30, r3
lbl_802D1AAC:
/* 802D1AAC  38 00 00 00 */	li r0, 0
/* 802D1AB0  90 1E 00 68 */	stw r0, 0x68(r30)
/* 802D1AB4  90 1E 00 64 */	stw r0, 0x64(r30)
/* 802D1AB8  90 1E 00 6C */	stw r0, 0x6c(r30)
/* 802D1ABC  38 00 00 01 */	li r0, 1
/* 802D1AC0  98 1E 00 60 */	stb r0, 0x60(r30)
/* 802D1AC4  93 FE 00 70 */	stw r31, 0x70(r30)
/* 802D1AC8  7F C3 F3 78 */	mr r3, r30
lbl_802D1ACC:
/* 802D1ACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1AD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D1AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1AD8  7C 08 03 A6 */	mtlr r0
/* 802D1ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1AE0  4E 80 00 20 */	blr 
