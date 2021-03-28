lbl_806A03C4:
/* 806A03C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806A03C8  7C 08 02 A6 */	mflr r0
/* 806A03CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A03D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806A03D4  7C 7F 1B 78 */	mr r31, r3
/* 806A03D8  3C 60 80 6A */	lis r3, lit_3902@ha
/* 806A03DC  38 83 19 0C */	addi r4, r3, lit_3902@l
/* 806A03E0  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 806A03E4  2C 00 00 05 */	cmpwi r0, 5
/* 806A03E8  40 82 00 4C */	bne lbl_806A0434
/* 806A03EC  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806A03F0  38 63 00 0C */	addi r3, r3, 0xc
/* 806A03F4  C0 24 01 34 */	lfs f1, 0x134(r4)
/* 806A03F8  4B C8 80 34 */	b checkPass__12J3DFrameCtrlFf
/* 806A03FC  2C 03 00 00 */	cmpwi r3, 0
/* 806A0400  41 82 01 18 */	beq lbl_806A0518
/* 806A0404  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007008B@ha */
/* 806A0408  38 03 00 8B */	addi r0, r3, 0x008B /* 0x0007008B@l */
/* 806A040C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A0410  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806A0414  38 81 00 14 */	addi r4, r1, 0x14
/* 806A0418  38 A0 00 00 */	li r5, 0
/* 806A041C  38 C0 FF FF */	li r6, -1
/* 806A0420  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 806A0424  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A0428  7D 89 03 A6 */	mtctr r12
/* 806A042C  4E 80 04 21 */	bctrl 
/* 806A0430  48 00 00 E8 */	b lbl_806A0518
lbl_806A0434:
/* 806A0434  2C 00 00 06 */	cmpwi r0, 6
/* 806A0438  40 82 00 4C */	bne lbl_806A0484
/* 806A043C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806A0440  38 63 00 0C */	addi r3, r3, 0xc
/* 806A0444  C0 24 01 38 */	lfs f1, 0x138(r4)
/* 806A0448  4B C8 7F E4 */	b checkPass__12J3DFrameCtrlFf
/* 806A044C  2C 03 00 00 */	cmpwi r3, 0
/* 806A0450  41 82 00 C8 */	beq lbl_806A0518
/* 806A0454  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070082@ha */
/* 806A0458  38 03 00 82 */	addi r0, r3, 0x0082 /* 0x00070082@l */
/* 806A045C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A0460  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806A0464  38 81 00 10 */	addi r4, r1, 0x10
/* 806A0468  38 A0 00 00 */	li r5, 0
/* 806A046C  38 C0 FF FF */	li r6, -1
/* 806A0470  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 806A0474  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A0478  7D 89 03 A6 */	mtctr r12
/* 806A047C  4E 80 04 21 */	bctrl 
/* 806A0480  48 00 00 98 */	b lbl_806A0518
lbl_806A0484:
/* 806A0484  2C 00 00 11 */	cmpwi r0, 0x11
/* 806A0488  40 82 00 48 */	bne lbl_806A04D0
/* 806A048C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806A0490  38 63 00 0C */	addi r3, r3, 0xc
/* 806A0494  C0 24 00 7C */	lfs f1, 0x7c(r4)
/* 806A0498  4B C8 7F 94 */	b checkPass__12J3DFrameCtrlFf
/* 806A049C  2C 03 00 00 */	cmpwi r3, 0
/* 806A04A0  41 82 00 78 */	beq lbl_806A0518
/* 806A04A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070089@ha */
/* 806A04A8  38 03 00 89 */	addi r0, r3, 0x0089 /* 0x00070089@l */
/* 806A04AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A04B0  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806A04B4  38 81 00 0C */	addi r4, r1, 0xc
/* 806A04B8  38 A0 FF FF */	li r5, -1
/* 806A04BC  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 806A04C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806A04C4  7D 89 03 A6 */	mtctr r12
/* 806A04C8  4E 80 04 21 */	bctrl 
/* 806A04CC  48 00 00 4C */	b lbl_806A0518
lbl_806A04D0:
/* 806A04D0  2C 00 00 0F */	cmpwi r0, 0xf
/* 806A04D4  40 82 00 44 */	bne lbl_806A0518
/* 806A04D8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806A04DC  38 63 00 0C */	addi r3, r3, 0xc
/* 806A04E0  C0 24 00 D0 */	lfs f1, 0xd0(r4)
/* 806A04E4  4B C8 7F 48 */	b checkPass__12J3DFrameCtrlFf
/* 806A04E8  2C 03 00 00 */	cmpwi r3, 0
/* 806A04EC  41 82 00 2C */	beq lbl_806A0518
/* 806A04F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070081@ha */
/* 806A04F4  38 03 00 81 */	addi r0, r3, 0x0081 /* 0x00070081@l */
/* 806A04F8  90 01 00 08 */	stw r0, 8(r1)
/* 806A04FC  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806A0500  38 81 00 08 */	addi r4, r1, 8
/* 806A0504  38 A0 FF FF */	li r5, -1
/* 806A0508  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 806A050C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806A0510  7D 89 03 A6 */	mtctr r12
/* 806A0514  4E 80 04 21 */	bctrl 
lbl_806A0518:
/* 806A0518  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806A051C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806A0520  7C 08 03 A6 */	mtlr r0
/* 806A0524  38 21 00 20 */	addi r1, r1, 0x20
/* 806A0528  4E 80 00 20 */	blr 
