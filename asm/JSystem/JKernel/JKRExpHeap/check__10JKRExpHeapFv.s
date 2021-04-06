lbl_802D0190:
/* 802D0190  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0194  7C 08 02 A6 */	mflr r0
/* 802D0198  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D019C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D01A0  48 09 20 39 */	bl _savegpr_28
/* 802D01A4  7C 7C 1B 78 */	mr r28, r3
/* 802D01A8  38 7C 00 18 */	addi r3, r28, 0x18
/* 802D01AC  48 06 EE 95 */	bl OSLockMutex
/* 802D01B0  3B E0 00 00 */	li r31, 0
/* 802D01B4  3B C0 00 01 */	li r30, 1
/* 802D01B8  83 BC 00 80 */	lwz r29, 0x80(r28)
/* 802D01BC  48 00 00 E0 */	b lbl_802D029C
lbl_802D01C0:
/* 802D01C0  A0 1D 00 00 */	lhz r0, 0(r29)
/* 802D01C4  28 00 48 4D */	cmplwi r0, 0x484d
/* 802D01C8  41 82 00 28 */	beq lbl_802D01F0
/* 802D01CC  3B C0 00 00 */	li r30, 0
/* 802D01D0  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802D01D4  54 05 C6 3E */	rlwinm r5, r0, 0x18, 0x18, 0x1f
/* 802D01D8  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha /* 0x8039CAF0@ha */
/* 802D01DC  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l /* 0x8039CAF0@l */
/* 802D01E0  38 63 00 7A */	addi r3, r3, 0x7a
/* 802D01E4  7F A4 EB 78 */	mr r4, r29
/* 802D01E8  4C C6 31 82 */	crclr 6
/* 802D01EC  48 01 84 91 */	bl JUTWarningConsole_f
lbl_802D01F0:
/* 802D01F0  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 802D01F4  28 05 00 00 */	cmplwi r5, 0
/* 802D01F8  41 82 00 60 */	beq lbl_802D0258
/* 802D01FC  A0 05 00 00 */	lhz r0, 0(r5)
/* 802D0200  28 00 48 4D */	cmplwi r0, 0x484d
/* 802D0204  41 82 00 24 */	beq lbl_802D0228
/* 802D0208  3B C0 00 00 */	li r30, 0
/* 802D020C  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha /* 0x8039CAF0@ha */
/* 802D0210  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l /* 0x8039CAF0@l */
/* 802D0214  38 63 00 A4 */	addi r3, r3, 0xa4
/* 802D0218  7F A4 EB 78 */	mr r4, r29
/* 802D021C  4C C6 31 82 */	crclr 6
/* 802D0220  48 01 84 5D */	bl JUTWarningConsole_f
/* 802D0224  48 00 00 80 */	b lbl_802D02A4
lbl_802D0228:
/* 802D0228  80 05 00 08 */	lwz r0, 8(r5)
/* 802D022C  7C 00 E8 40 */	cmplw r0, r29
/* 802D0230  41 82 00 50 */	beq lbl_802D0280
/* 802D0234  3B C0 00 00 */	li r30, 0
/* 802D0238  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha /* 0x8039CAF0@ha */
/* 802D023C  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l /* 0x8039CAF0@l */
/* 802D0240  38 63 00 D1 */	addi r3, r3, 0xd1
/* 802D0244  7C A4 2B 78 */	mr r4, r5
/* 802D0248  7C 05 03 78 */	mr r5, r0
/* 802D024C  4C C6 31 82 */	crclr 6
/* 802D0250  48 01 84 2D */	bl JUTWarningConsole_f
/* 802D0254  48 00 00 2C */	b lbl_802D0280
lbl_802D0258:
/* 802D0258  80 BC 00 84 */	lwz r5, 0x84(r28)
/* 802D025C  7C 05 E8 40 */	cmplw r5, r29
/* 802D0260  41 82 00 20 */	beq lbl_802D0280
/* 802D0264  3B C0 00 00 */	li r30, 0
/* 802D0268  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha /* 0x8039CAF0@ha */
/* 802D026C  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l /* 0x8039CAF0@l */
/* 802D0270  38 63 00 FC */	addi r3, r3, 0xfc
/* 802D0274  7F A4 EB 78 */	mr r4, r29
/* 802D0278  4C C6 31 82 */	crclr 6
/* 802D027C  48 01 84 01 */	bl JUTWarningConsole_f
lbl_802D0280:
/* 802D0280  80 7D 00 04 */	lwz r3, 4(r29)
/* 802D0284  88 1D 00 02 */	lbz r0, 2(r29)
/* 802D0288  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802D028C  7C 03 02 14 */	add r0, r3, r0
/* 802D0290  7F E0 FA 14 */	add r31, r0, r31
/* 802D0294  83 BD 00 0C */	lwz r29, 0xc(r29)
/* 802D0298  3B FF 00 10 */	addi r31, r31, 0x10
lbl_802D029C:
/* 802D029C  28 1D 00 00 */	cmplwi r29, 0
/* 802D02A0  40 82 FF 20 */	bne lbl_802D01C0
lbl_802D02A4:
/* 802D02A4  83 BC 00 78 */	lwz r29, 0x78(r28)
/* 802D02A8  48 00 00 A4 */	b lbl_802D034C
lbl_802D02AC:
/* 802D02AC  80 1D 00 04 */	lwz r0, 4(r29)
/* 802D02B0  7F E0 FA 14 */	add r31, r0, r31
/* 802D02B4  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 802D02B8  28 04 00 00 */	cmplwi r4, 0
/* 802D02BC  3B FF 00 10 */	addi r31, r31, 0x10
/* 802D02C0  41 82 00 60 */	beq lbl_802D0320
/* 802D02C4  80 A4 00 08 */	lwz r5, 8(r4)
/* 802D02C8  7C 05 E8 40 */	cmplw r5, r29
/* 802D02CC  41 82 00 1C */	beq lbl_802D02E8
/* 802D02D0  3B C0 00 00 */	li r30, 0
/* 802D02D4  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha /* 0x8039CAF0@ha */
/* 802D02D8  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l /* 0x8039CAF0@l */
/* 802D02DC  38 63 00 D1 */	addi r3, r3, 0xd1
/* 802D02E0  4C C6 31 82 */	crclr 6
/* 802D02E4  48 01 83 99 */	bl JUTWarningConsole_f
lbl_802D02E8:
/* 802D02E8  80 BD 00 04 */	lwz r5, 4(r29)
/* 802D02EC  38 05 00 10 */	addi r0, r5, 0x10
/* 802D02F0  7C 7D 02 14 */	add r3, r29, r0
/* 802D02F4  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802D02F8  7C 03 00 40 */	cmplw r3, r0
/* 802D02FC  40 81 00 4C */	ble lbl_802D0348
/* 802D0300  3B C0 00 00 */	li r30, 0
/* 802D0304  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha /* 0x8039CAF0@ha */
/* 802D0308  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l /* 0x8039CAF0@l */
/* 802D030C  38 63 01 25 */	addi r3, r3, 0x125
/* 802D0310  7F A4 EB 78 */	mr r4, r29
/* 802D0314  4C C6 31 82 */	crclr 6
/* 802D0318  48 01 83 65 */	bl JUTWarningConsole_f
/* 802D031C  48 00 00 2C */	b lbl_802D0348
lbl_802D0320:
/* 802D0320  80 BC 00 7C */	lwz r5, 0x7c(r28)
/* 802D0324  7C 05 E8 40 */	cmplw r5, r29
/* 802D0328  41 82 00 20 */	beq lbl_802D0348
/* 802D032C  3B C0 00 00 */	li r30, 0
/* 802D0330  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha /* 0x8039CAF0@ha */
/* 802D0334  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l /* 0x8039CAF0@l */
/* 802D0338  38 63 00 FC */	addi r3, r3, 0xfc
/* 802D033C  7F A4 EB 78 */	mr r4, r29
/* 802D0340  4C C6 31 82 */	crclr 6
/* 802D0344  48 01 83 39 */	bl JUTWarningConsole_f
lbl_802D0348:
/* 802D0348  83 BD 00 0C */	lwz r29, 0xc(r29)
lbl_802D034C:
/* 802D034C  28 1D 00 00 */	cmplwi r29, 0
/* 802D0350  40 82 FF 5C */	bne lbl_802D02AC
/* 802D0354  80 9C 00 38 */	lwz r4, 0x38(r28)
/* 802D0358  7C 1F 20 40 */	cmplw r31, r4
/* 802D035C  41 82 00 20 */	beq lbl_802D037C
/* 802D0360  3B C0 00 00 */	li r30, 0
/* 802D0364  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha /* 0x8039CAF0@ha */
/* 802D0368  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l /* 0x8039CAF0@l */
/* 802D036C  38 63 01 4A */	addi r3, r3, 0x14a
/* 802D0370  7F E5 FB 78 */	mr r5, r31
/* 802D0374  4C C6 31 82 */	crclr 6
/* 802D0378  48 01 83 05 */	bl JUTWarningConsole_f
lbl_802D037C:
/* 802D037C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802D0380  40 82 00 14 */	bne lbl_802D0394
/* 802D0384  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha /* 0x8039CAF0@ha */
/* 802D0388  38 63 CA F0 */	addi r3, r3, JKRExpHeap__stringBase0@l /* 0x8039CAF0@l */
/* 802D038C  38 63 01 77 */	addi r3, r3, 0x177
/* 802D0390  48 01 83 6D */	bl JUTWarningConsole
lbl_802D0394:
/* 802D0394  38 7C 00 18 */	addi r3, r28, 0x18
/* 802D0398  48 06 ED 85 */	bl OSUnlockMutex
/* 802D039C  7F C3 F3 78 */	mr r3, r30
/* 802D03A0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D03A4  48 09 1E 81 */	bl _restgpr_28
/* 802D03A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D03AC  7C 08 03 A6 */	mtlr r0
/* 802D03B0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D03B4  4E 80 00 20 */	blr 
