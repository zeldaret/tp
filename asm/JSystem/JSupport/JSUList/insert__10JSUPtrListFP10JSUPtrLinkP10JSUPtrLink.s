lbl_802DC094:
/* 802DC094  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DC098  7C 08 02 A6 */	mflr r0
/* 802DC09C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DC0A0  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC0A4  48 08 61 39 */	bl _savegpr_29
/* 802DC0A8  7C 7D 1B 78 */	mr r29, r3
/* 802DC0AC  7C 9E 23 78 */	mr r30, r4
/* 802DC0B0  7C BF 2B 78 */	mr r31, r5
/* 802DC0B4  80 03 00 00 */	lwz r0, 0(r3)
/* 802DC0B8  7C 1E 00 40 */	cmplw r30, r0
/* 802DC0BC  40 82 00 10 */	bne lbl_802DC0CC
/* 802DC0C0  7F E4 FB 78 */	mr r4, r31
/* 802DC0C4  4B FF FF 2D */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 802DC0C8  48 00 00 7C */	b lbl_802DC144
lbl_802DC0CC:
/* 802DC0CC  28 1E 00 00 */	cmplwi r30, 0
/* 802DC0D0  40 82 00 10 */	bne lbl_802DC0E0
/* 802DC0D4  7F E4 FB 78 */	mr r4, r31
/* 802DC0D8  4B FF FE 75 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802DC0DC  48 00 00 68 */	b lbl_802DC144
lbl_802DC0E0:
/* 802DC0E0  80 1E 00 04 */	lwz r0, 4(r30)
/* 802DC0E4  7C 00 E8 40 */	cmplw r0, r29
/* 802DC0E8  41 82 00 0C */	beq lbl_802DC0F4
/* 802DC0EC  38 60 00 00 */	li r3, 0
/* 802DC0F0  48 00 00 54 */	b lbl_802DC144
lbl_802DC0F4:
/* 802DC0F4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802DC0F8  7C 60 00 34 */	cntlzw r0, r3
/* 802DC0FC  54 04 D9 7E */	srwi r4, r0, 5
/* 802DC100  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 802DC104  40 82 00 10 */	bne lbl_802DC114
/* 802DC108  7F E4 FB 78 */	mr r4, r31
/* 802DC10C  48 00 00 51 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802DC110  7C 64 1B 78 */	mr r4, r3
lbl_802DC114:
/* 802DC114  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802DC118  41 82 00 28 */	beq lbl_802DC140
/* 802DC11C  80 7E 00 08 */	lwz r3, 8(r30)
/* 802DC120  93 BF 00 04 */	stw r29, 4(r31)
/* 802DC124  90 7F 00 08 */	stw r3, 8(r31)
/* 802DC128  93 DF 00 0C */	stw r30, 0xc(r31)
/* 802DC12C  93 E3 00 0C */	stw r31, 0xc(r3)
/* 802DC130  93 FE 00 08 */	stw r31, 8(r30)
/* 802DC134  80 7D 00 08 */	lwz r3, 8(r29)
/* 802DC138  38 03 00 01 */	addi r0, r3, 1
/* 802DC13C  90 1D 00 08 */	stw r0, 8(r29)
lbl_802DC140:
/* 802DC140  7C 83 23 78 */	mr r3, r4
lbl_802DC144:
/* 802DC144  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC148  48 08 60 E1 */	bl _restgpr_29
/* 802DC14C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DC150  7C 08 03 A6 */	mtlr r0
/* 802DC154  38 21 00 20 */	addi r1, r1, 0x20
/* 802DC158  4E 80 00 20 */	blr 
