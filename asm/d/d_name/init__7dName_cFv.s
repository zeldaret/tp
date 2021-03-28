lbl_8024E6D4:
/* 8024E6D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024E6D8  7C 08 02 A6 */	mflr r0
/* 8024E6DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024E6E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024E6E4  7C 7F 1B 78 */	mr r31, r3
/* 8024E6E8  38 00 00 00 */	li r0, 0
/* 8024E6EC  98 03 02 B1 */	stb r0, 0x2b1(r3)
/* 8024E6F0  98 03 02 B2 */	stb r0, 0x2b2(r3)
/* 8024E6F4  48 00 12 21 */	bl nameCursorMove__7dName_cFv
/* 8024E6F8  88 1F 02 B1 */	lbz r0, 0x2b1(r31)
/* 8024E6FC  98 1F 02 B2 */	stb r0, 0x2b2(r31)
/* 8024E700  38 60 00 00 */	li r3, 0
/* 8024E704  7C 64 1B 78 */	mr r4, r3
/* 8024E708  38 00 00 04 */	li r0, 4
/* 8024E70C  7C 09 03 A6 */	mtctr r0
lbl_8024E710:
/* 8024E710  38 03 03 0E */	addi r0, r3, 0x30e
/* 8024E714  7C 9F 01 AE */	stbx r4, r31, r0
/* 8024E718  38 63 00 04 */	addi r3, r3, 4
/* 8024E71C  42 00 FF F4 */	bdnz lbl_8024E710
/* 8024E720  38 00 00 00 */	li r0, 0
/* 8024E724  98 1F 02 A5 */	stb r0, 0x2a5(r31)
/* 8024E728  98 1F 02 A7 */	stb r0, 0x2a7(r31)
/* 8024E72C  98 1F 02 A6 */	stb r0, 0x2a6(r31)
/* 8024E730  98 1F 02 A8 */	stb r0, 0x2a8(r31)
/* 8024E734  98 1F 03 0C */	stb r0, 0x30c(r31)
/* 8024E738  98 1F 03 0D */	stb r0, 0x30d(r31)
/* 8024E73C  38 00 00 01 */	li r0, 1
/* 8024E740  98 1F 03 0E */	stb r0, 0x30e(r31)
/* 8024E744  7F E3 FB 78 */	mr r3, r31
/* 8024E748  48 00 12 4D */	bl selectCursorMove__7dName_cFv
/* 8024E74C  38 00 00 00 */	li r0, 0
/* 8024E750  98 1F 02 AB */	stb r0, 0x2ab(r31)
/* 8024E754  88 1F 02 AB */	lbz r0, 0x2ab(r31)
/* 8024E758  98 1F 02 AC */	stb r0, 0x2ac(r31)
/* 8024E75C  88 1F 02 AB */	lbz r0, 0x2ab(r31)
/* 8024E760  98 1F 02 AD */	stb r0, 0x2ad(r31)
/* 8024E764  88 1F 02 AC */	lbz r0, 0x2ac(r31)
/* 8024E768  98 1F 02 AE */	stb r0, 0x2ae(r31)
/* 8024E76C  38 00 00 02 */	li r0, 2
/* 8024E770  98 1F 02 A9 */	stb r0, 0x2a9(r31)
/* 8024E774  38 00 00 FF */	li r0, 0xff
/* 8024E778  98 1F 02 AA */	stb r0, 0x2aa(r31)
/* 8024E77C  38 00 00 03 */	li r0, 3
/* 8024E780  98 1F 02 AF */	stb r0, 0x2af(r31)
/* 8024E784  98 1F 02 B0 */	stb r0, 0x2b0(r31)
/* 8024E788  7F E3 FB 78 */	mr r3, r31
/* 8024E78C  48 00 1A 25 */	bl mojiListChange__7dName_cFv
/* 8024E790  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024E794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024E798  7C 08 03 A6 */	mtlr r0
/* 8024E79C  38 21 00 10 */	addi r1, r1, 0x10
/* 8024E7A0  4E 80 00 20 */	blr 
