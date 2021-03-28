lbl_80BB154C:
/* 80BB154C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB1550  7C 08 02 A6 */	mflr r0
/* 80BB1554  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB1558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB155C  7C 7F 1B 78 */	mr r31, r3
/* 80BB1560  38 00 01 F4 */	li r0, 0x1f4
/* 80BB1564  B0 03 0F AC */	sth r0, 0xfac(r3)
/* 80BB1568  88 03 0F EA */	lbz r0, 0xfea(r3)
/* 80BB156C  2C 00 00 01 */	cmpwi r0, 1
/* 80BB1570  41 82 00 20 */	beq lbl_80BB1590
/* 80BB1574  40 80 00 64 */	bge lbl_80BB15D8
/* 80BB1578  2C 00 00 00 */	cmpwi r0, 0
/* 80BB157C  40 80 00 08 */	bge lbl_80BB1584
/* 80BB1580  48 00 00 58 */	b lbl_80BB15D8
lbl_80BB1584:
/* 80BB1584  38 00 00 01 */	li r0, 1
/* 80BB1588  98 1F 0F EA */	stb r0, 0xfea(r31)
/* 80BB158C  48 00 00 4C */	b lbl_80BB15D8
lbl_80BB1590:
/* 80BB1590  38 7F 10 08 */	addi r3, r31, 0x1008
/* 80BB1594  48 00 1E FD */	bl func_80BB3490
/* 80BB1598  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80BB159C  40 82 00 3C */	bne lbl_80BB15D8
/* 80BB15A0  7F E3 FB 78 */	mr r3, r31
/* 80BB15A4  4B FF EA 05 */	bl checkFindPlayer__9daObjBm_cFv
/* 80BB15A8  98 7F 0F E7 */	stb r3, 0xfe7(r31)
/* 80BB15AC  88 1F 0F E7 */	lbz r0, 0xfe7(r31)
/* 80BB15B0  7C 00 07 74 */	extsb r0, r0
/* 80BB15B4  2C 00 FF FF */	cmpwi r0, -1
/* 80BB15B8  41 82 00 20 */	beq lbl_80BB15D8
/* 80BB15BC  88 1F 0F E8 */	lbz r0, 0xfe8(r31)
/* 80BB15C0  28 00 00 00 */	cmplwi r0, 0
/* 80BB15C4  40 82 00 14 */	bne lbl_80BB15D8
/* 80BB15C8  38 00 00 00 */	li r0, 0
/* 80BB15CC  98 1F 0F E5 */	stb r0, 0xfe5(r31)
/* 80BB15D0  7F E3 FB 78 */	mr r3, r31
/* 80BB15D4  48 00 00 81 */	bl initActionFindPlayer__9daObjBm_cFv
lbl_80BB15D8:
/* 80BB15D8  A8 7F 0F AC */	lha r3, 0xfac(r31)
/* 80BB15DC  38 03 00 64 */	addi r0, r3, 0x64
/* 80BB15E0  B0 1F 0F B0 */	sth r0, 0xfb0(r31)
/* 80BB15E4  88 1F 0F EA */	lbz r0, 0xfea(r31)
/* 80BB15E8  28 00 00 05 */	cmplwi r0, 5
/* 80BB15EC  41 82 00 14 */	beq lbl_80BB1600
/* 80BB15F0  A8 7F 0F 96 */	lha r3, 0xf96(r31)
/* 80BB15F4  A8 1F 0F AA */	lha r0, 0xfaa(r31)
/* 80BB15F8  7C 03 02 14 */	add r0, r3, r0
/* 80BB15FC  B0 1F 0F 98 */	sth r0, 0xf98(r31)
lbl_80BB1600:
/* 80BB1600  A8 7F 0F AE */	lha r3, 0xfae(r31)
/* 80BB1604  A8 1F 0F 9A */	lha r0, 0xf9a(r31)
/* 80BB1608  7C 03 00 50 */	subf r0, r3, r0
/* 80BB160C  B0 1F 0F 9C */	sth r0, 0xf9c(r31)
/* 80BB1610  A8 7F 0F 9E */	lha r3, 0xf9e(r31)
/* 80BB1614  A8 1F 0F AE */	lha r0, 0xfae(r31)
/* 80BB1618  7C 03 02 14 */	add r0, r3, r0
/* 80BB161C  B0 1F 0F A0 */	sth r0, 0xfa0(r31)
/* 80BB1620  A8 7F 0F A2 */	lha r3, 0xfa2(r31)
/* 80BB1624  A8 1F 0F AE */	lha r0, 0xfae(r31)
/* 80BB1628  7C 03 02 14 */	add r0, r3, r0
/* 80BB162C  B0 1F 0F A4 */	sth r0, 0xfa4(r31)
/* 80BB1630  A8 7F 0F A6 */	lha r3, 0xfa6(r31)
/* 80BB1634  A8 1F 0F AE */	lha r0, 0xfae(r31)
/* 80BB1638  7C 03 02 14 */	add r0, r3, r0
/* 80BB163C  B0 1F 0F A8 */	sth r0, 0xfa8(r31)
/* 80BB1640  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB1644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB1648  7C 08 03 A6 */	mtlr r0
/* 80BB164C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB1650  4E 80 00 20 */	blr 
