lbl_801F1558:
/* 801F1558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F155C  7C 08 02 A6 */	mflr r0
/* 801F1560  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F1564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F1568  7C 7F 1B 78 */	mr r31, r3
/* 801F156C  80 63 21 8C */	lwz r3, 0x218c(r3)
/* 801F1570  28 03 00 00 */	cmplwi r3, 0
/* 801F1574  41 82 00 98 */	beq lbl_801F160C
/* 801F1578  88 03 00 60 */	lbz r0, 0x60(r3)
/* 801F157C  28 00 00 00 */	cmplwi r0, 0
/* 801F1580  40 82 00 8C */	bne lbl_801F160C
/* 801F1584  88 1F 01 BC */	lbz r0, 0x1bc(r31)
/* 801F1588  28 00 00 04 */	cmplwi r0, 4
/* 801F158C  40 82 00 4C */	bne lbl_801F15D8
/* 801F1590  3C 60 80 43 */	lis r3, g_msHIO@ha
/* 801F1594  38 63 E8 4C */	addi r3, r3, g_msHIO@l
/* 801F1598  88 03 00 0B */	lbz r0, 0xb(r3)
/* 801F159C  98 1F 01 BD */	stb r0, 0x1bd(r31)
/* 801F15A0  88 9F 01 BD */	lbz r4, 0x1bd(r31)
/* 801F15A4  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 801F15A8  80 63 00 04 */	lwz r3, 4(r3)
/* 801F15AC  28 03 00 00 */	cmplwi r3, 0
/* 801F15B0  41 82 00 14 */	beq lbl_801F15C4
/* 801F15B4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F15B8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801F15BC  7D 89 03 A6 */	mtctr r12
/* 801F15C0  4E 80 04 21 */	bctrl 
lbl_801F15C4:
/* 801F15C4  38 00 00 01 */	li r0, 1
/* 801F15C8  98 1F 21 A0 */	stb r0, 0x21a0(r31)
/* 801F15CC  38 00 00 02 */	li r0, 2
/* 801F15D0  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F15D4  48 00 00 38 */	b lbl_801F160C
lbl_801F15D8:
/* 801F15D8  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 801F15DC  80 63 00 04 */	lwz r3, 4(r3)
/* 801F15E0  28 03 00 00 */	cmplwi r3, 0
/* 801F15E4  41 82 00 18 */	beq lbl_801F15FC
/* 801F15E8  38 80 00 01 */	li r4, 1
/* 801F15EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F15F0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801F15F4  7D 89 03 A6 */	mtctr r12
/* 801F15F8  4E 80 04 21 */	bctrl 
lbl_801F15FC:
/* 801F15FC  38 00 00 01 */	li r0, 1
/* 801F1600  98 1F 21 A0 */	stb r0, 0x21a0(r31)
/* 801F1604  38 00 00 03 */	li r0, 3
/* 801F1608  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F160C:
/* 801F160C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F1610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F1614  7C 08 03 A6 */	mtlr r0
/* 801F1618  38 21 00 10 */	addi r1, r1, 0x10
/* 801F161C  4E 80 00 20 */	blr 
