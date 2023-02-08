lbl_80A9955C:
/* 80A9955C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A99560  7C 08 02 A6 */	mflr r0
/* 80A99564  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A99568  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9956C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A99570  7C 7E 1B 78 */	mr r30, r3
/* 80A99574  7C 9F 23 78 */	mr r31, r4
/* 80A99578  38 00 00 03 */	li r0, 3
/* 80A9957C  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80A99580  38 7E 0F BC */	addi r3, r30, 0xfbc
/* 80A99584  4B 8C 8A 95 */	bl __ptmf_test
/* 80A99588  2C 03 00 00 */	cmpwi r3, 0
/* 80A9958C  41 82 00 18 */	beq lbl_80A995A4
/* 80A99590  7F C3 F3 78 */	mr r3, r30
/* 80A99594  38 80 00 00 */	li r4, 0
/* 80A99598  39 9E 0F BC */	addi r12, r30, 0xfbc
/* 80A9959C  4B 8C 8A E9 */	bl __ptmf_scall
/* 80A995A0  60 00 00 00 */	nop 
lbl_80A995A4:
/* 80A995A4  38 00 00 00 */	li r0, 0
/* 80A995A8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A995AC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A995B0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80A995B4  90 7E 0F BC */	stw r3, 0xfbc(r30)
/* 80A995B8  90 1E 0F C0 */	stw r0, 0xfc0(r30)
/* 80A995BC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80A995C0  90 1E 0F C4 */	stw r0, 0xfc4(r30)
/* 80A995C4  38 7E 0F BC */	addi r3, r30, 0xfbc
/* 80A995C8  4B 8C 8A 51 */	bl __ptmf_test
/* 80A995CC  2C 03 00 00 */	cmpwi r3, 0
/* 80A995D0  41 82 00 18 */	beq lbl_80A995E8
/* 80A995D4  7F C3 F3 78 */	mr r3, r30
/* 80A995D8  38 80 00 00 */	li r4, 0
/* 80A995DC  39 9E 0F BC */	addi r12, r30, 0xfbc
/* 80A995E0  4B 8C 8A A5 */	bl __ptmf_scall
/* 80A995E4  60 00 00 00 */	nop 
lbl_80A995E8:
/* 80A995E8  38 60 00 01 */	li r3, 1
/* 80A995EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A995F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A995F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A995F8  7C 08 03 A6 */	mtlr r0
/* 80A995FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A99600  4E 80 00 20 */	blr 
