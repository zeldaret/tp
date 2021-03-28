lbl_80263090:
/* 80263090  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80263094  7C 08 02 A6 */	mflr r0
/* 80263098  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026309C  39 61 00 20 */	addi r11, r1, 0x20
/* 802630A0  48 0F F1 3D */	bl _savegpr_29
/* 802630A4  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha
/* 802630A8  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l
/* 802630AC  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 802630B0  4C C6 31 82 */	crclr 6
/* 802630B4  4B DA 3B 59 */	bl OSReport_Error
/* 802630B8  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha
/* 802630BC  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l
/* 802630C0  38 63 03 03 */	addi r3, r3, 0x303
/* 802630C4  4C C6 31 82 */	crclr 6
/* 802630C8  4B DA 3B 45 */	bl OSReport_Error
/* 802630CC  3B C0 00 00 */	li r30, 0
/* 802630D0  48 0D 8F 29 */	bl OSGetStackPointer
/* 802630D4  7C 7D 1B 78 */	mr r29, r3
/* 802630D8  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha
/* 802630DC  3B E3 A4 A0 */	addi r31, r3, DynamicLink__stringBase0@l
/* 802630E0  48 00 00 20 */	b lbl_80263100
lbl_802630E4:
/* 802630E4  38 7F 03 28 */	addi r3, r31, 0x328
/* 802630E8  7F A4 EB 78 */	mr r4, r29
/* 802630EC  80 BD 00 00 */	lwz r5, 0(r29)
/* 802630F0  80 DD 00 04 */	lwz r6, 4(r29)
/* 802630F4  4C C6 31 82 */	crclr 6
/* 802630F8  4B DA 3B 15 */	bl OSReport_Error
/* 802630FC  83 BD 00 00 */	lwz r29, 0(r29)
lbl_80263100:
/* 80263100  28 1D 00 00 */	cmplwi r29, 0
/* 80263104  41 82 00 1C */	beq lbl_80263120
/* 80263108  3C 1D 00 01 */	addis r0, r29, 1
/* 8026310C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80263110  41 82 00 10 */	beq lbl_80263120
/* 80263114  28 1E 00 10 */	cmplwi r30, 0x10
/* 80263118  3B DE 00 01 */	addi r30, r30, 1
/* 8026311C  41 80 FF C8 */	blt lbl_802630E4
lbl_80263120:
/* 80263120  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha
/* 80263124  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l
/* 80263128  38 63 00 C2 */	addi r3, r3, 0xc2
/* 8026312C  4C C6 31 82 */	crclr 6
/* 80263130  4B DA 3A DD */	bl OSReport_Error
/* 80263134  39 61 00 20 */	addi r11, r1, 0x20
/* 80263138  48 0F F0 F1 */	bl _restgpr_29
/* 8026313C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80263140  7C 08 03 A6 */	mtlr r0
/* 80263144  38 21 00 20 */	addi r1, r1, 0x20
/* 80263148  4E 80 00 20 */	blr 
