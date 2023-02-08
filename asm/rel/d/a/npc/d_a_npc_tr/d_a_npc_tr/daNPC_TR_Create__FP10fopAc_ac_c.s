lbl_80B263E4:
/* 80B263E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B263E8  7C 08 02 A6 */	mflr r0
/* 80B263EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B263F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B263F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B263F8  7C 7F 1B 78 */	mr r31, r3
/* 80B263FC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B26400  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B26404  40 82 00 1C */	bne lbl_80B26420
/* 80B26408  28 1F 00 00 */	cmplwi r31, 0
/* 80B2640C  41 82 00 08 */	beq lbl_80B26414
/* 80B26410  4B 4F 27 55 */	bl __ct__10fopAc_ac_cFv
lbl_80B26414:
/* 80B26414  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80B26418  60 00 00 08 */	ori r0, r0, 8
/* 80B2641C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80B26420:
/* 80B26420  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80B26424  3C 80 80 B2 */	lis r4, d_a_npc_tr__stringBase0@ha /* 0x80B26608@ha */
/* 80B26428  38 84 66 08 */	addi r4, r4, d_a_npc_tr__stringBase0@l /* 0x80B26608@l */
/* 80B2642C  4B 50 6A 91 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B26430  7C 7E 1B 78 */	mr r30, r3
/* 80B26434  2C 1E 00 04 */	cmpwi r30, 4
/* 80B26438  40 82 00 90 */	bne lbl_80B264C8
/* 80B2643C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B26440  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 80B26444  7F E3 FB 78 */	mr r3, r31
/* 80B26448  3C 80 80 B2 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80B2632C@ha */
/* 80B2644C  38 84 63 2C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80B2632C@l */
/* 80B26450  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80B26454  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80B26458  4B 4F 40 59 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B2645C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B26460  40 82 00 0C */	bne lbl_80B2646C
/* 80B26464  38 60 00 05 */	li r3, 5
/* 80B26468  48 00 00 64 */	b lbl_80B264CC
lbl_80B2646C:
/* 80B2646C  3C 60 80 B2 */	lis r3, data_80B26678@ha /* 0x80B26678@ha */
/* 80B26470  8C 03 66 78 */	lbzu r0, data_80B26678@l(r3)  /* 0x80B26678@l */
/* 80B26474  28 00 00 00 */	cmplwi r0, 0
/* 80B26478  40 82 00 20 */	bne lbl_80B26498
/* 80B2647C  38 00 00 01 */	li r0, 1
/* 80B26480  98 1F 06 00 */	stb r0, 0x600(r31)
/* 80B26484  98 03 00 00 */	stb r0, 0(r3)
/* 80B26488  38 00 FF FF */	li r0, -1
/* 80B2648C  3C 60 80 B2 */	lis r3, l_HIO@ha /* 0x80B26688@ha */
/* 80B26490  38 63 66 88 */	addi r3, r3, l_HIO@l /* 0x80B26688@l */
/* 80B26494  98 03 00 04 */	stb r0, 4(r3)
lbl_80B26498:
/* 80B26498  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80B2649C  38 03 00 24 */	addi r0, r3, 0x24
/* 80B264A0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80B264A4  3C 60 80 B2 */	lis r3, lit_3938@ha /* 0x80B265C4@ha */
/* 80B264A8  C0 23 65 C4 */	lfs f1, lit_3938@l(r3)  /* 0x80B265C4@l */
/* 80B264AC  4B 74 14 E1 */	bl cM_rndFX__Ff
/* 80B264B0  3C 60 80 B2 */	lis r3, lit_3768@ha /* 0x80B2657C@ha */
/* 80B264B4  C0 03 65 7C */	lfs f0, lit_3768@l(r3)  /* 0x80B2657C@l */
/* 80B264B8  EC 00 08 2A */	fadds f0, f0, f1
/* 80B264BC  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80B264C0  7F E3 FB 78 */	mr r3, r31
/* 80B264C4  4B FF FD 15 */	bl daNPC_TR_Execute__FP12npc_tr_class
lbl_80B264C8:
/* 80B264C8  7F C3 F3 78 */	mr r3, r30
lbl_80B264CC:
/* 80B264CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B264D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B264D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B264D8  7C 08 03 A6 */	mtlr r0
/* 80B264DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B264E0  4E 80 00 20 */	blr 
