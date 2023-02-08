lbl_802DE078:
/* 802DE078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE07C  7C 08 02 A6 */	mflr r0
/* 802DE080  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE084  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE088  48 08 41 51 */	bl _savegpr_28
/* 802DE08C  7C 7C 1B 78 */	mr r28, r3
/* 802DE090  7C 9D 23 78 */	mr r29, r4
/* 802DE094  7C BE 2B 78 */	mr r30, r5
/* 802DE098  7C DF 33 78 */	mr r31, r6
/* 802DE09C  7F A3 EB 78 */	mr r3, r29
/* 802DE0A0  7F 84 E3 78 */	mr r4, r28
/* 802DE0A4  38 A0 00 01 */	li r5, 1
/* 802DE0A8  4B FF E1 F1 */	bl read__14JSUInputStreamFPvl
/* 802DE0AC  7F A3 EB 78 */	mr r3, r29
/* 802DE0B0  38 9C 00 01 */	addi r4, r28, 1
/* 802DE0B4  38 A0 00 01 */	li r5, 1
/* 802DE0B8  4B FF E1 E1 */	bl read__14JSUInputStreamFPvl
/* 802DE0BC  7F A3 EB 78 */	mr r3, r29
/* 802DE0C0  38 9C 00 02 */	addi r4, r28, 2
/* 802DE0C4  88 BC 00 01 */	lbz r5, 1(r28)
/* 802DE0C8  4B FF E1 D1 */	bl read__14JSUInputStreamFPvl
/* 802DE0CC  88 1C 00 00 */	lbz r0, 0(r28)
/* 802DE0D0  28 00 00 02 */	cmplwi r0, 2
/* 802DE0D4  41 82 00 14 */	beq lbl_802DE0E8
/* 802DE0D8  28 00 00 03 */	cmplwi r0, 3
/* 802DE0DC  41 82 00 0C */	beq lbl_802DE0E8
/* 802DE0E0  28 00 00 04 */	cmplwi r0, 4
/* 802DE0E4  40 82 00 14 */	bne lbl_802DE0F8
lbl_802DE0E8:
/* 802DE0E8  38 80 00 00 */	li r4, 0
/* 802DE0EC  88 1C 00 01 */	lbz r0, 1(r28)
/* 802DE0F0  7C 7C 02 14 */	add r3, r28, r0
/* 802DE0F4  98 83 00 02 */	stb r4, 2(r3)
lbl_802DE0F8:
/* 802DE0F8  7F 83 E3 78 */	mr r3, r28
/* 802DE0FC  7F C4 F3 78 */	mr r4, r30
/* 802DE100  7F E5 FB 78 */	mr r5, r31
/* 802DE104  48 00 00 B9 */	bl getResource__15JUTResReferenceFUlP10JKRArchive
/* 802DE108  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE10C  48 08 41 19 */	bl _restgpr_28
/* 802DE110  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE114  7C 08 03 A6 */	mtlr r0
/* 802DE118  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE11C  4E 80 00 20 */	blr 
