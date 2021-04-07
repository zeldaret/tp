lbl_8002FAE8:
/* 8002FAE8  38 60 00 00 */	li r3, 0
/* 8002FAEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002FAF0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002FAF4  3C 84 00 02 */	addis r4, r4, 2
/* 8002FAF8  88 A4 DE 09 */	lbz r5, -0x21f7(r4)
/* 8002FAFC  28 05 00 FF */	cmplwi r5, 0xff
/* 8002FB00  4D 82 00 20 */	beqlr 
/* 8002FB04  88 04 DE 0A */	lbz r0, -0x21f6(r4)
/* 8002FB08  28 00 00 FF */	cmplwi r0, 0xff
/* 8002FB0C  4D 82 00 20 */	beqlr 
/* 8002FB10  7C 05 00 40 */	cmplw r5, r0
/* 8002FB14  4C 82 00 20 */	bnelr 
/* 8002FB18  38 60 00 01 */	li r3, 1
/* 8002FB1C  4E 80 00 20 */	blr 
