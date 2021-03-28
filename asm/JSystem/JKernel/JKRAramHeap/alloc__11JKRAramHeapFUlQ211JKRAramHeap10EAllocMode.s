lbl_802D2FBC:
/* 802D2FBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D2FC0  7C 08 02 A6 */	mflr r0
/* 802D2FC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D2FC8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D2FCC  48 08 F2 11 */	bl _savegpr_29
/* 802D2FD0  7C 7D 1B 78 */	mr r29, r3
/* 802D2FD4  7C 9E 23 78 */	mr r30, r4
/* 802D2FD8  7C BF 2B 78 */	mr r31, r5
/* 802D2FDC  38 7D 00 18 */	addi r3, r29, 0x18
/* 802D2FE0  48 06 C0 61 */	bl OSLockMutex
/* 802D2FE4  2C 1F 00 00 */	cmpwi r31, 0
/* 802D2FE8  40 82 00 18 */	bne lbl_802D3000
/* 802D2FEC  7F A3 EB 78 */	mr r3, r29
/* 802D2FF0  7F C4 F3 78 */	mr r4, r30
/* 802D2FF4  48 00 00 41 */	bl allocFromHead__11JKRAramHeapFUl
/* 802D2FF8  7C 7F 1B 78 */	mr r31, r3
/* 802D2FFC  48 00 00 14 */	b lbl_802D3010
lbl_802D3000:
/* 802D3000  7F A3 EB 78 */	mr r3, r29
/* 802D3004  7F C4 F3 78 */	mr r4, r30
/* 802D3008  48 00 00 B5 */	bl allocFromTail__11JKRAramHeapFUl
/* 802D300C  7C 7F 1B 78 */	mr r31, r3
lbl_802D3010:
/* 802D3010  38 7D 00 18 */	addi r3, r29, 0x18
/* 802D3014  48 06 C1 09 */	bl OSUnlockMutex
/* 802D3018  7F E3 FB 78 */	mr r3, r31
/* 802D301C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D3020  48 08 F2 09 */	bl _restgpr_29
/* 802D3024  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D3028  7C 08 03 A6 */	mtlr r0
/* 802D302C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D3030  4E 80 00 20 */	blr 
