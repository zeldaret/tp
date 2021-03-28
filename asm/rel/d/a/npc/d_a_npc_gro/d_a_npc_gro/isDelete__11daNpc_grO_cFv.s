lbl_809DC43C:
/* 809DC43C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DC440  7C 08 02 A6 */	mflr r0
/* 809DC444  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DC448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DC44C  7C 7F 1B 78 */	mr r31, r3
/* 809DC450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809DC454  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809DC458  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 809DC45C  3C 80 80 9E */	lis r4, stringBase0@ha
/* 809DC460  38 84 F2 B8 */	addi r4, r4, stringBase0@l
/* 809DC464  38 84 00 25 */	addi r4, r4, 0x25
/* 809DC468  4B 98 C5 2C */	b strcmp
/* 809DC46C  2C 03 00 00 */	cmpwi r3, 0
/* 809DC470  40 82 00 1C */	bne lbl_809DC48C
/* 809DC474  38 60 00 40 */	li r3, 0x40
/* 809DC478  4B 77 91 BC */	b daNpcF_chkEvtBit__FUl
/* 809DC47C  2C 03 00 00 */	cmpwi r3, 0
/* 809DC480  41 82 00 0C */	beq lbl_809DC48C
/* 809DC484  38 60 00 01 */	li r3, 1
/* 809DC488  48 00 00 58 */	b lbl_809DC4E0
lbl_809DC48C:
/* 809DC48C  88 1F 0E 24 */	lbz r0, 0xe24(r31)
/* 809DC490  28 00 00 03 */	cmplwi r0, 3
/* 809DC494  41 82 00 40 */	beq lbl_809DC4D4
/* 809DC498  28 00 00 00 */	cmplwi r0, 0
/* 809DC49C  41 82 00 38 */	beq lbl_809DC4D4
/* 809DC4A0  28 00 00 01 */	cmplwi r0, 1
/* 809DC4A4  40 82 00 14 */	bne lbl_809DC4B8
/* 809DC4A8  38 60 00 F6 */	li r3, 0xf6
/* 809DC4AC  4B 77 91 88 */	b daNpcF_chkEvtBit__FUl
/* 809DC4B0  2C 03 00 00 */	cmpwi r3, 0
/* 809DC4B4  40 82 00 20 */	bne lbl_809DC4D4
lbl_809DC4B8:
/* 809DC4B8  88 1F 0E 24 */	lbz r0, 0xe24(r31)
/* 809DC4BC  28 00 00 02 */	cmplwi r0, 2
/* 809DC4C0  40 82 00 1C */	bne lbl_809DC4DC
/* 809DC4C4  38 60 00 F6 */	li r3, 0xf6
/* 809DC4C8  4B 77 91 6C */	b daNpcF_chkEvtBit__FUl
/* 809DC4CC  2C 03 00 00 */	cmpwi r3, 0
/* 809DC4D0  41 82 00 0C */	beq lbl_809DC4DC
lbl_809DC4D4:
/* 809DC4D4  38 60 00 00 */	li r3, 0
/* 809DC4D8  48 00 00 08 */	b lbl_809DC4E0
lbl_809DC4DC:
/* 809DC4DC  38 60 00 01 */	li r3, 1
lbl_809DC4E0:
/* 809DC4E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DC4E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DC4E8  7C 08 03 A6 */	mtlr r0
/* 809DC4EC  38 21 00 10 */	addi r1, r1, 0x10
/* 809DC4F0  4E 80 00 20 */	blr 
