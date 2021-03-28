lbl_809F9CF0:
/* 809F9CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F9CF4  7C 08 02 A6 */	mflr r0
/* 809F9CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F9CFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F9D00  88 03 10 C4 */	lbz r0, 0x10c4(r3)
/* 809F9D04  2C 00 00 02 */	cmpwi r0, 2
/* 809F9D08  41 82 00 6C */	beq lbl_809F9D74
/* 809F9D0C  40 80 00 14 */	bge lbl_809F9D20
/* 809F9D10  2C 00 00 00 */	cmpwi r0, 0
/* 809F9D14  41 82 00 18 */	beq lbl_809F9D2C
/* 809F9D18  40 80 00 1C */	bge lbl_809F9D34
/* 809F9D1C  48 00 00 68 */	b lbl_809F9D84
lbl_809F9D20:
/* 809F9D20  2C 00 00 04 */	cmpwi r0, 4
/* 809F9D24  40 80 00 60 */	bge lbl_809F9D84
/* 809F9D28  48 00 00 54 */	b lbl_809F9D7C
lbl_809F9D2C:
/* 809F9D2C  38 60 00 00 */	li r3, 0
/* 809F9D30  48 00 00 58 */	b lbl_809F9D88
lbl_809F9D34:
/* 809F9D34  3B E0 00 01 */	li r31, 1
/* 809F9D38  38 60 00 D0 */	li r3, 0xd0
/* 809F9D3C  4B 75 2D 70 */	b daNpcT_chkEvtBit__FUl
/* 809F9D40  2C 03 00 00 */	cmpwi r3, 0
/* 809F9D44  40 82 00 28 */	bne lbl_809F9D6C
/* 809F9D48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809F9D4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809F9D50  38 63 01 00 */	addi r3, r3, 0x100
/* 809F9D54  38 80 00 02 */	li r4, 2
/* 809F9D58  38 A0 00 00 */	li r5, 0
/* 809F9D5C  4B 63 A4 AC */	b isCollect__20dSv_player_collect_cCFiUc
/* 809F9D60  2C 03 00 00 */	cmpwi r3, 0
/* 809F9D64  40 82 00 08 */	bne lbl_809F9D6C
/* 809F9D68  3B E0 00 00 */	li r31, 0
lbl_809F9D6C:
/* 809F9D6C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 809F9D70  48 00 00 18 */	b lbl_809F9D88
lbl_809F9D74:
/* 809F9D74  38 60 00 00 */	li r3, 0
/* 809F9D78  48 00 00 10 */	b lbl_809F9D88
lbl_809F9D7C:
/* 809F9D7C  38 60 00 00 */	li r3, 0
/* 809F9D80  48 00 00 08 */	b lbl_809F9D88
lbl_809F9D84:
/* 809F9D84  38 60 00 00 */	li r3, 0
lbl_809F9D88:
/* 809F9D88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F9D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F9D90  7C 08 03 A6 */	mtlr r0
/* 809F9D94  38 21 00 10 */	addi r1, r1, 0x10
/* 809F9D98  4E 80 00 20 */	blr 
