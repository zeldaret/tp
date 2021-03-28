lbl_8096ED68:
/* 8096ED68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096ED6C  7C 08 02 A6 */	mflr r0
/* 8096ED70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096ED74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096ED78  93 C1 00 08 */	stw r30, 8(r1)
/* 8096ED7C  7C 7E 1B 78 */	mr r30, r3
/* 8096ED80  7C 9F 23 78 */	mr r31, r4
/* 8096ED84  38 00 00 03 */	li r0, 3
/* 8096ED88  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 8096ED8C  38 7E 0F D0 */	addi r3, r30, 0xfd0
/* 8096ED90  4B 9F 32 88 */	b __ptmf_test
/* 8096ED94  2C 03 00 00 */	cmpwi r3, 0
/* 8096ED98  41 82 00 18 */	beq lbl_8096EDB0
/* 8096ED9C  7F C3 F3 78 */	mr r3, r30
/* 8096EDA0  38 80 00 00 */	li r4, 0
/* 8096EDA4  39 9E 0F D0 */	addi r12, r30, 0xfd0
/* 8096EDA8  4B 9F 32 DC */	b __ptmf_scall
/* 8096EDAC  60 00 00 00 */	nop 
lbl_8096EDB0:
/* 8096EDB0  38 00 00 00 */	li r0, 0
/* 8096EDB4  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 8096EDB8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8096EDBC  80 1F 00 04 */	lwz r0, 4(r31)
/* 8096EDC0  90 7E 0F D0 */	stw r3, 0xfd0(r30)
/* 8096EDC4  90 1E 0F D4 */	stw r0, 0xfd4(r30)
/* 8096EDC8  80 1F 00 08 */	lwz r0, 8(r31)
/* 8096EDCC  90 1E 0F D8 */	stw r0, 0xfd8(r30)
/* 8096EDD0  38 7E 0F D0 */	addi r3, r30, 0xfd0
/* 8096EDD4  4B 9F 32 44 */	b __ptmf_test
/* 8096EDD8  2C 03 00 00 */	cmpwi r3, 0
/* 8096EDDC  41 82 00 18 */	beq lbl_8096EDF4
/* 8096EDE0  7F C3 F3 78 */	mr r3, r30
/* 8096EDE4  38 80 00 00 */	li r4, 0
/* 8096EDE8  39 9E 0F D0 */	addi r12, r30, 0xfd0
/* 8096EDEC  4B 9F 32 98 */	b __ptmf_scall
/* 8096EDF0  60 00 00 00 */	nop 
lbl_8096EDF4:
/* 8096EDF4  38 60 00 01 */	li r3, 1
/* 8096EDF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096EDFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8096EE00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096EE04  7C 08 03 A6 */	mtlr r0
/* 8096EE08  38 21 00 10 */	addi r1, r1, 0x10
/* 8096EE0C  4E 80 00 20 */	blr 
