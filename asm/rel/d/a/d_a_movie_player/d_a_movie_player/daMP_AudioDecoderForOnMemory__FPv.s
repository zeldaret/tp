lbl_80876344:
/* 80876344  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80876348  7C 08 02 A6 */	mflr r0
/* 8087634C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80876350  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80876354  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80876358  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8087635C  3C 80 80 88 */	lis r4, daMP_ActivePlayer@ha
/* 80876360  3B C4 9B D0 */	addi r30, r4, daMP_ActivePlayer@l
/* 80876364  83 BE 00 BC */	lwz r29, 0xbc(r30)
/* 80876368  90 61 00 08 */	stw r3, 8(r1)
/* 8087636C  3B E0 00 00 */	li r31, 0
lbl_80876370:
/* 80876370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80876374  38 61 00 08 */	addi r3, r1, 8
/* 80876378  4B FF FE C9 */	bl daMP_AudioDecode__FP18daMP_THPReadBuffer
/* 8087637C  80 9E 00 50 */	lwz r4, 0x50(r30)
/* 80876380  80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 80876384  7C 7F 02 14 */	add r3, r31, r0
/* 80876388  7C 03 23 96 */	divwu r0, r3, r4
/* 8087638C  7C 00 21 D6 */	mullw r0, r0, r4
/* 80876390  7C 60 18 50 */	subf r3, r0, r3
/* 80876394  38 04 FF FF */	addi r0, r4, -1
/* 80876398  7C 03 00 40 */	cmplw r3, r0
/* 8087639C  40 82 00 34 */	bne lbl_808763D0
/* 808763A0  88 1E 00 A6 */	lbz r0, 0xa6(r30)
/* 808763A4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 808763A8  41 82 00 18 */	beq lbl_808763C0
/* 808763AC  80 61 00 08 */	lwz r3, 8(r1)
/* 808763B0  83 A3 00 00 */	lwz r29, 0(r3)
/* 808763B4  80 1E 00 B4 */	lwz r0, 0xb4(r30)
/* 808763B8  90 01 00 08 */	stw r0, 8(r1)
/* 808763BC  48 00 00 28 */	b lbl_808763E4
lbl_808763C0:
/* 808763C0  3C 60 80 8E */	lis r3, daMP_AudioDecodeThread@ha
/* 808763C4  38 63 05 18 */	addi r3, r3, daMP_AudioDecodeThread@l
/* 808763C8  4B AC B6 74 */	b OSSuspendThread
/* 808763CC  48 00 00 18 */	b lbl_808763E4
lbl_808763D0:
/* 808763D0  80 61 00 08 */	lwz r3, 8(r1)
/* 808763D4  80 83 00 00 */	lwz r4, 0(r3)
/* 808763D8  7C 03 EA 14 */	add r0, r3, r29
/* 808763DC  90 01 00 08 */	stw r0, 8(r1)
/* 808763E0  7C 9D 23 78 */	mr r29, r4
lbl_808763E4:
/* 808763E4  3B FF 00 01 */	addi r31, r31, 1
/* 808763E8  4B FF FF 88 */	b lbl_80876370
