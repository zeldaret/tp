lbl_809BBE80:
/* 809BBE80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809BBE84  7C 08 02 A6 */	mflr r0
/* 809BBE88  90 01 00 24 */	stw r0, 0x24(r1)
/* 809BBE8C  39 61 00 20 */	addi r11, r1, 0x20
/* 809BBE90  4B 9A 63 4D */	bl _savegpr_29
/* 809BBE94  7C 7D 1B 78 */	mr r29, r3
/* 809BBE98  80 83 05 78 */	lwz r4, 0x578(r3)
/* 809BBE9C  80 84 00 04 */	lwz r4, 4(r4)
/* 809BBEA0  83 E4 00 04 */	lwz r31, 4(r4)
/* 809BBEA4  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 809BBEA8  28 1E 00 00 */	cmplwi r30, 0
/* 809BBEAC  41 82 00 24 */	beq lbl_809BBED0
/* 809BBEB0  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 809BBEB4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809BBEB8  7D 89 03 A6 */	mtctr r12
/* 809BBEBC  4E 80 04 21 */	bctrl 
/* 809BBEC0  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 809BBEC4  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 809BBEC8  7C 64 00 2E */	lwzx r3, r4, r0
/* 809BBECC  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_809BBED0:
/* 809BBED0  83 DD 09 70 */	lwz r30, 0x970(r29)
/* 809BBED4  28 1E 00 00 */	cmplwi r30, 0
/* 809BBED8  41 82 00 28 */	beq lbl_809BBF00
/* 809BBEDC  7F A3 EB 78 */	mr r3, r29
/* 809BBEE0  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 809BBEE4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809BBEE8  7D 89 03 A6 */	mtctr r12
/* 809BBEEC  4E 80 04 21 */	bctrl 
/* 809BBEF0  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 809BBEF4  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 809BBEF8  7C 64 00 2E */	lwzx r3, r4, r0
/* 809BBEFC  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_809BBF00:
/* 809BBF00  7F A3 EB 78 */	mr r3, r29
/* 809BBF04  38 80 00 00 */	li r4, 0
/* 809BBF08  38 A0 00 01 */	li r5, 1
/* 809BBF0C  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 809BBF10  38 C0 00 00 */	li r6, 0
/* 809BBF14  3C E0 80 9C */	lis r7, lit_4391@ha /* 0x809BE550@ha */
/* 809BBF18  C0 47 E5 50 */	lfs f2, lit_4391@l(r7)  /* 0x809BE550@l */
/* 809BBF1C  38 E0 00 00 */	li r7, 0
/* 809BBF20  39 00 00 00 */	li r8, 0
/* 809BBF24  39 20 00 00 */	li r9, 0
/* 809BBF28  4B 78 C9 45 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 809BBF2C  39 61 00 20 */	addi r11, r1, 0x20
/* 809BBF30  4B 9A 62 F9 */	bl _restgpr_29
/* 809BBF34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809BBF38  7C 08 03 A6 */	mtlr r0
/* 809BBF3C  38 21 00 20 */	addi r1, r1, 0x20
/* 809BBF40  4E 80 00 20 */	blr 
