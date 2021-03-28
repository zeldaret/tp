lbl_802C0D48:
/* 802C0D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0D4C  7C 08 02 A6 */	mflr r0
/* 802C0D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C0D58  93 C1 00 08 */	stw r30, 8(r1)
/* 802C0D5C  7C 7F 1B 78 */	mr r31, r3
/* 802C0D60  7C 9E 23 78 */	mr r30, r4
/* 802C0D64  54 87 06 BE */	clrlwi r7, r4, 0x1a
/* 802C0D68  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802C0D6C  20 00 00 00 */	subfic r0, r0, 0
/* 802C0D70  7C 60 01 10 */	subfe r3, r0, r0
/* 802C0D74  38 00 00 40 */	li r0, 0x40
/* 802C0D78  7C 00 18 38 */	and r0, r0, r3
/* 802C0D7C  7C 05 07 74 */	extsb r5, r0
/* 802C0D80  54 C4 06 3F */	clrlwi. r4, r6, 0x18
/* 802C0D84  20 04 00 00 */	subfic r0, r4, 0
/* 802C0D88  7C 60 01 10 */	subfe r3, r0, r0
/* 802C0D8C  38 00 00 80 */	li r0, 0x80
/* 802C0D90  7C 00 18 38 */	and r0, r0, r3
/* 802C0D94  7C 00 07 74 */	extsb r0, r0
/* 802C0D98  7C 00 2A 14 */	add r0, r0, r5
/* 802C0D9C  7C 07 02 14 */	add r0, r7, r0
/* 802C0DA0  98 1F 00 A0 */	stb r0, 0xa0(r31)
/* 802C0DA4  40 82 00 0C */	bne lbl_802C0DB0
/* 802C0DA8  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802C0DAC  4B FE AB 91 */	bl incrCrowdSize__7Z2SeMgrFv
lbl_802C0DB0:
/* 802C0DB0  7F C0 07 75 */	extsb. r0, r30
/* 802C0DB4  40 82 00 24 */	bne lbl_802C0DD8
/* 802C0DB8  88 0D 8D D8 */	lbz r0, struct_80451358+0x0(r13)
/* 802C0DBC  98 1F 00 A1 */	stb r0, 0xa1(r31)
/* 802C0DC0  88 0D 8D D8 */	lbz r0, struct_80451358+0x0(r13)
/* 802C0DC4  7C 00 07 74 */	extsb r0, r0
/* 802C0DC8  7C 00 00 34 */	cntlzw r0, r0
/* 802C0DCC  54 00 D9 7E */	srwi r0, r0, 5
/* 802C0DD0  98 0D 8D D8 */	stb r0, struct_80451358+0x0(r13)
/* 802C0DD4  48 00 00 2C */	b lbl_802C0E00
lbl_802C0DD8:
/* 802C0DD8  7F C0 07 74 */	extsb r0, r30
/* 802C0DDC  2C 00 00 01 */	cmpwi r0, 1
/* 802C0DE0  40 82 00 20 */	bne lbl_802C0E00
/* 802C0DE4  88 0D 8D D9 */	lbz r0, struct_80451358+0x1(r13)
/* 802C0DE8  98 1F 00 A1 */	stb r0, 0xa1(r31)
/* 802C0DEC  88 0D 8D D9 */	lbz r0, struct_80451358+0x1(r13)
/* 802C0DF0  7C 00 07 74 */	extsb r0, r0
/* 802C0DF4  7C 00 00 34 */	cntlzw r0, r0
/* 802C0DF8  54 00 D9 7E */	srwi r0, r0, 5
/* 802C0DFC  98 0D 8D D9 */	stb r0, struct_80451358+0x1(r13)
lbl_802C0E00:
/* 802C0E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0E04  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C0E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0E0C  7C 08 03 A6 */	mtlr r0
/* 802C0E10  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0E14  4E 80 00 20 */	blr 
