lbl_809AB984:
/* 809AB984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AB988  7C 08 02 A6 */	mflr r0
/* 809AB98C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AB990  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AB994  93 C1 00 08 */	stw r30, 8(r1)
/* 809AB998  7C 7E 1B 78 */	mr r30, r3
/* 809AB99C  7C 9F 23 78 */	mr r31, r4
/* 809AB9A0  38 00 00 03 */	li r0, 3
/* 809AB9A4  B0 03 0E 04 */	sth r0, 0xe04(r3)
/* 809AB9A8  38 7E 0D D4 */	addi r3, r30, 0xdd4
/* 809AB9AC  4B 9B 66 6D */	bl __ptmf_test
/* 809AB9B0  2C 03 00 00 */	cmpwi r3, 0
/* 809AB9B4  41 82 00 18 */	beq lbl_809AB9CC
/* 809AB9B8  7F C3 F3 78 */	mr r3, r30
/* 809AB9BC  38 80 00 00 */	li r4, 0
/* 809AB9C0  39 9E 0D D4 */	addi r12, r30, 0xdd4
/* 809AB9C4  4B 9B 66 C1 */	bl __ptmf_scall
/* 809AB9C8  60 00 00 00 */	nop 
lbl_809AB9CC:
/* 809AB9CC  38 00 00 00 */	li r0, 0
/* 809AB9D0  B0 1E 0E 04 */	sth r0, 0xe04(r30)
/* 809AB9D4  80 7F 00 00 */	lwz r3, 0(r31)
/* 809AB9D8  80 1F 00 04 */	lwz r0, 4(r31)
/* 809AB9DC  90 7E 0D D4 */	stw r3, 0xdd4(r30)
/* 809AB9E0  90 1E 0D D8 */	stw r0, 0xdd8(r30)
/* 809AB9E4  80 1F 00 08 */	lwz r0, 8(r31)
/* 809AB9E8  90 1E 0D DC */	stw r0, 0xddc(r30)
/* 809AB9EC  38 7E 0D D4 */	addi r3, r30, 0xdd4
/* 809AB9F0  4B 9B 66 29 */	bl __ptmf_test
/* 809AB9F4  2C 03 00 00 */	cmpwi r3, 0
/* 809AB9F8  41 82 00 18 */	beq lbl_809ABA10
/* 809AB9FC  7F C3 F3 78 */	mr r3, r30
/* 809ABA00  38 80 00 00 */	li r4, 0
/* 809ABA04  39 9E 0D D4 */	addi r12, r30, 0xdd4
/* 809ABA08  4B 9B 66 7D */	bl __ptmf_scall
/* 809ABA0C  60 00 00 00 */	nop 
lbl_809ABA10:
/* 809ABA10  38 60 00 01 */	li r3, 1
/* 809ABA14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809ABA18  83 C1 00 08 */	lwz r30, 8(r1)
/* 809ABA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809ABA20  7C 08 03 A6 */	mtlr r0
/* 809ABA24  38 21 00 10 */	addi r1, r1, 0x10
/* 809ABA28  4E 80 00 20 */	blr 
