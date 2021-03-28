lbl_8001B068:
/* 8001B068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B06C  7C 08 02 A6 */	mflr r0
/* 8001B070  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B074  7C 68 1B 78 */	mr r8, r3
/* 8001B078  7C 89 23 78 */	mr r9, r4
/* 8001B07C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001B080  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8001B084  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8001B088  38 00 00 00 */	li r0, 0
/* 8001B08C  88 83 00 E5 */	lbz r4, 0xe5(r3)
/* 8001B090  28 04 00 00 */	cmplwi r4, 0
/* 8001B094  41 82 00 0C */	beq lbl_8001B0A0
/* 8001B098  28 04 00 02 */	cmplwi r4, 2
/* 8001B09C  40 82 00 08 */	bne lbl_8001B0A4
lbl_8001B0A0:
/* 8001B0A0  38 00 00 01 */	li r0, 1
lbl_8001B0A4:
/* 8001B0A4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001B0A8  40 82 00 20 */	bne lbl_8001B0C8
/* 8001B0AC  54 C0 05 6B */	rlwinm. r0, r6, 0, 0x15, 0x15
/* 8001B0B0  41 82 00 10 */	beq lbl_8001B0C0
/* 8001B0B4  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 8001B0B8  7C 00 40 40 */	cmplw r0, r8
/* 8001B0BC  41 82 00 0C */	beq lbl_8001B0C8
lbl_8001B0C0:
/* 8001B0C0  38 60 00 00 */	li r3, 0
/* 8001B0C4  48 00 00 28 */	b lbl_8001B0EC
lbl_8001B0C8:
/* 8001B0C8  54 A0 04 3F */	clrlwi. r0, r5, 0x10
/* 8001B0CC  40 82 00 08 */	bne lbl_8001B0D4
/* 8001B0D0  38 A0 01 FF */	li r5, 0x1ff
lbl_8001B0D4:
/* 8001B0D4  38 00 00 FF */	li r0, 0xff
/* 8001B0D8  90 01 00 08 */	stw r0, 8(r1)
/* 8001B0DC  38 80 00 00 */	li r4, 0
/* 8001B0E0  38 E0 01 4F */	li r7, 0x14f
/* 8001B0E4  39 40 FF FF */	li r10, -1
/* 8001B0E8  48 02 65 81 */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
lbl_8001B0EC:
/* 8001B0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B0F0  7C 08 03 A6 */	mtlr r0
/* 8001B0F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B0F8  4E 80 00 20 */	blr 
