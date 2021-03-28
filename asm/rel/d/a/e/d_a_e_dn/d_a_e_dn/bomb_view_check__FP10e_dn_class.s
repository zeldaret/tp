lbl_804E61D8:
/* 804E61D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E61DC  7C 08 02 A6 */	mflr r0
/* 804E61E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E61E4  38 80 00 01 */	li r4, 1
/* 804E61E8  4B FF FB 65 */	bl search_bomb__FP10e_dn_classi
/* 804E61EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E61F0  7C 08 03 A6 */	mtlr r0
/* 804E61F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E61F8  4E 80 00 20 */	blr 
