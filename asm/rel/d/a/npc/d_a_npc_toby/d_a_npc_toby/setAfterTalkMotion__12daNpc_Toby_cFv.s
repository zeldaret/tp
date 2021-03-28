lbl_80B1F950:
/* 80B1F950  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B1F954  7C 08 02 A6 */	mflr r0
/* 80B1F958  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B1F95C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B1F960  4B 84 28 7C */	b _savegpr_29
/* 80B1F964  7C 7D 1B 78 */	mr r29, r3
/* 80B1F968  3B C0 00 10 */	li r30, 0x10
/* 80B1F96C  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80B1F970  2C 00 00 03 */	cmpwi r0, 3
/* 80B1F974  41 82 00 38 */	beq lbl_80B1F9AC
/* 80B1F978  40 80 00 14 */	bge lbl_80B1F98C
/* 80B1F97C  2C 00 00 01 */	cmpwi r0, 1
/* 80B1F980  41 82 00 1C */	beq lbl_80B1F99C
/* 80B1F984  40 80 00 20 */	bge lbl_80B1F9A4
/* 80B1F988  48 00 00 38 */	b lbl_80B1F9C0
lbl_80B1F98C:
/* 80B1F98C  2C 00 00 05 */	cmpwi r0, 5
/* 80B1F990  41 82 00 2C */	beq lbl_80B1F9BC
/* 80B1F994  40 80 00 2C */	bge lbl_80B1F9C0
/* 80B1F998  48 00 00 1C */	b lbl_80B1F9B4
lbl_80B1F99C:
/* 80B1F99C  3B C0 00 0D */	li r30, 0xd
/* 80B1F9A0  48 00 00 20 */	b lbl_80B1F9C0
lbl_80B1F9A4:
/* 80B1F9A4  3B C0 00 0A */	li r30, 0xa
/* 80B1F9A8  48 00 00 18 */	b lbl_80B1F9C0
lbl_80B1F9AC:
/* 80B1F9AC  3B C0 00 0B */	li r30, 0xb
/* 80B1F9B0  48 00 00 10 */	b lbl_80B1F9C0
lbl_80B1F9B4:
/* 80B1F9B4  3B C0 00 0C */	li r30, 0xc
/* 80B1F9B8  48 00 00 08 */	b lbl_80B1F9C0
lbl_80B1F9BC:
/* 80B1F9BC  3B C0 00 0E */	li r30, 0xe
lbl_80B1F9C0:
/* 80B1F9C0  2C 1E 00 00 */	cmpwi r30, 0
/* 80B1F9C4  41 80 00 2C */	blt lbl_80B1F9F0
/* 80B1F9C8  7C 1E 00 00 */	cmpw r30, r0
/* 80B1F9CC  41 82 00 24 */	beq lbl_80B1F9F0
/* 80B1F9D0  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80B1F9D4  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B1F9D8  4B 62 5E C0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B1F9DC  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80B1F9E0  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80B1F9E4  3C 60 80 B2 */	lis r3, lit_4802@ha
/* 80B1F9E8  C0 03 4A D0 */	lfs f0, lit_4802@l(r3)
/* 80B1F9EC  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B1F9F0:
/* 80B1F9F0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B1F9F4  4B 84 28 34 */	b _restgpr_29
/* 80B1F9F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B1F9FC  7C 08 03 A6 */	mtlr r0
/* 80B1FA00  38 21 00 20 */	addi r1, r1, 0x20
/* 80B1FA04  4E 80 00 20 */	blr 
