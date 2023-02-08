lbl_809F9B8C:
/* 809F9B8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809F9B90  7C 08 02 A6 */	mflr r0
/* 809F9B94  90 01 00 24 */	stw r0, 0x24(r1)
/* 809F9B98  39 61 00 20 */	addi r11, r1, 0x20
/* 809F9B9C  4B 96 86 41 */	bl _savegpr_29
/* 809F9BA0  7C 7D 1B 78 */	mr r29, r3
/* 809F9BA4  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 809F9BA8  28 1E 00 00 */	cmplwi r30, 0
/* 809F9BAC  41 82 00 30 */	beq lbl_809F9BDC
/* 809F9BB0  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 809F9BB4  80 84 00 04 */	lwz r4, 4(r4)
/* 809F9BB8  83 E4 00 04 */	lwz r31, 4(r4)
/* 809F9BBC  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 809F9BC0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809F9BC4  7D 89 03 A6 */	mtctr r12
/* 809F9BC8  4E 80 04 21 */	bctrl 
/* 809F9BCC  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 809F9BD0  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 809F9BD4  7C 64 00 2E */	lwzx r3, r4, r0
/* 809F9BD8  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_809F9BDC:
/* 809F9BDC  7F A3 EB 78 */	mr r3, r29
/* 809F9BE0  38 80 00 00 */	li r4, 0
/* 809F9BE4  38 A0 00 00 */	li r5, 0
/* 809F9BE8  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 809F9BEC  38 C0 00 00 */	li r6, 0
/* 809F9BF0  3C E0 80 A0 */	lis r7, lit_4642@ha /* 0x80A0071C@ha */
/* 809F9BF4  C0 47 07 1C */	lfs f2, lit_4642@l(r7)  /* 0x80A0071C@l */
/* 809F9BF8  38 E0 00 00 */	li r7, 0
/* 809F9BFC  39 00 00 00 */	li r8, 0
/* 809F9C00  39 20 00 00 */	li r9, 0
/* 809F9C04  4B 74 EC 69 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 809F9C08  39 61 00 20 */	addi r11, r1, 0x20
/* 809F9C0C  4B 96 86 1D */	bl _restgpr_29
/* 809F9C10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809F9C14  7C 08 03 A6 */	mtlr r0
/* 809F9C18  38 21 00 20 */	addi r1, r1, 0x20
/* 809F9C1C  4E 80 00 20 */	blr 
