lbl_80C00D74:
/* 80C00D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C00D78  7C 08 02 A6 */	mflr r0
/* 80C00D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C00D80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C00D84  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C00D88  54 1F 27 BE */	rlwinm r31, r0, 4, 0x1e, 0x1f
/* 80C00D8C  3C 80 80 C1 */	lis r4, d_a_obj_gra2__stringBase0@ha /* 0x80C0FE14@ha */
/* 80C00D90  38 84 FE 14 */	addi r4, r4, d_a_obj_gra2__stringBase0@l /* 0x80C0FE14@l */
/* 80C00D94  38 84 00 44 */	addi r4, r4, 0x44
/* 80C00D98  38 63 07 44 */	addi r3, r3, 0x744
/* 80C00D9C  4B 76 7D 91 */	bl strcpy
/* 80C00DA0  2C 1F 00 02 */	cmpwi r31, 2
/* 80C00DA4  41 82 00 2C */	beq lbl_80C00DD0
/* 80C00DA8  40 80 00 14 */	bge lbl_80C00DBC
/* 80C00DAC  2C 1F 00 00 */	cmpwi r31, 0
/* 80C00DB0  41 82 00 30 */	beq lbl_80C00DE0
/* 80C00DB4  40 80 00 14 */	bge lbl_80C00DC8
/* 80C00DB8  48 00 00 28 */	b lbl_80C00DE0
lbl_80C00DBC:
/* 80C00DBC  2C 1F 00 04 */	cmpwi r31, 4
/* 80C00DC0  40 80 00 20 */	bge lbl_80C00DE0
/* 80C00DC4  48 00 00 14 */	b lbl_80C00DD8
lbl_80C00DC8:
/* 80C00DC8  38 60 00 01 */	li r3, 1
/* 80C00DCC  48 00 00 18 */	b lbl_80C00DE4
lbl_80C00DD0:
/* 80C00DD0  38 60 00 02 */	li r3, 2
/* 80C00DD4  48 00 00 10 */	b lbl_80C00DE4
lbl_80C00DD8:
/* 80C00DD8  38 60 00 03 */	li r3, 3
/* 80C00DDC  48 00 00 08 */	b lbl_80C00DE4
lbl_80C00DE0:
/* 80C00DE0  38 60 00 00 */	li r3, 0
lbl_80C00DE4:
/* 80C00DE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C00DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C00DEC  7C 08 03 A6 */	mtlr r0
/* 80C00DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C00DF4  4E 80 00 20 */	blr 
