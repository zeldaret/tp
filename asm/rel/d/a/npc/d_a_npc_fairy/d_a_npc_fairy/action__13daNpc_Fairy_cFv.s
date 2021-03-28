lbl_809B379C:
/* 809B379C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B37A0  7C 08 02 A6 */	mflr r0
/* 809B37A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B37A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B37AC  7C 7F 1B 78 */	mr r31, r3
/* 809B37B0  88 03 0D 20 */	lbz r0, 0xd20(r3)
/* 809B37B4  2C 00 00 00 */	cmpwi r0, 0
/* 809B37B8  41 82 00 5C */	beq lbl_809B3814
/* 809B37BC  38 C0 00 00 */	li r6, 0
/* 809B37C0  38 60 00 00 */	li r3, 0
/* 809B37C4  7C C4 33 78 */	mr r4, r6
/* 809B37C8  3C A0 80 9C */	lis r5, lit_3943@ha
/* 809B37CC  C0 05 93 C4 */	lfs f0, lit_3943@l(r5)
/* 809B37D0  38 00 00 02 */	li r0, 2
/* 809B37D4  7C 09 03 A6 */	mtctr r0
lbl_809B37D8:
/* 809B37D8  7C BF 22 14 */	add r5, r31, r4
/* 809B37DC  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 809B37E0  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 809B37E4  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 809B37E8  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809B37EC  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809B37F0  38 63 00 04 */	addi r3, r3, 4
/* 809B37F4  38 84 00 06 */	addi r4, r4, 6
/* 809B37F8  42 00 FF E0 */	bdnz lbl_809B37D8
/* 809B37FC  38 00 00 00 */	li r0, 0
/* 809B3800  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809B3804  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809B3808  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809B380C  38 00 00 01 */	li r0, 1
/* 809B3810  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809B3814:
/* 809B3814  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 809B3818  4B 9A E8 00 */	b __ptmf_test
/* 809B381C  2C 03 00 00 */	cmpwi r3, 0
/* 809B3820  41 82 00 18 */	beq lbl_809B3838
/* 809B3824  7F E3 FB 78 */	mr r3, r31
/* 809B3828  38 80 00 00 */	li r4, 0
/* 809B382C  39 9F 0F 84 */	addi r12, r31, 0xf84
/* 809B3830  4B 9A E8 54 */	b __ptmf_scall
/* 809B3834  60 00 00 00 */	nop 
lbl_809B3838:
/* 809B3838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B383C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B3840  7C 08 03 A6 */	mtlr r0
/* 809B3844  38 21 00 10 */	addi r1, r1, 0x10
/* 809B3848  4E 80 00 20 */	blr 
