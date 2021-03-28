lbl_802D0CB0:
/* 802D0CB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0CB4  7C 08 02 A6 */	mflr r0
/* 802D0CB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D0CBC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D0CC0  48 09 15 1D */	bl _savegpr_29
/* 802D0CC4  7C 7D 1B 78 */	mr r29, r3
/* 802D0CC8  7C 9E 23 78 */	mr r30, r4
/* 802D0CCC  7C BF 2B 78 */	mr r31, r5
/* 802D0CD0  38 7D 00 18 */	addi r3, r29, 0x18
/* 802D0CD4  48 06 E3 6D */	bl OSLockMutex
/* 802D0CD8  28 1E 00 04 */	cmplwi r30, 4
/* 802D0CDC  40 80 00 08 */	bge lbl_802D0CE4
/* 802D0CE0  3B C0 00 04 */	li r30, 4
lbl_802D0CE4:
/* 802D0CE4  2C 1F 00 00 */	cmpwi r31, 0
/* 802D0CE8  41 80 00 28 */	blt lbl_802D0D10
/* 802D0CEC  7F A3 EB 78 */	mr r3, r29
/* 802D0CF0  7F C4 F3 78 */	mr r4, r30
/* 802D0CF4  2C 1F 00 04 */	cmpwi r31, 4
/* 802D0CF8  38 A0 00 04 */	li r5, 4
/* 802D0CFC  41 80 00 08 */	blt lbl_802D0D04
/* 802D0D00  7F E5 FB 78 */	mr r5, r31
lbl_802D0D04:
/* 802D0D04  48 00 00 55 */	bl allocFromHead__12JKRSolidHeapFUli
/* 802D0D08  7C 7F 1B 78 */	mr r31, r3
/* 802D0D0C  48 00 00 28 */	b lbl_802D0D34
lbl_802D0D10:
/* 802D0D10  7C 1F 00 D0 */	neg r0, r31
/* 802D0D14  2C 00 00 04 */	cmpwi r0, 4
/* 802D0D18  38 A0 00 04 */	li r5, 4
/* 802D0D1C  41 80 00 08 */	blt lbl_802D0D24
/* 802D0D20  7C 05 03 78 */	mr r5, r0
lbl_802D0D24:
/* 802D0D24  7F A3 EB 78 */	mr r3, r29
/* 802D0D28  7F C4 F3 78 */	mr r4, r30
/* 802D0D2C  48 00 00 F5 */	bl allocFromTail__12JKRSolidHeapFUli
/* 802D0D30  7C 7F 1B 78 */	mr r31, r3
lbl_802D0D34:
/* 802D0D34  38 7D 00 18 */	addi r3, r29, 0x18
/* 802D0D38  48 06 E3 E5 */	bl OSUnlockMutex
/* 802D0D3C  7F E3 FB 78 */	mr r3, r31
/* 802D0D40  39 61 00 20 */	addi r11, r1, 0x20
/* 802D0D44  48 09 14 E5 */	bl _restgpr_29
/* 802D0D48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0D4C  7C 08 03 A6 */	mtlr r0
/* 802D0D50  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0D54  4E 80 00 20 */	blr 
