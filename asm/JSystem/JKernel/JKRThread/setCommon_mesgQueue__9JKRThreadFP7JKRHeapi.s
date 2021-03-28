lbl_802D1830:
/* 802D1830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1834  7C 08 02 A6 */	mflr r0
/* 802D1838  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D183C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1840  7C 7F 1B 78 */	mr r31, r3
/* 802D1844  7C 86 23 78 */	mr r6, r4
/* 802D1848  90 A3 00 54 */	stw r5, 0x54(r3)
/* 802D184C  80 03 00 54 */	lwz r0, 0x54(r3)
/* 802D1850  54 03 10 3A */	slwi r3, r0, 2
/* 802D1854  38 80 00 00 */	li r4, 0
/* 802D1858  7C C5 33 78 */	mr r5, r6
/* 802D185C  4B FF CC 19 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D1860  90 7F 00 50 */	stw r3, 0x50(r31)
/* 802D1864  38 7F 00 30 */	addi r3, r31, 0x30
/* 802D1868  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 802D186C  80 BF 00 54 */	lwz r5, 0x54(r31)
/* 802D1870  48 06 D1 25 */	bl OSInitMessageQueue
/* 802D1874  3C 60 80 43 */	lis r3, sThreadList__9JKRThread@ha
/* 802D1878  38 63 42 8C */	addi r3, r3, sThreadList__9JKRThread@l
/* 802D187C  38 9F 00 18 */	addi r4, r31, 0x18
/* 802D1880  48 00 A6 CD */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802D1884  38 00 00 00 */	li r0, 0
/* 802D1888  90 1F 00 74 */	stw r0, 0x74(r31)
/* 802D188C  90 1F 00 78 */	stw r0, 0x78(r31)
/* 802D1890  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1898  7C 08 03 A6 */	mtlr r0
/* 802D189C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D18A0  4E 80 00 20 */	blr 
