lbl_802CF234:
/* 802CF234  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CF238  7C 08 02 A6 */	mflr r0
/* 802CF23C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802CF240  39 61 00 30 */	addi r11, r1, 0x30
/* 802CF244  48 09 2F 89 */	bl _savegpr_25
/* 802CF248  7C 7D 1B 78 */	mr r29, r3
/* 802CF24C  38 04 00 03 */	addi r0, r4, 3
/* 802CF250  54 1E 00 3A */	rlwinm r30, r0, 0, 0, 0x1d
/* 802CF254  38 C0 FF FF */	li r6, -1
/* 802CF258  3B 60 00 00 */	li r27, 0
/* 802CF25C  3B E0 00 00 */	li r31, 0
/* 802CF260  80 E3 00 78 */	lwz r7, 0x78(r3)
/* 802CF264  38 65 FF FF */	addi r3, r5, -1
/* 802CF268  7C 64 18 F8 */	nor r4, r3, r3
/* 802CF26C  48 00 00 50 */	b lbl_802CF2BC
lbl_802CF270:
/* 802CF270  38 A7 00 10 */	addi r5, r7, 0x10
/* 802CF274  7C 03 2A 14 */	add r0, r3, r5
/* 802CF278  7C 80 00 38 */	and r0, r4, r0
/* 802CF27C  7D 05 00 50 */	subf r8, r5, r0
/* 802CF280  80 A7 00 04 */	lwz r5, 4(r7)
/* 802CF284  7C 1E 42 14 */	add r0, r30, r8
/* 802CF288  7C 05 00 40 */	cmplw r5, r0
/* 802CF28C  41 80 00 2C */	blt lbl_802CF2B8
/* 802CF290  7C 06 28 40 */	cmplw r6, r5
/* 802CF294  40 81 00 24 */	ble lbl_802CF2B8
/* 802CF298  7C A6 2B 78 */	mr r6, r5
/* 802CF29C  7C FF 3B 78 */	mr r31, r7
/* 802CF2A0  7D 1B 43 78 */	mr r27, r8
/* 802CF2A4  88 1D 00 6C */	lbz r0, 0x6c(r29)
/* 802CF2A8  28 00 00 00 */	cmplwi r0, 0
/* 802CF2AC  40 82 00 18 */	bne lbl_802CF2C4
/* 802CF2B0  7C 05 F0 40 */	cmplw r5, r30
/* 802CF2B4  41 82 00 10 */	beq lbl_802CF2C4
lbl_802CF2B8:
/* 802CF2B8  80 E7 00 0C */	lwz r7, 0xc(r7)
lbl_802CF2BC:
/* 802CF2BC  28 07 00 00 */	cmplwi r7, 0
/* 802CF2C0  40 82 FF B0 */	bne lbl_802CF270
lbl_802CF2C4:
/* 802CF2C4  90 CD 8E 18 */	stw r6, DBfoundSize(r13)
/* 802CF2C8  93 6D 8E 1C */	stw r27, DBfoundOffset(r13)
/* 802CF2CC  93 ED 8E 20 */	stw r31, DBfoundBlock(r13)
/* 802CF2D0  28 1F 00 00 */	cmplwi r31, 0
/* 802CF2D4  41 82 01 A0 */	beq lbl_802CF474
/* 802CF2D8  28 1B 00 10 */	cmplwi r27, 0x10
/* 802CF2DC  41 80 00 C0 */	blt lbl_802CF39C
/* 802CF2E0  83 5F 00 08 */	lwz r26, 8(r31)
/* 802CF2E4  83 3F 00 0C */	lwz r25, 0xc(r31)
/* 802CF2E8  7F E3 FB 78 */	mr r3, r31
/* 802CF2EC  38 9B FF F0 */	addi r4, r27, -16
/* 802CF2F0  38 A0 00 00 */	li r5, 0
/* 802CF2F4  38 C0 00 00 */	li r6, 0
/* 802CF2F8  38 E0 00 00 */	li r7, 0
/* 802CF2FC  39 00 00 00 */	li r8, 0
/* 802CF300  48 00 15 31 */	bl allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
/* 802CF304  7C 7C 1B 79 */	or. r28, r3, r3
/* 802CF308  41 82 00 24 */	beq lbl_802CF32C
/* 802CF30C  7F C4 F3 78 */	mr r4, r30
/* 802CF310  88 BD 00 6D */	lbz r5, 0x6d(r29)
/* 802CF314  38 C0 00 00 */	li r6, 0
/* 802CF318  38 E0 00 00 */	li r7, 0
/* 802CF31C  39 00 00 00 */	li r8, 0
/* 802CF320  48 00 15 11 */	bl allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
/* 802CF324  7C 66 1B 78 */	mr r6, r3
/* 802CF328  48 00 00 08 */	b lbl_802CF330
lbl_802CF32C:
/* 802CF32C  38 C0 00 00 */	li r6, 0
lbl_802CF330:
/* 802CF330  7C DB 33 78 */	mr r27, r6
/* 802CF334  28 06 00 00 */	cmplwi r6, 0
/* 802CF338  41 82 00 18 */	beq lbl_802CF350
/* 802CF33C  7F A3 EB 78 */	mr r3, r29
/* 802CF340  7F E4 FB 78 */	mr r4, r31
/* 802CF344  7F 45 D3 78 */	mr r5, r26
/* 802CF348  48 00 0B 21 */	bl setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
/* 802CF34C  48 00 00 18 */	b lbl_802CF364
lbl_802CF350:
/* 802CF350  7F A3 EB 78 */	mr r3, r29
/* 802CF354  7F E4 FB 78 */	mr r4, r31
/* 802CF358  7F 45 D3 78 */	mr r5, r26
/* 802CF35C  7F 26 CB 78 */	mr r6, r25
/* 802CF360  48 00 0B 09 */	bl setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
lbl_802CF364:
/* 802CF364  28 1B 00 00 */	cmplwi r27, 0
/* 802CF368  41 82 00 18 */	beq lbl_802CF380
/* 802CF36C  7F A3 EB 78 */	mr r3, r29
/* 802CF370  7F 64 DB 78 */	mr r4, r27
/* 802CF374  7F E5 FB 78 */	mr r5, r31
/* 802CF378  7F 26 CB 78 */	mr r6, r25
/* 802CF37C  48 00 0A ED */	bl setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
lbl_802CF380:
/* 802CF380  7F A3 EB 78 */	mr r3, r29
/* 802CF384  7F 84 E3 78 */	mr r4, r28
/* 802CF388  48 00 0A 45 */	bl appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
/* 802CF38C  93 6D 8E 24 */	stw r27, DBnewFreeBlock(r13)
/* 802CF390  93 8D 8E 28 */	stw r28, DBnewUsedBlock(r13)
/* 802CF394  38 7C 00 10 */	addi r3, r28, 0x10
/* 802CF398  48 00 00 E0 */	b lbl_802CF478
lbl_802CF39C:
/* 802CF39C  28 1B 00 00 */	cmplwi r27, 0
/* 802CF3A0  41 82 00 70 */	beq lbl_802CF410
/* 802CF3A4  83 3F 00 08 */	lwz r25, 8(r31)
/* 802CF3A8  83 5F 00 0C */	lwz r26, 0xc(r31)
/* 802CF3AC  7F A3 EB 78 */	mr r3, r29
/* 802CF3B0  7F E4 FB 78 */	mr r4, r31
/* 802CF3B4  48 00 0B 01 */	bl removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
/* 802CF3B8  7F 9F DA 14 */	add r28, r31, r27
/* 802CF3BC  80 1F 00 04 */	lwz r0, 4(r31)
/* 802CF3C0  7C 1B 00 50 */	subf r0, r27, r0
/* 802CF3C4  90 1C 00 04 */	stw r0, 4(r28)
/* 802CF3C8  7F 83 E3 78 */	mr r3, r28
/* 802CF3CC  7F C4 F3 78 */	mr r4, r30
/* 802CF3D0  88 BD 00 6D */	lbz r5, 0x6d(r29)
/* 802CF3D4  57 66 06 3E */	clrlwi r6, r27, 0x18
/* 802CF3D8  38 E0 00 00 */	li r7, 0
/* 802CF3DC  39 00 00 00 */	li r8, 0
/* 802CF3E0  48 00 14 51 */	bl allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
/* 802CF3E4  7C 64 1B 79 */	or. r4, r3, r3
/* 802CF3E8  41 82 00 14 */	beq lbl_802CF3FC
/* 802CF3EC  7F A3 EB 78 */	mr r3, r29
/* 802CF3F0  7F 25 CB 78 */	mr r5, r25
/* 802CF3F4  7F 46 D3 78 */	mr r6, r26
/* 802CF3F8  48 00 0A 71 */	bl setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
lbl_802CF3FC:
/* 802CF3FC  7F A3 EB 78 */	mr r3, r29
/* 802CF400  7F 84 E3 78 */	mr r4, r28
/* 802CF404  48 00 09 C9 */	bl appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
/* 802CF408  38 7C 00 10 */	addi r3, r28, 0x10
/* 802CF40C  48 00 00 6C */	b lbl_802CF478
lbl_802CF410:
/* 802CF410  83 3F 00 08 */	lwz r25, 8(r31)
/* 802CF414  83 5F 00 0C */	lwz r26, 0xc(r31)
/* 802CF418  7F E3 FB 78 */	mr r3, r31
/* 802CF41C  7F C4 F3 78 */	mr r4, r30
/* 802CF420  88 BD 00 6D */	lbz r5, 0x6d(r29)
/* 802CF424  38 C0 00 00 */	li r6, 0
/* 802CF428  38 E0 00 00 */	li r7, 0
/* 802CF42C  39 00 00 00 */	li r8, 0
/* 802CF430  48 00 14 01 */	bl allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
/* 802CF434  7C 7E 1B 78 */	mr r30, r3
/* 802CF438  7F A3 EB 78 */	mr r3, r29
/* 802CF43C  7F E4 FB 78 */	mr r4, r31
/* 802CF440  48 00 0A 75 */	bl removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
/* 802CF444  28 1E 00 00 */	cmplwi r30, 0
/* 802CF448  41 82 00 18 */	beq lbl_802CF460
/* 802CF44C  7F A3 EB 78 */	mr r3, r29
/* 802CF450  7F C4 F3 78 */	mr r4, r30
/* 802CF454  7F 25 CB 78 */	mr r5, r25
/* 802CF458  7F 46 D3 78 */	mr r6, r26
/* 802CF45C  48 00 0A 0D */	bl setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
lbl_802CF460:
/* 802CF460  7F A3 EB 78 */	mr r3, r29
/* 802CF464  7F E4 FB 78 */	mr r4, r31
/* 802CF468  48 00 09 65 */	bl appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
/* 802CF46C  38 7F 00 10 */	addi r3, r31, 0x10
/* 802CF470  48 00 00 08 */	b lbl_802CF478
lbl_802CF474:
/* 802CF474  38 60 00 00 */	li r3, 0
lbl_802CF478:
/* 802CF478  39 61 00 30 */	addi r11, r1, 0x30
/* 802CF47C  48 09 2D 9D */	bl _restgpr_25
/* 802CF480  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CF484  7C 08 03 A6 */	mtlr r0
/* 802CF488  38 21 00 30 */	addi r1, r1, 0x30
/* 802CF48C  4E 80 00 20 */	blr 
