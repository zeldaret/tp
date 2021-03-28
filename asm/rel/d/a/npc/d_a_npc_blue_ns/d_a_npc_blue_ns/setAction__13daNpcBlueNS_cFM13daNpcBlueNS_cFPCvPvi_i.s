lbl_8096A750:
/* 8096A750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096A754  7C 08 02 A6 */	mflr r0
/* 8096A758  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096A75C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096A760  93 C1 00 08 */	stw r30, 8(r1)
/* 8096A764  7C 7E 1B 78 */	mr r30, r3
/* 8096A768  7C 9F 23 78 */	mr r31, r4
/* 8096A76C  38 00 00 03 */	li r0, 3
/* 8096A770  B0 03 0D C0 */	sth r0, 0xdc0(r3)
/* 8096A774  38 7E 0D C4 */	addi r3, r30, 0xdc4
/* 8096A778  4B 9F 78 A0 */	b __ptmf_test
/* 8096A77C  2C 03 00 00 */	cmpwi r3, 0
/* 8096A780  41 82 00 18 */	beq lbl_8096A798
/* 8096A784  7F C3 F3 78 */	mr r3, r30
/* 8096A788  38 80 00 00 */	li r4, 0
/* 8096A78C  39 9E 0D C4 */	addi r12, r30, 0xdc4
/* 8096A790  4B 9F 78 F4 */	b __ptmf_scall
/* 8096A794  60 00 00 00 */	nop 
lbl_8096A798:
/* 8096A798  38 00 00 00 */	li r0, 0
/* 8096A79C  B0 1E 0D C0 */	sth r0, 0xdc0(r30)
/* 8096A7A0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8096A7A4  80 1F 00 04 */	lwz r0, 4(r31)
/* 8096A7A8  90 7E 0D C4 */	stw r3, 0xdc4(r30)
/* 8096A7AC  90 1E 0D C8 */	stw r0, 0xdc8(r30)
/* 8096A7B0  80 1F 00 08 */	lwz r0, 8(r31)
/* 8096A7B4  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 8096A7B8  38 7E 0D C4 */	addi r3, r30, 0xdc4
/* 8096A7BC  4B 9F 78 5C */	b __ptmf_test
/* 8096A7C0  2C 03 00 00 */	cmpwi r3, 0
/* 8096A7C4  41 82 00 18 */	beq lbl_8096A7DC
/* 8096A7C8  7F C3 F3 78 */	mr r3, r30
/* 8096A7CC  38 80 00 00 */	li r4, 0
/* 8096A7D0  39 9E 0D C4 */	addi r12, r30, 0xdc4
/* 8096A7D4  4B 9F 78 B0 */	b __ptmf_scall
/* 8096A7D8  60 00 00 00 */	nop 
lbl_8096A7DC:
/* 8096A7DC  38 60 00 01 */	li r3, 1
/* 8096A7E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096A7E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8096A7E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096A7EC  7C 08 03 A6 */	mtlr r0
/* 8096A7F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8096A7F4  4E 80 00 20 */	blr 
