lbl_8085BB38:
/* 8085BB38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085BB3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085BB40  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 8085BB44  38 60 00 00 */	li r3, 0
/* 8085BB48  28 04 00 00 */	cmplwi r4, 0
/* 8085BB4C  4D 82 00 20 */	beqlr 
/* 8085BB50  88 04 05 68 */	lbz r0, 0x568(r4)
/* 8085BB54  28 00 00 08 */	cmplwi r0, 8
/* 8085BB58  41 82 00 20 */	beq lbl_8085BB78
/* 8085BB5C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8085BB60  28 00 00 16 */	cmplwi r0, 0x16
/* 8085BB64  41 82 00 14 */	beq lbl_8085BB78
/* 8085BB68  28 00 00 17 */	cmplwi r0, 0x17
/* 8085BB6C  41 82 00 0C */	beq lbl_8085BB78
/* 8085BB70  28 00 00 18 */	cmplwi r0, 0x18
/* 8085BB74  4C 82 00 20 */	bnelr 
lbl_8085BB78:
/* 8085BB78  38 60 00 01 */	li r3, 1
/* 8085BB7C  4E 80 00 20 */	blr 
