lbl_80ACD92C:
/* 80ACD92C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACD930  7C 08 02 A6 */	mflr r0
/* 80ACD934  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACD938  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACD93C  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACD940  7C 7E 1B 78 */	mr r30, r3
/* 80ACD944  7C 9F 23 78 */	mr r31, r4
/* 80ACD948  38 00 00 03 */	li r0, 3
/* 80ACD94C  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80ACD950  38 7E 10 E8 */	addi r3, r30, 0x10e8
/* 80ACD954  4B 89 46 C4 */	b __ptmf_test
/* 80ACD958  2C 03 00 00 */	cmpwi r3, 0
/* 80ACD95C  41 82 00 18 */	beq lbl_80ACD974
/* 80ACD960  7F C3 F3 78 */	mr r3, r30
/* 80ACD964  38 80 00 00 */	li r4, 0
/* 80ACD968  39 9E 10 E8 */	addi r12, r30, 0x10e8
/* 80ACD96C  4B 89 47 18 */	b __ptmf_scall
/* 80ACD970  60 00 00 00 */	nop 
lbl_80ACD974:
/* 80ACD974  38 00 00 00 */	li r0, 0
/* 80ACD978  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80ACD97C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80ACD980  80 1F 00 04 */	lwz r0, 4(r31)
/* 80ACD984  90 7E 10 E8 */	stw r3, 0x10e8(r30)
/* 80ACD988  90 1E 10 EC */	stw r0, 0x10ec(r30)
/* 80ACD98C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80ACD990  90 1E 10 F0 */	stw r0, 0x10f0(r30)
/* 80ACD994  38 7E 10 E8 */	addi r3, r30, 0x10e8
/* 80ACD998  4B 89 46 80 */	b __ptmf_test
/* 80ACD99C  2C 03 00 00 */	cmpwi r3, 0
/* 80ACD9A0  41 82 00 18 */	beq lbl_80ACD9B8
/* 80ACD9A4  7F C3 F3 78 */	mr r3, r30
/* 80ACD9A8  38 80 00 00 */	li r4, 0
/* 80ACD9AC  39 9E 10 E8 */	addi r12, r30, 0x10e8
/* 80ACD9B0  4B 89 46 D4 */	b __ptmf_scall
/* 80ACD9B4  60 00 00 00 */	nop 
lbl_80ACD9B8:
/* 80ACD9B8  38 60 00 01 */	li r3, 1
/* 80ACD9BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACD9C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACD9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACD9C8  7C 08 03 A6 */	mtlr r0
/* 80ACD9CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACD9D0  4E 80 00 20 */	blr 
