lbl_80038A90:
/* 80038A90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80038A94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80038A98  88 03 5D 44 */	lbz r0, 0x5d44(r3)
/* 80038A9C  2C 00 00 00 */	cmpwi r0, 0
/* 80038AA0  40 82 00 0C */	bne lbl_80038AAC
/* 80038AA4  38 60 00 00 */	li r3, 0
/* 80038AA8  4E 80 00 20 */	blr 
lbl_80038AAC:
/* 80038AAC  88 03 5D 70 */	lbz r0, 0x5d70(r3)
/* 80038AB0  7C 00 07 74 */	extsb r0, r0
/* 80038AB4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80038AB8  7C 63 02 14 */	add r3, r3, r0
/* 80038ABC  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80038AC0  4E 80 00 20 */	blr 
