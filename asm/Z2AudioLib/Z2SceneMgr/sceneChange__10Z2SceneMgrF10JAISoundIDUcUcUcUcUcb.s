lbl_802B9B68:
/* 802B9B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B9B6C  7C 08 02 A6 */	mflr r0
/* 802B9B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B9B74  7C 6C 1B 78 */	mr r12, r3
/* 802B9B78  81 64 00 00 */	lwz r11, 0(r4)
/* 802B9B7C  80 03 00 00 */	lwz r0, 0(r3)
/* 802B9B80  7C 0B 00 40 */	cmplw r11, r0
/* 802B9B84  41 82 00 44 */	beq lbl_802B9BC8
/* 802B9B88  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802B9B8C  80 63 00 00 */	lwz r3, 0(r3)
/* 802B9B90  28 03 00 00 */	cmplwi r3, 0
/* 802B9B94  41 82 00 10 */	beq lbl_802B9BA4
/* 802B9B98  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802B9B9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B9BA0  48 00 00 08 */	b lbl_802B9BA8
lbl_802B9BA4:
/* 802B9BA4  38 00 FF FF */	li r0, -1
lbl_802B9BA8:
/* 802B9BA8  7C 00 58 40 */	cmplw r0, r11
/* 802B9BAC  40 82 00 10 */	bne lbl_802B9BBC
/* 802B9BB0  38 00 00 00 */	li r0, 0
/* 802B9BB4  98 0C 00 1A */	stb r0, 0x1a(r12)
/* 802B9BB8  48 00 00 60 */	b lbl_802B9C18
lbl_802B9BBC:
/* 802B9BBC  38 00 00 01 */	li r0, 1
/* 802B9BC0  98 0C 00 1A */	stb r0, 0x1a(r12)
/* 802B9BC4  48 00 00 54 */	b lbl_802B9C18
lbl_802B9BC8:
/* 802B9BC8  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802B9BCC  80 63 00 00 */	lwz r3, 0(r3)
/* 802B9BD0  28 03 00 00 */	cmplwi r3, 0
/* 802B9BD4  41 82 00 10 */	beq lbl_802B9BE4
/* 802B9BD8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802B9BDC  90 01 00 08 */	stw r0, 8(r1)
/* 802B9BE0  48 00 00 08 */	b lbl_802B9BE8
lbl_802B9BE4:
/* 802B9BE4  38 00 FF FF */	li r0, -1
lbl_802B9BE8:
/* 802B9BE8  7C 00 58 40 */	cmplw r0, r11
/* 802B9BEC  40 82 00 24 */	bne lbl_802B9C10
/* 802B9BF0  55 40 06 3F */	clrlwi. r0, r10, 0x18
/* 802B9BF4  41 82 00 10 */	beq lbl_802B9C04
/* 802B9BF8  38 00 00 01 */	li r0, 1
/* 802B9BFC  98 0C 00 1A */	stb r0, 0x1a(r12)
/* 802B9C00  48 00 00 18 */	b lbl_802B9C18
lbl_802B9C04:
/* 802B9C04  38 00 00 00 */	li r0, 0
/* 802B9C08  98 0C 00 1A */	stb r0, 0x1a(r12)
/* 802B9C0C  48 00 00 0C */	b lbl_802B9C18
lbl_802B9C10:
/* 802B9C10  38 00 00 01 */	li r0, 1
/* 802B9C14  98 0C 00 1A */	stb r0, 0x1a(r12)
lbl_802B9C18:
/* 802B9C18  98 AC 00 0D */	stb r5, 0xd(r12)
/* 802B9C1C  98 CC 00 0F */	stb r6, 0xf(r12)
/* 802B9C20  98 EC 00 11 */	stb r7, 0x11(r12)
/* 802B9C24  99 0C 00 13 */	stb r8, 0x13(r12)
/* 802B9C28  99 2C 00 15 */	stb r9, 0x15(r12)
/* 802B9C2C  80 04 00 00 */	lwz r0, 0(r4)
/* 802B9C30  90 0C 00 00 */	stw r0, 0(r12)
/* 802B9C34  80 6D 85 C0 */	lwz r3, __OSReport_disable-0x58(r13)
/* 802B9C38  80 8C 00 04 */	lwz r4, 4(r12)
/* 802B9C3C  48 00 12 7D */	bl setSceneFx__11Z2FxLineMgrFl
/* 802B9C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B9C44  7C 08 03 A6 */	mtlr r0
/* 802B9C48  38 21 00 10 */	addi r1, r1, 0x10
/* 802B9C4C  4E 80 00 20 */	blr 
