lbl_80043428:
/* 80043428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004342C  7C 08 02 A6 */	mflr r0
/* 80043430  90 01 00 14 */	stw r0, 0x14(r1)
/* 80043434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80043438  7C 7F 1B 78 */	mr r31, r3
/* 8004343C  28 04 00 00 */	cmplwi r4, 0
/* 80043440  40 82 00 10 */	bne lbl_80043450
/* 80043444  38 00 FF FF */	li r0, -1
/* 80043448  B0 1F 00 08 */	sth r0, 8(r31)
/* 8004344C  48 00 00 20 */	b lbl_8004346C
lbl_80043450:
/* 80043450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80043454  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80043458  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8004345C  38 A0 00 FF */	li r5, 0xff
/* 80043460  38 C0 FF FF */	li r6, -1
/* 80043464  48 00 40 B1 */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 80043468  B0 7F 00 08 */	sth r3, 8(r31)
lbl_8004346C:
/* 8004346C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80043470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80043474  7C 08 03 A6 */	mtlr r0
/* 80043478  38 21 00 10 */	addi r1, r1, 0x10
/* 8004347C  4E 80 00 20 */	blr 
