lbl_80859A90:
/* 80859A90  88 03 05 93 */	lbz r0, 0x593(r3)
/* 80859A94  28 00 00 00 */	cmplwi r0, 0
/* 80859A98  40 82 00 30 */	bne lbl_80859AC8
/* 80859A9C  88 03 05 90 */	lbz r0, 0x590(r3)
/* 80859AA0  28 00 00 00 */	cmplwi r0, 0
/* 80859AA4  41 82 00 24 */	beq lbl_80859AC8
/* 80859AA8  88 03 05 91 */	lbz r0, 0x591(r3)
/* 80859AAC  28 00 00 04 */	cmplwi r0, 4
/* 80859AB0  41 80 00 18 */	blt lbl_80859AC8
/* 80859AB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80859AB8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80859ABC  3C 60 80 86 */	lis r3, lit_4638@ha /* 0x80859F88@ha */
/* 80859AC0  C0 03 9F 88 */	lfs f0, lit_4638@l(r3)  /* 0x80859F88@l */
/* 80859AC4  D0 04 00 34 */	stfs f0, 0x34(r4)
lbl_80859AC8:
/* 80859AC8  38 60 00 01 */	li r3, 1
/* 80859ACC  4E 80 00 20 */	blr 
