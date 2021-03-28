lbl_80099558:
/* 80099558  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009955C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80099560  80 64 5D C4 */	lwz r3, 0x5dc4(r4)
/* 80099564  38 03 00 32 */	addi r0, r3, 0x32
/* 80099568  90 04 5D C4 */	stw r0, 0x5dc4(r4)
/* 8009956C  4E 80 00 20 */	blr 
