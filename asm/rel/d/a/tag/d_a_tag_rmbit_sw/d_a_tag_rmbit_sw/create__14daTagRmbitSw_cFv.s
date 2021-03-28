lbl_80D5FB94:
/* 80D5FB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5FB98  7C 08 02 A6 */	mflr r0
/* 80D5FB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5FBA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5FBA4  7C 7F 1B 78 */	mr r31, r3
/* 80D5FBA8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5FBAC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5FBB0  40 82 00 1C */	bne lbl_80D5FBCC
/* 80D5FBB4  28 1F 00 00 */	cmplwi r31, 0
/* 80D5FBB8  41 82 00 08 */	beq lbl_80D5FBC0
/* 80D5FBBC  4B FF FF 3D */	bl __ct__14daTagRmbitSw_cFv
lbl_80D5FBC0:
/* 80D5FBC0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D5FBC4  60 00 00 08 */	ori r0, r0, 8
/* 80D5FBC8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D5FBCC:
/* 80D5FBCC  7F E3 FB 78 */	mr r3, r31
/* 80D5FBD0  48 00 01 E9 */	bl init__14daTagRmbitSw_cFv
/* 80D5FBD4  38 60 00 04 */	li r3, 4
/* 80D5FBD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5FBDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5FBE0  7C 08 03 A6 */	mtlr r0
/* 80D5FBE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5FBE8  4E 80 00 20 */	blr 
