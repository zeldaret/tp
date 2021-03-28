lbl_8001BA7C:
/* 8001BA7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001BA80  7C 08 02 A6 */	mflr r0
/* 8001BA84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001BA88  7C 68 1B 78 */	mr r8, r3
/* 8001BA8C  7C 89 23 78 */	mr r9, r4
/* 8001BA90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001BA94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8001BA98  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8001BA9C  38 00 00 00 */	li r0, 0
/* 8001BAA0  88 83 00 E5 */	lbz r4, 0xe5(r3)
/* 8001BAA4  28 04 00 00 */	cmplwi r4, 0
/* 8001BAA8  41 82 00 0C */	beq lbl_8001BAB4
/* 8001BAAC  28 04 00 02 */	cmplwi r4, 2
/* 8001BAB0  40 82 00 08 */	bne lbl_8001BAB8
lbl_8001BAB4:
/* 8001BAB4  38 00 00 01 */	li r0, 1
lbl_8001BAB8:
/* 8001BAB8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001BABC  40 82 00 20 */	bne lbl_8001BADC
/* 8001BAC0  54 C0 05 6B */	rlwinm. r0, r6, 0, 0x15, 0x15
/* 8001BAC4  41 82 00 10 */	beq lbl_8001BAD4
/* 8001BAC8  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 8001BACC  7C 00 40 40 */	cmplw r0, r8
/* 8001BAD0  41 82 00 0C */	beq lbl_8001BADC
lbl_8001BAD4:
/* 8001BAD4  38 60 00 00 */	li r3, 0
/* 8001BAD8  48 00 00 2C */	b lbl_8001BB04
lbl_8001BADC:
/* 8001BADC  54 A0 04 3F */	clrlwi. r0, r5, 0x10
/* 8001BAE0  40 82 00 08 */	bne lbl_8001BAE8
/* 8001BAE4  38 A0 00 FF */	li r5, 0xff
lbl_8001BAE8:
/* 8001BAE8  38 00 00 FF */	li r0, 0xff
/* 8001BAEC  90 01 00 08 */	stw r0, 8(r1)
/* 8001BAF0  38 80 00 0B */	li r4, 0xb
/* 8001BAF4  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 8001BAF8  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 8001BAFC  39 40 FF FF */	li r10, -1
/* 8001BB00  48 02 5B 69 */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
lbl_8001BB04:
/* 8001BB04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BB08  7C 08 03 A6 */	mtlr r0
/* 8001BB0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BB10  4E 80 00 20 */	blr 
