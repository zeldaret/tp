lbl_80AC0C58:
/* 80AC0C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC0C5C  7C 08 02 A6 */	mflr r0
/* 80AC0C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC0C64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC0C68  88 03 0F 88 */	lbz r0, 0xf88(r3)
/* 80AC0C6C  2C 00 00 01 */	cmpwi r0, 1
/* 80AC0C70  41 82 00 28 */	beq lbl_80AC0C98
/* 80AC0C74  40 80 00 10 */	bge lbl_80AC0C84
/* 80AC0C78  2C 00 00 00 */	cmpwi r0, 0
/* 80AC0C7C  40 80 00 14 */	bge lbl_80AC0C90
/* 80AC0C80  48 00 00 50 */	b lbl_80AC0CD0
lbl_80AC0C84:
/* 80AC0C84  2C 00 00 03 */	cmpwi r0, 3
/* 80AC0C88  40 80 00 48 */	bge lbl_80AC0CD0
/* 80AC0C8C  48 00 00 3C */	b lbl_80AC0CC8
lbl_80AC0C90:
/* 80AC0C90  38 60 00 00 */	li r3, 0
/* 80AC0C94  48 00 00 40 */	b lbl_80AC0CD4
lbl_80AC0C98:
/* 80AC0C98  3B E0 00 00 */	li r31, 0
/* 80AC0C9C  38 60 00 12 */	li r3, 0x12
/* 80AC0CA0  4B 68 BE 0D */	bl daNpcT_chkEvtBit__FUl
/* 80AC0CA4  2C 03 00 00 */	cmpwi r3, 0
/* 80AC0CA8  41 82 00 14 */	beq lbl_80AC0CBC
/* 80AC0CAC  38 60 02 5C */	li r3, 0x25c
/* 80AC0CB0  4B 68 BD FD */	bl daNpcT_chkEvtBit__FUl
/* 80AC0CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80AC0CB8  41 82 00 08 */	beq lbl_80AC0CC0
lbl_80AC0CBC:
/* 80AC0CBC  3B E0 00 01 */	li r31, 1
lbl_80AC0CC0:
/* 80AC0CC0  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80AC0CC4  48 00 00 10 */	b lbl_80AC0CD4
lbl_80AC0CC8:
/* 80AC0CC8  38 60 00 00 */	li r3, 0
/* 80AC0CCC  48 00 00 08 */	b lbl_80AC0CD4
lbl_80AC0CD0:
/* 80AC0CD0  38 60 00 00 */	li r3, 0
lbl_80AC0CD4:
/* 80AC0CD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC0CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC0CDC  7C 08 03 A6 */	mtlr r0
/* 80AC0CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC0CE4  4E 80 00 20 */	blr 
