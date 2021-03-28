lbl_802D7914:
/* 802D7914  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802D7918  7C 08 02 A6 */	mflr r0
/* 802D791C  90 01 00 74 */	stw r0, 0x74(r1)
/* 802D7920  39 61 00 70 */	addi r11, r1, 0x70
/* 802D7924  48 08 A8 AD */	bl _savegpr_26
/* 802D7928  7C 7C 1B 78 */	mr r28, r3
/* 802D792C  7C 9A 23 78 */	mr r26, r4
/* 802D7930  7C BD 2B 78 */	mr r29, r5
/* 802D7934  7C FE 3B 78 */	mr r30, r7
/* 802D7938  38 1A 00 1F */	addi r0, r26, 0x1f
/* 802D793C  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 802D7940  2C 06 00 00 */	cmpwi r6, 0
/* 802D7944  41 82 00 14 */	beq lbl_802D7958
/* 802D7948  41 80 00 E4 */	blt lbl_802D7A2C
/* 802D794C  2C 06 00 03 */	cmpwi r6, 3
/* 802D7950  40 80 00 DC */	bge lbl_802D7A2C
/* 802D7954  48 00 00 44 */	b lbl_802D7998
lbl_802D7958:
/* 802D7958  7F E3 FB 78 */	mr r3, r31
/* 802D795C  38 80 00 20 */	li r4, 0x20
/* 802D7960  4B FF 6B 15 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D7964  7C 7B 1B 78 */	mr r27, r3
/* 802D7968  7F 83 E3 78 */	mr r3, r28
/* 802D796C  7F 64 DB 78 */	mr r4, r27
/* 802D7970  7F E5 FB 78 */	mr r5, r31
/* 802D7974  38 C0 00 00 */	li r6, 0
/* 802D7978  7F E7 FB 78 */	mr r7, r31
/* 802D797C  39 00 00 00 */	li r8, 0
/* 802D7980  39 20 FF FF */	li r9, -1
/* 802D7984  39 40 00 00 */	li r10, 0
/* 802D7988  4B FF AC 2D */	bl aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
/* 802D798C  93 7E 00 00 */	stw r27, 0(r30)
/* 802D7990  7F 43 D3 78 */	mr r3, r26
/* 802D7994  48 00 00 B8 */	b lbl_802D7A4C
lbl_802D7998:
/* 802D7998  38 01 00 2B */	addi r0, r1, 0x2b
/* 802D799C  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 802D79A0  7F 64 DB 78 */	mr r4, r27
/* 802D79A4  38 A0 00 20 */	li r5, 0x20
/* 802D79A8  38 C0 00 00 */	li r6, 0
/* 802D79AC  38 E0 00 00 */	li r7, 0
/* 802D79B0  39 00 00 00 */	li r8, 0
/* 802D79B4  39 20 FF FF */	li r9, -1
/* 802D79B8  39 40 00 00 */	li r10, 0
/* 802D79BC  4B FF AB F9 */	bl aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
/* 802D79C0  88 BB 00 07 */	lbz r5, 7(r27)
/* 802D79C4  88 9B 00 06 */	lbz r4, 6(r27)
/* 802D79C8  88 7B 00 04 */	lbz r3, 4(r27)
/* 802D79CC  88 1B 00 05 */	lbz r0, 5(r27)
/* 802D79D0  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D79D4  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D79D8  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D79DC  7C A3 03 78 */	or r3, r5, r0
/* 802D79E0  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D79E4  54 1A 00 34 */	rlwinm r26, r0, 0, 0, 0x1a
/* 802D79E8  7F 43 D3 78 */	mr r3, r26
/* 802D79EC  38 80 00 20 */	li r4, 0x20
/* 802D79F0  7F A5 EB 78 */	mr r5, r29
/* 802D79F4  4B FF 6A 81 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D79F8  7C 7B 1B 78 */	mr r27, r3
/* 802D79FC  7F 83 E3 78 */	mr r3, r28
/* 802D7A00  7F 64 DB 78 */	mr r4, r27
/* 802D7A04  7F E5 FB 78 */	mr r5, r31
/* 802D7A08  38 C0 00 01 */	li r6, 1
/* 802D7A0C  7F 47 D3 78 */	mr r7, r26
/* 802D7A10  7F A8 EB 78 */	mr r8, r29
/* 802D7A14  39 20 FF FF */	li r9, -1
/* 802D7A18  39 41 00 08 */	addi r10, r1, 8
/* 802D7A1C  4B FF AB 99 */	bl aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
/* 802D7A20  93 7E 00 00 */	stw r27, 0(r30)
/* 802D7A24  80 61 00 08 */	lwz r3, 8(r1)
/* 802D7A28  48 00 00 24 */	b lbl_802D7A4C
lbl_802D7A2C:
/* 802D7A2C  3C 60 80 3A */	lis r3, JKRAramArchive__stringBase0@ha
/* 802D7A30  38 63 D1 88 */	addi r3, r3, JKRAramArchive__stringBase0@l
/* 802D7A34  38 80 02 C9 */	li r4, 0x2c9
/* 802D7A38  38 A3 00 13 */	addi r5, r3, 0x13
/* 802D7A3C  38 C3 00 16 */	addi r6, r3, 0x16
/* 802D7A40  4C C6 31 82 */	crclr 6
/* 802D7A44  48 00 A7 B9 */	bl panic_f__12JUTExceptionFPCciPCce
/* 802D7A48  38 60 00 00 */	li r3, 0
lbl_802D7A4C:
/* 802D7A4C  39 61 00 70 */	addi r11, r1, 0x70
/* 802D7A50  48 08 A7 CD */	bl _restgpr_26
/* 802D7A54  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802D7A58  7C 08 03 A6 */	mtlr r0
/* 802D7A5C  38 21 00 70 */	addi r1, r1, 0x70
/* 802D7A60  4E 80 00 20 */	blr 
