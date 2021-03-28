lbl_8062A3D0:
/* 8062A3D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8062A3D4  7C 08 02 A6 */	mflr r0
/* 8062A3D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8062A3DC  39 61 00 30 */	addi r11, r1, 0x30
/* 8062A3E0  4B D3 7D F8 */	b _savegpr_28
/* 8062A3E4  7C 7D 1B 78 */	mr r29, r3
/* 8062A3E8  3C 80 80 63 */	lis r4, lit_3920@ha
/* 8062A3EC  3B E4 E6 34 */	addi r31, r4, lit_3920@l
/* 8062A3F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8062A3F4  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 8062A3F8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8062A3FC  4B 9F 03 14 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8062A400  7C 7E 1B 78 */	mr r30, r3
/* 8062A404  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8062A408  38 60 00 00 */	li r3, 0
/* 8062A40C  98 7D 0A 91 */	stb r3, 0xa91(r29)
/* 8062A410  88 1D 0A A5 */	lbz r0, 0xaa5(r29)
/* 8062A414  28 00 00 00 */	cmplwi r0, 0
/* 8062A418  40 82 00 70 */	bne lbl_8062A488
/* 8062A41C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062A420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062A424  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8062A428  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8062A42C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8062A430  41 82 00 0C */	beq lbl_8062A43C
/* 8062A434  38 00 00 01 */	li r0, 1
/* 8062A438  98 1D 0A 91 */	stb r0, 0xa91(r29)
lbl_8062A43C:
/* 8062A43C  88 1D 0A 9F */	lbz r0, 0xa9f(r29)
/* 8062A440  28 00 00 00 */	cmplwi r0, 0
/* 8062A444  41 82 00 24 */	beq lbl_8062A468
/* 8062A448  88 04 05 68 */	lbz r0, 0x568(r4)
/* 8062A44C  28 00 00 08 */	cmplwi r0, 8
/* 8062A450  41 82 00 18 */	beq lbl_8062A468
/* 8062A454  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8062A458  28 00 00 16 */	cmplwi r0, 0x16
/* 8062A45C  41 82 00 0C */	beq lbl_8062A468
/* 8062A460  38 00 00 01 */	li r0, 1
/* 8062A464  98 1D 0A 91 */	stb r0, 0xa91(r29)
lbl_8062A468:
/* 8062A468  80 1D 0A 80 */	lwz r0, 0xa80(r29)
/* 8062A46C  2C 00 00 00 */	cmpwi r0, 0
/* 8062A470  40 82 00 64 */	bne lbl_8062A4D4
/* 8062A474  38 00 00 01 */	li r0, 1
/* 8062A478  98 1D 0A 91 */	stb r0, 0xa91(r29)
/* 8062A47C  38 00 00 1E */	li r0, 0x1e
/* 8062A480  98 1D 0A A7 */	stb r0, 0xaa7(r29)
/* 8062A484  48 00 00 50 */	b lbl_8062A4D4
lbl_8062A488:
/* 8062A488  98 7D 0A 91 */	stb r3, 0xa91(r29)
/* 8062A48C  80 1D 0A 80 */	lwz r0, 0xa80(r29)
/* 8062A490  2C 00 00 00 */	cmpwi r0, 0
/* 8062A494  40 82 00 14 */	bne lbl_8062A4A8
/* 8062A498  38 00 00 01 */	li r0, 1
/* 8062A49C  98 1D 0A 91 */	stb r0, 0xa91(r29)
/* 8062A4A0  38 00 00 1E */	li r0, 0x1e
/* 8062A4A4  98 1D 0A A7 */	stb r0, 0xaa7(r29)
lbl_8062A4A8:
/* 8062A4A8  88 1D 0A A7 */	lbz r0, 0xaa7(r29)
/* 8062A4AC  28 00 00 00 */	cmplwi r0, 0
/* 8062A4B0  40 82 00 1C */	bne lbl_8062A4CC
/* 8062A4B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062A4B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062A4BC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8062A4C0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8062A4C4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8062A4C8  41 82 00 0C */	beq lbl_8062A4D4
lbl_8062A4CC:
/* 8062A4CC  38 00 00 01 */	li r0, 1
/* 8062A4D0  98 1D 0A 91 */	stb r0, 0xa91(r29)
lbl_8062A4D4:
/* 8062A4D4  80 1D 06 F4 */	lwz r0, 0x6f4(r29)
/* 8062A4D8  2C 00 00 02 */	cmpwi r0, 2
/* 8062A4DC  40 80 00 10 */	bge lbl_8062A4EC
/* 8062A4E0  2C 00 00 00 */	cmpwi r0, 0
/* 8062A4E4  40 80 00 14 */	bge lbl_8062A4F8
/* 8062A4E8  48 00 02 1C */	b lbl_8062A704
lbl_8062A4EC:
/* 8062A4EC  2C 00 00 04 */	cmpwi r0, 4
/* 8062A4F0  40 80 02 14 */	bge lbl_8062A704
/* 8062A4F4  48 00 00 EC */	b lbl_8062A5E0
lbl_8062A4F8:
/* 8062A4F8  7F A3 EB 78 */	mr r3, r29
/* 8062A4FC  38 80 00 00 */	li r4, 0
/* 8062A500  4B FF 64 E1 */	bl setSwordAtBit__8daB_TN_cFi
/* 8062A504  7F A3 EB 78 */	mr r3, r29
/* 8062A508  38 80 00 00 */	li r4, 0
/* 8062A50C  4B FF 64 D5 */	bl setSwordAtBit__8daB_TN_cFi
/* 8062A510  7F A3 EB 78 */	mr r3, r29
/* 8062A514  38 80 00 01 */	li r4, 1
/* 8062A518  4B FF 65 CD */	bl setSwordAtBreak__8daB_TN_cFi
/* 8062A51C  80 1D 36 18 */	lwz r0, 0x3618(r29)
/* 8062A520  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8062A524  90 1D 36 18 */	stw r0, 0x3618(r29)
/* 8062A528  80 1D 06 F4 */	lwz r0, 0x6f4(r29)
/* 8062A52C  2C 00 00 00 */	cmpwi r0, 0
/* 8062A530  40 82 00 20 */	bne lbl_8062A550
/* 8062A534  7F A3 EB 78 */	mr r3, r29
/* 8062A538  38 80 00 17 */	li r4, 0x17
/* 8062A53C  38 A0 00 00 */	li r5, 0
/* 8062A540  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 8062A544  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8062A548  4B FF 63 81 */	bl setBck__8daB_TN_cFiUcff
/* 8062A54C  48 00 00 1C */	b lbl_8062A568
lbl_8062A550:
/* 8062A550  7F A3 EB 78 */	mr r3, r29
/* 8062A554  38 80 00 18 */	li r4, 0x18
/* 8062A558  38 A0 00 00 */	li r5, 0
/* 8062A55C  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 8062A560  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8062A564  4B FF 63 65 */	bl setBck__8daB_TN_cFiUcff
lbl_8062A568:
/* 8062A568  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007039C@ha */
/* 8062A56C  38 03 03 9C */	addi r0, r3, 0x039C /* 0x0007039C@l */
/* 8062A570  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062A574  38 7D 06 4C */	addi r3, r29, 0x64c
/* 8062A578  38 81 00 14 */	addi r4, r1, 0x14
/* 8062A57C  38 A0 FF FF */	li r5, -1
/* 8062A580  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 8062A584  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8062A588  7D 89 03 A6 */	mtctr r12
/* 8062A58C  4E 80 04 21 */	bctrl 
/* 8062A590  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8062A594  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8062A598  80 7D 06 F4 */	lwz r3, 0x6f4(r29)
/* 8062A59C  38 03 00 02 */	addi r0, r3, 2
/* 8062A5A0  90 1D 06 F4 */	stw r0, 0x6f4(r29)
/* 8062A5A4  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8062A5A8  7F C4 F3 78 */	mr r4, r30
/* 8062A5AC  38 A0 18 00 */	li r5, 0x1800
/* 8062A5B0  4B C4 65 E0 */	b cLib_chaseAngleS__FPsss
/* 8062A5B4  88 1D 0A A5 */	lbz r0, 0xaa5(r29)
/* 8062A5B8  28 00 00 01 */	cmplwi r0, 1
/* 8062A5BC  40 82 01 48 */	bne lbl_8062A704
/* 8062A5C0  88 1D 0A 9F */	lbz r0, 0xa9f(r29)
/* 8062A5C4  28 00 00 00 */	cmplwi r0, 0
/* 8062A5C8  41 82 01 3C */	beq lbl_8062A704
/* 8062A5CC  38 00 00 01 */	li r0, 1
/* 8062A5D0  98 1D 0A 91 */	stb r0, 0xa91(r29)
/* 8062A5D4  38 00 00 28 */	li r0, 0x28
/* 8062A5D8  98 1D 0A A7 */	stb r0, 0xaa7(r29)
/* 8062A5DC  48 00 01 28 */	b lbl_8062A704
lbl_8062A5E0:
/* 8062A5E0  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8062A5E4  38 63 00 0C */	addi r3, r3, 0xc
/* 8062A5E8  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 8062A5EC  4B CF DE 40 */	b checkPass__12J3DFrameCtrlFf
/* 8062A5F0  2C 03 00 00 */	cmpwi r3, 0
/* 8062A5F4  41 82 00 30 */	beq lbl_8062A624
/* 8062A5F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 8062A5FC  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 8062A600  90 01 00 10 */	stw r0, 0x10(r1)
/* 8062A604  38 7D 06 4C */	addi r3, r29, 0x64c
/* 8062A608  38 81 00 10 */	addi r4, r1, 0x10
/* 8062A60C  38 A0 00 00 */	li r5, 0
/* 8062A610  38 C0 FF FF */	li r6, -1
/* 8062A614  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 8062A618  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062A61C  7D 89 03 A6 */	mtctr r12
/* 8062A620  4E 80 04 21 */	bctrl 
lbl_8062A624:
/* 8062A624  80 1D 06 F4 */	lwz r0, 0x6f4(r29)
/* 8062A628  2C 00 00 02 */	cmpwi r0, 2
/* 8062A62C  40 82 00 4C */	bne lbl_8062A678
/* 8062A630  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8062A634  38 63 00 0C */	addi r3, r3, 0xc
/* 8062A638  C0 3F 02 34 */	lfs f1, 0x234(r31)
/* 8062A63C  4B CF DD F0 */	b checkPass__12J3DFrameCtrlFf
/* 8062A640  2C 03 00 00 */	cmpwi r3, 0
/* 8062A644  41 82 00 78 */	beq lbl_8062A6BC
/* 8062A648  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 8062A64C  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 8062A650  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062A654  38 7D 06 4C */	addi r3, r29, 0x64c
/* 8062A658  38 81 00 0C */	addi r4, r1, 0xc
/* 8062A65C  38 A0 00 00 */	li r5, 0
/* 8062A660  38 C0 FF FF */	li r6, -1
/* 8062A664  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 8062A668  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062A66C  7D 89 03 A6 */	mtctr r12
/* 8062A670  4E 80 04 21 */	bctrl 
/* 8062A674  48 00 00 48 */	b lbl_8062A6BC
lbl_8062A678:
/* 8062A678  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8062A67C  38 63 00 0C */	addi r3, r3, 0xc
/* 8062A680  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8062A684  4B CF DD A8 */	b checkPass__12J3DFrameCtrlFf
/* 8062A688  2C 03 00 00 */	cmpwi r3, 0
/* 8062A68C  41 82 00 30 */	beq lbl_8062A6BC
/* 8062A690  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 8062A694  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 8062A698  90 01 00 08 */	stw r0, 8(r1)
/* 8062A69C  38 7D 06 4C */	addi r3, r29, 0x64c
/* 8062A6A0  38 81 00 08 */	addi r4, r1, 8
/* 8062A6A4  38 A0 00 00 */	li r5, 0
/* 8062A6A8  38 C0 FF FF */	li r6, -1
/* 8062A6AC  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 8062A6B0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062A6B4  7D 89 03 A6 */	mtctr r12
/* 8062A6B8  4E 80 04 21 */	bctrl 
lbl_8062A6BC:
/* 8062A6BC  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8062A6C0  38 80 00 01 */	li r4, 1
/* 8062A6C4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8062A6C8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8062A6CC  40 82 00 18 */	bne lbl_8062A6E4
/* 8062A6D0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8062A6D4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8062A6D8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8062A6DC  41 82 00 08 */	beq lbl_8062A6E4
/* 8062A6E0  38 80 00 00 */	li r4, 0
lbl_8062A6E4:
/* 8062A6E4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8062A6E8  41 82 00 1C */	beq lbl_8062A704
/* 8062A6EC  7F A3 EB 78 */	mr r3, r29
/* 8062A6F0  38 80 00 09 */	li r4, 9
/* 8062A6F4  38 A0 00 00 */	li r5, 0
/* 8062A6F8  4B FF 62 D1 */	bl setActionMode__8daB_TN_cFii
/* 8062A6FC  38 00 00 01 */	li r0, 1
/* 8062A700  98 1D 0A 91 */	stb r0, 0xa91(r29)
lbl_8062A704:
/* 8062A704  39 61 00 30 */	addi r11, r1, 0x30
/* 8062A708  4B D3 7B 1C */	b _restgpr_28
/* 8062A70C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8062A710  7C 08 03 A6 */	mtlr r0
/* 8062A714  38 21 00 30 */	addi r1, r1, 0x30
/* 8062A718  4E 80 00 20 */	blr 
