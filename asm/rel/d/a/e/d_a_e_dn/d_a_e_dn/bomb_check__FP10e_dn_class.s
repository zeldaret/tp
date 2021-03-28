lbl_804E61FC:
/* 804E61FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E6200  7C 08 02 A6 */	mflr r0
/* 804E6204  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E6208  38 80 00 00 */	li r4, 0
/* 804E620C  4B FF FB 41 */	bl search_bomb__FP10e_dn_classi
/* 804E6210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E6214  7C 08 03 A6 */	mtlr r0
/* 804E6218  38 21 00 10 */	addi r1, r1, 0x10
/* 804E621C  4E 80 00 20 */	blr 
