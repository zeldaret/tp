lbl_80103EE0:
/* 80103EE0  38 60 00 00 */	li r3, 0
/* 80103EE4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80103EE8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80103EEC  88 04 5E 24 */	lbz r0, 0x5e24(r4)
/* 80103EF0  28 00 00 41 */	cmplwi r0, 0x41
/* 80103EF4  41 82 00 0C */	beq lbl_80103F00
/* 80103EF8  28 00 00 4C */	cmplwi r0, 0x4c
/* 80103EFC  4C 82 00 20 */	bnelr 
lbl_80103F00:
/* 80103F00  38 60 00 01 */	li r3, 1
/* 80103F04  4E 80 00 20 */	blr 
