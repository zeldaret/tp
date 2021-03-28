lbl_80AAFC50:
/* 80AAFC50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAFC54  7C 08 02 A6 */	mflr r0
/* 80AAFC58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAFC5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAFC60  93 C1 00 08 */	stw r30, 8(r1)
/* 80AAFC64  7C 7E 1B 78 */	mr r30, r3
/* 80AAFC68  7C 9F 23 78 */	mr r31, r4
/* 80AAFC6C  38 00 00 03 */	li r0, 3
/* 80AAFC70  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80AAFC74  38 7E 0F BC */	addi r3, r30, 0xfbc
/* 80AAFC78  4B 8B 23 A0 */	b __ptmf_test
/* 80AAFC7C  2C 03 00 00 */	cmpwi r3, 0
/* 80AAFC80  41 82 00 18 */	beq lbl_80AAFC98
/* 80AAFC84  7F C3 F3 78 */	mr r3, r30
/* 80AAFC88  38 80 00 00 */	li r4, 0
/* 80AAFC8C  39 9E 0F BC */	addi r12, r30, 0xfbc
/* 80AAFC90  4B 8B 23 F4 */	b __ptmf_scall
/* 80AAFC94  60 00 00 00 */	nop 
lbl_80AAFC98:
/* 80AAFC98  38 00 00 00 */	li r0, 0
/* 80AAFC9C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80AAFCA0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80AAFCA4  80 1F 00 04 */	lwz r0, 4(r31)
/* 80AAFCA8  90 7E 0F BC */	stw r3, 0xfbc(r30)
/* 80AAFCAC  90 1E 0F C0 */	stw r0, 0xfc0(r30)
/* 80AAFCB0  80 1F 00 08 */	lwz r0, 8(r31)
/* 80AAFCB4  90 1E 0F C4 */	stw r0, 0xfc4(r30)
/* 80AAFCB8  38 7E 0F BC */	addi r3, r30, 0xfbc
/* 80AAFCBC  4B 8B 23 5C */	b __ptmf_test
/* 80AAFCC0  2C 03 00 00 */	cmpwi r3, 0
/* 80AAFCC4  41 82 00 18 */	beq lbl_80AAFCDC
/* 80AAFCC8  7F C3 F3 78 */	mr r3, r30
/* 80AAFCCC  38 80 00 00 */	li r4, 0
/* 80AAFCD0  39 9E 0F BC */	addi r12, r30, 0xfbc
/* 80AAFCD4  4B 8B 23 B0 */	b __ptmf_scall
/* 80AAFCD8  60 00 00 00 */	nop 
lbl_80AAFCDC:
/* 80AAFCDC  38 60 00 01 */	li r3, 1
/* 80AAFCE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAFCE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AAFCE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAFCEC  7C 08 03 A6 */	mtlr r0
/* 80AAFCF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAFCF4  4E 80 00 20 */	blr 
