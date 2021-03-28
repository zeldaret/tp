lbl_802D5F40:
/* 802D5F40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5F44  7C 08 02 A6 */	mflr r0
/* 802D5F48  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5F4C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5F50  48 08 C2 8D */	bl _savegpr_29
/* 802D5F54  7C 7D 1B 78 */	mr r29, r3
/* 802D5F58  7C 9E 23 78 */	mr r30, r4
/* 802D5F5C  7C BF 2B 78 */	mr r31, r5
/* 802D5F60  7C C4 33 78 */	mr r4, r6
/* 802D5F64  48 00 08 0D */	bl findIdResource__10JKRArchiveCFUs
/* 802D5F68  7C 66 1B 79 */	or. r6, r3, r3
/* 802D5F6C  41 82 00 2C */	beq lbl_802D5F98
/* 802D5F70  7F A3 EB 78 */	mr r3, r29
/* 802D5F74  7F C4 F3 78 */	mr r4, r30
/* 802D5F78  7F E5 FB 78 */	mr r5, r31
/* 802D5F7C  38 E1 00 08 */	addi r7, r1, 8
/* 802D5F80  81 9D 00 00 */	lwz r12, 0(r29)
/* 802D5F84  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802D5F88  7D 89 03 A6 */	mtctr r12
/* 802D5F8C  4E 80 04 21 */	bctrl 
/* 802D5F90  80 61 00 08 */	lwz r3, 8(r1)
/* 802D5F94  48 00 00 08 */	b lbl_802D5F9C
lbl_802D5F98:
/* 802D5F98  38 60 00 00 */	li r3, 0
lbl_802D5F9C:
/* 802D5F9C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5FA0  48 08 C2 89 */	bl _restgpr_29
/* 802D5FA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5FA8  7C 08 03 A6 */	mtlr r0
/* 802D5FAC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D5FB0  4E 80 00 20 */	blr 
