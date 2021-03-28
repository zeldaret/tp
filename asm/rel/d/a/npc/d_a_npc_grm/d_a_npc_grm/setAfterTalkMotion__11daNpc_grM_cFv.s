lbl_809D4B24:
/* 809D4B24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D4B28  7C 08 02 A6 */	mflr r0
/* 809D4B2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D4B30  39 61 00 20 */	addi r11, r1, 0x20
/* 809D4B34  4B 98 D6 A8 */	b _savegpr_29
/* 809D4B38  7C 7D 1B 78 */	mr r29, r3
/* 809D4B3C  80 63 0B 58 */	lwz r3, 0xb58(r3)
/* 809D4B40  2C 03 00 00 */	cmpwi r3, 0
/* 809D4B44  41 82 00 08 */	beq lbl_809D4B4C
/* 809D4B48  48 00 00 24 */	b lbl_809D4B6C
lbl_809D4B4C:
/* 809D4B4C  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 809D4B50  2C 00 00 03 */	cmpwi r0, 3
/* 809D4B54  41 82 00 4C */	beq lbl_809D4BA0
/* 809D4B58  2C 00 00 04 */	cmpwi r0, 4
/* 809D4B5C  40 82 00 08 */	bne lbl_809D4B64
/* 809D4B60  48 00 00 40 */	b lbl_809D4BA0
lbl_809D4B64:
/* 809D4B64  3B C0 00 04 */	li r30, 4
/* 809D4B68  48 00 00 08 */	b lbl_809D4B70
lbl_809D4B6C:
/* 809D4B6C  3B C0 00 04 */	li r30, 4
lbl_809D4B70:
/* 809D4B70  2C 1E 00 00 */	cmpwi r30, 0
/* 809D4B74  41 80 00 2C */	blt lbl_809D4BA0
/* 809D4B78  7C 1E 18 00 */	cmpw r30, r3
/* 809D4B7C  41 82 00 24 */	beq lbl_809D4BA0
/* 809D4B80  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 809D4B84  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 809D4B88  4B 77 0D 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D4B8C  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 809D4B90  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 809D4B94  3C 60 80 9D */	lis r3, lit_4560@ha
/* 809D4B98  C0 03 6E 30 */	lfs f0, lit_4560@l(r3)
/* 809D4B9C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_809D4BA0:
/* 809D4BA0  39 61 00 20 */	addi r11, r1, 0x20
/* 809D4BA4  4B 98 D6 84 */	b _restgpr_29
/* 809D4BA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D4BAC  7C 08 03 A6 */	mtlr r0
/* 809D4BB0  38 21 00 20 */	addi r1, r1, 0x20
/* 809D4BB4  4E 80 00 20 */	blr 
