lbl_80C1F448:
/* 80C1F448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F44C  7C 08 02 A6 */	mflr r0
/* 80C1F450  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1F458  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C1F45C  41 82 00 1C */	beq lbl_80C1F478
/* 80C1F460  3C A0 80 C2 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C1F94C@ha */
/* 80C1F464  38 05 F9 4C */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C1F94C@l */
/* 80C1F468  90 1F 00 00 */	stw r0, 0(r31)
/* 80C1F46C  7C 80 07 35 */	extsh. r0, r4
/* 80C1F470  40 81 00 08 */	ble lbl_80C1F478
/* 80C1F474  4B 6A F8 C9 */	bl __dl__FPv
lbl_80C1F478:
/* 80C1F478  7F E3 FB 78 */	mr r3, r31
/* 80C1F47C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1F480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F484  7C 08 03 A6 */	mtlr r0
/* 80C1F488  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F48C  4E 80 00 20 */	blr 
