lbl_8083A3C4:
/* 8083A3C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8083A3C8  7C 08 02 A6 */	mflr r0
/* 8083A3CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8083A3D0  39 61 00 30 */	addi r11, r1, 0x30
/* 8083A3D4  4B B2 7E 01 */	bl _savegpr_27
/* 8083A3D8  7C 7E 1B 78 */	mr r30, r3
/* 8083A3DC  3C 80 80 84 */	lis r4, lit_3894@ha /* 0x808454AC@ha */
/* 8083A3E0  3B E4 54 AC */	addi r31, r4, lit_3894@l /* 0x808454AC@l */
/* 8083A3E4  C0 23 05 EC */	lfs f1, 0x5ec(r3)
/* 8083A3E8  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 8083A3EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083A3F0  40 80 00 08 */	bge lbl_8083A3F8
/* 8083A3F4  48 00 68 B1 */	bl resetNeckAnime__9daHorse_cFv
lbl_8083A3F8:
/* 8083A3F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8083A3FC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8083A400  83 7C 5D B4 */	lwz r27, 0x5db4(r28)
/* 8083A404  3B A0 00 00 */	li r29, 0
/* 8083A408  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 8083A40C  28 00 01 48 */	cmplwi r0, 0x148
/* 8083A410  40 82 00 20 */	bne lbl_8083A430
/* 8083A414  7F 63 DB 78 */	mr r3, r27
/* 8083A418  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8083A41C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8083A420  7D 89 03 A6 */	mtctr r12
/* 8083A424  4E 80 04 21 */	bctrl 
/* 8083A428  28 03 00 00 */	cmplwi r3, 0
/* 8083A42C  40 82 00 10 */	bne lbl_8083A43C
lbl_8083A430:
/* 8083A430  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 8083A434  28 00 00 51 */	cmplwi r0, 0x51
/* 8083A438  40 82 00 08 */	bne lbl_8083A440
lbl_8083A43C:
/* 8083A43C  3B A0 00 01 */	li r29, 1
lbl_8083A440:
/* 8083A440  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8083A444  41 82 00 10 */	beq lbl_8083A454
/* 8083A448  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083A44C  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 8083A450  48 00 00 0C */	b lbl_8083A45C
lbl_8083A454:
/* 8083A454  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 8083A458  4B 92 40 B9 */	bl updateFrame__16daPy_frameCtrl_cFv
lbl_8083A45C:
/* 8083A45C  C0 1E 05 C0 */	lfs f0, 0x5c0(r30)
/* 8083A460  80 7E 05 98 */	lwz r3, 0x598(r30)
/* 8083A464  D0 03 00 08 */	stfs f0, 8(r3)
/* 8083A468  80 1E 05 A0 */	lwz r0, 0x5a0(r30)
/* 8083A46C  28 00 00 00 */	cmplwi r0, 0
/* 8083A470  41 82 00 6C */	beq lbl_8083A4DC
/* 8083A474  83 7C 5D B4 */	lwz r27, 0x5db4(r28)
/* 8083A478  3B A0 00 00 */	li r29, 0
/* 8083A47C  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 8083A480  28 00 01 48 */	cmplwi r0, 0x148
/* 8083A484  40 82 00 20 */	bne lbl_8083A4A4
/* 8083A488  7F 63 DB 78 */	mr r3, r27
/* 8083A48C  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8083A490  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8083A494  7D 89 03 A6 */	mtctr r12
/* 8083A498  4E 80 04 21 */	bctrl 
/* 8083A49C  28 03 00 00 */	cmplwi r3, 0
/* 8083A4A0  40 82 00 10 */	bne lbl_8083A4B0
lbl_8083A4A4:
/* 8083A4A4  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 8083A4A8  28 00 00 51 */	cmplwi r0, 0x51
/* 8083A4AC  40 82 00 08 */	bne lbl_8083A4B4
lbl_8083A4B0:
/* 8083A4B0  3B A0 00 01 */	li r29, 1
lbl_8083A4B4:
/* 8083A4B4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8083A4B8  41 82 00 10 */	beq lbl_8083A4C8
/* 8083A4BC  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083A4C0  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 8083A4C4  48 00 00 0C */	b lbl_8083A4D0
lbl_8083A4C8:
/* 8083A4C8  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 8083A4CC  4B 92 40 45 */	bl updateFrame__16daPy_frameCtrl_cFv
lbl_8083A4D0:
/* 8083A4D0  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 8083A4D4  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 8083A4D8  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8083A4DC:
/* 8083A4DC  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 8083A4E0  28 00 00 00 */	cmplwi r0, 0
/* 8083A4E4  41 82 00 60 */	beq lbl_8083A544
/* 8083A4E8  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8083A4EC  4B 92 40 25 */	bl updateFrame__16daPy_frameCtrl_cFv
/* 8083A4F0  A0 1E 16 C8 */	lhz r0, 0x16c8(r30)
/* 8083A4F4  28 00 00 1F */	cmplwi r0, 0x1f
/* 8083A4F8  40 82 00 40 */	bne lbl_8083A538
/* 8083A4FC  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8083A500  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 8083A504  4B AE DF 29 */	bl checkPass__12J3DFrameCtrlFf
/* 8083A508  2C 03 00 00 */	cmpwi r3, 0
/* 8083A50C  41 82 00 2C */	beq lbl_8083A538
/* 8083A510  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050001@ha */
/* 8083A514  38 03 00 01 */	addi r0, r3, 0x0001 /* 0x00050001@l */
/* 8083A518  90 01 00 08 */	stw r0, 8(r1)
/* 8083A51C  38 7E 10 A4 */	addi r3, r30, 0x10a4
/* 8083A520  38 81 00 08 */	addi r4, r1, 8
/* 8083A524  88 BE 16 B5 */	lbz r5, 0x16b5(r30)
/* 8083A528  81 9E 10 A4 */	lwz r12, 0x10a4(r30)
/* 8083A52C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8083A530  7D 89 03 A6 */	mtctr r12
/* 8083A534  4E 80 04 21 */	bctrl 
lbl_8083A538:
/* 8083A538  C0 1E 05 F0 */	lfs f0, 0x5f0(r30)
/* 8083A53C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 8083A540  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8083A544:
/* 8083A544  A8 7E 16 F4 */	lha r3, 0x16f4(r30)
/* 8083A548  2C 03 00 00 */	cmpwi r3, 0
/* 8083A54C  41 82 00 2C */	beq lbl_8083A578
/* 8083A550  38 03 00 01 */	addi r0, r3, 1
/* 8083A554  B0 1E 16 F4 */	sth r0, 0x16f4(r30)
/* 8083A558  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 8083A55C  A8 63 00 06 */	lha r3, 6(r3)
/* 8083A560  A8 1E 16 F4 */	lha r0, 0x16f4(r30)
/* 8083A564  7C 00 18 00 */	cmpw r0, r3
/* 8083A568  40 81 00 2C */	ble lbl_8083A594
/* 8083A56C  38 00 00 00 */	li r0, 0
/* 8083A570  B0 1E 16 F4 */	sth r0, 0x16f4(r30)
/* 8083A574  48 00 00 20 */	b lbl_8083A594
lbl_8083A578:
/* 8083A578  4B A2 D2 F5 */	bl cM_rnd__Fv
/* 8083A57C  C0 1F 01 C8 */	lfs f0, 0x1c8(r31)
/* 8083A580  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083A584  40 80 00 10 */	bge lbl_8083A594
/* 8083A588  A8 7E 16 F4 */	lha r3, 0x16f4(r30)
/* 8083A58C  38 03 00 01 */	addi r0, r3, 1
/* 8083A590  B0 1E 16 F4 */	sth r0, 0x16f4(r30)
lbl_8083A594:
/* 8083A594  39 61 00 30 */	addi r11, r1, 0x30
/* 8083A598  4B B2 7C 89 */	bl _restgpr_27
/* 8083A59C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8083A5A0  7C 08 03 A6 */	mtlr r0
/* 8083A5A4  38 21 00 30 */	addi r1, r1, 0x30
/* 8083A5A8  4E 80 00 20 */	blr 
