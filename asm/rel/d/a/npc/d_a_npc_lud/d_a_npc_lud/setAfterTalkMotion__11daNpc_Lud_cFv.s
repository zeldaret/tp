lbl_80A6BE6C:
/* 80A6BE6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A6BE70  7C 08 02 A6 */	mflr r0
/* 80A6BE74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6BE78  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6BE7C  4B 8F 63 61 */	bl _savegpr_29
/* 80A6BE80  7C 7D 1B 78 */	mr r29, r3
/* 80A6BE84  3B C0 00 12 */	li r30, 0x12
/* 80A6BE88  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80A6BE8C  2C 00 00 01 */	cmpwi r0, 1
/* 80A6BE90  41 82 00 08 */	beq lbl_80A6BE98
/* 80A6BE94  48 00 00 08 */	b lbl_80A6BE9C
lbl_80A6BE98:
/* 80A6BE98  3B C0 00 0A */	li r30, 0xa
lbl_80A6BE9C:
/* 80A6BE9C  2C 1E 00 00 */	cmpwi r30, 0
/* 80A6BEA0  41 80 00 2C */	blt lbl_80A6BECC
/* 80A6BEA4  7C 1E 00 00 */	cmpw r30, r0
/* 80A6BEA8  41 82 00 24 */	beq lbl_80A6BECC
/* 80A6BEAC  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80A6BEB0  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A6BEB4  4B 6D 99 E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6BEB8  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80A6BEBC  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80A6BEC0  3C 60 80 A7 */	lis r3, lit_4680@ha /* 0x80A6FE60@ha */
/* 80A6BEC4  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)  /* 0x80A6FE60@l */
/* 80A6BEC8  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A6BECC:
/* 80A6BECC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6BED0  4B 8F 63 59 */	bl _restgpr_29
/* 80A6BED4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A6BED8  7C 08 03 A6 */	mtlr r0
/* 80A6BEDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6BEE0  4E 80 00 20 */	blr 
