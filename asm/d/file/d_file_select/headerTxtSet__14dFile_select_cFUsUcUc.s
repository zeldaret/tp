lbl_8018D0E4:
/* 8018D0E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018D0E8  7C 08 02 A6 */	mflr r0
/* 8018D0EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018D0F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8018D0F4  48 1D 50 DD */	bl _savegpr_26
/* 8018D0F8  7C 7D 1B 78 */	mr r29, r3
/* 8018D0FC  7C 9E 23 78 */	mr r30, r4
/* 8018D100  7C DF 33 78 */	mr r31, r6
/* 8018D104  88 63 02 1C */	lbz r3, 0x21c(r3)
/* 8018D108  68 60 00 01 */	xori r0, r3, 1
/* 8018D10C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8018D110  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 8018D114  41 82 00 08 */	beq lbl_8018D11C
/* 8018D118  7C 64 1B 78 */	mr r4, r3
lbl_8018D11C:
/* 8018D11C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8018D120  28 00 FF FF */	cmplwi r0, 0xffff
/* 8018D124  40 82 00 24 */	bne lbl_8018D148
/* 8018D128  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 8018D12C  7C 7D 02 14 */	add r3, r29, r0
/* 8018D130  80 63 02 14 */	lwz r3, 0x214(r3)
/* 8018D134  3C 80 80 39 */	lis r4, d_file_d_file_select__stringBase0@ha /* 0x80394388@ha */
/* 8018D138  38 84 43 88 */	addi r4, r4, d_file_d_file_select__stringBase0@l /* 0x80394388@l */
/* 8018D13C  38 84 00 6B */	addi r4, r4, 0x6b
/* 8018D140  48 1D B9 ED */	bl strcpy
/* 8018D144  48 00 00 C4 */	b lbl_8018D208
lbl_8018D148:
/* 8018D148  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 8018D14C  7F 7D 02 14 */	add r27, r29, r0
/* 8018D150  80 7B 02 0C */	lwz r3, 0x20c(r27)
/* 8018D154  80 63 00 04 */	lwz r3, 4(r3)
/* 8018D158  54 BC 15 BA */	rlwinm r28, r5, 2, 0x16, 0x1d
/* 8018D15C  7F 5D E2 14 */	add r26, r29, r28
/* 8018D160  80 9A 00 18 */	lwz r4, 0x18(r26)
/* 8018D164  81 83 00 00 */	lwz r12, 0(r3)
/* 8018D168  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8018D16C  7D 89 03 A6 */	mtctr r12
/* 8018D170  4E 80 04 21 */	bctrl 
/* 8018D174  38 6D 81 50 */	la r3, fontsize(r13) /* 804506D0-_SDA_BASE_ */
/* 8018D178  7C 23 E4 2E */	lfsx f1, r3, r28
/* 8018D17C  80 7B 02 0C */	lwz r3, 0x20c(r27)
/* 8018D180  80 63 00 04 */	lwz r3, 4(r3)
/* 8018D184  C0 02 9F 48 */	lfs f0, lit_4778(r2)
/* 8018D188  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8018D18C  40 81 00 08 */	ble lbl_8018D194
/* 8018D190  FC 00 08 90 */	fmr f0, f1
lbl_8018D194:
/* 8018D194  D0 03 01 1C */	stfs f0, 0x11c(r3)
/* 8018D198  C0 02 9F 48 */	lfs f0, lit_4778(r2)
/* 8018D19C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8018D1A0  40 81 00 08 */	ble lbl_8018D1A8
/* 8018D1A4  48 00 00 08 */	b lbl_8018D1AC
lbl_8018D1A8:
/* 8018D1A8  FC 20 00 90 */	fmr f1, f0
lbl_8018D1AC:
/* 8018D1AC  D0 23 01 20 */	stfs f1, 0x120(r3)
/* 8018D1B0  80 7B 02 0C */	lwz r3, 0x20c(r27)
/* 8018D1B4  80 83 00 04 */	lwz r4, 4(r3)
/* 8018D1B8  38 6D 81 58 */	la r3, linespace(r13) /* 804506D8-_SDA_BASE_ */
/* 8018D1BC  7C 03 E4 2E */	lfsx f0, r3, r28
/* 8018D1C0  D0 04 01 18 */	stfs f0, 0x118(r4)
/* 8018D1C4  80 7B 02 0C */	lwz r3, 0x20c(r27)
/* 8018D1C8  80 83 00 04 */	lwz r4, 4(r3)
/* 8018D1CC  38 6D 81 60 */	la r3, charspace(r13) /* 804506E0-_SDA_BASE_ */
/* 8018D1D0  7C 03 E4 2E */	lfsx f0, r3, r28
/* 8018D1D4  D0 04 01 14 */	stfs f0, 0x114(r4)
/* 8018D1D8  80 7B 02 0C */	lwz r3, 0x20c(r27)
/* 8018D1DC  80 A3 00 04 */	lwz r5, 4(r3)
/* 8018D1E0  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 8018D1E4  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 8018D1E8  38 C0 00 00 */	li r6, 0
/* 8018D1EC  80 FA 00 18 */	lwz r7, 0x18(r26)
/* 8018D1F0  39 00 00 00 */	li r8, 0
/* 8018D1F4  39 20 00 00 */	li r9, 0
/* 8018D1F8  81 83 00 00 */	lwz r12, 0(r3)
/* 8018D1FC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8018D200  7D 89 03 A6 */	mtctr r12
/* 8018D204  4E 80 04 21 */	bctrl 
lbl_8018D208:
/* 8018D208  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8018D20C  40 82 00 38 */	bne lbl_8018D244
/* 8018D210  38 80 00 00 */	li r4, 0
/* 8018D214  88 1D 02 1C */	lbz r0, 0x21c(r29)
/* 8018D218  54 00 10 3A */	slwi r0, r0, 2
/* 8018D21C  7C 7D 02 14 */	add r3, r29, r0
/* 8018D220  80 63 02 0C */	lwz r3, 0x20c(r3)
/* 8018D224  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8018D228  88 1D 02 1C */	lbz r0, 0x21c(r29)
/* 8018D22C  68 00 00 01 */	xori r0, r0, 1
/* 8018D230  54 00 10 3A */	slwi r0, r0, 2
/* 8018D234  7C 7D 02 14 */	add r3, r29, r0
/* 8018D238  80 63 02 0C */	lwz r3, 0x20c(r3)
/* 8018D23C  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8018D240  98 9D 02 1D */	stb r4, 0x21d(r29)
lbl_8018D244:
/* 8018D244  39 61 00 20 */	addi r11, r1, 0x20
/* 8018D248  48 1D 4F D5 */	bl _restgpr_26
/* 8018D24C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018D250  7C 08 03 A6 */	mtlr r0
/* 8018D254  38 21 00 20 */	addi r1, r1, 0x20
/* 8018D258  4E 80 00 20 */	blr 
