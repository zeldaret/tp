lbl_802EB424:
/* 802EB424  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802EB428  7C 08 02 A6 */	mflr r0
/* 802EB42C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802EB430  39 61 00 40 */	addi r11, r1, 0x40
/* 802EB434  48 07 6D A1 */	bl _savegpr_27
/* 802EB438  7C 7F 1B 78 */	mr r31, r3
/* 802EB43C  3B 80 00 00 */	li r28, 0
/* 802EB440  3B A0 00 00 */	li r29, 0
lbl_802EB444:
/* 802EB444  7C 1F E8 2E */	lwzx r0, r31, r29
/* 802EB448  90 01 00 08 */	stw r0, 8(r1)
/* 802EB44C  38 7C 00 04 */	addi r3, r28, 4
/* 802EB450  38 81 00 08 */	addi r4, r1, 8
/* 802EB454  48 07 25 F5 */	bl GXSetChanMatColor
/* 802EB458  3B 9C 00 01 */	addi r28, r28, 1
/* 802EB45C  2C 1C 00 02 */	cmpwi r28, 2
/* 802EB460  3B BD 00 04 */	addi r29, r29, 4
/* 802EB464  41 80 FF E0 */	blt lbl_802EB444
/* 802EB468  88 7F 00 08 */	lbz r3, 8(r31)
/* 802EB46C  48 07 26 C5 */	bl GXSetNumChans
/* 802EB470  3C 60 80 3A */	lis r3, lit_1463@ha /* 0x803A1C00@ha */
/* 802EB474  38 83 1C 00 */	addi r4, r3, lit_1463@l /* 0x803A1C00@l */
/* 802EB478  80 64 00 00 */	lwz r3, 0(r4)
/* 802EB47C  80 04 00 04 */	lwz r0, 4(r4)
/* 802EB480  90 61 00 0C */	stw r3, 0xc(r1)
/* 802EB484  90 01 00 10 */	stw r0, 0x10(r1)
/* 802EB488  80 64 00 08 */	lwz r3, 8(r4)
/* 802EB48C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802EB490  90 61 00 14 */	stw r3, 0x14(r1)
/* 802EB494  90 01 00 18 */	stw r0, 0x18(r1)
/* 802EB498  3B 60 00 00 */	li r27, 0
/* 802EB49C  3B C0 00 00 */	li r30, 0
/* 802EB4A0  3B A0 00 00 */	li r29, 0
/* 802EB4A4  3B 81 00 0C */	addi r28, r1, 0xc
/* 802EB4A8  48 00 00 38 */	b lbl_802EB4E0
lbl_802EB4AC:
/* 802EB4AC  7C 7C E8 2E */	lwzx r3, r28, r29
/* 802EB4B0  38 80 00 00 */	li r4, 0
/* 802EB4B4  38 A0 00 00 */	li r5, 0
/* 802EB4B8  38 1E 00 0A */	addi r0, r30, 0xa
/* 802EB4BC  7C 1F 02 2E */	lhzx r0, r31, r0
/* 802EB4C0  54 06 07 FE */	clrlwi r6, r0, 0x1f
/* 802EB4C4  38 E0 00 00 */	li r7, 0
/* 802EB4C8  39 00 00 00 */	li r8, 0
/* 802EB4CC  39 20 00 02 */	li r9, 2
/* 802EB4D0  48 07 26 9D */	bl GXSetChanCtrl
/* 802EB4D4  3B 7B 00 01 */	addi r27, r27, 1
/* 802EB4D8  3B DE 00 02 */	addi r30, r30, 2
/* 802EB4DC  3B BD 00 04 */	addi r29, r29, 4
lbl_802EB4E0:
/* 802EB4E0  88 1F 00 08 */	lbz r0, 8(r31)
/* 802EB4E4  54 00 08 3C */	slwi r0, r0, 1
/* 802EB4E8  7C 1B 00 00 */	cmpw r27, r0
/* 802EB4EC  41 80 FF C0 */	blt lbl_802EB4AC
/* 802EB4F0  88 7F 00 12 */	lbz r3, 0x12(r31)
/* 802EB4F4  48 07 14 91 */	bl GXSetCullMode
/* 802EB4F8  39 61 00 40 */	addi r11, r1, 0x40
/* 802EB4FC  48 07 6D 25 */	bl _restgpr_27
/* 802EB500  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802EB504  7C 08 03 A6 */	mtlr r0
/* 802EB508  38 21 00 40 */	addi r1, r1, 0x40
/* 802EB50C  4E 80 00 20 */	blr 
