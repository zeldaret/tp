lbl_80D10578:
/* 80D10578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1057C  7C 08 02 A6 */	mflr r0
/* 80D10580  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D10584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D10588  93 C1 00 08 */	stw r30, 8(r1)
/* 80D1058C  7C 7E 1B 78 */	mr r30, r3
/* 80D10590  7C 9F 23 78 */	mr r31, r4
/* 80D10594  38 00 00 03 */	li r0, 3
/* 80D10598  B0 03 0D DE */	sth r0, 0xdde(r3)
/* 80D1059C  38 7E 0D B8 */	addi r3, r30, 0xdb8
/* 80D105A0  4B 65 1A 78 */	b __ptmf_test
/* 80D105A4  2C 03 00 00 */	cmpwi r3, 0
/* 80D105A8  41 82 00 14 */	beq lbl_80D105BC
/* 80D105AC  7F C3 F3 78 */	mr r3, r30
/* 80D105B0  39 9E 0D B8 */	addi r12, r30, 0xdb8
/* 80D105B4  4B 65 1A D0 */	b __ptmf_scall
/* 80D105B8  60 00 00 00 */	nop 
lbl_80D105BC:
/* 80D105BC  38 00 00 00 */	li r0, 0
/* 80D105C0  B0 1E 0D DE */	sth r0, 0xdde(r30)
/* 80D105C4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80D105C8  80 1F 00 04 */	lwz r0, 4(r31)
/* 80D105CC  90 7E 0D B8 */	stw r3, 0xdb8(r30)
/* 80D105D0  90 1E 0D BC */	stw r0, 0xdbc(r30)
/* 80D105D4  80 1F 00 08 */	lwz r0, 8(r31)
/* 80D105D8  90 1E 0D C0 */	stw r0, 0xdc0(r30)
/* 80D105DC  38 7E 0D B8 */	addi r3, r30, 0xdb8
/* 80D105E0  4B 65 1A 38 */	b __ptmf_test
/* 80D105E4  2C 03 00 00 */	cmpwi r3, 0
/* 80D105E8  41 82 00 14 */	beq lbl_80D105FC
/* 80D105EC  7F C3 F3 78 */	mr r3, r30
/* 80D105F0  39 9E 0D B8 */	addi r12, r30, 0xdb8
/* 80D105F4  4B 65 1A 90 */	b __ptmf_scall
/* 80D105F8  60 00 00 00 */	nop 
lbl_80D105FC:
/* 80D105FC  38 60 00 01 */	li r3, 1
/* 80D10600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D10604  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D10608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1060C  7C 08 03 A6 */	mtlr r0
/* 80D10610  38 21 00 10 */	addi r1, r1, 0x10
/* 80D10614  4E 80 00 20 */	blr 
