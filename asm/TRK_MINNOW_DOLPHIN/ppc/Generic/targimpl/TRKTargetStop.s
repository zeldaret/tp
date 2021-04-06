lbl_8036FAE8:
/* 8036FAE8  3C 60 80 45 */	lis r3, gTRKState@ha /* 0x8044F294@ha */
/* 8036FAEC  38 00 00 01 */	li r0, 1
/* 8036FAF0  38 83 F2 94 */	addi r4, r3, gTRKState@l /* 0x8044F294@l */
/* 8036FAF4  38 60 00 00 */	li r3, 0
/* 8036FAF8  90 04 00 98 */	stw r0, 0x98(r4)
/* 8036FAFC  4E 80 00 20 */	blr 
