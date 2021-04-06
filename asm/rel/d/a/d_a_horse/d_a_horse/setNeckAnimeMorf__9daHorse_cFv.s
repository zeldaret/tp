lbl_80840B28:
/* 80840B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80840B2C  7C 08 02 A6 */	mflr r0
/* 80840B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80840B34  80 63 05 AC */	lwz r3, 0x5ac(r3)
/* 80840B38  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80840B3C  3C 80 80 84 */	lis r4, lit_5176@ha /* 0x80845644@ha */
/* 80840B40  C0 04 56 44 */	lfs f0, lit_5176@l(r4)  /* 0x80845644@l */
/* 80840B44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80840B48  40 81 00 1C */	ble lbl_80840B64
/* 80840B4C  A0 03 00 18 */	lhz r0, 0x18(r3)
/* 80840B50  28 00 00 00 */	cmplwi r0, 0
/* 80840B54  40 82 00 10 */	bne lbl_80840B64
/* 80840B58  38 80 00 00 */	li r4, 0
/* 80840B5C  38 A0 00 26 */	li r5, 0x26
/* 80840B60  48 00 00 0C */	b lbl_80840B6C
lbl_80840B64:
/* 80840B64  38 80 00 0B */	li r4, 0xb
/* 80840B68  38 A0 00 15 */	li r5, 0x15
lbl_80840B6C:
/* 80840B6C  3C C0 80 84 */	lis r6, lit_4303@ha /* 0x808455F0@ha */
/* 80840B70  C0 26 55 F0 */	lfs f1, lit_4303@l(r6)  /* 0x808455F0@l */
/* 80840B74  4B 7C EC D5 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
/* 80840B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80840B7C  7C 08 03 A6 */	mtlr r0
/* 80840B80  38 21 00 10 */	addi r1, r1, 0x10
/* 80840B84  4E 80 00 20 */	blr 
