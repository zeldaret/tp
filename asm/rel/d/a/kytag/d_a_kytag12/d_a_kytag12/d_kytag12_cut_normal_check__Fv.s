lbl_8085BB80:
/* 8085BB80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085BB84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085BB88  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 8085BB8C  38 60 00 01 */	li r3, 1
/* 8085BB90  28 04 00 00 */	cmplwi r4, 0
/* 8085BB94  4D 82 00 20 */	beqlr 
/* 8085BB98  88 04 05 68 */	lbz r0, 0x568(r4)
/* 8085BB9C  28 00 00 28 */	cmplwi r0, 0x28
/* 8085BBA0  41 82 00 10 */	beq lbl_8085BBB0
/* 8085BBA4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8085BBA8  28 00 00 29 */	cmplwi r0, 0x29
/* 8085BBAC  4C 82 00 20 */	bnelr 
lbl_8085BBB0:
/* 8085BBB0  38 60 00 00 */	li r3, 0
/* 8085BBB4  4E 80 00 20 */	blr 
