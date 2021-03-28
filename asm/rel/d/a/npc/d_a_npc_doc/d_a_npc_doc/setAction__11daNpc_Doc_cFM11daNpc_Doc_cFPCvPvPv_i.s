lbl_809A864C:
/* 809A864C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A8650  7C 08 02 A6 */	mflr r0
/* 809A8654  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A8658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A865C  93 C1 00 08 */	stw r30, 8(r1)
/* 809A8660  7C 7E 1B 78 */	mr r30, r3
/* 809A8664  7C 9F 23 78 */	mr r31, r4
/* 809A8668  38 00 00 03 */	li r0, 3
/* 809A866C  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 809A8670  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 809A8674  4B 9B 99 A4 */	b __ptmf_test
/* 809A8678  2C 03 00 00 */	cmpwi r3, 0
/* 809A867C  41 82 00 18 */	beq lbl_809A8694
/* 809A8680  7F C3 F3 78 */	mr r3, r30
/* 809A8684  38 80 00 00 */	li r4, 0
/* 809A8688  39 9E 0F B8 */	addi r12, r30, 0xfb8
/* 809A868C  4B 9B 99 F8 */	b __ptmf_scall
/* 809A8690  60 00 00 00 */	nop 
lbl_809A8694:
/* 809A8694  38 00 00 00 */	li r0, 0
/* 809A8698  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 809A869C  80 7F 00 00 */	lwz r3, 0(r31)
/* 809A86A0  80 1F 00 04 */	lwz r0, 4(r31)
/* 809A86A4  90 7E 0F B8 */	stw r3, 0xfb8(r30)
/* 809A86A8  90 1E 0F BC */	stw r0, 0xfbc(r30)
/* 809A86AC  80 1F 00 08 */	lwz r0, 8(r31)
/* 809A86B0  90 1E 0F C0 */	stw r0, 0xfc0(r30)
/* 809A86B4  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 809A86B8  4B 9B 99 60 */	b __ptmf_test
/* 809A86BC  2C 03 00 00 */	cmpwi r3, 0
/* 809A86C0  41 82 00 18 */	beq lbl_809A86D8
/* 809A86C4  7F C3 F3 78 */	mr r3, r30
/* 809A86C8  38 80 00 00 */	li r4, 0
/* 809A86CC  39 9E 0F B8 */	addi r12, r30, 0xfb8
/* 809A86D0  4B 9B 99 B4 */	b __ptmf_scall
/* 809A86D4  60 00 00 00 */	nop 
lbl_809A86D8:
/* 809A86D8  38 60 00 01 */	li r3, 1
/* 809A86DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A86E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A86E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A86E8  7C 08 03 A6 */	mtlr r0
/* 809A86EC  38 21 00 10 */	addi r1, r1, 0x10
/* 809A86F0  4E 80 00 20 */	blr 
