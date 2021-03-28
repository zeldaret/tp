lbl_80803C9C:
/* 80803C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80803CA0  7C 08 02 A6 */	mflr r0
/* 80803CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80803CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80803CAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80803CB0  41 82 00 30 */	beq lbl_80803CE0
/* 80803CB4  3C 60 80 80 */	lis r3, __vt__10dCcD_GStts@ha
/* 80803CB8  38 03 46 90 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80803CBC  90 1F 00 00 */	stw r0, 0(r31)
/* 80803CC0  41 82 00 10 */	beq lbl_80803CD0
/* 80803CC4  3C 60 80 80 */	lis r3, __vt__10cCcD_GStts@ha
/* 80803CC8  38 03 46 84 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80803CCC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80803CD0:
/* 80803CD0  7C 80 07 35 */	extsh. r0, r4
/* 80803CD4  40 81 00 0C */	ble lbl_80803CE0
/* 80803CD8  7F E3 FB 78 */	mr r3, r31
/* 80803CDC  4B AC B0 60 */	b __dl__FPv
lbl_80803CE0:
/* 80803CE0  7F E3 FB 78 */	mr r3, r31
/* 80803CE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80803CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80803CEC  7C 08 03 A6 */	mtlr r0
/* 80803CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80803CF4  4E 80 00 20 */	blr 
