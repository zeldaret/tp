lbl_801AC140:
/* 801AC140  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AC144  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AC148  88 63 0E 6E */	lbz r3, 0xe6e(r3)
/* 801AC14C  28 03 00 FF */	cmplwi r3, 0xff
/* 801AC150  40 82 00 0C */	bne lbl_801AC15C
/* 801AC154  38 60 FF FF */	li r3, -1
/* 801AC158  4E 80 00 20 */	blr 
lbl_801AC15C:
/* 801AC15C  30 03 FF FF */	addic r0, r3, -1
/* 801AC160  7C 60 19 10 */	subfe r3, r0, r3
/* 801AC164  4E 80 00 20 */	blr 
