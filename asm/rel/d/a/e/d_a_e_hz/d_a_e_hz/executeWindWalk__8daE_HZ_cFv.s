lbl_806EE120:
/* 806EE120  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806EE124  7C 08 02 A6 */	mflr r0
/* 806EE128  90 01 00 24 */	stw r0, 0x24(r1)
/* 806EE12C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806EE130  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806EE134  7C 7F 1B 78 */	mr r31, r3
/* 806EE138  3C 80 80 6F */	lis r4, lit_3966@ha /* 0x806F0860@ha */
/* 806EE13C  3B C4 08 60 */	addi r30, r4, lit_3966@l /* 0x806F0860@l */
/* 806EE140  80 03 06 C8 */	lwz r0, 0x6c8(r3)
/* 806EE144  2C 00 00 01 */	cmpwi r0, 1
/* 806EE148  41 82 00 A4 */	beq lbl_806EE1EC
/* 806EE14C  40 80 01 40 */	bge lbl_806EE28C
/* 806EE150  2C 00 00 00 */	cmpwi r0, 0
/* 806EE154  40 80 00 08 */	bge lbl_806EE15C
/* 806EE158  48 00 01 34 */	b lbl_806EE28C
lbl_806EE15C:
/* 806EE15C  38 80 00 00 */	li r4, 0
/* 806EE160  4B FF CF 45 */	bl setTgSetBit__8daE_HZ_cFi
/* 806EE164  80 1F 0D 24 */	lwz r0, 0xd24(r31)
/* 806EE168  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806EE16C  90 1F 0D 24 */	stw r0, 0xd24(r31)
/* 806EE170  7F E3 FB 78 */	mr r3, r31
/* 806EE174  38 80 00 0C */	li r4, 0xc
/* 806EE178  38 A0 00 00 */	li r5, 0
/* 806EE17C  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 806EE180  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806EE184  4B FF C5 0D */	bl setBck__8daE_HZ_cFiUcff
/* 806EE188  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070219@ha */
/* 806EE18C  38 03 02 19 */	addi r0, r3, 0x0219 /* 0x00070219@l */
/* 806EE190  90 01 00 10 */	stw r0, 0x10(r1)
/* 806EE194  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806EE198  38 81 00 10 */	addi r4, r1, 0x10
/* 806EE19C  38 A0 FF FF */	li r5, -1
/* 806EE1A0  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 806EE1A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806EE1A8  7D 89 03 A6 */	mtctr r12
/* 806EE1AC  4E 80 04 21 */	bctrl 
/* 806EE1B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070209@ha */
/* 806EE1B4  38 03 02 09 */	addi r0, r3, 0x0209 /* 0x00070209@l */
/* 806EE1B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806EE1BC  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806EE1C0  38 81 00 0C */	addi r4, r1, 0xc
/* 806EE1C4  38 A0 00 00 */	li r5, 0
/* 806EE1C8  38 C0 FF FF */	li r6, -1
/* 806EE1CC  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 806EE1D0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EE1D4  7D 89 03 A6 */	mtctr r12
/* 806EE1D8  4E 80 04 21 */	bctrl 
/* 806EE1DC  38 00 00 01 */	li r0, 1
/* 806EE1E0  90 1F 06 C8 */	stw r0, 0x6c8(r31)
/* 806EE1E4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806EE1E8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_806EE1EC:
/* 806EE1EC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806EE1F0  38 63 00 0C */	addi r3, r3, 0xc
/* 806EE1F4  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 806EE1F8  4B C3 A2 35 */	bl checkPass__12J3DFrameCtrlFf
/* 806EE1FC  2C 03 00 00 */	cmpwi r3, 0
/* 806EE200  40 82 00 1C */	bne lbl_806EE21C
/* 806EE204  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806EE208  38 63 00 0C */	addi r3, r3, 0xc
/* 806EE20C  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 806EE210  4B C3 A2 1D */	bl checkPass__12J3DFrameCtrlFf
/* 806EE214  2C 03 00 00 */	cmpwi r3, 0
/* 806EE218  41 82 00 30 */	beq lbl_806EE248
lbl_806EE21C:
/* 806EE21C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070209@ha */
/* 806EE220  38 03 02 09 */	addi r0, r3, 0x0209 /* 0x00070209@l */
/* 806EE224  90 01 00 08 */	stw r0, 8(r1)
/* 806EE228  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806EE22C  38 81 00 08 */	addi r4, r1, 8
/* 806EE230  38 A0 00 00 */	li r5, 0
/* 806EE234  38 C0 FF FF */	li r6, -1
/* 806EE238  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 806EE23C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EE240  7D 89 03 A6 */	mtctr r12
/* 806EE244  4E 80 04 21 */	bctrl 
lbl_806EE248:
/* 806EE248  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806EE24C  38 80 00 01 */	li r4, 1
/* 806EE250  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806EE254  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806EE258  40 82 00 18 */	bne lbl_806EE270
/* 806EE25C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806EE260  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806EE264  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806EE268  41 82 00 08 */	beq lbl_806EE270
/* 806EE26C  38 80 00 00 */	li r4, 0
lbl_806EE270:
/* 806EE270  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806EE274  41 82 00 18 */	beq lbl_806EE28C
/* 806EE278  7F E3 FB 78 */	mr r3, r31
/* 806EE27C  38 80 00 03 */	li r4, 3
/* 806EE280  4B FF C8 5D */	bl setActionMode__8daE_HZ_cFi
/* 806EE284  7F E3 FB 78 */	mr r3, r31
/* 806EE288  4B FF DD E1 */	bl initBackWalk__8daE_HZ_cFv
lbl_806EE28C:
/* 806EE28C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806EE290  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806EE294  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806EE298  7C 08 03 A6 */	mtlr r0
/* 806EE29C  38 21 00 20 */	addi r1, r1, 0x20
/* 806EE2A0  4E 80 00 20 */	blr 
