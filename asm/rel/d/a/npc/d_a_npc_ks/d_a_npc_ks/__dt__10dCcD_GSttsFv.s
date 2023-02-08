lbl_80A5D90C:
/* 80A5D90C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5D910  7C 08 02 A6 */	mflr r0
/* 80A5D914  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5D918  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A5D91C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A5D920  41 82 00 30 */	beq lbl_80A5D950
/* 80A5D924  3C 60 80 A6 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A5FDDC@ha */
/* 80A5D928  38 03 FD DC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A5FDDC@l */
/* 80A5D92C  90 1F 00 00 */	stw r0, 0(r31)
/* 80A5D930  41 82 00 10 */	beq lbl_80A5D940
/* 80A5D934  3C 60 80 A6 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A5FDD0@ha */
/* 80A5D938  38 03 FD D0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A5FDD0@l */
/* 80A5D93C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A5D940:
/* 80A5D940  7C 80 07 35 */	extsh. r0, r4
/* 80A5D944  40 81 00 0C */	ble lbl_80A5D950
/* 80A5D948  7F E3 FB 78 */	mr r3, r31
/* 80A5D94C  4B 87 13 F1 */	bl __dl__FPv
lbl_80A5D950:
/* 80A5D950  7F E3 FB 78 */	mr r3, r31
/* 80A5D954  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A5D958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5D95C  7C 08 03 A6 */	mtlr r0
/* 80A5D960  38 21 00 10 */	addi r1, r1, 0x10
/* 80A5D964  4E 80 00 20 */	blr 
