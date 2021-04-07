lbl_801CD8B4:
/* 801CD8B4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801CD8B8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801CD8BC  88 03 00 E2 */	lbz r0, 0xe2(r3)
/* 801CD8C0  2C 00 00 05 */	cmpwi r0, 5
/* 801CD8C4  41 82 00 48 */	beq lbl_801CD90C
/* 801CD8C8  40 80 00 1C */	bge lbl_801CD8E4
/* 801CD8CC  2C 00 00 03 */	cmpwi r0, 3
/* 801CD8D0  41 82 00 2C */	beq lbl_801CD8FC
/* 801CD8D4  40 80 00 30 */	bge lbl_801CD904
/* 801CD8D8  2C 00 00 02 */	cmpwi r0, 2
/* 801CD8DC  40 80 00 18 */	bge lbl_801CD8F4
/* 801CD8E0  48 00 00 44 */	b lbl_801CD924
lbl_801CD8E4:
/* 801CD8E4  2C 00 00 07 */	cmpwi r0, 7
/* 801CD8E8  41 82 00 34 */	beq lbl_801CD91C
/* 801CD8EC  40 80 00 38 */	bge lbl_801CD924
/* 801CD8F0  48 00 00 24 */	b lbl_801CD914
lbl_801CD8F4:
/* 801CD8F4  38 60 00 01 */	li r3, 1
/* 801CD8F8  4E 80 00 20 */	blr 
lbl_801CD8FC:
/* 801CD8FC  38 60 00 04 */	li r3, 4
/* 801CD900  4E 80 00 20 */	blr 
lbl_801CD904:
/* 801CD904  38 60 00 04 */	li r3, 4
/* 801CD908  4E 80 00 20 */	blr 
lbl_801CD90C:
/* 801CD90C  38 60 00 05 */	li r3, 5
/* 801CD910  4E 80 00 20 */	blr 
lbl_801CD914:
/* 801CD914  38 60 00 03 */	li r3, 3
/* 801CD918  4E 80 00 20 */	blr 
lbl_801CD91C:
/* 801CD91C  38 60 00 04 */	li r3, 4
/* 801CD920  4E 80 00 20 */	blr 
lbl_801CD924:
/* 801CD924  38 60 00 01 */	li r3, 1
/* 801CD928  4E 80 00 20 */	blr 
