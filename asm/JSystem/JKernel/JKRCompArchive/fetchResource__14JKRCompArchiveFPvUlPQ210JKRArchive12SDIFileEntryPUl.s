lbl_802D90C0:
/* 802D90C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D90C4  7C 08 02 A6 */	mflr r0
/* 802D90C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D90CC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D90D0  48 08 91 01 */	bl _savegpr_26
/* 802D90D4  7C 69 1B 78 */	mr r9, r3
/* 802D90D8  7C 9C 23 78 */	mr r28, r4
/* 802D90DC  7C BD 2B 78 */	mr r29, r5
/* 802D90E0  7C DE 33 78 */	mr r30, r6
/* 802D90E4  7C FF 3B 78 */	mr r31, r7
/* 802D90E8  3B 60 00 00 */	li r27, 0
/* 802D90EC  83 46 00 0C */	lwz r26, 0xc(r6)
/* 802D90F0  38 1A 00 1F */	addi r0, r26, 0x1f
/* 802D90F4  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 802D90F8  80 06 00 04 */	lwz r0, 4(r6)
/* 802D90FC  54 03 46 3E */	srwi r3, r0, 0x18
/* 802D9100  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 802D9104  40 82 00 0C */	bne lbl_802D9110
/* 802D9108  39 00 00 00 */	li r8, 0
/* 802D910C  48 00 00 18 */	b lbl_802D9124
lbl_802D9110:
/* 802D9110  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 802D9114  41 82 00 0C */	beq lbl_802D9120
/* 802D9118  39 00 00 02 */	li r8, 2
/* 802D911C  48 00 00 08 */	b lbl_802D9124
lbl_802D9120:
/* 802D9120  39 00 00 01 */	li r8, 1
lbl_802D9124:
/* 802D9124  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 802D9128  28 00 00 00 */	cmplwi r0, 0
/* 802D912C  41 82 00 54 */	beq lbl_802D9180
/* 802D9130  2C 08 00 02 */	cmpwi r8, 2
/* 802D9134  40 82 00 28 */	bne lbl_802D915C
/* 802D9138  7D 23 4B 78 */	mr r3, r9
/* 802D913C  7F C4 F3 78 */	mr r4, r30
/* 802D9140  81 89 00 00 */	lwz r12, 0(r9)
/* 802D9144  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802D9148  7D 89 03 A6 */	mtctr r12
/* 802D914C  4E 80 04 21 */	bctrl 
/* 802D9150  28 03 00 00 */	cmplwi r3, 0
/* 802D9154  41 82 00 08 */	beq lbl_802D915C
/* 802D9158  7C 7A 1B 78 */	mr r26, r3
lbl_802D915C:
/* 802D915C  7C 1A E8 40 */	cmplw r26, r29
/* 802D9160  40 81 00 08 */	ble lbl_802D9168
/* 802D9164  7F BA EB 78 */	mr r26, r29
lbl_802D9168:
/* 802D9168  7F 83 E3 78 */	mr r3, r28
/* 802D916C  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 802D9170  7F 45 D3 78 */	mr r5, r26
/* 802D9174  4B FF 59 A5 */	bl copyMemory__7JKRHeapFPvPvUl
/* 802D9178  7F 5B D3 78 */	mr r27, r26
/* 802D917C  48 00 00 BC */	b lbl_802D9238
lbl_802D9180:
/* 802D9180  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 802D9184  41 82 00 2C */	beq lbl_802D91B0
/* 802D9188  80 69 00 64 */	lwz r3, 0x64(r9)
/* 802D918C  80 1E 00 08 */	lwz r0, 8(r30)
/* 802D9190  7C 63 02 14 */	add r3, r3, r0
/* 802D9194  7C A4 2B 78 */	mr r4, r5
/* 802D9198  7F 85 E3 78 */	mr r5, r28
/* 802D919C  57 A6 00 34 */	rlwinm r6, r29, 0, 0, 0x1a
/* 802D91A0  7D 07 43 78 */	mr r7, r8
/* 802D91A4  4B FF DD B9 */	bl fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli
/* 802D91A8  7C 7B 1B 78 */	mr r27, r3
/* 802D91AC  48 00 00 8C */	b lbl_802D9238
lbl_802D91B0:
/* 802D91B0  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 802D91B4  41 82 00 38 */	beq lbl_802D91EC
/* 802D91B8  80 69 00 68 */	lwz r3, 0x68(r9)
/* 802D91BC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 802D91C0  80 69 00 74 */	lwz r3, 0x74(r9)
/* 802D91C4  80 1E 00 08 */	lwz r0, 8(r30)
/* 802D91C8  7C 00 22 14 */	add r0, r0, r4
/* 802D91CC  7C 63 00 50 */	subf r3, r3, r0
/* 802D91D0  7C A4 2B 78 */	mr r4, r5
/* 802D91D4  7F 85 E3 78 */	mr r5, r28
/* 802D91D8  57 A6 00 34 */	rlwinm r6, r29, 0, 0, 0x1a
/* 802D91DC  7D 07 43 78 */	mr r7, r8
/* 802D91E0  4B FF E6 79 */	bl fetchResource_subroutine__14JKRAramArchiveFUlUlPUcUli
/* 802D91E4  7C 7B 1B 78 */	mr r27, r3
/* 802D91E8  48 00 00 50 */	b lbl_802D9238
lbl_802D91EC:
/* 802D91EC  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 802D91F0  41 82 00 2C */	beq lbl_802D921C
/* 802D91F4  80 69 00 40 */	lwz r3, 0x40(r9)
/* 802D91F8  80 89 00 6C */	lwz r4, 0x6c(r9)
/* 802D91FC  80 1E 00 08 */	lwz r0, 8(r30)
/* 802D9200  7C 84 02 14 */	add r4, r4, r0
/* 802D9204  7F 86 E3 78 */	mr r6, r28
/* 802D9208  57 A7 00 34 */	rlwinm r7, r29, 0, 0, 0x1a
/* 802D920C  81 29 00 5C */	lwz r9, 0x5c(r9)
/* 802D9210  4B FF F0 5D */	bl fetchResource_subroutine__13JKRDvdArchiveFlUlUlPUcUlii
/* 802D9214  7C 7B 1B 78 */	mr r27, r3
/* 802D9218  48 00 00 20 */	b lbl_802D9238
lbl_802D921C:
/* 802D921C  3C 60 80 3A */	lis r3, JKRCompArchive__stringBase0@ha /* 0x8039D220@ha */
/* 802D9220  38 63 D2 20 */	addi r3, r3, JKRCompArchive__stringBase0@l /* 0x8039D220@l */
/* 802D9224  38 80 03 08 */	li r4, 0x308
/* 802D9228  38 A3 00 13 */	addi r5, r3, 0x13
/* 802D922C  38 C3 00 16 */	addi r6, r3, 0x16
/* 802D9230  4C C6 31 82 */	crclr 6
/* 802D9234  48 00 8F C9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802D9238:
/* 802D9238  28 1F 00 00 */	cmplwi r31, 0
/* 802D923C  41 82 00 08 */	beq lbl_802D9244
/* 802D9240  93 7F 00 00 */	stw r27, 0(r31)
lbl_802D9244:
/* 802D9244  7F 83 E3 78 */	mr r3, r28
/* 802D9248  39 61 00 20 */	addi r11, r1, 0x20
/* 802D924C  48 08 8F D1 */	bl _restgpr_26
/* 802D9250  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D9254  7C 08 03 A6 */	mtlr r0
/* 802D9258  38 21 00 20 */	addi r1, r1, 0x20
/* 802D925C  4E 80 00 20 */	blr 
