lbl_809E5DD4:
/* 809E5DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E5DD8  7C 08 02 A6 */	mflr r0
/* 809E5DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E5DE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E5DE4  7C 7F 1B 78 */	mr r31, r3
/* 809E5DE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809E5DEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809E5DF0  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 809E5DF4  3C 80 80 9E */	lis r4, stringBase0@ha
/* 809E5DF8  38 84 7F 9C */	addi r4, r4, stringBase0@l
/* 809E5DFC  38 84 00 0D */	addi r4, r4, 0xd
/* 809E5E00  4B 98 2B 94 */	b strcmp
/* 809E5E04  2C 03 00 00 */	cmpwi r3, 0
/* 809E5E08  40 82 00 1C */	bne lbl_809E5E24
/* 809E5E0C  38 60 00 40 */	li r3, 0x40
/* 809E5E10  4B 76 F8 24 */	b daNpcF_chkEvtBit__FUl
/* 809E5E14  2C 03 00 00 */	cmpwi r3, 0
/* 809E5E18  41 82 00 0C */	beq lbl_809E5E24
/* 809E5E1C  38 60 00 01 */	li r3, 1
/* 809E5E20  48 00 00 24 */	b lbl_809E5E44
lbl_809E5E24:
/* 809E5E24  88 1F 0E 14 */	lbz r0, 0xe14(r31)
/* 809E5E28  28 00 00 01 */	cmplwi r0, 1
/* 809E5E2C  41 82 00 0C */	beq lbl_809E5E38
/* 809E5E30  28 00 00 00 */	cmplwi r0, 0
/* 809E5E34  40 82 00 0C */	bne lbl_809E5E40
lbl_809E5E38:
/* 809E5E38  38 60 00 00 */	li r3, 0
/* 809E5E3C  48 00 00 08 */	b lbl_809E5E44
lbl_809E5E40:
/* 809E5E40  38 60 00 01 */	li r3, 1
lbl_809E5E44:
/* 809E5E44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E5E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E5E4C  7C 08 03 A6 */	mtlr r0
/* 809E5E50  38 21 00 10 */	addi r1, r1, 0x10
/* 809E5E54  4E 80 00 20 */	blr 
