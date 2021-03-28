lbl_8009936C:
/* 8009936C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099370  7C 08 02 A6 */	mflr r0
/* 80099374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099378  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009937C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099380  38 63 01 14 */	addi r3, r3, 0x114
/* 80099384  38 80 00 00 */	li r4, 0
/* 80099388  4B F9 AF E1 */	bl onLightDropGetFlag__16dSv_light_drop_cFUc
/* 8009938C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099390  7C 08 03 A6 */	mtlr r0
/* 80099394  38 21 00 10 */	addi r1, r1, 0x10
/* 80099398  4E 80 00 20 */	blr 
