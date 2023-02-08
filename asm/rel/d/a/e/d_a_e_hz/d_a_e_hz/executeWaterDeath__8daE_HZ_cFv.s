lbl_806EE3BC:
/* 806EE3BC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806EE3C0  7C 08 02 A6 */	mflr r0
/* 806EE3C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806EE3C8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 806EE3CC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 806EE3D0  7C 7E 1B 78 */	mr r30, r3
/* 806EE3D4  3C 80 80 6F */	lis r4, lit_3966@ha /* 0x806F0860@ha */
/* 806EE3D8  3B E4 08 60 */	addi r31, r4, lit_3966@l /* 0x806F0860@l */
/* 806EE3DC  38 00 00 00 */	li r0, 0
/* 806EE3E0  98 03 05 66 */	stb r0, 0x566(r3)
/* 806EE3E4  80 03 06 C8 */	lwz r0, 0x6c8(r3)
/* 806EE3E8  2C 00 00 01 */	cmpwi r0, 1
/* 806EE3EC  41 82 01 A4 */	beq lbl_806EE590
/* 806EE3F0  40 80 00 10 */	bge lbl_806EE400
/* 806EE3F4  2C 00 00 00 */	cmpwi r0, 0
/* 806EE3F8  40 80 00 14 */	bge lbl_806EE40C
/* 806EE3FC  48 00 03 BC */	b lbl_806EE7B8
lbl_806EE400:
/* 806EE400  2C 00 00 03 */	cmpwi r0, 3
/* 806EE404  40 80 03 B4 */	bge lbl_806EE7B8
/* 806EE408  48 00 02 8C */	b lbl_806EE694
lbl_806EE40C:
/* 806EE40C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806EE410  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806EE414  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806EE418  38 00 00 01 */	li r0, 1
/* 806EE41C  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EE420  4B FF FE 85 */	bl setWaterEffect__8daE_HZ_cFv
/* 806EE424  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060033@ha */
/* 806EE428  38 03 00 33 */	addi r0, r3, 0x0033 /* 0x00060033@l */
/* 806EE42C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806EE430  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EE434  38 81 00 1C */	addi r4, r1, 0x1c
/* 806EE438  38 A0 00 00 */	li r5, 0
/* 806EE43C  38 C0 FF FF */	li r6, -1
/* 806EE440  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EE444  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EE448  7D 89 03 A6 */	mtctr r12
/* 806EE44C  4E 80 04 21 */	bctrl 
/* 806EE450  7F C3 F3 78 */	mr r3, r30
/* 806EE454  38 80 00 13 */	li r4, 0x13
/* 806EE458  4B FF C2 DD */	bl checkBck__8daE_HZ_cFi
/* 806EE45C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EE460  41 82 00 48 */	beq lbl_806EE4A8
/* 806EE464  7F C3 F3 78 */	mr r3, r30
/* 806EE468  38 80 00 0A */	li r4, 0xa
/* 806EE46C  38 A0 00 00 */	li r5, 0
/* 806EE470  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806EE474  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806EE478  4B FF C2 19 */	bl setBck__8daE_HZ_cFiUcff
/* 806EE47C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007021C@ha */
/* 806EE480  38 03 02 1C */	addi r0, r3, 0x021C /* 0x0007021C@l */
/* 806EE484  90 01 00 18 */	stw r0, 0x18(r1)
/* 806EE488  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EE48C  38 81 00 18 */	addi r4, r1, 0x18
/* 806EE490  38 A0 FF FF */	li r5, -1
/* 806EE494  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EE498  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806EE49C  7D 89 03 A6 */	mtctr r12
/* 806EE4A0  4E 80 04 21 */	bctrl 
/* 806EE4A4  48 00 00 EC */	b lbl_806EE590
lbl_806EE4A8:
/* 806EE4A8  7F C3 F3 78 */	mr r3, r30
/* 806EE4AC  38 80 00 05 */	li r4, 5
/* 806EE4B0  4B FF C2 85 */	bl checkBck__8daE_HZ_cFi
/* 806EE4B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EE4B8  40 82 00 54 */	bne lbl_806EE50C
/* 806EE4BC  7F C3 F3 78 */	mr r3, r30
/* 806EE4C0  38 80 00 0C */	li r4, 0xc
/* 806EE4C4  4B FF C2 71 */	bl checkBck__8daE_HZ_cFi
/* 806EE4C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EE4CC  40 82 00 40 */	bne lbl_806EE50C
/* 806EE4D0  7F C3 F3 78 */	mr r3, r30
/* 806EE4D4  38 80 00 0F */	li r4, 0xf
/* 806EE4D8  4B FF C2 5D */	bl checkBck__8daE_HZ_cFi
/* 806EE4DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EE4E0  40 82 00 2C */	bne lbl_806EE50C
/* 806EE4E4  7F C3 F3 78 */	mr r3, r30
/* 806EE4E8  38 80 00 11 */	li r4, 0x11
/* 806EE4EC  4B FF C2 49 */	bl checkBck__8daE_HZ_cFi
/* 806EE4F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EE4F4  40 82 00 18 */	bne lbl_806EE50C
/* 806EE4F8  7F C3 F3 78 */	mr r3, r30
/* 806EE4FC  38 80 00 12 */	li r4, 0x12
/* 806EE500  4B FF C2 35 */	bl checkBck__8daE_HZ_cFi
/* 806EE504  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EE508  41 82 00 48 */	beq lbl_806EE550
lbl_806EE50C:
/* 806EE50C  7F C3 F3 78 */	mr r3, r30
/* 806EE510  38 80 00 09 */	li r4, 9
/* 806EE514  38 A0 00 00 */	li r5, 0
/* 806EE518  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806EE51C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806EE520  4B FF C1 71 */	bl setBck__8daE_HZ_cFiUcff
/* 806EE524  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007021B@ha */
/* 806EE528  38 03 02 1B */	addi r0, r3, 0x021B /* 0x0007021B@l */
/* 806EE52C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EE530  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EE534  38 81 00 14 */	addi r4, r1, 0x14
/* 806EE538  38 A0 FF FF */	li r5, -1
/* 806EE53C  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EE540  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806EE544  7D 89 03 A6 */	mtctr r12
/* 806EE548  4E 80 04 21 */	bctrl 
/* 806EE54C  48 00 00 44 */	b lbl_806EE590
lbl_806EE550:
/* 806EE550  7F C3 F3 78 */	mr r3, r30
/* 806EE554  38 80 00 0A */	li r4, 0xa
/* 806EE558  38 A0 00 00 */	li r5, 0
/* 806EE55C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806EE560  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806EE564  4B FF C1 2D */	bl setBck__8daE_HZ_cFiUcff
/* 806EE568  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007021C@ha */
/* 806EE56C  38 03 02 1C */	addi r0, r3, 0x021C /* 0x0007021C@l */
/* 806EE570  90 01 00 10 */	stw r0, 0x10(r1)
/* 806EE574  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EE578  38 81 00 10 */	addi r4, r1, 0x10
/* 806EE57C  38 A0 FF FF */	li r5, -1
/* 806EE580  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EE584  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806EE588  7D 89 03 A6 */	mtctr r12
/* 806EE58C  4E 80 04 21 */	bctrl 
lbl_806EE590:
/* 806EE590  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 806EE594  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806EE598  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 806EE59C  4B B8 21 A5 */	bl cLib_chaseF__FPfff
/* 806EE5A0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806EE5A4  38 80 00 00 */	li r4, 0
/* 806EE5A8  38 A0 08 00 */	li r5, 0x800
/* 806EE5AC  4B B8 25 E5 */	bl cLib_chaseAngleS__FPsss
/* 806EE5B0  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 806EE5B4  38 80 00 00 */	li r4, 0
/* 806EE5B8  38 A0 08 00 */	li r5, 0x800
/* 806EE5BC  4B B8 25 D5 */	bl cLib_chaseAngleS__FPsss
/* 806EE5C0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EE5C4  38 63 00 0C */	addi r3, r3, 0xc
/* 806EE5C8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806EE5CC  4B C3 9E 61 */	bl checkPass__12J3DFrameCtrlFf
/* 806EE5D0  2C 03 00 00 */	cmpwi r3, 0
/* 806EE5D4  40 82 00 4C */	bne lbl_806EE620
/* 806EE5D8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EE5DC  38 63 00 0C */	addi r3, r3, 0xc
/* 806EE5E0  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806EE5E4  4B C3 9E 49 */	bl checkPass__12J3DFrameCtrlFf
/* 806EE5E8  2C 03 00 00 */	cmpwi r3, 0
/* 806EE5EC  40 82 00 34 */	bne lbl_806EE620
/* 806EE5F0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EE5F4  38 63 00 0C */	addi r3, r3, 0xc
/* 806EE5F8  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 806EE5FC  4B C3 9E 31 */	bl checkPass__12J3DFrameCtrlFf
/* 806EE600  2C 03 00 00 */	cmpwi r3, 0
/* 806EE604  40 82 00 1C */	bne lbl_806EE620
/* 806EE608  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EE60C  38 63 00 0C */	addi r3, r3, 0xc
/* 806EE610  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 806EE614  4B C3 9E 19 */	bl checkPass__12J3DFrameCtrlFf
/* 806EE618  2C 03 00 00 */	cmpwi r3, 0
/* 806EE61C  41 82 00 38 */	beq lbl_806EE654
lbl_806EE620:
/* 806EE620  7F C3 F3 78 */	mr r3, r30
/* 806EE624  4B FF FC 81 */	bl setWaterEffect__8daE_HZ_cFv
/* 806EE628  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070221@ha */
/* 806EE62C  38 03 02 21 */	addi r0, r3, 0x0221 /* 0x00070221@l */
/* 806EE630  90 01 00 0C */	stw r0, 0xc(r1)
/* 806EE634  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EE638  38 81 00 0C */	addi r4, r1, 0xc
/* 806EE63C  38 A0 00 00 */	li r5, 0
/* 806EE640  38 C0 FF FF */	li r6, -1
/* 806EE644  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EE648  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EE64C  7D 89 03 A6 */	mtctr r12
/* 806EE650  4E 80 04 21 */	bctrl 
lbl_806EE654:
/* 806EE654  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 806EE658  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806EE65C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 806EE660  40 81 01 58 */	ble lbl_806EE7B8
/* 806EE664  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806EE668  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806EE66C  EC 01 00 2A */	fadds f0, f1, f0
/* 806EE670  C0 7E 06 AC */	lfs f3, 0x6ac(r30)
/* 806EE674  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 806EE678  40 81 01 40 */	ble lbl_806EE7B8
/* 806EE67C  EC 03 08 28 */	fsubs f0, f3, f1
/* 806EE680  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806EE684  38 00 00 02 */	li r0, 2
/* 806EE688  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EE68C  D0 5E 04 FC */	stfs f2, 0x4fc(r30)
/* 806EE690  48 00 01 28 */	b lbl_806EE7B8
lbl_806EE694:
/* 806EE694  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EE698  38 63 00 0C */	addi r3, r3, 0xc
/* 806EE69C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806EE6A0  4B C3 9D 8D */	bl checkPass__12J3DFrameCtrlFf
/* 806EE6A4  2C 03 00 00 */	cmpwi r3, 0
/* 806EE6A8  40 82 00 4C */	bne lbl_806EE6F4
/* 806EE6AC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EE6B0  38 63 00 0C */	addi r3, r3, 0xc
/* 806EE6B4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806EE6B8  4B C3 9D 75 */	bl checkPass__12J3DFrameCtrlFf
/* 806EE6BC  2C 03 00 00 */	cmpwi r3, 0
/* 806EE6C0  40 82 00 34 */	bne lbl_806EE6F4
/* 806EE6C4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EE6C8  38 63 00 0C */	addi r3, r3, 0xc
/* 806EE6CC  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 806EE6D0  4B C3 9D 5D */	bl checkPass__12J3DFrameCtrlFf
/* 806EE6D4  2C 03 00 00 */	cmpwi r3, 0
/* 806EE6D8  40 82 00 1C */	bne lbl_806EE6F4
/* 806EE6DC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EE6E0  38 63 00 0C */	addi r3, r3, 0xc
/* 806EE6E4  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 806EE6E8  4B C3 9D 45 */	bl checkPass__12J3DFrameCtrlFf
/* 806EE6EC  2C 03 00 00 */	cmpwi r3, 0
/* 806EE6F0  41 82 00 38 */	beq lbl_806EE728
lbl_806EE6F4:
/* 806EE6F4  7F C3 F3 78 */	mr r3, r30
/* 806EE6F8  4B FF FB AD */	bl setWaterEffect__8daE_HZ_cFv
/* 806EE6FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070221@ha */
/* 806EE700  38 03 02 21 */	addi r0, r3, 0x0221 /* 0x00070221@l */
/* 806EE704  90 01 00 08 */	stw r0, 8(r1)
/* 806EE708  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EE70C  38 81 00 08 */	addi r4, r1, 8
/* 806EE710  38 A0 00 00 */	li r5, 0
/* 806EE714  38 C0 FF FF */	li r6, -1
/* 806EE718  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EE71C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EE720  7D 89 03 A6 */	mtctr r12
/* 806EE724  4E 80 04 21 */	bctrl 
lbl_806EE728:
/* 806EE728  80 9E 05 BC */	lwz r4, 0x5bc(r30)
/* 806EE72C  38 60 00 01 */	li r3, 1
/* 806EE730  88 04 00 11 */	lbz r0, 0x11(r4)
/* 806EE734  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806EE738  40 82 00 18 */	bne lbl_806EE750
/* 806EE73C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806EE740  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 806EE744  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806EE748  41 82 00 08 */	beq lbl_806EE750
/* 806EE74C  38 60 00 00 */	li r3, 0
lbl_806EE750:
/* 806EE750  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EE754  41 82 00 64 */	beq lbl_806EE7B8
/* 806EE758  80 64 00 04 */	lwz r3, 4(r4)
/* 806EE75C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806EE760  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806EE764  38 63 03 60 */	addi r3, r3, 0x360
/* 806EE768  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EE76C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EE770  4B C5 7D 41 */	bl PSMTXCopy
/* 806EE774  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EE778  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EE77C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806EE780  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806EE784  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806EE788  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806EE78C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806EE790  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806EE794  7F C3 F3 78 */	mr r3, r30
/* 806EE798  38 81 00 2C */	addi r4, r1, 0x2c
/* 806EE79C  38 A0 00 0A */	li r5, 0xa
/* 806EE7A0  38 C0 00 00 */	li r6, 0
/* 806EE7A4  38 E0 00 05 */	li r7, 5
/* 806EE7A8  4B 92 E3 31 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806EE7AC  7F C3 F3 78 */	mr r3, r30
/* 806EE7B0  38 80 00 0B */	li r4, 0xb
/* 806EE7B4  4B FF C3 29 */	bl setActionMode__8daE_HZ_cFi
lbl_806EE7B8:
/* 806EE7B8  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 806EE7BC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806EE7C0  EC 00 08 2A */	fadds f0, f0, f1
/* 806EE7C4  C0 5E 06 AC */	lfs f2, 0x6ac(r30)
/* 806EE7C8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 806EE7CC  40 80 00 3C */	bge lbl_806EE808
/* 806EE7D0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806EE7D4  EC 00 08 2A */	fadds f0, f0, f1
/* 806EE7D8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806EE7DC  40 80 00 2C */	bge lbl_806EE808
/* 806EE7E0  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 806EE7E4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806EE7E8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806EE7EC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 806EE7F0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806EE7F4  38 7E 12 30 */	addi r3, r30, 0x1230
/* 806EE7F8  38 81 00 20 */	addi r4, r1, 0x20
/* 806EE7FC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806EE800  FC 40 08 90 */	fmr f2, f1
/* 806EE804  4B 92 E9 09 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_806EE808:
/* 806EE808  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 806EE80C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 806EE810  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806EE814  7C 08 03 A6 */	mtlr r0
/* 806EE818  38 21 00 40 */	addi r1, r1, 0x40
/* 806EE81C  4E 80 00 20 */	blr 
