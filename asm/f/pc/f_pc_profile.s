.include "macros.inc"

.section .text, "ax" # 80023564


.global fpcPf_Get
fpcPf_Get:
/* 80023564 000204A4  80 8D 87 D0 */	lwz r4, lbl_80450D50-_SDA_BASE_(r13)
/* 80023568 000204A8  7C 60 07 34 */	extsh r0, r3
/* 8002356C 000204AC  54 00 10 3A */	slwi r0, r0, 2
/* 80023570 000204B0  7C 64 00 2E */	lwzx r3, r4, r0
/* 80023574 000204B4  4E 80 00 20 */	blr 
