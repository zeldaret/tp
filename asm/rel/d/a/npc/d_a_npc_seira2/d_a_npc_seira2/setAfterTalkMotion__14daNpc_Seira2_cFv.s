lbl_80AD1B38:
/* 80AD1B38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD1B3C  7C 08 02 A6 */	mflr r0
/* 80AD1B40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD1B44  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD1B48  4B 89 06 95 */	bl _savegpr_29
/* 80AD1B4C  7C 7D 1B 78 */	mr r29, r3
/* 80AD1B50  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80AD1B54  2C 00 00 07 */	cmpwi r0, 7
/* 80AD1B58  41 82 00 38 */	beq lbl_80AD1B90
/* 80AD1B5C  40 80 00 1C */	bge lbl_80AD1B78
/* 80AD1B60  2C 00 00 04 */	cmpwi r0, 4
/* 80AD1B64  41 82 00 24 */	beq lbl_80AD1B88
/* 80AD1B68  40 80 00 44 */	bge lbl_80AD1BAC
/* 80AD1B6C  2C 00 00 03 */	cmpwi r0, 3
/* 80AD1B70  40 80 00 70 */	bge lbl_80AD1BE0
/* 80AD1B74  48 00 00 38 */	b lbl_80AD1BAC
lbl_80AD1B78:
/* 80AD1B78  2C 00 00 09 */	cmpwi r0, 9
/* 80AD1B7C  41 82 00 24 */	beq lbl_80AD1BA0
/* 80AD1B80  40 80 00 2C */	bge lbl_80AD1BAC
/* 80AD1B84  48 00 00 14 */	b lbl_80AD1B98
lbl_80AD1B88:
/* 80AD1B88  3B C0 00 06 */	li r30, 6
/* 80AD1B8C  48 00 00 24 */	b lbl_80AD1BB0
lbl_80AD1B90:
/* 80AD1B90  3B C0 00 0A */	li r30, 0xa
/* 80AD1B94  48 00 00 1C */	b lbl_80AD1BB0
lbl_80AD1B98:
/* 80AD1B98  3B C0 00 0B */	li r30, 0xb
/* 80AD1B9C  48 00 00 14 */	b lbl_80AD1BB0
lbl_80AD1BA0:
/* 80AD1BA0  3B C0 00 0C */	li r30, 0xc
/* 80AD1BA4  48 00 00 0C */	b lbl_80AD1BB0
/* 80AD1BA8  48 00 00 38 */	b lbl_80AD1BE0
lbl_80AD1BAC:
/* 80AD1BAC  3B C0 00 0D */	li r30, 0xd
lbl_80AD1BB0:
/* 80AD1BB0  2C 1E 00 00 */	cmpwi r30, 0
/* 80AD1BB4  41 80 00 2C */	blt lbl_80AD1BE0
/* 80AD1BB8  7C 1E 00 00 */	cmpw r30, r0
/* 80AD1BBC  41 82 00 24 */	beq lbl_80AD1BE0
/* 80AD1BC0  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80AD1BC4  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80AD1BC8  4B 67 3C D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD1BCC  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80AD1BD0  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80AD1BD4  3C 60 80 AD */	lis r3, lit_4661@ha /* 0x80AD4B20@ha */
/* 80AD1BD8  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)  /* 0x80AD4B20@l */
/* 80AD1BDC  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80AD1BE0:
/* 80AD1BE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD1BE4  4B 89 06 45 */	bl _restgpr_29
/* 80AD1BE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD1BEC  7C 08 03 A6 */	mtlr r0
/* 80AD1BF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD1BF4  4E 80 00 20 */	blr 
