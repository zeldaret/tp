lbl_8001B0FC:
/* 8001B0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B100  7C 08 02 A6 */	mflr r0
/* 8001B104  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B108  7C 6A 1B 78 */	mr r10, r3
/* 8001B10C  7C 88 23 78 */	mr r8, r4
/* 8001B110  7C A9 2B 78 */	mr r9, r5
/* 8001B114  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001B118  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001B11C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8001B120  38 00 00 00 */	li r0, 0
/* 8001B124  88 83 00 E5 */	lbz r4, 0xe5(r3)
/* 8001B128  28 04 00 00 */	cmplwi r4, 0
/* 8001B12C  41 82 00 0C */	beq lbl_8001B138
/* 8001B130  28 04 00 02 */	cmplwi r4, 2
/* 8001B134  40 82 00 08 */	bne lbl_8001B13C
lbl_8001B138:
/* 8001B138  38 00 00 01 */	li r0, 1
lbl_8001B13C:
/* 8001B13C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001B140  40 82 00 20 */	bne lbl_8001B160
/* 8001B144  54 E0 05 6B */	rlwinm. r0, r7, 0, 0x15, 0x15
/* 8001B148  41 82 00 10 */	beq lbl_8001B158
/* 8001B14C  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 8001B150  7C 00 40 40 */	cmplw r0, r8
/* 8001B154  41 82 00 0C */	beq lbl_8001B160
lbl_8001B158:
/* 8001B158  38 60 00 00 */	li r3, 0
/* 8001B15C  48 00 00 30 */	b lbl_8001B18C
lbl_8001B160:
/* 8001B160  54 C0 04 3F */	clrlwi. r0, r6, 0x10
/* 8001B164  40 82 00 08 */	bne lbl_8001B16C
/* 8001B168  38 C0 01 F4 */	li r6, 0x1f4
lbl_8001B16C:
/* 8001B16C  38 00 00 FF */	li r0, 0xff
/* 8001B170  90 01 00 08 */	stw r0, 8(r1)
/* 8001B174  7D 44 53 78 */	mr r4, r10
/* 8001B178  7C C5 33 78 */	mr r5, r6
/* 8001B17C  7C E6 3B 78 */	mr r6, r7
/* 8001B180  38 E0 01 4F */	li r7, 0x14f
/* 8001B184  39 40 FF FF */	li r10, -1
/* 8001B188  48 02 64 E1 */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
lbl_8001B18C:
/* 8001B18C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B190  7C 08 03 A6 */	mtlr r0
/* 8001B194  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B198  4E 80 00 20 */	blr 
