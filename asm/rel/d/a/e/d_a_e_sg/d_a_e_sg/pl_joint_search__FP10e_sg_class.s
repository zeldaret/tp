lbl_8078A518:
/* 8078A518  3C 80 80 79 */	lis r4, stick_pt@ha /* 0x8078E104@ha */
/* 8078A51C  80 C4 E1 04 */	lwz r6, stick_pt@l(r4)  /* 0x8078E104@l */
/* 8078A520  3C 06 FF F9 */	addis r0, r6, 0xfff9
/* 8078A524  28 00 FF FF */	cmplwi r0, 0xffff
/* 8078A528  41 82 00 54 */	beq lbl_8078A57C
/* 8078A52C  39 00 00 00 */	li r8, 0
/* 8078A530  38 80 00 00 */	li r4, 0
/* 8078A534  3C A0 80 79 */	lis r5, stick_bit@ha /* 0x8078DEB4@ha */
/* 8078A538  38 A5 DE B4 */	addi r5, r5, stick_bit@l /* 0x8078DEB4@l */
/* 8078A53C  38 00 00 13 */	li r0, 0x13
/* 8078A540  7C 09 03 A6 */	mtctr r0
lbl_8078A544:
/* 8078A544  7C E5 20 2E */	lwzx r7, r5, r4
/* 8078A548  7C C0 38 39 */	and. r0, r6, r7
/* 8078A54C  40 82 00 20 */	bne lbl_8078A56C
/* 8078A550  3C 80 80 79 */	lis r4, stick_pt@ha /* 0x8078E104@ha */
/* 8078A554  84 04 E1 04 */	lwzu r0, stick_pt@l(r4)  /* 0x8078E104@l */
/* 8078A558  7C 00 3B 78 */	or r0, r0, r7
/* 8078A55C  90 04 00 00 */	stw r0, 0(r4)
/* 8078A560  38 08 00 01 */	addi r0, r8, 1
/* 8078A564  98 03 06 C4 */	stb r0, 0x6c4(r3)
/* 8078A568  4E 80 00 20 */	blr 
lbl_8078A56C:
/* 8078A56C  39 08 00 01 */	addi r8, r8, 1
/* 8078A570  38 84 00 04 */	addi r4, r4, 4
/* 8078A574  42 00 FF D0 */	bdnz lbl_8078A544
/* 8078A578  4E 80 00 20 */	blr 
lbl_8078A57C:
/* 8078A57C  38 00 FF FF */	li r0, -1
/* 8078A580  98 03 06 C4 */	stb r0, 0x6c4(r3)
/* 8078A584  4E 80 00 20 */	blr 
