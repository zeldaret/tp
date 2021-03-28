lbl_8068FA04:
/* 8068FA04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8068FA08  7C 08 02 A6 */	mflr r0
/* 8068FA0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8068FA10  39 61 00 20 */	addi r11, r1, 0x20
/* 8068FA14  4B CD 27 C8 */	b _savegpr_29
/* 8068FA18  7C 7F 1B 78 */	mr r31, r3
/* 8068FA1C  3C 60 80 69 */	lis r3, lit_3788@ha
/* 8068FA20  3B C3 0D D8 */	addi r30, r3, lit_3788@l
/* 8068FA24  3B A0 00 00 */	li r29, 0
/* 8068FA28  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 8068FA2C  2C 00 00 04 */	cmpwi r0, 4
/* 8068FA30  40 82 00 3C */	bne lbl_8068FA6C
/* 8068FA34  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8068FA38  38 63 00 0C */	addi r3, r3, 0xc
/* 8068FA3C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 8068FA40  4B C9 89 EC */	b checkPass__12J3DFrameCtrlFf
/* 8068FA44  2C 03 00 00 */	cmpwi r3, 0
/* 8068FA48  40 82 00 1C */	bne lbl_8068FA64
/* 8068FA4C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8068FA50  38 63 00 0C */	addi r3, r3, 0xc
/* 8068FA54  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 8068FA58  4B C9 89 D4 */	b checkPass__12J3DFrameCtrlFf
/* 8068FA5C  2C 03 00 00 */	cmpwi r3, 0
/* 8068FA60  41 82 01 30 */	beq lbl_8068FB90
lbl_8068FA64:
/* 8068FA64  3B A0 00 01 */	li r29, 1
/* 8068FA68  48 00 01 28 */	b lbl_8068FB90
lbl_8068FA6C:
/* 8068FA6C  2C 00 00 05 */	cmpwi r0, 5
/* 8068FA70  40 82 00 7C */	bne lbl_8068FAEC
/* 8068FA74  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8068FA78  38 63 00 0C */	addi r3, r3, 0xc
/* 8068FA7C  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 8068FA80  4B C9 89 AC */	b checkPass__12J3DFrameCtrlFf
/* 8068FA84  2C 03 00 00 */	cmpwi r3, 0
/* 8068FA88  41 82 00 2C */	beq lbl_8068FAB4
/* 8068FA8C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700AB@ha */
/* 8068FA90  38 03 00 AB */	addi r0, r3, 0x00AB /* 0x000700AB@l */
/* 8068FA94  90 01 00 0C */	stw r0, 0xc(r1)
/* 8068FA98  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 8068FA9C  38 81 00 0C */	addi r4, r1, 0xc
/* 8068FAA0  38 A0 FF FF */	li r5, -1
/* 8068FAA4  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 8068FAA8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8068FAAC  7D 89 03 A6 */	mtctr r12
/* 8068FAB0  4E 80 04 21 */	bctrl 
lbl_8068FAB4:
/* 8068FAB4  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8068FAB8  38 63 00 0C */	addi r3, r3, 0xc
/* 8068FABC  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8068FAC0  4B C9 89 6C */	b checkPass__12J3DFrameCtrlFf
/* 8068FAC4  2C 03 00 00 */	cmpwi r3, 0
/* 8068FAC8  40 82 00 1C */	bne lbl_8068FAE4
/* 8068FACC  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8068FAD0  38 63 00 0C */	addi r3, r3, 0xc
/* 8068FAD4  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 8068FAD8  4B C9 89 54 */	b checkPass__12J3DFrameCtrlFf
/* 8068FADC  2C 03 00 00 */	cmpwi r3, 0
/* 8068FAE0  41 82 00 B0 */	beq lbl_8068FB90
lbl_8068FAE4:
/* 8068FAE4  3B A0 00 01 */	li r29, 1
/* 8068FAE8  48 00 00 A8 */	b lbl_8068FB90
lbl_8068FAEC:
/* 8068FAEC  2C 00 00 06 */	cmpwi r0, 6
/* 8068FAF0  40 82 00 24 */	bne lbl_8068FB14
/* 8068FAF4  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8068FAF8  38 63 00 0C */	addi r3, r3, 0xc
/* 8068FAFC  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 8068FB00  4B C9 89 2C */	b checkPass__12J3DFrameCtrlFf
/* 8068FB04  2C 03 00 00 */	cmpwi r3, 0
/* 8068FB08  41 82 00 88 */	beq lbl_8068FB90
/* 8068FB0C  3B A0 00 01 */	li r29, 1
/* 8068FB10  48 00 00 80 */	b lbl_8068FB90
lbl_8068FB14:
/* 8068FB14  2C 00 00 08 */	cmpwi r0, 8
/* 8068FB18  40 82 00 3C */	bne lbl_8068FB54
/* 8068FB1C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8068FB20  38 63 00 0C */	addi r3, r3, 0xc
/* 8068FB24  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8068FB28  4B C9 89 04 */	b checkPass__12J3DFrameCtrlFf
/* 8068FB2C  2C 03 00 00 */	cmpwi r3, 0
/* 8068FB30  40 82 00 1C */	bne lbl_8068FB4C
/* 8068FB34  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8068FB38  38 63 00 0C */	addi r3, r3, 0xc
/* 8068FB3C  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 8068FB40  4B C9 88 EC */	b checkPass__12J3DFrameCtrlFf
/* 8068FB44  2C 03 00 00 */	cmpwi r3, 0
/* 8068FB48  41 82 00 48 */	beq lbl_8068FB90
lbl_8068FB4C:
/* 8068FB4C  3B A0 00 01 */	li r29, 1
/* 8068FB50  48 00 00 40 */	b lbl_8068FB90
lbl_8068FB54:
/* 8068FB54  2C 00 00 09 */	cmpwi r0, 9
/* 8068FB58  40 82 00 38 */	bne lbl_8068FB90
/* 8068FB5C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8068FB60  38 63 00 0C */	addi r3, r3, 0xc
/* 8068FB64  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8068FB68  4B C9 88 C4 */	b checkPass__12J3DFrameCtrlFf
/* 8068FB6C  2C 03 00 00 */	cmpwi r3, 0
/* 8068FB70  40 82 00 1C */	bne lbl_8068FB8C
/* 8068FB74  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8068FB78  38 63 00 0C */	addi r3, r3, 0xc
/* 8068FB7C  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 8068FB80  4B C9 88 AC */	b checkPass__12J3DFrameCtrlFf
/* 8068FB84  2C 03 00 00 */	cmpwi r3, 0
/* 8068FB88  41 82 00 08 */	beq lbl_8068FB90
lbl_8068FB8C:
/* 8068FB8C  3B A0 00 01 */	li r29, 1
lbl_8068FB90:
/* 8068FB90  7F A0 07 75 */	extsb. r0, r29
/* 8068FB94  41 82 00 30 */	beq lbl_8068FBC4
/* 8068FB98  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003003B@ha */
/* 8068FB9C  38 03 00 3B */	addi r0, r3, 0x003B /* 0x0003003B@l */
/* 8068FBA0  90 01 00 08 */	stw r0, 8(r1)
/* 8068FBA4  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 8068FBA8  38 81 00 08 */	addi r4, r1, 8
/* 8068FBAC  38 A0 00 00 */	li r5, 0
/* 8068FBB0  38 C0 FF FF */	li r6, -1
/* 8068FBB4  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 8068FBB8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068FBBC  7D 89 03 A6 */	mtctr r12
/* 8068FBC0  4E 80 04 21 */	bctrl 
lbl_8068FBC4:
/* 8068FBC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8068FBC8  4B CD 26 60 */	b _restgpr_29
/* 8068FBCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8068FBD0  7C 08 03 A6 */	mtlr r0
/* 8068FBD4  38 21 00 20 */	addi r1, r1, 0x20
/* 8068FBD8  4E 80 00 20 */	blr 
