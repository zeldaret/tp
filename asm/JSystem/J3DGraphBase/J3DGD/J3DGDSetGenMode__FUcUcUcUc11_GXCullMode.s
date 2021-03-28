lbl_8030D098:
/* 8030D098  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030D09C  7C 08 02 A6 */	mflr r0
/* 8030D0A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030D0A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8030D0A8  48 05 51 2D */	bl _savegpr_27
/* 8030D0AC  7C 7B 1B 78 */	mr r27, r3
/* 8030D0B0  7C 9C 23 78 */	mr r28, r4
/* 8030D0B4  7C BD 2B 78 */	mr r29, r5
/* 8030D0B8  7C DE 33 78 */	mr r30, r6
/* 8030D0BC  7C FF 3B 78 */	mr r31, r7
/* 8030D0C0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030D0C4  80 64 00 08 */	lwz r3, 8(r4)
/* 8030D0C8  38 63 00 0A */	addi r3, r3, 0xa
/* 8030D0CC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8030D0D0  7C 03 00 40 */	cmplw r3, r0
/* 8030D0D4  40 81 00 08 */	ble lbl_8030D0DC
/* 8030D0D8  48 05 3F FD */	bl GDOverflowed
lbl_8030D0DC:
/* 8030D0DC  38 00 00 61 */	li r0, 0x61
/* 8030D0E0  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030D0E4  80 85 00 08 */	lwz r4, 8(r5)
/* 8030D0E8  38 64 00 01 */	addi r3, r4, 1
/* 8030D0EC  90 65 00 08 */	stw r3, 8(r5)
/* 8030D0F0  98 04 00 00 */	stb r0, 0(r4)
/* 8030D0F4  38 C0 00 FE */	li r6, 0xfe
/* 8030D0F8  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030D0FC  80 85 00 08 */	lwz r4, 8(r5)
/* 8030D100  38 64 00 01 */	addi r3, r4, 1
/* 8030D104  90 65 00 08 */	stw r3, 8(r5)
/* 8030D108  98 C4 00 00 */	stb r6, 0(r4)
/* 8030D10C  38 C0 00 07 */	li r6, 7
/* 8030D110  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030D114  80 85 00 08 */	lwz r4, 8(r5)
/* 8030D118  38 64 00 01 */	addi r3, r4, 1
/* 8030D11C  90 65 00 08 */	stw r3, 8(r5)
/* 8030D120  98 C4 00 00 */	stb r6, 0(r4)
/* 8030D124  38 C0 00 FC */	li r6, 0xfc
/* 8030D128  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030D12C  80 85 00 08 */	lwz r4, 8(r5)
/* 8030D130  38 64 00 01 */	addi r3, r4, 1
/* 8030D134  90 65 00 08 */	stw r3, 8(r5)
/* 8030D138  98 C4 00 00 */	stb r6, 0(r4)
/* 8030D13C  38 C0 00 3F */	li r6, 0x3f
/* 8030D140  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030D144  80 85 00 08 */	lwz r4, 8(r5)
/* 8030D148  38 64 00 01 */	addi r3, r4, 1
/* 8030D14C  90 65 00 08 */	stw r3, 8(r5)
/* 8030D150  98 C4 00 00 */	stb r6, 0(r4)
/* 8030D154  57 C7 82 1E */	rlwinm r7, r30, 0x10, 8, 0xf
/* 8030D158  38 6D 83 88 */	la r3, cm2hw(r13) /* 80450908-_SDA_BASE_ */
/* 8030D15C  7C 63 F8 AE */	lbzx r3, r3, r31
/* 8030D160  54 66 70 22 */	slwi r6, r3, 0xe
/* 8030D164  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 8030D168  38 63 FF FF */	addi r3, r3, -1
/* 8030D16C  54 65 50 2A */	slwi r5, r3, 0xa
/* 8030D170  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 8030D174  57 83 25 36 */	rlwinm r3, r28, 4, 0x14, 0x1b
/* 8030D178  7C 83 1B 78 */	or r3, r4, r3
/* 8030D17C  7C A3 1B 78 */	or r3, r5, r3
/* 8030D180  7C C3 1B 78 */	or r3, r6, r3
/* 8030D184  7C E6 1B 78 */	or r6, r7, r3
/* 8030D188  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8030D18C  80 85 00 08 */	lwz r4, 8(r5)
/* 8030D190  38 64 00 01 */	addi r3, r4, 1
/* 8030D194  90 65 00 08 */	stw r3, 8(r5)
/* 8030D198  98 04 00 00 */	stb r0, 0(r4)
/* 8030D19C  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8030D1A0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030D1A4  80 64 00 08 */	lwz r3, 8(r4)
/* 8030D1A8  38 03 00 01 */	addi r0, r3, 1
/* 8030D1AC  90 04 00 08 */	stw r0, 8(r4)
/* 8030D1B0  98 A3 00 00 */	stb r5, 0(r3)
/* 8030D1B4  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8030D1B8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030D1BC  80 64 00 08 */	lwz r3, 8(r4)
/* 8030D1C0  38 03 00 01 */	addi r0, r3, 1
/* 8030D1C4  90 04 00 08 */	stw r0, 8(r4)
/* 8030D1C8  98 A3 00 00 */	stb r5, 0(r3)
/* 8030D1CC  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8030D1D0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030D1D4  80 64 00 08 */	lwz r3, 8(r4)
/* 8030D1D8  38 03 00 01 */	addi r0, r3, 1
/* 8030D1DC  90 04 00 08 */	stw r0, 8(r4)
/* 8030D1E0  98 A3 00 00 */	stb r5, 0(r3)
/* 8030D1E4  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030D1E8  80 64 00 08 */	lwz r3, 8(r4)
/* 8030D1EC  38 03 00 01 */	addi r0, r3, 1
/* 8030D1F0  90 04 00 08 */	stw r0, 8(r4)
/* 8030D1F4  98 C3 00 00 */	stb r6, 0(r3)
/* 8030D1F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8030D1FC  48 05 50 25 */	bl _restgpr_27
/* 8030D200  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030D204  7C 08 03 A6 */	mtlr r0
/* 8030D208  38 21 00 20 */	addi r1, r1, 0x20
/* 8030D20C  4E 80 00 20 */	blr 
