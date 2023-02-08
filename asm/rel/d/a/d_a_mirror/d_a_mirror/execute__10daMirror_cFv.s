lbl_808723E4:
/* 808723E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808723E8  7C 08 02 A6 */	mflr r0
/* 808723EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 808723F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808723F4  93 C1 00 08 */	stw r30, 8(r1)
/* 808723F8  7C 7E 1B 78 */	mr r30, r3
/* 808723FC  3C 80 80 45 */	lis r4, m_myObj__10daMirror_c@ha /* 0x80450DA8@ha */
/* 80872400  80 04 0D A8 */	lwz r0, m_myObj__10daMirror_c@l(r4)  /* 0x80450DA8@l */
/* 80872404  7C 1E 00 40 */	cmplw r30, r0
/* 80872408  41 82 00 28 */	beq lbl_80872430
/* 8087240C  28 00 00 00 */	cmplwi r0, 0
/* 80872410  40 82 00 18 */	bne lbl_80872428
/* 80872414  4B FF FC 59 */	bl create__10daMirror_cFv
/* 80872418  2C 03 00 05 */	cmpwi r3, 5
/* 8087241C  40 82 00 0C */	bne lbl_80872428
/* 80872420  7F C3 F3 78 */	mr r3, r30
/* 80872424  4B 7A 78 59 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80872428:
/* 80872428  38 60 00 01 */	li r3, 1
/* 8087242C  48 00 00 7C */	b lbl_808724A8
lbl_80872430:
/* 80872430  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80872434  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80872438  83 E3 5D B4 */	lwz r31, 0x5db4(r3)
/* 8087243C  C0 3E 06 F0 */	lfs f1, 0x6f0(r30)
/* 80872440  3C 60 80 87 */	lis r3, lit_3945@ha /* 0x80872598@ha */
/* 80872444  C0 03 25 98 */	lfs f0, lit_3945@l(r3)  /* 0x80872598@l */
/* 80872448  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8087244C  40 81 00 58 */	ble lbl_808724A4
/* 80872450  7F E3 FB 78 */	mr r3, r31
/* 80872454  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80872458  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 8087245C  7D 89 03 A6 */	mtctr r12
/* 80872460  4E 80 04 21 */	bctrl 
/* 80872464  28 03 00 00 */	cmplwi r3, 0
/* 80872468  41 82 00 3C */	beq lbl_808724A4
/* 8087246C  7F C3 F3 78 */	mr r3, r30
/* 80872470  7F E4 FB 78 */	mr r4, r31
/* 80872474  4B 7A 84 A1 */	bl fopAcM_searchActorDistance2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80872478  3C 60 80 87 */	lis r3, lit_4574@ha /* 0x8087264C@ha */
/* 8087247C  C0 03 26 4C */	lfs f0, lit_4574@l(r3)  /* 0x8087264C@l */
/* 80872480  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80872484  40 80 00 20 */	bge lbl_808724A4
/* 80872488  7F C3 F3 78 */	mr r3, r30
/* 8087248C  7F E4 FB 78 */	mr r4, r31
/* 80872490  4B 7A 83 0D */	bl fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80872494  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80872498  40 80 00 0C */	bge lbl_808724A4
/* 8087249C  38 7E 05 38 */	addi r3, r30, 0x538
/* 808724A0  4B 8E D0 51 */	bl setLookPos__9daPy_py_cFP4cXyz
lbl_808724A4:
/* 808724A4  38 60 00 01 */	li r3, 1
lbl_808724A8:
/* 808724A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808724AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 808724B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808724B4  7C 08 03 A6 */	mtlr r0
/* 808724B8  38 21 00 10 */	addi r1, r1, 0x10
/* 808724BC  4E 80 00 20 */	blr 
