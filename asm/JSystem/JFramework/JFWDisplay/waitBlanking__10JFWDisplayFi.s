lbl_80272C60:
/* 80272C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80272C64  7C 08 02 A6 */	mflr r0
/* 80272C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80272C6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80272C70  93 C1 00 08 */	stw r30, 8(r1)
/* 80272C74  7C 7E 1B 78 */	mr r30, r3
/* 80272C78  7C 9F 23 78 */	mr r31, r4
/* 80272C7C  48 00 00 10 */	b lbl_80272C8C
lbl_80272C80:
/* 80272C80  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80272C84  A0 9E 00 1C */	lhz r4, 0x1c(r30)
/* 80272C88  48 00 00 29 */	bl waitForTick__FUlUs
lbl_80272C8C:
/* 80272C8C  2C 1F 00 00 */	cmpwi r31, 0
/* 80272C90  3B FF FF FF */	addi r31, r31, -1
/* 80272C94  41 81 FF EC */	bgt lbl_80272C80
/* 80272C98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80272C9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80272CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80272CA4  7C 08 03 A6 */	mtlr r0
/* 80272CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80272CAC  4E 80 00 20 */	blr 
