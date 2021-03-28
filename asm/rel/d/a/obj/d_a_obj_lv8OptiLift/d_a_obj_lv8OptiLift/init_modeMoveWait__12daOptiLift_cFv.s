lbl_80C8B1F0:
/* 80C8B1F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8B1F4  7C 08 02 A6 */	mflr r0
/* 80C8B1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8B1FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8B200  7C 7F 1B 78 */	mr r31, r3
/* 80C8B204  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 80C8B208  4B 51 C5 88 */	b dKy_plight_set__FP15LIGHT_INFLUENCE
/* 80C8B20C  38 00 00 01 */	li r0, 1
/* 80C8B210  98 1F 06 14 */	stb r0, 0x614(r31)
/* 80C8B214  38 00 00 05 */	li r0, 5
/* 80C8B218  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80C8B21C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8B220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8B224  7C 08 03 A6 */	mtlr r0
/* 80C8B228  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8B22C  4E 80 00 20 */	blr 
