lbl_80B833C8:
/* 80B833C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B833CC  7C 08 02 A6 */	mflr r0
/* 80B833D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B833D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B833D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B833DC  7C 7F 1B 78 */	mr r31, r3
/* 80B833E0  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B833E4  3B C3 C4 58 */	addi r30, r3, m__17daNpc_zrA_Param_c@l
/* 80B833E8  A0 1F 14 E6 */	lhz r0, 0x14e6(r31)
/* 80B833EC  2C 00 00 02 */	cmpwi r0, 2
/* 80B833F0  41 82 00 E8 */	beq lbl_80B834D8
/* 80B833F4  40 80 01 38 */	bge lbl_80B8352C
/* 80B833F8  2C 00 00 00 */	cmpwi r0, 0
/* 80B833FC  41 82 00 0C */	beq lbl_80B83408
/* 80B83400  48 00 01 2C */	b lbl_80B8352C
/* 80B83404  48 00 01 28 */	b lbl_80B8352C
lbl_80B83408:
/* 80B83408  38 00 00 01 */	li r0, 1
/* 80B8340C  98 1F 0C 1A */	stb r0, 0xc1a(r31)
/* 80B83410  80 7F 0C 1C */	lwz r3, 0xc1c(r31)
/* 80B83414  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B83418  38 03 FF FE */	addi r0, r3, -2
/* 80B8341C  B0 1F 0C 18 */	sth r0, 0xc18(r31)
/* 80B83420  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B83424  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B83428  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B8342C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B83430  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B83434  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B83438  38 7F 0C 18 */	addi r3, r31, 0xc18
/* 80B8343C  38 81 00 14 */	addi r4, r1, 0x14
/* 80B83440  4B FF 53 2D */	bl setNextIdxDst__16daNpc_zrA_Path_cF4cXyz
/* 80B83444  7F E3 FB 78 */	mr r3, r31
/* 80B83448  38 80 00 00 */	li r4, 0
/* 80B8344C  38 A0 00 00 */	li r5, 0
/* 80B83450  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B83454  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B83458  7D 89 03 A6 */	mtctr r12
/* 80B8345C  4E 80 04 21 */	bctrl 
/* 80B83460  7F E3 FB 78 */	mr r3, r31
/* 80B83464  38 80 00 19 */	li r4, 0x19
/* 80B83468  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B8346C  38 A0 00 00 */	li r5, 0
/* 80B83470  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B83474  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B83478  7D 89 03 A6 */	mtctr r12
/* 80B8347C  4E 80 04 21 */	bctrl 
/* 80B83480  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80B83484  B0 1F 15 36 */	sth r0, 0x1536(r31)
/* 80B83488  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80B8348C  B0 1F 15 38 */	sth r0, 0x1538(r31)
/* 80B83490  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80B83494  B0 1F 15 3A */	sth r0, 0x153a(r31)
/* 80B83498  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B8349C  D0 1F 15 28 */	stfs f0, 0x1528(r31)
/* 80B834A0  C0 3F 15 28 */	lfs f1, 0x1528(r31)
/* 80B834A4  38 7E 00 00 */	addi r3, r30, 0
/* 80B834A8  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B834AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B834B0  D0 1F 15 24 */	stfs f0, 0x1524(r31)
/* 80B834B4  7F E3 FB 78 */	mr r3, r31
/* 80B834B8  38 80 00 00 */	li r4, 0
/* 80B834BC  4B FF B2 39 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B834C0  38 00 00 01 */	li r0, 1
/* 80B834C4  98 1F 15 20 */	stb r0, 0x1520(r31)
/* 80B834C8  38 00 00 03 */	li r0, 3
/* 80B834CC  98 1F 15 94 */	stb r0, 0x1594(r31)
/* 80B834D0  38 00 00 02 */	li r0, 2
/* 80B834D4  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
lbl_80B834D8:
/* 80B834D8  7F E3 FB 78 */	mr r3, r31
/* 80B834DC  38 9E 00 00 */	addi r4, r30, 0
/* 80B834E0  A8 84 00 74 */	lha r4, 0x74(r4)
/* 80B834E4  38 A0 00 04 */	li r5, 4
/* 80B834E8  38 C0 00 00 */	li r6, 0
/* 80B834EC  48 00 0A B9 */	bl diveCalc__11daNpc_zrA_cFssi
/* 80B834F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B834F4  41 82 00 38 */	beq lbl_80B8352C
/* 80B834F8  38 00 00 01 */	li r0, 1
/* 80B834FC  98 1F 15 94 */	stb r0, 0x1594(r31)
/* 80B83500  3C 60 80 B9 */	lis r3, lit_8299@ha
/* 80B83504  38 83 D7 5C */	addi r4, r3, lit_8299@l
/* 80B83508  80 64 00 00 */	lwz r3, 0(r4)
/* 80B8350C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B83510  90 61 00 08 */	stw r3, 8(r1)
/* 80B83514  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B83518  80 04 00 08 */	lwz r0, 8(r4)
/* 80B8351C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B83520  7F E3 FB 78 */	mr r3, r31
/* 80B83524  38 81 00 08 */	addi r4, r1, 8
/* 80B83528  4B FF A5 F9 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
lbl_80B8352C:
/* 80B8352C  38 60 00 01 */	li r3, 1
/* 80B83530  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B83534  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B83538  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B8353C  7C 08 03 A6 */	mtlr r0
/* 80B83540  38 21 00 30 */	addi r1, r1, 0x30
/* 80B83544  4E 80 00 20 */	blr 
