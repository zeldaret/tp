lbl_809CD7C0:
/* 809CD7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CD7C4  7C 08 02 A6 */	mflr r0
/* 809CD7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CD7CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CD7D0  93 C1 00 08 */	stw r30, 8(r1)
/* 809CD7D4  7C 7E 1B 78 */	mr r30, r3
/* 809CD7D8  7C 9F 23 78 */	mr r31, r4
/* 809CD7DC  38 00 00 03 */	li r0, 3
/* 809CD7E0  B0 03 0E 46 */	sth r0, 0xe46(r3)
/* 809CD7E4  38 7E 0E 0C */	addi r3, r30, 0xe0c
/* 809CD7E8  4B 99 48 30 */	b __ptmf_test
/* 809CD7EC  2C 03 00 00 */	cmpwi r3, 0
/* 809CD7F0  41 82 00 18 */	beq lbl_809CD808
/* 809CD7F4  7F C3 F3 78 */	mr r3, r30
/* 809CD7F8  38 80 00 00 */	li r4, 0
/* 809CD7FC  39 9E 0E 0C */	addi r12, r30, 0xe0c
/* 809CD800  4B 99 48 84 */	b __ptmf_scall
/* 809CD804  60 00 00 00 */	nop 
lbl_809CD808:
/* 809CD808  38 00 00 00 */	li r0, 0
/* 809CD80C  B0 1E 0E 46 */	sth r0, 0xe46(r30)
/* 809CD810  80 7F 00 00 */	lwz r3, 0(r31)
/* 809CD814  80 1F 00 04 */	lwz r0, 4(r31)
/* 809CD818  90 7E 0E 0C */	stw r3, 0xe0c(r30)
/* 809CD81C  90 1E 0E 10 */	stw r0, 0xe10(r30)
/* 809CD820  80 1F 00 08 */	lwz r0, 8(r31)
/* 809CD824  90 1E 0E 14 */	stw r0, 0xe14(r30)
/* 809CD828  38 7E 0E 0C */	addi r3, r30, 0xe0c
/* 809CD82C  4B 99 47 EC */	b __ptmf_test
/* 809CD830  2C 03 00 00 */	cmpwi r3, 0
/* 809CD834  41 82 00 18 */	beq lbl_809CD84C
/* 809CD838  7F C3 F3 78 */	mr r3, r30
/* 809CD83C  38 80 00 00 */	li r4, 0
/* 809CD840  39 9E 0E 0C */	addi r12, r30, 0xe0c
/* 809CD844  4B 99 48 40 */	b __ptmf_scall
/* 809CD848  60 00 00 00 */	nop 
lbl_809CD84C:
/* 809CD84C  38 60 00 01 */	li r3, 1
/* 809CD850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CD854  83 C1 00 08 */	lwz r30, 8(r1)
/* 809CD858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CD85C  7C 08 03 A6 */	mtlr r0
/* 809CD860  38 21 00 10 */	addi r1, r1, 0x10
/* 809CD864  4E 80 00 20 */	blr 
