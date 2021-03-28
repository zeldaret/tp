lbl_802D18A4:
/* 802D18A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D18A8  7C 08 02 A6 */	mflr r0
/* 802D18AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D18B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D18B4  93 C1 00 08 */	stw r30, 8(r1)
/* 802D18B8  7C 7E 1B 78 */	mr r30, r3
/* 802D18BC  7C DF 33 78 */	mr r31, r6
/* 802D18C0  90 83 00 28 */	stw r4, 0x28(r3)
/* 802D18C4  54 A0 00 34 */	rlwinm r0, r5, 0, 0, 0x1a
/* 802D18C8  90 03 00 5C */	stw r0, 0x5c(r3)
/* 802D18CC  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 802D18D0  38 80 00 20 */	li r4, 0x20
/* 802D18D4  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 802D18D8  4B FF CB 9D */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D18DC  90 7E 00 58 */	stw r3, 0x58(r30)
/* 802D18E0  38 60 03 18 */	li r3, 0x318
/* 802D18E4  38 80 00 20 */	li r4, 0x20
/* 802D18E8  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 802D18EC  4B FF CB 89 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D18F0  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 802D18F4  80 FE 00 5C */	lwz r7, 0x5c(r30)
/* 802D18F8  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 802D18FC  3C 80 80 2D */	lis r4, start__9JKRThreadFPv@ha
/* 802D1900  38 84 19 34 */	addi r4, r4, start__9JKRThreadFPv@l
/* 802D1904  7F C5 F3 78 */	mr r5, r30
/* 802D1908  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 802D190C  7C C0 3A 14 */	add r6, r0, r7
/* 802D1910  7F E8 FB 78 */	mr r8, r31
/* 802D1914  39 20 00 01 */	li r9, 1
/* 802D1918  48 06 F9 75 */	bl OSCreateThread
/* 802D191C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1920  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D1924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1928  7C 08 03 A6 */	mtlr r0
/* 802D192C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1930  4E 80 00 20 */	blr 
