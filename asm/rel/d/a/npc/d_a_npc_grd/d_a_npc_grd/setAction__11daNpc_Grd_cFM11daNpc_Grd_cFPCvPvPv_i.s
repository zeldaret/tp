lbl_809D1F7C:
/* 809D1F7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D1F80  7C 08 02 A6 */	mflr r0
/* 809D1F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D1F88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D1F8C  93 C1 00 08 */	stw r30, 8(r1)
/* 809D1F90  7C 7E 1B 78 */	mr r30, r3
/* 809D1F94  7C 9F 23 78 */	mr r31, r4
/* 809D1F98  38 00 00 03 */	li r0, 3
/* 809D1F9C  B0 03 0E 16 */	sth r0, 0xe16(r3)
/* 809D1FA0  38 7E 0D DC */	addi r3, r30, 0xddc
/* 809D1FA4  4B 99 00 75 */	bl __ptmf_test
/* 809D1FA8  2C 03 00 00 */	cmpwi r3, 0
/* 809D1FAC  41 82 00 18 */	beq lbl_809D1FC4
/* 809D1FB0  7F C3 F3 78 */	mr r3, r30
/* 809D1FB4  38 80 00 00 */	li r4, 0
/* 809D1FB8  39 9E 0D DC */	addi r12, r30, 0xddc
/* 809D1FBC  4B 99 00 C9 */	bl __ptmf_scall
/* 809D1FC0  60 00 00 00 */	nop 
lbl_809D1FC4:
/* 809D1FC4  38 00 00 00 */	li r0, 0
/* 809D1FC8  B0 1E 0E 16 */	sth r0, 0xe16(r30)
/* 809D1FCC  80 7F 00 00 */	lwz r3, 0(r31)
/* 809D1FD0  80 1F 00 04 */	lwz r0, 4(r31)
/* 809D1FD4  90 7E 0D DC */	stw r3, 0xddc(r30)
/* 809D1FD8  90 1E 0D E0 */	stw r0, 0xde0(r30)
/* 809D1FDC  80 1F 00 08 */	lwz r0, 8(r31)
/* 809D1FE0  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 809D1FE4  38 7E 0D DC */	addi r3, r30, 0xddc
/* 809D1FE8  4B 99 00 31 */	bl __ptmf_test
/* 809D1FEC  2C 03 00 00 */	cmpwi r3, 0
/* 809D1FF0  41 82 00 18 */	beq lbl_809D2008
/* 809D1FF4  7F C3 F3 78 */	mr r3, r30
/* 809D1FF8  38 80 00 00 */	li r4, 0
/* 809D1FFC  39 9E 0D DC */	addi r12, r30, 0xddc
/* 809D2000  4B 99 00 85 */	bl __ptmf_scall
/* 809D2004  60 00 00 00 */	nop 
lbl_809D2008:
/* 809D2008  38 60 00 01 */	li r3, 1
/* 809D200C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D2010  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D2014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D2018  7C 08 03 A6 */	mtlr r0
/* 809D201C  38 21 00 10 */	addi r1, r1, 0x10
/* 809D2020  4E 80 00 20 */	blr 
