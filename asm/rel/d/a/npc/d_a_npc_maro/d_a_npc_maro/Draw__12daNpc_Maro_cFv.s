lbl_8055BF0C:
/* 8055BF0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055BF10  7C 08 02 A6 */	mflr r0
/* 8055BF14  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055BF18  39 61 00 20 */	addi r11, r1, 0x20
/* 8055BF1C  4B E0 62 C1 */	bl _savegpr_29
/* 8055BF20  7C 7D 1B 78 */	mr r29, r3
/* 8055BF24  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 8055BF28  28 1E 00 00 */	cmplwi r30, 0
/* 8055BF2C  41 82 00 30 */	beq lbl_8055BF5C
/* 8055BF30  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 8055BF34  80 84 00 04 */	lwz r4, 4(r4)
/* 8055BF38  83 E4 00 04 */	lwz r31, 4(r4)
/* 8055BF3C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 8055BF40  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8055BF44  7D 89 03 A6 */	mtctr r12
/* 8055BF48  4E 80 04 21 */	bctrl 
/* 8055BF4C  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 8055BF50  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 8055BF54  7C 64 00 2E */	lwzx r3, r4, r0
/* 8055BF58  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_8055BF5C:
/* 8055BF5C  7F A3 EB 78 */	mr r3, r29
/* 8055BF60  38 80 00 00 */	li r4, 0
/* 8055BF64  38 A0 00 00 */	li r5, 0
/* 8055BF68  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 8055BF6C  38 C0 00 00 */	li r6, 0
/* 8055BF70  3C E0 80 56 */	lis r7, lit_4319@ha /* 0x80564CA4@ha */
/* 8055BF74  C0 47 4C A4 */	lfs f2, lit_4319@l(r7)  /* 0x80564CA4@l */
/* 8055BF78  38 E0 00 00 */	li r7, 0
/* 8055BF7C  39 00 00 00 */	li r8, 0
/* 8055BF80  39 20 00 00 */	li r9, 0
/* 8055BF84  4B BE C8 E9 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 8055BF88  39 61 00 20 */	addi r11, r1, 0x20
/* 8055BF8C  4B E0 62 9D */	bl _restgpr_29
/* 8055BF90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055BF94  7C 08 03 A6 */	mtlr r0
/* 8055BF98  38 21 00 20 */	addi r1, r1, 0x20
/* 8055BF9C  4E 80 00 20 */	blr 
