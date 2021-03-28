lbl_8002FA30:
/* 8002FA30  38 60 00 00 */	li r3, 0
/* 8002FA34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8002FA38  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8002FA3C  3C 84 00 02 */	addis r4, r4, 2
/* 8002FA40  88 04 DD FA */	lbz r0, -0x2206(r4)
/* 8002FA44  2C 00 00 02 */	cmpwi r0, 2
/* 8002FA48  4C 82 00 20 */	bnelr 
/* 8002FA4C  38 60 00 01 */	li r3, 1
/* 8002FA50  4E 80 00 20 */	blr 
