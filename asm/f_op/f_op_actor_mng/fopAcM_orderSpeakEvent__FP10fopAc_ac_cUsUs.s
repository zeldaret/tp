lbl_8001B19C:
/* 8001B19C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B1A0  7C 08 02 A6 */	mflr r0
/* 8001B1A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B1A8  7C 69 1B 78 */	mr r9, r3
/* 8001B1AC  7C 87 23 78 */	mr r7, r4
/* 8001B1B0  7C A6 2B 78 */	mr r6, r5
/* 8001B1B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001B1B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001B1BC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8001B1C0  38 00 00 00 */	li r0, 0
/* 8001B1C4  88 83 00 E5 */	lbz r4, 0xe5(r3)
/* 8001B1C8  28 04 00 00 */	cmplwi r4, 0
/* 8001B1CC  41 82 00 0C */	beq lbl_8001B1D8
/* 8001B1D0  28 04 00 02 */	cmplwi r4, 2
/* 8001B1D4  40 82 00 08 */	bne lbl_8001B1DC
lbl_8001B1D8:
/* 8001B1D8  38 00 00 01 */	li r0, 1
lbl_8001B1DC:
/* 8001B1DC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001B1E0  40 82 00 20 */	bne lbl_8001B200
/* 8001B1E4  54 C0 05 6B */	rlwinm. r0, r6, 0, 0x15, 0x15
/* 8001B1E8  41 82 00 10 */	beq lbl_8001B1F8
/* 8001B1EC  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 8001B1F0  7C 00 48 40 */	cmplw r0, r9
/* 8001B1F4  41 82 00 0C */	beq lbl_8001B200
lbl_8001B1F8:
/* 8001B1F8  38 60 00 00 */	li r3, 0
/* 8001B1FC  48 00 00 38 */	b lbl_8001B234
lbl_8001B200:
/* 8001B200  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 8001B204  40 82 00 08 */	bne lbl_8001B20C
/* 8001B208  38 E0 01 EA */	li r7, 0x1ea
lbl_8001B20C:
/* 8001B20C  38 00 00 FF */	li r0, 0xff
/* 8001B210  90 01 00 08 */	stw r0, 8(r1)
/* 8001B214  38 80 00 00 */	li r4, 0
/* 8001B218  7C E5 3B 78 */	mr r5, r7
/* 8001B21C  38 E0 01 4F */	li r7, 0x14f
/* 8001B220  3D 00 80 40 */	lis r8, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001B224  39 08 61 C0 */	addi r8, r8, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001B228  81 08 5D AC */	lwz r8, 0x5dac(r8)
/* 8001B22C  39 40 FF FF */	li r10, -1
/* 8001B230  48 02 64 39 */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
lbl_8001B234:
/* 8001B234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B238  7C 08 03 A6 */	mtlr r0
/* 8001B23C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B240  4E 80 00 20 */	blr 
