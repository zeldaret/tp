lbl_802CE7DC:
/* 802CE7DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CE7E0  7C 08 02 A6 */	mflr r0
/* 802CE7E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CE7E8  39 61 00 20 */	addi r11, r1, 0x20
/* 802CE7EC  48 09 39 F1 */	bl _savegpr_29
/* 802CE7F0  7C 7D 1B 78 */	mr r29, r3
/* 802CE7F4  7C 9E 23 78 */	mr r30, r4
/* 802CE7F8  4B FF FF 61 */	bl getMaxFreeBlock__7JKRHeapFv
/* 802CE7FC  7C 7F 1B 78 */	mr r31, r3
/* 802CE800  7F A3 EB 78 */	mr r3, r29
/* 802CE804  4B FF FF 29 */	bl getFreeSize__7JKRHeapFv
/* 802CE808  38 9E FF FF */	addi r4, r30, -1
/* 802CE80C  57 E0 07 3E */	clrlwi r0, r31, 0x1c
/* 802CE810  7C 00 F0 50 */	subf r0, r0, r30
/* 802CE814  7C 80 00 38 */	and r0, r4, r0
/* 802CE818  7C 60 18 50 */	subf r3, r0, r3
/* 802CE81C  7C 80 20 F8 */	nor r0, r4, r4
/* 802CE820  7C 03 18 38 */	and r3, r0, r3
/* 802CE824  39 61 00 20 */	addi r11, r1, 0x20
/* 802CE828  48 09 3A 01 */	bl _restgpr_29
/* 802CE82C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CE830  7C 08 03 A6 */	mtlr r0
/* 802CE834  38 21 00 20 */	addi r1, r1, 0x20
/* 802CE838  4E 80 00 20 */	blr 
