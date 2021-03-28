lbl_80AD6678:
/* 80AD6678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD667C  7C 08 02 A6 */	mflr r0
/* 80AD6680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD6684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD6688  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD668C  7C 7E 1B 78 */	mr r30, r3
/* 80AD6690  7C 9F 23 78 */	mr r31, r4
/* 80AD6694  38 00 00 03 */	li r0, 3
/* 80AD6698  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80AD669C  38 7E 0E 54 */	addi r3, r30, 0xe54
/* 80AD66A0  4B 88 B9 78 */	b __ptmf_test
/* 80AD66A4  2C 03 00 00 */	cmpwi r3, 0
/* 80AD66A8  41 82 00 18 */	beq lbl_80AD66C0
/* 80AD66AC  7F C3 F3 78 */	mr r3, r30
/* 80AD66B0  38 80 00 00 */	li r4, 0
/* 80AD66B4  39 9E 0E 54 */	addi r12, r30, 0xe54
/* 80AD66B8  4B 88 B9 CC */	b __ptmf_scall
/* 80AD66BC  60 00 00 00 */	nop 
lbl_80AD66C0:
/* 80AD66C0  38 00 00 00 */	li r0, 0
/* 80AD66C4  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80AD66C8  80 7F 00 00 */	lwz r3, 0(r31)
/* 80AD66CC  80 1F 00 04 */	lwz r0, 4(r31)
/* 80AD66D0  90 7E 0E 54 */	stw r3, 0xe54(r30)
/* 80AD66D4  90 1E 0E 58 */	stw r0, 0xe58(r30)
/* 80AD66D8  80 1F 00 08 */	lwz r0, 8(r31)
/* 80AD66DC  90 1E 0E 5C */	stw r0, 0xe5c(r30)
/* 80AD66E0  38 7E 0E 54 */	addi r3, r30, 0xe54
/* 80AD66E4  4B 88 B9 34 */	b __ptmf_test
/* 80AD66E8  2C 03 00 00 */	cmpwi r3, 0
/* 80AD66EC  41 82 00 18 */	beq lbl_80AD6704
/* 80AD66F0  7F C3 F3 78 */	mr r3, r30
/* 80AD66F4  38 80 00 00 */	li r4, 0
/* 80AD66F8  39 9E 0E 54 */	addi r12, r30, 0xe54
/* 80AD66FC  4B 88 B9 88 */	b __ptmf_scall
/* 80AD6700  60 00 00 00 */	nop 
lbl_80AD6704:
/* 80AD6704  38 60 00 01 */	li r3, 1
/* 80AD6708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD670C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD6710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD6714  7C 08 03 A6 */	mtlr r0
/* 80AD6718  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD671C  4E 80 00 20 */	blr 
