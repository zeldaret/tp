lbl_80AA9C58:
/* 80AA9C58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA9C5C  7C 08 02 A6 */	mflr r0
/* 80AA9C60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA9C64  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA9C68  4B 8B 85 75 */	bl _savegpr_29
/* 80AA9C6C  7C 7D 1B 78 */	mr r29, r3
/* 80AA9C70  3B C0 00 0E */	li r30, 0xe
/* 80AA9C74  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80AA9C78  2C 00 00 06 */	cmpwi r0, 6
/* 80AA9C7C  41 82 00 2C */	beq lbl_80AA9CA8
/* 80AA9C80  40 80 00 10 */	bge lbl_80AA9C90
/* 80AA9C84  2C 00 00 04 */	cmpwi r0, 4
/* 80AA9C88  41 82 00 18 */	beq lbl_80AA9CA0
/* 80AA9C8C  48 00 00 30 */	b lbl_80AA9CBC
lbl_80AA9C90:
/* 80AA9C90  2C 00 00 08 */	cmpwi r0, 8
/* 80AA9C94  41 82 00 24 */	beq lbl_80AA9CB8
/* 80AA9C98  40 80 00 24 */	bge lbl_80AA9CBC
/* 80AA9C9C  48 00 00 14 */	b lbl_80AA9CB0
lbl_80AA9CA0:
/* 80AA9CA0  3B C0 00 09 */	li r30, 9
/* 80AA9CA4  48 00 00 18 */	b lbl_80AA9CBC
lbl_80AA9CA8:
/* 80AA9CA8  3B C0 00 0B */	li r30, 0xb
/* 80AA9CAC  48 00 00 10 */	b lbl_80AA9CBC
lbl_80AA9CB0:
/* 80AA9CB0  3B C0 00 0C */	li r30, 0xc
/* 80AA9CB4  48 00 00 08 */	b lbl_80AA9CBC
lbl_80AA9CB8:
/* 80AA9CB8  3B C0 00 0D */	li r30, 0xd
lbl_80AA9CBC:
/* 80AA9CBC  2C 1E 00 00 */	cmpwi r30, 0
/* 80AA9CC0  41 80 00 2C */	blt lbl_80AA9CEC
/* 80AA9CC4  7C 1E 00 00 */	cmpw r30, r0
/* 80AA9CC8  41 82 00 24 */	beq lbl_80AA9CEC
/* 80AA9CCC  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80AA9CD0  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80AA9CD4  4B 69 BB C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AA9CD8  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80AA9CDC  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80AA9CE0  3C 60 80 AB */	lis r3, lit_4632@ha /* 0x80AAD2C0@ha */
/* 80AA9CE4  C0 03 D2 C0 */	lfs f0, lit_4632@l(r3)  /* 0x80AAD2C0@l */
/* 80AA9CE8  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80AA9CEC:
/* 80AA9CEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA9CF0  4B 8B 85 39 */	bl _restgpr_29
/* 80AA9CF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA9CF8  7C 08 03 A6 */	mtlr r0
/* 80AA9CFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA9D00  4E 80 00 20 */	blr 
