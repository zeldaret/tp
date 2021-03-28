lbl_801CF450:
/* 801CF450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CF454  7C 08 02 A6 */	mflr r0
/* 801CF458  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CF45C  D0 83 00 D0 */	stfs f4, 0xd0(r3)
/* 801CF460  88 C3 00 D8 */	lbz r6, 0xd8(r3)
/* 801CF464  88 03 00 D9 */	lbz r0, 0xd9(r3)
/* 801CF468  7C 06 00 40 */	cmplw r6, r0
/* 801CF46C  40 82 00 14 */	bne lbl_801CF480
/* 801CF470  80 C3 00 DC */	lwz r6, 0xdc(r3)
/* 801CF474  80 03 00 E0 */	lwz r0, 0xe0(r3)
/* 801CF478  7C 06 00 00 */	cmpw r6, r0
/* 801CF47C  41 82 00 20 */	beq lbl_801CF49C
lbl_801CF480:
/* 801CF480  88 02 A7 94 */	lbz r0, m_other__22dMfm_HIO_prm_res_src_s(r2)
/* 801CF484  98 03 00 E5 */	stb r0, 0xe5(r3)
/* 801CF488  88 03 00 D8 */	lbz r0, 0xd8(r3)
/* 801CF48C  98 03 00 D9 */	stb r0, 0xd9(r3)
/* 801CF490  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 801CF494  90 03 00 E0 */	stw r0, 0xe0(r3)
/* 801CF498  48 00 00 24 */	b lbl_801CF4BC
lbl_801CF49C:
/* 801CF49C  88 C3 00 E5 */	lbz r6, 0xe5(r3)
/* 801CF4A0  28 06 00 00 */	cmplwi r6, 0
/* 801CF4A4  41 82 00 10 */	beq lbl_801CF4B4
/* 801CF4A8  38 06 FF FF */	addi r0, r6, -1
/* 801CF4AC  98 03 00 E5 */	stb r0, 0xe5(r3)
/* 801CF4B0  48 00 00 0C */	b lbl_801CF4BC
lbl_801CF4B4:
/* 801CF4B4  88 02 A7 94 */	lbz r0, m_other__22dMfm_HIO_prm_res_src_s(r2)
/* 801CF4B8  98 03 00 E5 */	stb r0, 0xe5(r3)
lbl_801CF4BC:
/* 801CF4BC  4B FF EC CD */	bl entry__15renderingFmap_cFP23dMenu_Fmap_world_data_cifff
/* 801CF4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CF4C4  7C 08 03 A6 */	mtlr r0
/* 801CF4C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801CF4CC  4E 80 00 20 */	blr 
