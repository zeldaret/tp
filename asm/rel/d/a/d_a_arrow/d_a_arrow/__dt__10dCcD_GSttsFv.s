lbl_8049D910:
/* 8049D910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049D914  7C 08 02 A6 */	mflr r0
/* 8049D918  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049D91C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049D920  7C 7F 1B 79 */	or. r31, r3, r3
/* 8049D924  41 82 00 30 */	beq lbl_8049D954
/* 8049D928  3C 60 80 4A */	lis r3, __vt__10dCcD_GStts@ha
/* 8049D92C  38 03 DE E8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8049D930  90 1F 00 00 */	stw r0, 0(r31)
/* 8049D934  41 82 00 10 */	beq lbl_8049D944
/* 8049D938  3C 60 80 4A */	lis r3, __vt__10cCcD_GStts@ha
/* 8049D93C  38 03 DE DC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8049D940  90 1F 00 00 */	stw r0, 0(r31)
lbl_8049D944:
/* 8049D944  7C 80 07 35 */	extsh. r0, r4
/* 8049D948  40 81 00 0C */	ble lbl_8049D954
/* 8049D94C  7F E3 FB 78 */	mr r3, r31
/* 8049D950  4B E3 13 EC */	b __dl__FPv
lbl_8049D954:
/* 8049D954  7F E3 FB 78 */	mr r3, r31
/* 8049D958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049D95C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049D960  7C 08 03 A6 */	mtlr r0
/* 8049D964  38 21 00 10 */	addi r1, r1, 0x10
/* 8049D968  4E 80 00 20 */	blr 
