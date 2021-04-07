lbl_802EB620:
/* 802EB620  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EB624  7C 08 02 A6 */	mflr r0
/* 802EB628  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EB62C  39 61 00 20 */	addi r11, r1, 0x20
/* 802EB630  48 07 6B A9 */	bl _savegpr_28
/* 802EB634  7C 7C 1B 79 */	or. r28, r3, r3
/* 802EB638  7C 9D 23 78 */	mr r29, r4
/* 802EB63C  41 82 00 4C */	beq lbl_802EB688
/* 802EB640  3C 60 80 3D */	lis r3, __vt__14J2DTexGenBlock@ha /* 0x803CCF30@ha */
/* 802EB644  38 03 CF 30 */	addi r0, r3, __vt__14J2DTexGenBlock@l /* 0x803CCF30@l */
/* 802EB648  90 1C 00 44 */	stw r0, 0x44(r28)
/* 802EB64C  3B C0 00 00 */	li r30, 0
/* 802EB650  3B E0 00 00 */	li r31, 0
lbl_802EB654:
/* 802EB654  38 1F 00 24 */	addi r0, r31, 0x24
/* 802EB658  7C 7C 00 2E */	lwzx r3, r28, r0
/* 802EB65C  28 03 00 00 */	cmplwi r3, 0
/* 802EB660  41 82 00 08 */	beq lbl_802EB668
/* 802EB664  4B FE 36 D9 */	bl __dl__FPv
lbl_802EB668:
/* 802EB668  3B DE 00 01 */	addi r30, r30, 1
/* 802EB66C  2C 1E 00 08 */	cmpwi r30, 8
/* 802EB670  3B FF 00 04 */	addi r31, r31, 4
/* 802EB674  41 80 FF E0 */	blt lbl_802EB654
/* 802EB678  7F A0 07 35 */	extsh. r0, r29
/* 802EB67C  40 81 00 0C */	ble lbl_802EB688
/* 802EB680  7F 83 E3 78 */	mr r3, r28
/* 802EB684  4B FE 36 B9 */	bl __dl__FPv
lbl_802EB688:
/* 802EB688  7F 83 E3 78 */	mr r3, r28
/* 802EB68C  39 61 00 20 */	addi r11, r1, 0x20
/* 802EB690  48 07 6B 95 */	bl _restgpr_28
/* 802EB694  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EB698  7C 08 03 A6 */	mtlr r0
/* 802EB69C  38 21 00 20 */	addi r1, r1, 0x20
/* 802EB6A0  4E 80 00 20 */	blr 
