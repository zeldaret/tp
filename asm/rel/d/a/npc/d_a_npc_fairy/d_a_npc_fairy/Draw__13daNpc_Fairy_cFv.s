lbl_809B2F8C:
/* 809B2F8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B2F90  7C 08 02 A6 */	mflr r0
/* 809B2F94  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B2F98  39 61 00 20 */	addi r11, r1, 0x20
/* 809B2F9C  4B 9A F2 40 */	b _savegpr_29
/* 809B2FA0  7C 7D 1B 78 */	mr r29, r3
/* 809B2FA4  88 03 0F F6 */	lbz r0, 0xff6(r3)
/* 809B2FA8  28 00 00 01 */	cmplwi r0, 1
/* 809B2FAC  40 82 00 0C */	bne lbl_809B2FB8
/* 809B2FB0  38 60 00 01 */	li r3, 1
/* 809B2FB4  48 00 00 68 */	b lbl_809B301C
lbl_809B2FB8:
/* 809B2FB8  83 DD 09 6C */	lwz r30, 0x96c(r29)
/* 809B2FBC  28 1E 00 00 */	cmplwi r30, 0
/* 809B2FC0  41 82 00 30 */	beq lbl_809B2FF0
/* 809B2FC4  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 809B2FC8  80 84 00 04 */	lwz r4, 4(r4)
/* 809B2FCC  83 E4 00 04 */	lwz r31, 4(r4)
/* 809B2FD0  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 809B2FD4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809B2FD8  7D 89 03 A6 */	mtctr r12
/* 809B2FDC  4E 80 04 21 */	bctrl 
/* 809B2FE0  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 809B2FE4  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 809B2FE8  7C 64 00 2E */	lwzx r3, r4, r0
/* 809B2FEC  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_809B2FF0:
/* 809B2FF0  7F A3 EB 78 */	mr r3, r29
/* 809B2FF4  38 80 00 00 */	li r4, 0
/* 809B2FF8  38 A0 00 01 */	li r5, 1
/* 809B2FFC  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 809B3000  38 C0 00 00 */	li r6, 0
/* 809B3004  3C E0 80 9C */	lis r7, lit_4769@ha
/* 809B3008  C0 47 94 08 */	lfs f2, lit_4769@l(r7)
/* 809B300C  38 E0 00 00 */	li r7, 0
/* 809B3010  39 00 00 00 */	li r8, 0
/* 809B3014  39 20 00 00 */	li r9, 0
/* 809B3018  4B 79 58 54 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
lbl_809B301C:
/* 809B301C  39 61 00 20 */	addi r11, r1, 0x20
/* 809B3020  4B 9A F2 08 */	b _restgpr_29
/* 809B3024  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B3028  7C 08 03 A6 */	mtlr r0
/* 809B302C  38 21 00 20 */	addi r1, r1, 0x20
/* 809B3030  4E 80 00 20 */	blr 
