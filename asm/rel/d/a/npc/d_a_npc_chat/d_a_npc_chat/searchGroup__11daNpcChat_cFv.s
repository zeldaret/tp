lbl_80982B60:
/* 80982B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80982B64  7C 08 02 A6 */	mflr r0
/* 80982B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80982B6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80982B70  7C 7F 1B 78 */	mr r31, r3
/* 80982B74  88 03 0E 38 */	lbz r0, 0xe38(r3)
/* 80982B78  2C 00 00 01 */	cmpwi r0, 1
/* 80982B7C  41 82 00 24 */	beq lbl_80982BA0
/* 80982B80  40 80 00 78 */	bge lbl_80982BF8
/* 80982B84  2C 00 00 00 */	cmpwi r0, 0
/* 80982B88  40 80 00 08 */	bge lbl_80982B90
/* 80982B8C  48 00 00 6C */	b lbl_80982BF8
lbl_80982B90:
/* 80982B90  38 00 00 01 */	li r0, 1
/* 80982B94  98 1F 0E 38 */	stb r0, 0xe38(r31)
/* 80982B98  38 60 00 00 */	li r3, 0
/* 80982B9C  48 00 00 60 */	b lbl_80982BFC
lbl_80982BA0:
/* 80982BA0  3C 60 80 98 */	lis r3, s_sub__FPvPv@ha /* 0x80982B04@ha */
/* 80982BA4  38 63 2B 04 */	addi r3, r3, s_sub__FPvPv@l /* 0x80982B04@l */
/* 80982BA8  7F E4 FB 78 */	mr r4, r31
/* 80982BAC  4B 69 E7 8D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80982BB0  38 80 00 00 */	li r4, 0
/* 80982BB4  38 60 00 00 */	li r3, 0
/* 80982BB8  38 00 00 05 */	li r0, 5
/* 80982BBC  7C 09 03 A6 */	mtctr r0
lbl_80982BC0:
/* 80982BC0  38 03 0E 24 */	addi r0, r3, 0xe24
/* 80982BC4  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80982BC8  28 00 00 00 */	cmplwi r0, 0
/* 80982BCC  41 82 00 10 */	beq lbl_80982BDC
/* 80982BD0  38 84 00 01 */	addi r4, r4, 1
/* 80982BD4  38 63 00 04 */	addi r3, r3, 4
/* 80982BD8  42 00 FF E8 */	bdnz lbl_80982BC0
lbl_80982BDC:
/* 80982BDC  88 1F 0E 21 */	lbz r0, 0xe21(r31)
/* 80982BE0  7C 04 00 00 */	cmpw r4, r0
/* 80982BE4  41 80 00 0C */	blt lbl_80982BF0
/* 80982BE8  38 00 00 02 */	li r0, 2
/* 80982BEC  98 1F 0E 38 */	stb r0, 0xe38(r31)
lbl_80982BF0:
/* 80982BF0  38 60 00 00 */	li r3, 0
/* 80982BF4  48 00 00 08 */	b lbl_80982BFC
lbl_80982BF8:
/* 80982BF8  38 60 00 01 */	li r3, 1
lbl_80982BFC:
/* 80982BFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80982C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80982C04  7C 08 03 A6 */	mtlr r0
/* 80982C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80982C0C  4E 80 00 20 */	blr 
