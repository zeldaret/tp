lbl_8095F21C:
/* 8095F21C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095F220  7C 08 02 A6 */	mflr r0
/* 8095F224  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095F228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095F22C  93 C1 00 08 */	stw r30, 8(r1)
/* 8095F230  7C 7E 1B 78 */	mr r30, r3
/* 8095F234  7C 9F 23 78 */	mr r31, r4
/* 8095F238  38 00 00 03 */	li r0, 3
/* 8095F23C  B0 03 0D E8 */	sth r0, 0xde8(r3)
/* 8095F240  38 7E 0D C4 */	addi r3, r30, 0xdc4
/* 8095F244  4B A0 2D D5 */	bl __ptmf_test
/* 8095F248  2C 03 00 00 */	cmpwi r3, 0
/* 8095F24C  41 82 00 18 */	beq lbl_8095F264
/* 8095F250  7F C3 F3 78 */	mr r3, r30
/* 8095F254  38 80 00 00 */	li r4, 0
/* 8095F258  39 9E 0D C4 */	addi r12, r30, 0xdc4
/* 8095F25C  4B A0 2E 29 */	bl __ptmf_scall
/* 8095F260  60 00 00 00 */	nop 
lbl_8095F264:
/* 8095F264  38 00 00 00 */	li r0, 0
/* 8095F268  B0 1E 0D E8 */	sth r0, 0xde8(r30)
/* 8095F26C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8095F270  80 1F 00 04 */	lwz r0, 4(r31)
/* 8095F274  90 7E 0D C4 */	stw r3, 0xdc4(r30)
/* 8095F278  90 1E 0D C8 */	stw r0, 0xdc8(r30)
/* 8095F27C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8095F280  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 8095F284  38 7E 0D C4 */	addi r3, r30, 0xdc4
/* 8095F288  4B A0 2D 91 */	bl __ptmf_test
/* 8095F28C  2C 03 00 00 */	cmpwi r3, 0
/* 8095F290  41 82 00 18 */	beq lbl_8095F2A8
/* 8095F294  7F C3 F3 78 */	mr r3, r30
/* 8095F298  38 80 00 00 */	li r4, 0
/* 8095F29C  39 9E 0D C4 */	addi r12, r30, 0xdc4
/* 8095F2A0  4B A0 2D E5 */	bl __ptmf_scall
/* 8095F2A4  60 00 00 00 */	nop 
lbl_8095F2A8:
/* 8095F2A8  38 60 00 01 */	li r3, 1
/* 8095F2AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095F2B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8095F2B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095F2B8  7C 08 03 A6 */	mtlr r0
/* 8095F2BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8095F2C0  4E 80 00 20 */	blr 
