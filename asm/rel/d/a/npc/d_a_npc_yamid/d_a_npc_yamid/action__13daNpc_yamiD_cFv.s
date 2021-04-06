lbl_80B43FD4:
/* 80B43FD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B43FD8  7C 08 02 A6 */	mflr r0
/* 80B43FDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B43FE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B43FE4  7C 7F 1B 78 */	mr r31, r3
/* 80B43FE8  88 03 0D 20 */	lbz r0, 0xd20(r3)
/* 80B43FEC  2C 00 00 00 */	cmpwi r0, 0
/* 80B43FF0  41 82 00 5C */	beq lbl_80B4404C
/* 80B43FF4  38 C0 00 00 */	li r6, 0
/* 80B43FF8  38 60 00 00 */	li r3, 0
/* 80B43FFC  7C C4 33 78 */	mr r4, r6
/* 80B44000  3C A0 80 B4 */	lis r5, lit_4194@ha /* 0x80B460F0@ha */
/* 80B44004  C0 05 60 F0 */	lfs f0, lit_4194@l(r5)  /* 0x80B460F0@l */
/* 80B44008  38 00 00 02 */	li r0, 2
/* 80B4400C  7C 09 03 A6 */	mtctr r0
lbl_80B44010:
/* 80B44010  7C BF 22 14 */	add r5, r31, r4
/* 80B44014  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80B44018  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80B4401C  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80B44020  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B44024  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B44028  38 63 00 04 */	addi r3, r3, 4
/* 80B4402C  38 84 00 06 */	addi r4, r4, 6
/* 80B44030  42 00 FF E0 */	bdnz lbl_80B44010
/* 80B44034  38 00 00 00 */	li r0, 0
/* 80B44038  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B4403C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B44040  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B44044  38 00 00 01 */	li r0, 1
/* 80B44048  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B4404C:
/* 80B4404C  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B44050  4B 81 DF C9 */	bl __ptmf_test
/* 80B44054  2C 03 00 00 */	cmpwi r3, 0
/* 80B44058  41 82 00 54 */	beq lbl_80B440AC
/* 80B4405C  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80B44060  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 80B44064  4B 81 DF E5 */	bl __ptmf_cmpr
/* 80B44068  2C 03 00 00 */	cmpwi r3, 0
/* 80B4406C  40 82 00 1C */	bne lbl_80B44088
/* 80B44070  7F E3 FB 78 */	mr r3, r31
/* 80B44074  38 80 00 00 */	li r4, 0
/* 80B44078  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80B4407C  4B 81 E0 09 */	bl __ptmf_scall
/* 80B44080  60 00 00 00 */	nop 
/* 80B44084  48 00 00 28 */	b lbl_80B440AC
lbl_80B44088:
/* 80B44088  80 7F 0F 84 */	lwz r3, 0xf84(r31)
/* 80B4408C  80 1F 0F 88 */	lwz r0, 0xf88(r31)
/* 80B44090  90 61 00 08 */	stw r3, 8(r1)
/* 80B44094  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B44098  80 1F 0F 8C */	lwz r0, 0xf8c(r31)
/* 80B4409C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B440A0  7F E3 FB 78 */	mr r3, r31
/* 80B440A4  38 81 00 08 */	addi r4, r1, 8
/* 80B440A8  48 00 04 D9 */	bl setAction__13daNpc_yamiD_cFM13daNpc_yamiD_cFPCvPvPv_i
lbl_80B440AC:
/* 80B440AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B440B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B440B4  7C 08 03 A6 */	mtlr r0
/* 80B440B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B440BC  4E 80 00 20 */	blr 
