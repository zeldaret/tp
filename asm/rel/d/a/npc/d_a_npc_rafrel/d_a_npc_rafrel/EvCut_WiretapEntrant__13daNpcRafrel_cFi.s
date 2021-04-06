lbl_80ABDB7C:
/* 80ABDB7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80ABDB80  7C 08 02 A6 */	mflr r0
/* 80ABDB84  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ABDB88  39 61 00 30 */	addi r11, r1, 0x30
/* 80ABDB8C  4B 8A 46 49 */	bl _savegpr_27
/* 80ABDB90  7C 7D 1B 78 */	mr r29, r3
/* 80ABDB94  7C 9B 23 78 */	mr r27, r4
/* 80ABDB98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ABDB9C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ABDBA0  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80ABDBA4  7F 83 E3 78 */	mr r3, r28
/* 80ABDBA8  3C A0 80 AC */	lis r5, d_a_npc_rafrel__stringBase0@ha /* 0x80ABFDBC@ha */
/* 80ABDBAC  38 A5 FD BC */	addi r5, r5, d_a_npc_rafrel__stringBase0@l /* 0x80ABFDBC@l */
/* 80ABDBB0  38 A5 00 BE */	addi r5, r5, 0xbe
/* 80ABDBB4  38 C0 00 03 */	li r6, 3
/* 80ABDBB8  4B 58 A5 35 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ABDBBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ABDBC0  40 82 00 0C */	bne lbl_80ABDBCC
/* 80ABDBC4  38 60 00 00 */	li r3, 0
/* 80ABDBC8  48 00 02 04 */	b lbl_80ABDDCC
lbl_80ABDBCC:
/* 80ABDBCC  7F 83 E3 78 */	mr r3, r28
/* 80ABDBD0  7F 64 DB 78 */	mr r4, r27
/* 80ABDBD4  4B 58 A1 79 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80ABDBD8  2C 03 00 00 */	cmpwi r3, 0
/* 80ABDBDC  41 82 00 58 */	beq lbl_80ABDC34
/* 80ABDBE0  80 1F 00 00 */	lwz r0, 0(r31)
/* 80ABDBE4  2C 00 00 00 */	cmpwi r0, 0
/* 80ABDBE8  41 82 00 08 */	beq lbl_80ABDBF0
/* 80ABDBEC  48 00 00 48 */	b lbl_80ABDC34
lbl_80ABDBF0:
/* 80ABDBF0  7F A3 EB 78 */	mr r3, r29
/* 80ABDBF4  38 80 00 07 */	li r4, 7
/* 80ABDBF8  3C A0 80 AC */	lis r5, lit_5080@ha /* 0x80ABFD30@ha */
/* 80ABDBFC  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)  /* 0x80ABFD30@l */
/* 80ABDC00  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABDC04  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABDC08  7D 89 03 A6 */	mtctr r12
/* 80ABDC0C  4E 80 04 21 */	bctrl 
/* 80ABDC10  7F A3 EB 78 */	mr r3, r29
/* 80ABDC14  38 80 00 01 */	li r4, 1
/* 80ABDC18  3C A0 80 AC */	lis r5, lit_5080@ha /* 0x80ABFD30@ha */
/* 80ABDC1C  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)  /* 0x80ABFD30@l */
/* 80ABDC20  38 A0 00 00 */	li r5, 0
/* 80ABDC24  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABDC28  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABDC2C  7D 89 03 A6 */	mtctr r12
/* 80ABDC30  4E 80 04 21 */	bctrl 
lbl_80ABDC34:
/* 80ABDC34  83 9D 09 50 */	lwz r28, 0x950(r29)
/* 80ABDC38  7F A3 EB 78 */	mr r3, r29
/* 80ABDC3C  38 81 00 0C */	addi r4, r1, 0xc
/* 80ABDC40  38 A1 00 08 */	addi r5, r1, 8
/* 80ABDC44  7F A6 EB 78 */	mr r6, r29
/* 80ABDC48  38 E0 00 00 */	li r7, 0
/* 80ABDC4C  4B 69 5A CD */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ABDC50  2C 03 00 00 */	cmpwi r3, 0
/* 80ABDC54  41 82 00 4C */	beq lbl_80ABDCA0
/* 80ABDC58  7F A3 EB 78 */	mr r3, r29
/* 80ABDC5C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80ABDC60  3C A0 80 AC */	lis r5, lit_5080@ha /* 0x80ABFD30@ha */
/* 80ABDC64  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)  /* 0x80ABFD30@l */
/* 80ABDC68  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABDC6C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABDC70  7D 89 03 A6 */	mtctr r12
/* 80ABDC74  4E 80 04 21 */	bctrl 
/* 80ABDC78  7F A3 EB 78 */	mr r3, r29
/* 80ABDC7C  80 81 00 08 */	lwz r4, 8(r1)
/* 80ABDC80  3C A0 80 AC */	lis r5, lit_5080@ha /* 0x80ABFD30@ha */
/* 80ABDC84  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)  /* 0x80ABFD30@l */
/* 80ABDC88  38 A0 00 00 */	li r5, 0
/* 80ABDC8C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABDC90  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABDC94  7D 89 03 A6 */	mtctr r12
/* 80ABDC98  4E 80 04 21 */	bctrl 
/* 80ABDC9C  48 00 00 CC */	b lbl_80ABDD68
lbl_80ABDCA0:
/* 80ABDCA0  2C 1C 00 00 */	cmpwi r28, 0
/* 80ABDCA4  41 82 00 C4 */	beq lbl_80ABDD68
/* 80ABDCA8  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80ABDCAC  2C 00 00 00 */	cmpwi r0, 0
/* 80ABDCB0  40 82 00 B8 */	bne lbl_80ABDD68
/* 80ABDCB4  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80ABDCB8  2C 00 00 02 */	cmpwi r0, 2
/* 80ABDCBC  41 82 00 44 */	beq lbl_80ABDD00
/* 80ABDCC0  40 80 00 10 */	bge lbl_80ABDCD0
/* 80ABDCC4  2C 00 00 01 */	cmpwi r0, 1
/* 80ABDCC8  40 80 00 14 */	bge lbl_80ABDCDC
/* 80ABDCCC  48 00 00 7C */	b lbl_80ABDD48
lbl_80ABDCD0:
/* 80ABDCD0  2C 00 00 04 */	cmpwi r0, 4
/* 80ABDCD4  40 80 00 74 */	bge lbl_80ABDD48
/* 80ABDCD8  48 00 00 4C */	b lbl_80ABDD24
lbl_80ABDCDC:
/* 80ABDCDC  7F A3 EB 78 */	mr r3, r29
/* 80ABDCE0  38 80 00 04 */	li r4, 4
/* 80ABDCE4  3C A0 80 AC */	lis r5, lit_5080@ha /* 0x80ABFD30@ha */
/* 80ABDCE8  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)  /* 0x80ABFD30@l */
/* 80ABDCEC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABDCF0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABDCF4  7D 89 03 A6 */	mtctr r12
/* 80ABDCF8  4E 80 04 21 */	bctrl 
/* 80ABDCFC  48 00 00 6C */	b lbl_80ABDD68
lbl_80ABDD00:
/* 80ABDD00  7F A3 EB 78 */	mr r3, r29
/* 80ABDD04  38 80 00 05 */	li r4, 5
/* 80ABDD08  3C A0 80 AC */	lis r5, lit_5080@ha /* 0x80ABFD30@ha */
/* 80ABDD0C  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)  /* 0x80ABFD30@l */
/* 80ABDD10  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABDD14  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABDD18  7D 89 03 A6 */	mtctr r12
/* 80ABDD1C  4E 80 04 21 */	bctrl 
/* 80ABDD20  48 00 00 48 */	b lbl_80ABDD68
lbl_80ABDD24:
/* 80ABDD24  7F A3 EB 78 */	mr r3, r29
/* 80ABDD28  38 80 00 06 */	li r4, 6
/* 80ABDD2C  3C A0 80 AC */	lis r5, lit_5080@ha /* 0x80ABFD30@ha */
/* 80ABDD30  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)  /* 0x80ABFD30@l */
/* 80ABDD34  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABDD38  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABDD3C  7D 89 03 A6 */	mtctr r12
/* 80ABDD40  4E 80 04 21 */	bctrl 
/* 80ABDD44  48 00 00 24 */	b lbl_80ABDD68
lbl_80ABDD48:
/* 80ABDD48  7F A3 EB 78 */	mr r3, r29
/* 80ABDD4C  38 80 00 07 */	li r4, 7
/* 80ABDD50  3C A0 80 AC */	lis r5, lit_5080@ha /* 0x80ABFD30@ha */
/* 80ABDD54  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)  /* 0x80ABFD30@l */
/* 80ABDD58  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABDD5C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABDD60  7D 89 03 A6 */	mtctr r12
/* 80ABDD64  4E 80 04 21 */	bctrl 
lbl_80ABDD68:
/* 80ABDD68  80 1F 00 00 */	lwz r0, 0(r31)
/* 80ABDD6C  2C 00 00 00 */	cmpwi r0, 0
/* 80ABDD70  41 82 00 08 */	beq lbl_80ABDD78
/* 80ABDD74  48 00 00 54 */	b lbl_80ABDDC8
lbl_80ABDD78:
/* 80ABDD78  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80ABDD7C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ABDD80  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ABDD84  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 80ABDD88  4B 58 55 65 */	bl convPId__14dEvt_control_cFUi
/* 80ABDD8C  7C 03 E8 40 */	cmplw r3, r29
/* 80ABDD90  40 82 00 0C */	bne lbl_80ABDD9C
/* 80ABDD94  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80ABDD98  4B 69 29 55 */	bl getActorP__18daNpcF_ActorMngr_cFv
lbl_80ABDD9C:
/* 80ABDD9C  A8 1D 0E 0E */	lha r0, 0xe0e(r29)
/* 80ABDDA0  2C 00 00 04 */	cmpwi r0, 4
/* 80ABDDA4  40 82 00 10 */	bne lbl_80ABDDB4
/* 80ABDDA8  80 1D 0C 9C */	lwz r0, 0xc9c(r29)
/* 80ABDDAC  7C 03 00 40 */	cmplw r3, r0
/* 80ABDDB0  41 82 00 10 */	beq lbl_80ABDDC0
lbl_80ABDDB4:
/* 80ABDDB4  38 00 00 04 */	li r0, 4
/* 80ABDDB8  B0 1D 0E 0E */	sth r0, 0xe0e(r29)
/* 80ABDDBC  90 7D 0C 9C */	stw r3, 0xc9c(r29)
lbl_80ABDDC0:
/* 80ABDDC0  38 60 00 01 */	li r3, 1
/* 80ABDDC4  48 00 00 08 */	b lbl_80ABDDCC
lbl_80ABDDC8:
/* 80ABDDC8  38 60 00 00 */	li r3, 0
lbl_80ABDDCC:
/* 80ABDDCC  39 61 00 30 */	addi r11, r1, 0x30
/* 80ABDDD0  4B 8A 44 51 */	bl _restgpr_27
/* 80ABDDD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ABDDD8  7C 08 03 A6 */	mtlr r0
/* 80ABDDDC  38 21 00 30 */	addi r1, r1, 0x30
/* 80ABDDE0  4E 80 00 20 */	blr 
