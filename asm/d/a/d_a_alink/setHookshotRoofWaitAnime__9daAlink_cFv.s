lbl_8010B2DC:
/* 8010B2DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010B2E0  7C 08 02 A6 */	mflr r0
/* 8010B2E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010B2E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010B2EC  7C 7F 1B 78 */	mr r31, r3
/* 8010B2F0  4B FF D5 B1 */	bl checkHookshotRoofLv7Boss__9daAlink_cFv
/* 8010B2F4  2C 03 00 00 */	cmpwi r3, 0
/* 8010B2F8  41 82 00 20 */	beq lbl_8010B318
/* 8010B2FC  A8 1F 30 20 */	lha r0, 0x3020(r31)
/* 8010B300  2C 00 00 00 */	cmpwi r0, 0
/* 8010B304  40 82 00 0C */	bne lbl_8010B310
/* 8010B308  38 80 01 71 */	li r4, 0x171
/* 8010B30C  48 00 00 30 */	b lbl_8010B33C
lbl_8010B310:
/* 8010B310  38 80 01 70 */	li r4, 0x170
/* 8010B314  48 00 00 28 */	b lbl_8010B33C
lbl_8010B318:
/* 8010B318  A8 1F 30 20 */	lha r0, 0x3020(r31)
/* 8010B31C  2C 00 00 00 */	cmpwi r0, 0
/* 8010B320  38 00 01 2E */	li r0, 0x12e
/* 8010B324  40 82 00 08 */	bne lbl_8010B32C
/* 8010B328  38 00 01 2F */	li r0, 0x12f
lbl_8010B32C:
/* 8010B32C  7C 04 03 78 */	mr r4, r0
/* 8010B330  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8010B334  60 00 01 00 */	ori r0, r0, 0x100
/* 8010B338  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_8010B33C:
/* 8010B33C  7F E3 FB 78 */	mr r3, r31
/* 8010B340  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 8010B344  4B FA 1C 6D */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 8010B348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010B34C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010B350  7C 08 03 A6 */	mtlr r0
/* 8010B354  38 21 00 10 */	addi r1, r1, 0x10
/* 8010B358  4E 80 00 20 */	blr 
