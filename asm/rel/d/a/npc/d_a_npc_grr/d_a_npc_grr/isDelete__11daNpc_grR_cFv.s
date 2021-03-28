lbl_809E15E4:
/* 809E15E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E15E8  7C 08 02 A6 */	mflr r0
/* 809E15EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E15F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E15F4  7C 7F 1B 78 */	mr r31, r3
/* 809E15F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809E15FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809E1600  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 809E1604  3C 80 80 9E */	lis r4, stringBase0@ha
/* 809E1608  38 84 3B CC */	addi r4, r4, stringBase0@l
/* 809E160C  38 84 00 0A */	addi r4, r4, 0xa
/* 809E1610  4B 98 73 84 */	b strcmp
/* 809E1614  2C 03 00 00 */	cmpwi r3, 0
/* 809E1618  40 82 00 1C */	bne lbl_809E1634
/* 809E161C  38 60 00 40 */	li r3, 0x40
/* 809E1620  4B 77 40 14 */	b daNpcF_chkEvtBit__FUl
/* 809E1624  2C 03 00 00 */	cmpwi r3, 0
/* 809E1628  41 82 00 0C */	beq lbl_809E1634
/* 809E162C  38 60 00 01 */	li r3, 1
/* 809E1630  48 00 00 88 */	b lbl_809E16B8
lbl_809E1634:
/* 809E1634  88 1F 0E 10 */	lbz r0, 0xe10(r31)
/* 809E1638  28 00 00 03 */	cmplwi r0, 3
/* 809E163C  41 82 00 70 */	beq lbl_809E16AC
/* 809E1640  28 00 00 00 */	cmplwi r0, 0
/* 809E1644  41 82 00 68 */	beq lbl_809E16AC
/* 809E1648  28 00 00 01 */	cmplwi r0, 1
/* 809E164C  40 82 00 34 */	bne lbl_809E1680
/* 809E1650  38 60 01 08 */	li r3, 0x108
/* 809E1654  4B 77 3F E0 */	b daNpcF_chkEvtBit__FUl
/* 809E1658  2C 03 00 00 */	cmpwi r3, 0
/* 809E165C  41 82 00 24 */	beq lbl_809E1680
/* 809E1660  38 60 00 6D */	li r3, 0x6d
/* 809E1664  4B 77 3F D0 */	b daNpcF_chkEvtBit__FUl
/* 809E1668  2C 03 00 00 */	cmpwi r3, 0
/* 809E166C  41 82 00 40 */	beq lbl_809E16AC
/* 809E1670  38 60 01 79 */	li r3, 0x179
/* 809E1674  4B 77 3F C0 */	b daNpcF_chkEvtBit__FUl
/* 809E1678  2C 03 00 00 */	cmpwi r3, 0
/* 809E167C  41 82 00 30 */	beq lbl_809E16AC
lbl_809E1680:
/* 809E1680  88 1F 0E 10 */	lbz r0, 0xe10(r31)
/* 809E1684  28 00 00 02 */	cmplwi r0, 2
/* 809E1688  40 82 00 2C */	bne lbl_809E16B4
/* 809E168C  38 60 00 6D */	li r3, 0x6d
/* 809E1690  4B 77 3F A4 */	b daNpcF_chkEvtBit__FUl
/* 809E1694  2C 03 00 00 */	cmpwi r3, 0
/* 809E1698  41 82 00 1C */	beq lbl_809E16B4
/* 809E169C  38 60 01 79 */	li r3, 0x179
/* 809E16A0  4B 77 3F 94 */	b daNpcF_chkEvtBit__FUl
/* 809E16A4  2C 03 00 00 */	cmpwi r3, 0
/* 809E16A8  41 82 00 0C */	beq lbl_809E16B4
lbl_809E16AC:
/* 809E16AC  38 60 00 00 */	li r3, 0
/* 809E16B0  48 00 00 08 */	b lbl_809E16B8
lbl_809E16B4:
/* 809E16B4  38 60 00 01 */	li r3, 1
lbl_809E16B8:
/* 809E16B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E16BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E16C0  7C 08 03 A6 */	mtlr r0
/* 809E16C4  38 21 00 10 */	addi r1, r1, 0x10
/* 809E16C8  4E 80 00 20 */	blr 
