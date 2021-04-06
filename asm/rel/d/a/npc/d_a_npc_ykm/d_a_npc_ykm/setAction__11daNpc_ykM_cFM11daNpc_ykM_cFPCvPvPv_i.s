lbl_80B56980:
/* 80B56980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B56984  7C 08 02 A6 */	mflr r0
/* 80B56988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5698C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B56990  93 C1 00 08 */	stw r30, 8(r1)
/* 80B56994  7C 7E 1B 78 */	mr r30, r3
/* 80B56998  7C 9F 23 78 */	mr r31, r4
/* 80B5699C  38 00 00 03 */	li r0, 3
/* 80B569A0  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80B569A4  38 7E 14 F0 */	addi r3, r30, 0x14f0
/* 80B569A8  4B 80 B6 71 */	bl __ptmf_test
/* 80B569AC  2C 03 00 00 */	cmpwi r3, 0
/* 80B569B0  41 82 00 18 */	beq lbl_80B569C8
/* 80B569B4  7F C3 F3 78 */	mr r3, r30
/* 80B569B8  38 80 00 00 */	li r4, 0
/* 80B569BC  39 9E 14 F0 */	addi r12, r30, 0x14f0
/* 80B569C0  4B 80 B6 C5 */	bl __ptmf_scall
/* 80B569C4  60 00 00 00 */	nop 
lbl_80B569C8:
/* 80B569C8  38 00 00 00 */	li r0, 0
/* 80B569CC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B569D0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80B569D4  80 1F 00 04 */	lwz r0, 4(r31)
/* 80B569D8  90 7E 14 F0 */	stw r3, 0x14f0(r30)
/* 80B569DC  90 1E 14 F4 */	stw r0, 0x14f4(r30)
/* 80B569E0  80 1F 00 08 */	lwz r0, 8(r31)
/* 80B569E4  90 1E 14 F8 */	stw r0, 0x14f8(r30)
/* 80B569E8  38 7E 14 F0 */	addi r3, r30, 0x14f0
/* 80B569EC  4B 80 B6 2D */	bl __ptmf_test
/* 80B569F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B569F4  41 82 00 18 */	beq lbl_80B56A0C
/* 80B569F8  7F C3 F3 78 */	mr r3, r30
/* 80B569FC  38 80 00 00 */	li r4, 0
/* 80B56A00  39 9E 14 F0 */	addi r12, r30, 0x14f0
/* 80B56A04  4B 80 B6 81 */	bl __ptmf_scall
/* 80B56A08  60 00 00 00 */	nop 
lbl_80B56A0C:
/* 80B56A0C  38 60 00 01 */	li r3, 1
/* 80B56A10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B56A14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B56A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B56A1C  7C 08 03 A6 */	mtlr r0
/* 80B56A20  38 21 00 10 */	addi r1, r1, 0x10
/* 80B56A24  4E 80 00 20 */	blr 
