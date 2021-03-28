lbl_802721DC:
/* 802721DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802721E0  7C 08 02 A6 */	mflr r0
/* 802721E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802721E8  39 61 00 20 */	addi r11, r1, 0x20
/* 802721EC  48 0E FF F1 */	bl _savegpr_29
/* 802721F0  7C 60 1B 79 */	or. r0, r3, r3
/* 802721F4  7C 9D 23 78 */	mr r29, r4
/* 802721F8  7C BE 2B 78 */	mr r30, r5
/* 802721FC  7C DF 33 78 */	mr r31, r6
/* 80272200  41 82 00 10 */	beq lbl_80272210
/* 80272204  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 80272208  7C 04 03 78 */	mr r4, r0
/* 8027220C  48 07 2F 8D */	bl setRenderMode__8JUTVideoFPC16_GXRenderModeObj
lbl_80272210:
/* 80272210  80 0D 8C 40 */	lwz r0, sManager__10JFWDisplay(r13)
/* 80272214  28 00 00 00 */	cmplwi r0, 0
/* 80272218  40 82 00 2C */	bne lbl_80272244
/* 8027221C  38 60 00 4C */	li r3, 0x4c
/* 80272220  48 05 CA 2D */	bl __nw__FUl
/* 80272224  7C 60 1B 79 */	or. r0, r3, r3
/* 80272228  41 82 00 18 */	beq lbl_80272240
/* 8027222C  7F A4 EB 78 */	mr r4, r29
/* 80272230  7F C5 F3 78 */	mr r5, r30
/* 80272234  7F E6 FB 78 */	mr r6, r31
/* 80272238  4B FF FE C1 */	bl __ct__10JFWDisplayFP7JKRHeapQ26JUTXfb10EXfbNumberb
/* 8027223C  7C 60 1B 78 */	mr r0, r3
lbl_80272240:
/* 80272240  90 0D 8C 40 */	stw r0, sManager__10JFWDisplay(r13)
lbl_80272244:
/* 80272244  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80272248  39 61 00 20 */	addi r11, r1, 0x20
/* 8027224C  48 0E FF DD */	bl _restgpr_29
/* 80272250  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80272254  7C 08 03 A6 */	mtlr r0
/* 80272258  38 21 00 20 */	addi r1, r1, 0x20
/* 8027225C  4E 80 00 20 */	blr 
