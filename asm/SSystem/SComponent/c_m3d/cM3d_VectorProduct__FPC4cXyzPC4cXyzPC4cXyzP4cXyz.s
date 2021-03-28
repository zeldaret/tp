lbl_802688B4:
/* 802688B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802688B8  7C 08 02 A6 */	mflr r0
/* 802688BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802688C0  39 61 00 30 */	addi r11, r1, 0x30
/* 802688C4  48 0F 99 19 */	bl _savegpr_29
/* 802688C8  7C 7D 1B 78 */	mr r29, r3
/* 802688CC  7C BE 2B 78 */	mr r30, r5
/* 802688D0  7C DF 33 78 */	mr r31, r6
/* 802688D4  7C 83 23 78 */	mr r3, r4
/* 802688D8  7F A4 EB 78 */	mr r4, r29
/* 802688DC  38 A1 00 14 */	addi r5, r1, 0x14
/* 802688E0  48 0D E7 D5 */	bl PSVECSubtract
/* 802688E4  7F C3 F3 78 */	mr r3, r30
/* 802688E8  7F A4 EB 78 */	mr r4, r29
/* 802688EC  38 A1 00 08 */	addi r5, r1, 8
/* 802688F0  48 0D E7 C5 */	bl PSVECSubtract
/* 802688F4  38 61 00 14 */	addi r3, r1, 0x14
/* 802688F8  38 81 00 08 */	addi r4, r1, 8
/* 802688FC  7F E5 FB 78 */	mr r5, r31
/* 80268900  48 0D E8 B5 */	bl PSVECCrossProduct
/* 80268904  39 61 00 30 */	addi r11, r1, 0x30
/* 80268908  48 0F 99 21 */	bl _restgpr_29
/* 8026890C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80268910  7C 08 03 A6 */	mtlr r0
/* 80268914  38 21 00 30 */	addi r1, r1, 0x30
/* 80268918  4E 80 00 20 */	blr 
