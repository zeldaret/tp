lbl_804FF5DC:
/* 804FF5DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FF5E0  7C 08 02 A6 */	mflr r0
/* 804FF5E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FF5E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FF5EC  7C 7F 1B 78 */	mr r31, r3
/* 804FF5F0  3C 60 80 50 */	lis r3, lit_3788@ha
/* 804FF5F4  38 83 0B 04 */	addi r4, r3, lit_3788@l
/* 804FF5F8  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 804FF5FC  2C 00 00 05 */	cmpwi r0, 5
/* 804FF600  40 82 00 4C */	bne lbl_804FF64C
/* 804FF604  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 804FF608  38 63 00 0C */	addi r3, r3, 0xc
/* 804FF60C  C0 24 01 04 */	lfs f1, 0x104(r4)
/* 804FF610  4B E2 8E 1C */	b checkPass__12J3DFrameCtrlFf
/* 804FF614  2C 03 00 00 */	cmpwi r3, 0
/* 804FF618  41 82 01 18 */	beq lbl_804FF730
/* 804FF61C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007008B@ha */
/* 804FF620  38 03 00 8B */	addi r0, r3, 0x008B /* 0x0007008B@l */
/* 804FF624  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FF628  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 804FF62C  38 81 00 14 */	addi r4, r1, 0x14
/* 804FF630  38 A0 00 00 */	li r5, 0
/* 804FF634  38 C0 FF FF */	li r6, -1
/* 804FF638  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 804FF63C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804FF640  7D 89 03 A6 */	mtctr r12
/* 804FF644  4E 80 04 21 */	bctrl 
/* 804FF648  48 00 00 E8 */	b lbl_804FF730
lbl_804FF64C:
/* 804FF64C  2C 00 00 06 */	cmpwi r0, 6
/* 804FF650  40 82 00 4C */	bne lbl_804FF69C
/* 804FF654  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 804FF658  38 63 00 0C */	addi r3, r3, 0xc
/* 804FF65C  C0 24 01 08 */	lfs f1, 0x108(r4)
/* 804FF660  4B E2 8D CC */	b checkPass__12J3DFrameCtrlFf
/* 804FF664  2C 03 00 00 */	cmpwi r3, 0
/* 804FF668  41 82 00 C8 */	beq lbl_804FF730
/* 804FF66C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070082@ha */
/* 804FF670  38 03 00 82 */	addi r0, r3, 0x0082 /* 0x00070082@l */
/* 804FF674  90 01 00 10 */	stw r0, 0x10(r1)
/* 804FF678  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 804FF67C  38 81 00 10 */	addi r4, r1, 0x10
/* 804FF680  38 A0 00 00 */	li r5, 0
/* 804FF684  38 C0 FF FF */	li r6, -1
/* 804FF688  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 804FF68C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804FF690  7D 89 03 A6 */	mtctr r12
/* 804FF694  4E 80 04 21 */	bctrl 
/* 804FF698  48 00 00 98 */	b lbl_804FF730
lbl_804FF69C:
/* 804FF69C  2C 00 00 11 */	cmpwi r0, 0x11
/* 804FF6A0  40 82 00 48 */	bne lbl_804FF6E8
/* 804FF6A4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 804FF6A8  38 63 00 0C */	addi r3, r3, 0xc
/* 804FF6AC  C0 24 00 6C */	lfs f1, 0x6c(r4)
/* 804FF6B0  4B E2 8D 7C */	b checkPass__12J3DFrameCtrlFf
/* 804FF6B4  2C 03 00 00 */	cmpwi r3, 0
/* 804FF6B8  41 82 00 78 */	beq lbl_804FF730
/* 804FF6BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070089@ha */
/* 804FF6C0  38 03 00 89 */	addi r0, r3, 0x0089 /* 0x00070089@l */
/* 804FF6C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804FF6C8  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 804FF6CC  38 81 00 0C */	addi r4, r1, 0xc
/* 804FF6D0  38 A0 FF FF */	li r5, -1
/* 804FF6D4  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 804FF6D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804FF6DC  7D 89 03 A6 */	mtctr r12
/* 804FF6E0  4E 80 04 21 */	bctrl 
/* 804FF6E4  48 00 00 4C */	b lbl_804FF730
lbl_804FF6E8:
/* 804FF6E8  2C 00 00 0F */	cmpwi r0, 0xf
/* 804FF6EC  40 82 00 44 */	bne lbl_804FF730
/* 804FF6F0  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 804FF6F4  38 63 00 0C */	addi r3, r3, 0xc
/* 804FF6F8  C0 24 00 C0 */	lfs f1, 0xc0(r4)
/* 804FF6FC  4B E2 8D 30 */	b checkPass__12J3DFrameCtrlFf
/* 804FF700  2C 03 00 00 */	cmpwi r3, 0
/* 804FF704  41 82 00 2C */	beq lbl_804FF730
/* 804FF708  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070081@ha */
/* 804FF70C  38 03 00 81 */	addi r0, r3, 0x0081 /* 0x00070081@l */
/* 804FF710  90 01 00 08 */	stw r0, 8(r1)
/* 804FF714  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 804FF718  38 81 00 08 */	addi r4, r1, 8
/* 804FF71C  38 A0 FF FF */	li r5, -1
/* 804FF720  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 804FF724  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804FF728  7D 89 03 A6 */	mtctr r12
/* 804FF72C  4E 80 04 21 */	bctrl 
lbl_804FF730:
/* 804FF730  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FF734  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FF738  7C 08 03 A6 */	mtlr r0
/* 804FF73C  38 21 00 20 */	addi r1, r1, 0x20
/* 804FF740  4E 80 00 20 */	blr 
