lbl_809FB6F8:
/* 809FB6F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FB6FC  7C 08 02 A6 */	mflr r0
/* 809FB700  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FB704  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FB708  93 C1 00 08 */	stw r30, 8(r1)
/* 809FB70C  7C 7E 1B 78 */	mr r30, r3
/* 809FB710  7C 9F 23 78 */	mr r31, r4
/* 809FB714  38 00 00 03 */	li r0, 3
/* 809FB718  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 809FB71C  38 7E 16 EC */	addi r3, r30, 0x16ec
/* 809FB720  4B 96 68 F8 */	b __ptmf_test
/* 809FB724  2C 03 00 00 */	cmpwi r3, 0
/* 809FB728  41 82 00 18 */	beq lbl_809FB740
/* 809FB72C  7F C3 F3 78 */	mr r3, r30
/* 809FB730  38 80 00 00 */	li r4, 0
/* 809FB734  39 9E 16 EC */	addi r12, r30, 0x16ec
/* 809FB738  4B 96 69 4C */	b __ptmf_scall
/* 809FB73C  60 00 00 00 */	nop 
lbl_809FB740:
/* 809FB740  38 00 00 00 */	li r0, 0
/* 809FB744  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 809FB748  80 7F 00 00 */	lwz r3, 0(r31)
/* 809FB74C  80 1F 00 04 */	lwz r0, 4(r31)
/* 809FB750  90 7E 16 EC */	stw r3, 0x16ec(r30)
/* 809FB754  90 1E 16 F0 */	stw r0, 0x16f0(r30)
/* 809FB758  80 1F 00 08 */	lwz r0, 8(r31)
/* 809FB75C  90 1E 16 F4 */	stw r0, 0x16f4(r30)
/* 809FB760  38 7E 16 EC */	addi r3, r30, 0x16ec
/* 809FB764  4B 96 68 B4 */	b __ptmf_test
/* 809FB768  2C 03 00 00 */	cmpwi r3, 0
/* 809FB76C  41 82 00 18 */	beq lbl_809FB784
/* 809FB770  7F C3 F3 78 */	mr r3, r30
/* 809FB774  38 80 00 00 */	li r4, 0
/* 809FB778  39 9E 16 EC */	addi r12, r30, 0x16ec
/* 809FB77C  4B 96 69 08 */	b __ptmf_scall
/* 809FB780  60 00 00 00 */	nop 
lbl_809FB784:
/* 809FB784  38 60 00 01 */	li r3, 1
/* 809FB788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FB78C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809FB790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FB794  7C 08 03 A6 */	mtlr r0
/* 809FB798  38 21 00 10 */	addi r1, r1, 0x10
/* 809FB79C  4E 80 00 20 */	blr 
