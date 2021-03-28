lbl_80AEDB3C:
/* 80AEDB3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEDB40  7C 08 02 A6 */	mflr r0
/* 80AEDB44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEDB48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEDB4C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEDB50  7C 7E 1B 78 */	mr r30, r3
/* 80AEDB54  7C 9F 23 78 */	mr r31, r4
/* 80AEDB58  38 00 00 03 */	li r0, 3
/* 80AEDB5C  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80AEDB60  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80AEDB64  4B 87 44 B4 */	b __ptmf_test
/* 80AEDB68  2C 03 00 00 */	cmpwi r3, 0
/* 80AEDB6C  41 82 00 18 */	beq lbl_80AEDB84
/* 80AEDB70  7F C3 F3 78 */	mr r3, r30
/* 80AEDB74  38 80 00 00 */	li r4, 0
/* 80AEDB78  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 80AEDB7C  4B 87 45 08 */	b __ptmf_scall
/* 80AEDB80  60 00 00 00 */	nop 
lbl_80AEDB84:
/* 80AEDB84  38 00 00 00 */	li r0, 0
/* 80AEDB88  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80AEDB8C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80AEDB90  80 1F 00 04 */	lwz r0, 4(r31)
/* 80AEDB94  90 7E 0F 90 */	stw r3, 0xf90(r30)
/* 80AEDB98  90 1E 0F 94 */	stw r0, 0xf94(r30)
/* 80AEDB9C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80AEDBA0  90 1E 0F 98 */	stw r0, 0xf98(r30)
/* 80AEDBA4  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80AEDBA8  4B 87 44 70 */	b __ptmf_test
/* 80AEDBAC  2C 03 00 00 */	cmpwi r3, 0
/* 80AEDBB0  41 82 00 18 */	beq lbl_80AEDBC8
/* 80AEDBB4  7F C3 F3 78 */	mr r3, r30
/* 80AEDBB8  38 80 00 00 */	li r4, 0
/* 80AEDBBC  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 80AEDBC0  4B 87 44 C4 */	b __ptmf_scall
/* 80AEDBC4  60 00 00 00 */	nop 
lbl_80AEDBC8:
/* 80AEDBC8  38 60 00 01 */	li r3, 1
/* 80AEDBCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEDBD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEDBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEDBD8  7C 08 03 A6 */	mtlr r0
/* 80AEDBDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEDBE0  4E 80 00 20 */	blr 
