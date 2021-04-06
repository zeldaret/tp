lbl_802D8474:
/* 802D8474  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802D8478  7C 08 02 A6 */	mflr r0
/* 802D847C  90 01 00 74 */	stw r0, 0x74(r1)
/* 802D8480  39 61 00 70 */	addi r11, r1, 0x70
/* 802D8484  48 08 9D 49 */	bl _savegpr_25
/* 802D8488  7C 7D 1B 78 */	mr r29, r3
/* 802D848C  7C 9E 23 78 */	mr r30, r4
/* 802D8490  7C B9 2B 78 */	mr r25, r5
/* 802D8494  7C DA 33 78 */	mr r26, r6
/* 802D8498  7D 3F 4B 78 */	mr r31, r9
/* 802D849C  38 19 00 1F */	addi r0, r25, 0x1f
/* 802D84A0  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 802D84A4  2C 08 00 01 */	cmpwi r8, 1
/* 802D84A8  41 82 01 9C */	beq lbl_802D8644
/* 802D84AC  40 80 00 10 */	bge lbl_802D84BC
/* 802D84B0  2C 08 00 00 */	cmpwi r8, 0
/* 802D84B4  40 80 00 14 */	bge lbl_802D84C8
/* 802D84B8  48 00 01 A8 */	b lbl_802D8660
lbl_802D84BC:
/* 802D84BC  2C 08 00 03 */	cmpwi r8, 3
/* 802D84C0  40 80 01 A0 */	bge lbl_802D8660
/* 802D84C4  48 00 01 28 */	b lbl_802D85EC
lbl_802D84C8:
/* 802D84C8  2C 07 00 00 */	cmpwi r7, 0
/* 802D84CC  41 82 00 14 */	beq lbl_802D84E0
/* 802D84D0  41 80 01 1C */	blt lbl_802D85EC
/* 802D84D4  2C 07 00 03 */	cmpwi r7, 3
/* 802D84D8  40 80 01 14 */	bge lbl_802D85EC
/* 802D84DC  48 00 00 5C */	b lbl_802D8538
lbl_802D84E0:
/* 802D84E0  7F 63 DB 78 */	mr r3, r27
/* 802D84E4  38 80 00 20 */	li r4, 0x20
/* 802D84E8  7F 45 D3 78 */	mr r5, r26
/* 802D84EC  4B FF 5F 89 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D84F0  7C 7C 1B 78 */	mr r28, r3
/* 802D84F4  38 00 00 00 */	li r0, 0
/* 802D84F8  90 01 00 08 */	stw r0, 8(r1)
/* 802D84FC  7F A3 EB 78 */	mr r3, r29
/* 802D8500  7F 84 E3 78 */	mr r4, r28
/* 802D8504  38 A0 00 00 */	li r5, 0
/* 802D8508  7F 66 DB 78 */	mr r6, r27
/* 802D850C  38 E0 00 00 */	li r7, 0
/* 802D8510  39 00 00 01 */	li r8, 1
/* 802D8514  7F C9 F3 78 */	mr r9, r30
/* 802D8518  39 40 00 00 */	li r10, 0
/* 802D851C  48 00 17 39 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D8520  7F 83 E3 78 */	mr r3, r28
/* 802D8524  7F 64 DB 78 */	mr r4, r27
/* 802D8528  48 06 30 59 */	bl DCInvalidateRange
/* 802D852C  93 9F 00 00 */	stw r28, 0(r31)
/* 802D8530  7F 63 DB 78 */	mr r3, r27
/* 802D8534  48 00 01 4C */	b lbl_802D8680
lbl_802D8538:
/* 802D8538  38 01 00 2F */	addi r0, r1, 0x2f
/* 802D853C  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 802D8540  38 00 00 00 */	li r0, 0
/* 802D8544  90 01 00 08 */	stw r0, 8(r1)
/* 802D8548  7F 64 DB 78 */	mr r4, r27
/* 802D854C  38 A0 00 02 */	li r5, 2
/* 802D8550  38 C0 00 20 */	li r6, 0x20
/* 802D8554  38 E0 00 00 */	li r7, 0
/* 802D8558  39 00 00 01 */	li r8, 1
/* 802D855C  7F C9 F3 78 */	mr r9, r30
/* 802D8560  39 40 00 00 */	li r10, 0
/* 802D8564  48 00 16 F1 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D8568  7F 63 DB 78 */	mr r3, r27
/* 802D856C  38 80 00 20 */	li r4, 0x20
/* 802D8570  48 06 30 11 */	bl DCInvalidateRange
/* 802D8574  88 BB 00 07 */	lbz r5, 7(r27)
/* 802D8578  88 9B 00 06 */	lbz r4, 6(r27)
/* 802D857C  88 7B 00 04 */	lbz r3, 4(r27)
/* 802D8580  88 1B 00 05 */	lbz r0, 5(r27)
/* 802D8584  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D8588  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D858C  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D8590  7C BC 03 78 */	or r28, r5, r0
/* 802D8594  7F 83 E3 78 */	mr r3, r28
/* 802D8598  38 80 00 20 */	li r4, 0x20
/* 802D859C  7F 45 D3 78 */	mr r5, r26
/* 802D85A0  4B FF 5E D5 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D85A4  7C 7B 1B 78 */	mr r27, r3
/* 802D85A8  38 00 00 00 */	li r0, 0
/* 802D85AC  90 01 00 08 */	stw r0, 8(r1)
/* 802D85B0  7F A3 EB 78 */	mr r3, r29
/* 802D85B4  7F 64 DB 78 */	mr r4, r27
/* 802D85B8  38 A0 00 01 */	li r5, 1
/* 802D85BC  7F 86 E3 78 */	mr r6, r28
/* 802D85C0  38 E0 00 00 */	li r7, 0
/* 802D85C4  39 00 00 01 */	li r8, 1
/* 802D85C8  7F C9 F3 78 */	mr r9, r30
/* 802D85CC  39 40 00 00 */	li r10, 0
/* 802D85D0  48 00 16 85 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D85D4  7F 63 DB 78 */	mr r3, r27
/* 802D85D8  7F 84 E3 78 */	mr r4, r28
/* 802D85DC  48 06 2F A5 */	bl DCInvalidateRange
/* 802D85E0  93 7F 00 00 */	stw r27, 0(r31)
/* 802D85E4  7F 83 E3 78 */	mr r3, r28
/* 802D85E8  48 00 00 98 */	b lbl_802D8680
lbl_802D85EC:
/* 802D85EC  7F 63 DB 78 */	mr r3, r27
/* 802D85F0  38 80 00 20 */	li r4, 0x20
/* 802D85F4  7F 45 D3 78 */	mr r5, r26
/* 802D85F8  4B FF 5E 7D */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D85FC  7C 7C 1B 78 */	mr r28, r3
/* 802D8600  38 00 00 00 */	li r0, 0
/* 802D8604  90 01 00 08 */	stw r0, 8(r1)
/* 802D8608  7F A3 EB 78 */	mr r3, r29
/* 802D860C  7F 84 E3 78 */	mr r4, r28
/* 802D8610  38 A0 00 01 */	li r5, 1
/* 802D8614  7F 26 CB 78 */	mr r6, r25
/* 802D8618  38 E0 00 00 */	li r7, 0
/* 802D861C  39 00 00 01 */	li r8, 1
/* 802D8620  7F C9 F3 78 */	mr r9, r30
/* 802D8624  39 40 00 00 */	li r10, 0
/* 802D8628  48 00 16 2D */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D862C  7F 83 E3 78 */	mr r3, r28
/* 802D8630  7F 24 CB 78 */	mr r4, r25
/* 802D8634  48 06 2F 4D */	bl DCInvalidateRange
/* 802D8638  93 9F 00 00 */	stw r28, 0(r31)
/* 802D863C  7F 63 DB 78 */	mr r3, r27
/* 802D8640  48 00 00 40 */	b lbl_802D8680
lbl_802D8644:
/* 802D8644  3C 60 80 3A */	lis r3, JKRDvdArchive__stringBase0@ha /* 0x8039D1B0@ha */
/* 802D8648  38 63 D1 B0 */	addi r3, r3, JKRDvdArchive__stringBase0@l /* 0x8039D1B0@l */
/* 802D864C  38 80 02 F2 */	li r4, 0x2f2
/* 802D8650  38 A3 00 12 */	addi r5, r3, 0x12
/* 802D8654  38 C3 00 4C */	addi r6, r3, 0x4c
/* 802D8658  4C C6 31 82 */	crclr 6
/* 802D865C  48 00 9B A1 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802D8660:
/* 802D8660  3C 60 80 3A */	lis r3, JKRDvdArchive__stringBase0@ha /* 0x8039D1B0@ha */
/* 802D8664  38 63 D1 B0 */	addi r3, r3, JKRDvdArchive__stringBase0@l /* 0x8039D1B0@l */
/* 802D8668  38 80 02 F6 */	li r4, 0x2f6
/* 802D866C  38 A3 00 12 */	addi r5, r3, 0x12
/* 802D8670  38 C3 00 3A */	addi r6, r3, 0x3a
/* 802D8674  4C C6 31 82 */	crclr 6
/* 802D8678  48 00 9B 85 */	bl panic_f__12JUTExceptionFPCciPCce
/* 802D867C  38 60 00 00 */	li r3, 0
lbl_802D8680:
/* 802D8680  39 61 00 70 */	addi r11, r1, 0x70
/* 802D8684  48 08 9B 95 */	bl _restgpr_25
/* 802D8688  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802D868C  7C 08 03 A6 */	mtlr r0
/* 802D8690  38 21 00 70 */	addi r1, r1, 0x70
/* 802D8694  4E 80 00 20 */	blr 
