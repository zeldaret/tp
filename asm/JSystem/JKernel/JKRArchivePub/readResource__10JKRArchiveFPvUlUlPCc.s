lbl_802D5D8C:
/* 802D5D8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5D90  7C 08 02 A6 */	mflr r0
/* 802D5D94  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5D98  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5D9C  48 08 C4 41 */	bl _savegpr_29
/* 802D5DA0  7C 7D 1B 78 */	mr r29, r3
/* 802D5DA4  7C 9E 23 78 */	mr r30, r4
/* 802D5DA8  7C BF 2B 78 */	mr r31, r5
/* 802D5DAC  28 06 00 00 */	cmplwi r6, 0
/* 802D5DB0  41 82 00 10 */	beq lbl_802D5DC0
/* 802D5DB4  3C 06 C0 C1 */	addis r0, r6, 0xc0c1
/* 802D5DB8  28 00 3F 3F */	cmplwi r0, 0x3f3f
/* 802D5DBC  40 82 00 18 */	bne lbl_802D5DD4
lbl_802D5DC0:
/* 802D5DC0  7F A3 EB 78 */	mr r3, r29
/* 802D5DC4  7C E4 3B 78 */	mr r4, r7
/* 802D5DC8  48 00 08 E5 */	bl findNameResource__10JKRArchiveCFPCc
/* 802D5DCC  7C 66 1B 78 */	mr r6, r3
/* 802D5DD0  48 00 00 14 */	b lbl_802D5DE4
lbl_802D5DD4:
/* 802D5DD4  7C C4 33 78 */	mr r4, r6
/* 802D5DD8  7C E5 3B 78 */	mr r5, r7
/* 802D5DDC  48 00 07 19 */	bl findTypeResource__10JKRArchiveCFUlPCc
/* 802D5DE0  7C 66 1B 78 */	mr r6, r3
lbl_802D5DE4:
/* 802D5DE4  28 06 00 00 */	cmplwi r6, 0
/* 802D5DE8  41 82 00 2C */	beq lbl_802D5E14
/* 802D5DEC  7F A3 EB 78 */	mr r3, r29
/* 802D5DF0  7F C4 F3 78 */	mr r4, r30
/* 802D5DF4  7F E5 FB 78 */	mr r5, r31
/* 802D5DF8  38 E1 00 08 */	addi r7, r1, 8
/* 802D5DFC  81 9D 00 00 */	lwz r12, 0(r29)
/* 802D5E00  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802D5E04  7D 89 03 A6 */	mtctr r12
/* 802D5E08  4E 80 04 21 */	bctrl 
/* 802D5E0C  80 61 00 08 */	lwz r3, 8(r1)
/* 802D5E10  48 00 00 08 */	b lbl_802D5E18
lbl_802D5E14:
/* 802D5E14  38 60 00 00 */	li r3, 0
lbl_802D5E18:
/* 802D5E18  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5E1C  48 08 C4 0D */	bl _restgpr_29
/* 802D5E20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5E24  7C 08 03 A6 */	mtlr r0
/* 802D5E28  38 21 00 20 */	addi r1, r1, 0x20
/* 802D5E2C  4E 80 00 20 */	blr 
