lbl_80CCD51C:
/* 80CCD51C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCD520  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCD524  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 80CCD528  30 03 FF FF */	addic r0, r3, -1
/* 80CCD52C  7C 00 19 10 */	subfe r0, r0, r3
/* 80CCD530  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80CCD534  4E 80 00 20 */	blr 
