lbl_8009C3CC:
/* 8009C3CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8009C3D0  7C 08 02 A6 */	mflr r0
/* 8009C3D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8009C3D8  39 61 00 30 */	addi r11, r1, 0x30
/* 8009C3DC  48 2C 5D F9 */	bl _savegpr_27
/* 8009C3E0  7C 7B 1B 78 */	mr r27, r3
/* 8009C3E4  7C 9C 23 78 */	mr r28, r4
/* 8009C3E8  7C BD 2B 78 */	mr r29, r5
/* 8009C3EC  7C DE 33 78 */	mr r30, r6
/* 8009C3F0  7F 83 E3 78 */	mr r3, r28
/* 8009C3F4  4B FF FF 6D */	bl getFirstData__7dTres_cFUc
/* 8009C3F8  7C 7F 1B 78 */	mr r31, r3
/* 8009C3FC  3C 60 80 42 */	lis r3, mTypeGroupListAll__7dTres_c@ha
/* 8009C400  38 63 54 38 */	addi r3, r3, mTypeGroupListAll__7dTres_c@l
/* 8009C404  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8009C408  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8009C40C  7C 63 02 14 */	add r3, r3, r0
/* 8009C410  88 03 00 08 */	lbz r0, 8(r3)
/* 8009C414  7C 09 03 A6 */	mtctr r0
/* 8009C418  2C 00 00 00 */	cmpwi r0, 0
/* 8009C41C  40 81 00 68 */	ble lbl_8009C484
lbl_8009C420:
/* 8009C420  88 1F 00 00 */	lbz r0, 0(r31)
/* 8009C424  7C 1B 00 00 */	cmpw r27, r0
/* 8009C428  40 82 00 54 */	bne lbl_8009C47C
/* 8009C42C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8009C430  D0 01 00 08 */	stfs f0, 8(r1)
/* 8009C434  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8009C438  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8009C43C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8009C440  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8009C444  2C 1E 00 00 */	cmpwi r30, 0
/* 8009C448  41 80 00 08 */	blt lbl_8009C450
/* 8009C44C  9B DF 00 01 */	stb r30, 1(r31)
lbl_8009C450:
/* 8009C450  88 1F 00 01 */	lbz r0, 1(r31)
/* 8009C454  7C 03 07 74 */	extsb r3, r0
/* 8009C458  38 81 00 08 */	addi r4, r1, 8
/* 8009C45C  4B FA 29 05 */	bl correctionOriginPos__10dMapInfo_nFScP3Vec
/* 8009C460  C0 01 00 08 */	lfs f0, 8(r1)
/* 8009C464  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8009C468  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8009C46C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8009C470  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8009C474  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8009C478  48 00 00 0C */	b lbl_8009C484
lbl_8009C47C:
/* 8009C47C  83 FF 00 14 */	lwz r31, 0x14(r31)
/* 8009C480  42 00 FF A0 */	bdnz lbl_8009C420
lbl_8009C484:
/* 8009C484  39 61 00 30 */	addi r11, r1, 0x30
/* 8009C488  48 2C 5D 99 */	bl _restgpr_27
/* 8009C48C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8009C490  7C 08 03 A6 */	mtlr r0
/* 8009C494  38 21 00 30 */	addi r1, r1, 0x30
/* 8009C498  4E 80 00 20 */	blr 
