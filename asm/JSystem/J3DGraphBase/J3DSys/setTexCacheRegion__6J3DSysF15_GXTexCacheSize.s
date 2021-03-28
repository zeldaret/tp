lbl_8030FF0C:
/* 8030FF0C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8030FF10  7C 08 02 A6 */	mflr r0
/* 8030FF14  90 01 00 54 */	stw r0, 0x54(r1)
/* 8030FF18  39 61 00 50 */	addi r11, r1, 0x50
/* 8030FF1C  48 05 22 B1 */	bl _savegpr_25
/* 8030FF20  7C 7C 1B 78 */	mr r28, r3
/* 8030FF24  7C 9D 23 78 */	mr r29, r4
/* 8030FF28  3C 60 80 3A */	lis r3, lit_695@ha
/* 8030FF2C  38 83 1D F8 */	addi r4, r3, lit_695@l
/* 8030FF30  80 64 00 00 */	lwz r3, 0(r4)
/* 8030FF34  80 04 00 04 */	lwz r0, 4(r4)
/* 8030FF38  90 61 00 18 */	stw r3, 0x18(r1)
/* 8030FF3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8030FF40  80 64 00 08 */	lwz r3, 8(r4)
/* 8030FF44  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8030FF48  90 61 00 20 */	stw r3, 0x20(r1)
/* 8030FF4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030FF50  3C 60 80 3A */	lis r3, lit_696@ha
/* 8030FF54  38 83 1E 08 */	addi r4, r3, lit_696@l
/* 8030FF58  80 64 00 00 */	lwz r3, 0(r4)
/* 8030FF5C  80 04 00 04 */	lwz r0, 4(r4)
/* 8030FF60  90 61 00 08 */	stw r3, 8(r1)
/* 8030FF64  90 01 00 0C */	stw r0, 0xc(r1)
/* 8030FF68  80 64 00 08 */	lwz r3, 8(r4)
/* 8030FF6C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8030FF70  90 61 00 10 */	stw r3, 0x10(r1)
/* 8030FF74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030FF78  57 BF 10 3A */	slwi r31, r29, 2
/* 8030FF7C  38 61 00 08 */	addi r3, r1, 8
/* 8030FF80  7F C3 F8 2E */	lwzx r30, r3, r31
/* 8030FF84  93 DC 00 60 */	stw r30, 0x60(r28)
/* 8030FF88  80 1C 00 34 */	lwz r0, 0x34(r28)
/* 8030FF8C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8030FF90  41 82 00 B4 */	beq lbl_80310044
/* 8030FF94  3B 20 00 00 */	li r25, 0
/* 8030FF98  3B 60 00 00 */	li r27, 0
/* 8030FF9C  3B 41 00 18 */	addi r26, r1, 0x18
/* 8030FFA0  48 00 00 98 */	b lbl_80310038
lbl_8030FFA4:
/* 8030FFA4  57 20 07 FF */	clrlwi. r0, r25, 0x1f
/* 8030FFA8  41 82 00 48 */	beq lbl_8030FFF0
/* 8030FFAC  7C 1A F8 2E */	lwzx r0, r26, r31
/* 8030FFB0  7C F9 01 D6 */	mullw r7, r25, r0
/* 8030FFB4  38 7B 00 64 */	addi r3, r27, 0x64
/* 8030FFB8  7C 7C 1A 14 */	add r3, r28, r3
/* 8030FFBC  38 80 00 00 */	li r4, 0
/* 8030FFC0  3C A7 00 08 */	addis r5, r7, 8
/* 8030FFC4  7F A6 EB 78 */	mr r6, r29
/* 8030FFC8  7F A8 EB 78 */	mr r8, r29
/* 8030FFCC  48 04 E5 6D */	bl GXInitTexCacheRegion
/* 8030FFD0  7C 1A F8 2E */	lwzx r0, r26, r31
/* 8030FFD4  7C D9 01 D6 */	mullw r6, r25, r0
/* 8030FFD8  7F 23 CB 78 */	mr r3, r25
/* 8030FFDC  3C 86 00 08 */	addis r4, r6, 8
/* 8030FFE0  7F A5 EB 78 */	mr r5, r29
/* 8030FFE4  7F A7 EB 78 */	mr r7, r29
/* 8030FFE8  4B FF FD 81 */	bl J3DFifoLoadTexCached__F11_GXTexMapIDUl15_GXTexCacheSizeUl15_GXTexCacheSize
/* 8030FFEC  48 00 00 44 */	b lbl_80310030
lbl_8030FFF0:
/* 8030FFF0  7C 1A F8 2E */	lwzx r0, r26, r31
/* 8030FFF4  7C B9 01 D6 */	mullw r5, r25, r0
/* 8030FFF8  38 7B 00 64 */	addi r3, r27, 0x64
/* 8030FFFC  7C 7C 1A 14 */	add r3, r28, r3
/* 80310000  38 80 00 00 */	li r4, 0
/* 80310004  7F A6 EB 78 */	mr r6, r29
/* 80310008  3C E5 00 08 */	addis r7, r5, 8
/* 8031000C  7F A8 EB 78 */	mr r8, r29
/* 80310010  48 04 E5 29 */	bl GXInitTexCacheRegion
/* 80310014  7C 1A F8 2E */	lwzx r0, r26, r31
/* 80310018  7C 99 01 D6 */	mullw r4, r25, r0
/* 8031001C  7F 23 CB 78 */	mr r3, r25
/* 80310020  7F A5 EB 78 */	mr r5, r29
/* 80310024  3C C4 00 08 */	addis r6, r4, 8
/* 80310028  7F A7 EB 78 */	mr r7, r29
/* 8031002C  4B FF FD 3D */	bl J3DFifoLoadTexCached__F11_GXTexMapIDUl15_GXTexCacheSizeUl15_GXTexCacheSize
lbl_80310030:
/* 80310030  3B 39 00 01 */	addi r25, r25, 1
/* 80310034  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_80310038:
/* 80310038  7C 19 F0 40 */	cmplw r25, r30
/* 8031003C  41 80 FF 68 */	blt lbl_8030FFA4
/* 80310040  48 00 00 64 */	b lbl_803100A4
lbl_80310044:
/* 80310044  3B 20 00 00 */	li r25, 0
/* 80310048  3B 60 00 00 */	li r27, 0
/* 8031004C  3B 41 00 18 */	addi r26, r1, 0x18
/* 80310050  48 00 00 4C */	b lbl_8031009C
lbl_80310054:
/* 80310054  7C 1A F8 2E */	lwzx r0, r26, r31
/* 80310058  7C B9 01 D6 */	mullw r5, r25, r0
/* 8031005C  38 7B 00 64 */	addi r3, r27, 0x64
/* 80310060  7C 7C 1A 14 */	add r3, r28, r3
/* 80310064  38 80 00 00 */	li r4, 0
/* 80310068  7F A6 EB 78 */	mr r6, r29
/* 8031006C  3C E5 00 08 */	addis r7, r5, 8
/* 80310070  7F A8 EB 78 */	mr r8, r29
/* 80310074  48 04 E4 C5 */	bl GXInitTexCacheRegion
/* 80310078  7C 1A F8 2E */	lwzx r0, r26, r31
/* 8031007C  7C 99 01 D6 */	mullw r4, r25, r0
/* 80310080  7F 23 CB 78 */	mr r3, r25
/* 80310084  7F A5 EB 78 */	mr r5, r29
/* 80310088  3C C4 00 08 */	addis r6, r4, 8
/* 8031008C  7F A7 EB 78 */	mr r7, r29
/* 80310090  4B FF FC D9 */	bl J3DFifoLoadTexCached__F11_GXTexMapIDUl15_GXTexCacheSizeUl15_GXTexCacheSize
/* 80310094  3B 39 00 01 */	addi r25, r25, 1
/* 80310098  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_8031009C:
/* 8031009C  7C 19 F0 40 */	cmplw r25, r30
/* 803100A0  41 80 FF B4 */	blt lbl_80310054
lbl_803100A4:
/* 803100A4  39 61 00 50 */	addi r11, r1, 0x50
/* 803100A8  48 05 21 71 */	bl _restgpr_25
/* 803100AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803100B0  7C 08 03 A6 */	mtlr r0
/* 803100B4  38 21 00 50 */	addi r1, r1, 0x50
/* 803100B8  4E 80 00 20 */	blr 
