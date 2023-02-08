lbl_80A1D77C:
/* 80A1D77C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1D780  7C 08 02 A6 */	mflr r0
/* 80A1D784  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1D788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1D78C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A1D790  7C 7E 1B 78 */	mr r30, r3
/* 80A1D794  7C 9F 23 78 */	mr r31, r4
/* 80A1D798  38 00 FF FF */	li r0, -1
/* 80A1D79C  B0 03 14 06 */	sth r0, 0x1406(r3)
/* 80A1D7A0  38 7E 14 08 */	addi r3, r30, 0x1408
/* 80A1D7A4  4B 94 48 75 */	bl __ptmf_test
/* 80A1D7A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A1D7AC  41 82 00 18 */	beq lbl_80A1D7C4
/* 80A1D7B0  7F C3 F3 78 */	mr r3, r30
/* 80A1D7B4  38 80 00 00 */	li r4, 0
/* 80A1D7B8  39 9E 14 08 */	addi r12, r30, 0x1408
/* 80A1D7BC  4B 94 48 C9 */	bl __ptmf_scall
/* 80A1D7C0  60 00 00 00 */	nop 
lbl_80A1D7C4:
/* 80A1D7C4  38 00 00 00 */	li r0, 0
/* 80A1D7C8  B0 1E 14 06 */	sth r0, 0x1406(r30)
/* 80A1D7CC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A1D7D0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80A1D7D4  90 7E 14 08 */	stw r3, 0x1408(r30)
/* 80A1D7D8  90 1E 14 0C */	stw r0, 0x140c(r30)
/* 80A1D7DC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80A1D7E0  90 1E 14 10 */	stw r0, 0x1410(r30)
/* 80A1D7E4  38 7E 14 08 */	addi r3, r30, 0x1408
/* 80A1D7E8  4B 94 48 31 */	bl __ptmf_test
/* 80A1D7EC  2C 03 00 00 */	cmpwi r3, 0
/* 80A1D7F0  41 82 00 18 */	beq lbl_80A1D808
/* 80A1D7F4  7F C3 F3 78 */	mr r3, r30
/* 80A1D7F8  38 80 00 00 */	li r4, 0
/* 80A1D7FC  39 9E 14 08 */	addi r12, r30, 0x1408
/* 80A1D800  4B 94 48 85 */	bl __ptmf_scall
/* 80A1D804  60 00 00 00 */	nop 
lbl_80A1D808:
/* 80A1D808  38 60 00 01 */	li r3, 1
/* 80A1D80C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1D810  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A1D814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1D818  7C 08 03 A6 */	mtlr r0
/* 80A1D81C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1D820  4E 80 00 20 */	blr 
