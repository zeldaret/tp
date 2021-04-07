lbl_80618540:
/* 80618540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80618544  7C 08 02 A6 */	mflr r0
/* 80618548  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061854C  7C 64 1B 78 */	mr r4, r3
/* 80618550  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80618554  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80618558  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8061855C  38 63 02 10 */	addi r3, r3, 0x210
/* 80618560  4B A3 33 B9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80618564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80618568  7C 08 03 A6 */	mtlr r0
/* 8061856C  38 21 00 10 */	addi r1, r1, 0x10
/* 80618570  4E 80 00 20 */	blr 
