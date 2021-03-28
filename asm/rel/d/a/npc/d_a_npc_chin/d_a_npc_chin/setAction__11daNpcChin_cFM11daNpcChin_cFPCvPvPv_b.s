lbl_8098E5C4:
/* 8098E5C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098E5C8  7C 08 02 A6 */	mflr r0
/* 8098E5CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098E5D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098E5D4  93 C1 00 08 */	stw r30, 8(r1)
/* 8098E5D8  7C 7E 1B 78 */	mr r30, r3
/* 8098E5DC  7C 9F 23 78 */	mr r31, r4
/* 8098E5E0  38 00 FF FF */	li r0, -1
/* 8098E5E4  B0 03 0E 04 */	sth r0, 0xe04(r3)
/* 8098E5E8  38 7E 0D B8 */	addi r3, r30, 0xdb8
/* 8098E5EC  4B 9D 3A 2C */	b __ptmf_test
/* 8098E5F0  2C 03 00 00 */	cmpwi r3, 0
/* 8098E5F4  41 82 00 18 */	beq lbl_8098E60C
/* 8098E5F8  7F C3 F3 78 */	mr r3, r30
/* 8098E5FC  38 80 00 00 */	li r4, 0
/* 8098E600  39 9E 0D B8 */	addi r12, r30, 0xdb8
/* 8098E604  4B 9D 3A 80 */	b __ptmf_scall
/* 8098E608  60 00 00 00 */	nop 
lbl_8098E60C:
/* 8098E60C  38 00 00 00 */	li r0, 0
/* 8098E610  B0 1E 0E 04 */	sth r0, 0xe04(r30)
/* 8098E614  80 7F 00 00 */	lwz r3, 0(r31)
/* 8098E618  80 1F 00 04 */	lwz r0, 4(r31)
/* 8098E61C  90 7E 0D B8 */	stw r3, 0xdb8(r30)
/* 8098E620  90 1E 0D BC */	stw r0, 0xdbc(r30)
/* 8098E624  80 1F 00 08 */	lwz r0, 8(r31)
/* 8098E628  90 1E 0D C0 */	stw r0, 0xdc0(r30)
/* 8098E62C  38 7E 0D B8 */	addi r3, r30, 0xdb8
/* 8098E630  4B 9D 39 E8 */	b __ptmf_test
/* 8098E634  2C 03 00 00 */	cmpwi r3, 0
/* 8098E638  41 82 00 18 */	beq lbl_8098E650
/* 8098E63C  7F C3 F3 78 */	mr r3, r30
/* 8098E640  38 80 00 00 */	li r4, 0
/* 8098E644  39 9E 0D B8 */	addi r12, r30, 0xdb8
/* 8098E648  4B 9D 3A 3C */	b __ptmf_scall
/* 8098E64C  60 00 00 00 */	nop 
lbl_8098E650:
/* 8098E650  38 60 00 01 */	li r3, 1
/* 8098E654  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8098E658  83 C1 00 08 */	lwz r30, 8(r1)
/* 8098E65C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098E660  7C 08 03 A6 */	mtlr r0
/* 8098E664  38 21 00 10 */	addi r1, r1, 0x10
/* 8098E668  4E 80 00 20 */	blr 
