lbl_801414A4:
/* 801414A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801414A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801414AC  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 801414B0  30 03 FF FF */	addic r0, r3, -1
/* 801414B4  7C 00 19 10 */	subfe r0, r0, r3
/* 801414B8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 801414BC  4E 80 00 20 */	blr 
