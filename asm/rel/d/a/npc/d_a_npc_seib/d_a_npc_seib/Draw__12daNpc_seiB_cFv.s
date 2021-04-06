lbl_80AC5574:
/* 80AC5574  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC5578  7C 08 02 A6 */	mflr r0
/* 80AC557C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC5580  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC5584  4B 89 CC 59 */	bl _savegpr_29
/* 80AC5588  7C 7D 1B 78 */	mr r29, r3
/* 80AC558C  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80AC5590  28 1E 00 00 */	cmplwi r30, 0
/* 80AC5594  41 82 00 30 */	beq lbl_80AC55C4
/* 80AC5598  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AC559C  80 84 00 04 */	lwz r4, 4(r4)
/* 80AC55A0  83 E4 00 04 */	lwz r31, 4(r4)
/* 80AC55A4  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AC55A8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AC55AC  7D 89 03 A6 */	mtctr r12
/* 80AC55B0  4E 80 04 21 */	bctrl 
/* 80AC55B4  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80AC55B8  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80AC55BC  7C 64 00 2E */	lwzx r3, r4, r0
/* 80AC55C0  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80AC55C4:
/* 80AC55C4  7F A3 EB 78 */	mr r3, r29
/* 80AC55C8  38 80 00 00 */	li r4, 0
/* 80AC55CC  38 A0 00 01 */	li r5, 1
/* 80AC55D0  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80AC55D4  38 C0 00 00 */	li r6, 0
/* 80AC55D8  3C E0 80 AC */	lis r7, lit_4247@ha /* 0x80AC70C8@ha */
/* 80AC55DC  C0 47 70 C8 */	lfs f2, lit_4247@l(r7)  /* 0x80AC70C8@l */
/* 80AC55E0  38 E0 00 00 */	li r7, 0
/* 80AC55E4  39 00 00 00 */	li r8, 0
/* 80AC55E8  39 20 00 00 */	li r9, 0
/* 80AC55EC  4B 68 32 81 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80AC55F0  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC55F4  4B 89 CC 35 */	bl _restgpr_29
/* 80AC55F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC55FC  7C 08 03 A6 */	mtlr r0
/* 80AC5600  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC5604  4E 80 00 20 */	blr 
