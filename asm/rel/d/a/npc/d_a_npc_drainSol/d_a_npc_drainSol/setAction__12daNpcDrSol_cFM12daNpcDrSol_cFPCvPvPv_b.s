lbl_809AE844:
/* 809AE844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AE848  7C 08 02 A6 */	mflr r0
/* 809AE84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AE850  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AE854  93 C1 00 08 */	stw r30, 8(r1)
/* 809AE858  7C 7E 1B 78 */	mr r30, r3
/* 809AE85C  7C 9F 23 78 */	mr r31, r4
/* 809AE860  38 00 00 03 */	li r0, 3
/* 809AE864  B0 03 0D 36 */	sth r0, 0xd36(r3)
/* 809AE868  38 7E 0D 1C */	addi r3, r30, 0xd1c
/* 809AE86C  4B 9B 37 AC */	b __ptmf_test
/* 809AE870  2C 03 00 00 */	cmpwi r3, 0
/* 809AE874  41 82 00 18 */	beq lbl_809AE88C
/* 809AE878  7F C3 F3 78 */	mr r3, r30
/* 809AE87C  38 80 00 00 */	li r4, 0
/* 809AE880  39 9E 0D 1C */	addi r12, r30, 0xd1c
/* 809AE884  4B 9B 38 00 */	b __ptmf_scall
/* 809AE888  60 00 00 00 */	nop 
lbl_809AE88C:
/* 809AE88C  38 00 00 00 */	li r0, 0
/* 809AE890  B0 1E 0D 36 */	sth r0, 0xd36(r30)
/* 809AE894  80 7F 00 00 */	lwz r3, 0(r31)
/* 809AE898  80 1F 00 04 */	lwz r0, 4(r31)
/* 809AE89C  90 7E 0D 1C */	stw r3, 0xd1c(r30)
/* 809AE8A0  90 1E 0D 20 */	stw r0, 0xd20(r30)
/* 809AE8A4  80 1F 00 08 */	lwz r0, 8(r31)
/* 809AE8A8  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 809AE8AC  38 7E 0D 1C */	addi r3, r30, 0xd1c
/* 809AE8B0  4B 9B 37 68 */	b __ptmf_test
/* 809AE8B4  2C 03 00 00 */	cmpwi r3, 0
/* 809AE8B8  41 82 00 18 */	beq lbl_809AE8D0
/* 809AE8BC  7F C3 F3 78 */	mr r3, r30
/* 809AE8C0  38 80 00 00 */	li r4, 0
/* 809AE8C4  39 9E 0D 1C */	addi r12, r30, 0xd1c
/* 809AE8C8  4B 9B 37 BC */	b __ptmf_scall
/* 809AE8CC  60 00 00 00 */	nop 
lbl_809AE8D0:
/* 809AE8D0  38 60 00 01 */	li r3, 1
/* 809AE8D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AE8D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809AE8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AE8E0  7C 08 03 A6 */	mtlr r0
/* 809AE8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 809AE8E8  4E 80 00 20 */	blr 
