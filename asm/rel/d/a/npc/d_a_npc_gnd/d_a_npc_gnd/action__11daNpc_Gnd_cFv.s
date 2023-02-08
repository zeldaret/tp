lbl_809BC674:
/* 809BC674  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809BC678  7C 08 02 A6 */	mflr r0
/* 809BC67C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809BC680  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809BC684  7C 7F 1B 78 */	mr r31, r3
/* 809BC688  88 03 0D 20 */	lbz r0, 0xd20(r3)
/* 809BC68C  2C 00 00 00 */	cmpwi r0, 0
/* 809BC690  41 82 00 5C */	beq lbl_809BC6EC
/* 809BC694  38 C0 00 00 */	li r6, 0
/* 809BC698  38 60 00 00 */	li r3, 0
/* 809BC69C  7C C4 33 78 */	mr r4, r6
/* 809BC6A0  3C A0 80 9C */	lis r5, lit_4178@ha /* 0x809BE540@ha */
/* 809BC6A4  C0 05 E5 40 */	lfs f0, lit_4178@l(r5)  /* 0x809BE540@l */
/* 809BC6A8  38 00 00 02 */	li r0, 2
/* 809BC6AC  7C 09 03 A6 */	mtctr r0
lbl_809BC6B0:
/* 809BC6B0  7C BF 22 14 */	add r5, r31, r4
/* 809BC6B4  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 809BC6B8  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 809BC6BC  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 809BC6C0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809BC6C4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809BC6C8  38 63 00 04 */	addi r3, r3, 4
/* 809BC6CC  38 84 00 06 */	addi r4, r4, 6
/* 809BC6D0  42 00 FF E0 */	bdnz lbl_809BC6B0
/* 809BC6D4  38 00 00 00 */	li r0, 0
/* 809BC6D8  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809BC6DC  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809BC6E0  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809BC6E4  38 00 00 01 */	li r0, 1
/* 809BC6E8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809BC6EC:
/* 809BC6EC  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 809BC6F0  4B 9A 59 29 */	bl __ptmf_test
/* 809BC6F4  2C 03 00 00 */	cmpwi r3, 0
/* 809BC6F8  41 82 00 54 */	beq lbl_809BC74C
/* 809BC6FC  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 809BC700  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 809BC704  4B 9A 59 45 */	bl __ptmf_cmpr
/* 809BC708  2C 03 00 00 */	cmpwi r3, 0
/* 809BC70C  40 82 00 1C */	bne lbl_809BC728
/* 809BC710  7F E3 FB 78 */	mr r3, r31
/* 809BC714  38 80 00 00 */	li r4, 0
/* 809BC718  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 809BC71C  4B 9A 59 69 */	bl __ptmf_scall
/* 809BC720  60 00 00 00 */	nop 
/* 809BC724  48 00 00 28 */	b lbl_809BC74C
lbl_809BC728:
/* 809BC728  80 7F 0F 84 */	lwz r3, 0xf84(r31)
/* 809BC72C  80 1F 0F 88 */	lwz r0, 0xf88(r31)
/* 809BC730  90 61 00 08 */	stw r3, 8(r1)
/* 809BC734  90 01 00 0C */	stw r0, 0xc(r1)
/* 809BC738  80 1F 0F 8C */	lwz r0, 0xf8c(r31)
/* 809BC73C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809BC740  7F E3 FB 78 */	mr r3, r31
/* 809BC744  38 81 00 08 */	addi r4, r1, 8
/* 809BC748  48 00 06 15 */	bl setAction__11daNpc_Gnd_cFM11daNpc_Gnd_cFPCvPvPv_i
lbl_809BC74C:
/* 809BC74C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809BC750  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809BC754  7C 08 03 A6 */	mtlr r0
/* 809BC758  38 21 00 20 */	addi r1, r1, 0x20
/* 809BC75C  4E 80 00 20 */	blr 
