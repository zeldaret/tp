lbl_80258C5C:
/* 80258C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80258C60  7C 08 02 A6 */	mflr r0
/* 80258C64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80258C68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80258C6C  7C 7F 1B 78 */	mr r31, r3
/* 80258C70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80258C74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80258C78  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80258C7C  4B E1 65 ED */	bl Run__12dVibration_cFv
/* 80258C80  88 1F 04 1C */	lbz r0, 0x41c(r31)
/* 80258C84  2C 00 00 01 */	cmpwi r0, 1
/* 80258C88  41 82 00 20 */	beq lbl_80258CA8
/* 80258C8C  40 80 00 24 */	bge lbl_80258CB0
/* 80258C90  2C 00 00 00 */	cmpwi r0, 0
/* 80258C94  40 80 00 08 */	bge lbl_80258C9C
/* 80258C98  48 00 00 18 */	b lbl_80258CB0
lbl_80258C9C:
/* 80258C9C  80 7F 04 14 */	lwz r3, 0x414(r31)
/* 80258CA0  4B F3 50 99 */	bl _draw__14dFile_select_cFv
/* 80258CA4  48 00 00 0C */	b lbl_80258CB0
lbl_80258CA8:
/* 80258CA8  80 7F 04 18 */	lwz r3, 0x418(r31)
/* 80258CAC  4B F3 A8 E9 */	bl _draw__14dBrightCheck_cFv
lbl_80258CB0:
/* 80258CB0  38 60 00 01 */	li r3, 1
/* 80258CB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80258CB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80258CBC  7C 08 03 A6 */	mtlr r0
/* 80258CC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80258CC4  4E 80 00 20 */	blr 
