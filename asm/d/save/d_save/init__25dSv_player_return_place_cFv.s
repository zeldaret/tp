lbl_80032CC8:
/* 80032CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032CCC  7C 08 02 A6 */	mflr r0
/* 80032CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80032CD8  7C 7F 1B 78 */	mr r31, r3
/* 80032CDC  3C 80 80 38 */	lis r4, d_save_d_save__stringBase0@ha /* 0x80379234@ha */
/* 80032CE0  38 84 92 34 */	addi r4, r4, d_save_d_save__stringBase0@l /* 0x80379234@l */
/* 80032CE4  38 84 00 01 */	addi r4, r4, 1
/* 80032CE8  48 33 5E 45 */	bl strcpy
/* 80032CEC  38 00 00 01 */	li r0, 1
/* 80032CF0  98 1F 00 09 */	stb r0, 9(r31)
/* 80032CF4  38 60 00 00 */	li r3, 0
/* 80032CF8  98 7F 00 08 */	stb r3, 8(r31)
/* 80032CFC  38 00 00 15 */	li r0, 0x15
/* 80032D00  98 1F 00 0A */	stb r0, 0xa(r31)
/* 80032D04  98 7F 00 0B */	stb r3, 0xb(r31)
/* 80032D08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80032D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032D10  7C 08 03 A6 */	mtlr r0
/* 80032D14  38 21 00 10 */	addi r1, r1, 0x10
/* 80032D18  4E 80 00 20 */	blr 
