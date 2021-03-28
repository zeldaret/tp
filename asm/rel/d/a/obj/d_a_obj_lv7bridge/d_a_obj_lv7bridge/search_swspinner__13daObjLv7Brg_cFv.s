lbl_80C863EC:
/* 80C863EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C863F0  7C 08 02 A6 */	mflr r0
/* 80C863F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C863F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C863FC  7C 7F 1B 78 */	mr r31, r3
/* 80C86400  38 60 00 00 */	li r3, 0
/* 80C86404  80 9F 04 A4 */	lwz r4, 0x4a4(r31)
/* 80C86408  3C 04 00 01 */	addis r0, r4, 1
/* 80C8640C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C86410  40 82 00 30 */	bne lbl_80C86440
/* 80C86414  3C 60 80 C8 */	lis r3, searchSwSpinner__FPvPv@ha
/* 80C86418  38 63 63 78 */	addi r3, r3, searchSwSpinner__FPvPv@l
/* 80C8641C  7F E4 FB 78 */	mr r4, r31
/* 80C86420  4B 39 AF 18 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80C86424  28 03 00 00 */	cmplwi r3, 0
/* 80C86428  41 82 00 18 */	beq lbl_80C86440
/* 80C8642C  41 82 00 0C */	beq lbl_80C86438
/* 80C86430  80 03 00 04 */	lwz r0, 4(r3)
/* 80C86434  48 00 00 08 */	b lbl_80C8643C
lbl_80C86438:
/* 80C86438  38 00 FF FF */	li r0, -1
lbl_80C8643C:
/* 80C8643C  90 1F 04 A4 */	stw r0, 0x4a4(r31)
lbl_80C86440:
/* 80C86440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C86444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C86448  7C 08 03 A6 */	mtlr r0
/* 80C8644C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C86450  4E 80 00 20 */	blr 
