lbl_8021E2C8:
/* 8021E2C8  54 60 10 3A */	slwi r0, r3, 2
/* 8021E2CC  3C 60 80 3C */	lis r3, tex_name_5183@ha
/* 8021E2D0  38 63 F7 F4 */	addi r3, r3, tex_name_5183@l
/* 8021E2D4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8021E2D8  4E 80 00 20 */	blr 
