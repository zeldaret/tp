lbl_80B553BC:
/* 80B553BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B553C0  7C 08 02 A6 */	mflr r0
/* 80B553C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B553C8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B553CC  4B 80 CE 11 */	bl _savegpr_29
/* 80B553D0  7C 7F 1B 78 */	mr r31, r3
/* 80B553D4  3B A0 00 00 */	li r29, 0
/* 80B553D8  3B C0 00 00 */	li r30, 0
lbl_80B553DC:
/* 80B553DC  7F E3 FB 78 */	mr r3, r31
/* 80B553E0  38 9E 0F 94 */	addi r4, r30, 0xf94
/* 80B553E4  7C 9F 22 14 */	add r4, r31, r4
/* 80B553E8  38 A0 FF FF */	li r5, -1
/* 80B553EC  4B 5F 56 55 */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80B553F0  7C 65 1B 79 */	or. r5, r3, r3
/* 80B553F4  40 82 00 14 */	bne lbl_80B55408
/* 80B553F8  3B BD 00 01 */	addi r29, r29, 1
/* 80B553FC  2C 1D 00 04 */	cmpwi r29, 4
/* 80B55400  3B DE 01 38 */	addi r30, r30, 0x138
/* 80B55404  41 80 FF D8 */	blt lbl_80B553DC
lbl_80B55408:
/* 80B55408  28 05 00 00 */	cmplwi r5, 0
/* 80B5540C  40 82 00 18 */	bne lbl_80B55424
/* 80B55410  7F E3 FB 78 */	mr r3, r31
/* 80B55414  38 9F 0E 58 */	addi r4, r31, 0xe58
/* 80B55418  38 A0 FF FF */	li r5, -1
/* 80B5541C  4B 5F 56 25 */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80B55420  7C 65 1B 78 */	mr r5, r3
lbl_80B55424:
/* 80B55424  28 05 00 00 */	cmplwi r5, 0
/* 80B55428  41 82 01 08 */	beq lbl_80B55530
/* 80B5542C  88 1F 15 7B */	lbz r0, 0x157b(r31)
/* 80B55430  28 00 00 00 */	cmplwi r0, 0
/* 80B55434  41 82 00 FC */	beq lbl_80B55530
/* 80B55438  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B5543C  7F E4 FB 78 */	mr r4, r31
/* 80B55440  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80B55444  4B 5F 29 89 */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80B55448  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B5544C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80B55450  41 82 00 28 */	beq lbl_80B55478
/* 80B55454  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B55458  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B5545C  4B 5F 04 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B55460  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B55464  38 00 00 28 */	li r0, 0x28
/* 80B55468  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B5546C  3C 60 80 B6 */	lis r3, lit_4392@ha /* 0x80B5D898@ha */
/* 80B55470  C0 03 D8 98 */	lfs f0, lit_4392@l(r3)  /* 0x80B5D898@l */
/* 80B55474  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B55478:
/* 80B55478  80 1F 0D B0 */	lwz r0, 0xdb0(r31)
/* 80B5547C  2C 00 00 08 */	cmpwi r0, 8
/* 80B55480  38 00 00 08 */	li r0, 8
/* 80B55484  40 82 00 08 */	bne lbl_80B5548C
/* 80B55488  38 00 00 14 */	li r0, 0x14
lbl_80B5548C:
/* 80B5548C  90 1F 0D BC */	stw r0, 0xdbc(r31)
/* 80B55490  38 00 00 00 */	li r0, 0
/* 80B55494  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80B55498  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B5549C  2C 00 00 00 */	cmpwi r0, 0
/* 80B554A0  41 82 00 28 */	beq lbl_80B554C8
/* 80B554A4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B554A8  4B 5F 02 55 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B554AC  38 00 00 00 */	li r0, 0
/* 80B554B0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B554B4  3C 60 80 B6 */	lis r3, lit_4392@ha /* 0x80B5D898@ha */
/* 80B554B8  C0 03 D8 98 */	lfs f0, lit_4392@l(r3)  /* 0x80B5D898@l */
/* 80B554BC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B554C0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B554C4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B554C8:
/* 80B554C8  38 00 00 00 */	li r0, 0
/* 80B554CC  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80B554D0  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80B554D4  38 00 00 01 */	li r0, 1
/* 80B554D8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B554DC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060089@ha */
/* 80B554E0  38 03 00 89 */	addi r0, r3, 0x0089 /* 0x00060089@l */
/* 80B554E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B554E8  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B554EC  38 81 00 0C */	addi r4, r1, 0xc
/* 80B554F0  38 A0 00 00 */	li r5, 0
/* 80B554F4  38 C0 FF FF */	li r6, -1
/* 80B554F8  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80B554FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B55500  7D 89 03 A6 */	mtctr r12
/* 80B55504  4E 80 04 21 */	bctrl 
/* 80B55508  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500BD@ha */
/* 80B5550C  38 03 00 BD */	addi r0, r3, 0x00BD /* 0x000500BD@l */
/* 80B55510  90 01 00 08 */	stw r0, 8(r1)
/* 80B55514  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B55518  38 81 00 08 */	addi r4, r1, 8
/* 80B5551C  38 A0 FF FF */	li r5, -1
/* 80B55520  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80B55524  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B55528  7D 89 03 A6 */	mtctr r12
/* 80B5552C  4E 80 04 21 */	bctrl 
lbl_80B55530:
/* 80B55530  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80B55534  2C 00 00 00 */	cmpwi r0, 0
/* 80B55538  41 82 00 5C */	beq lbl_80B55594
/* 80B5553C  38 C0 00 00 */	li r6, 0
/* 80B55540  38 60 00 00 */	li r3, 0
/* 80B55544  38 80 00 00 */	li r4, 0
/* 80B55548  3C A0 80 B6 */	lis r5, lit_4392@ha /* 0x80B5D898@ha */
/* 80B5554C  C0 05 D8 98 */	lfs f0, lit_4392@l(r5)  /* 0x80B5D898@l */
/* 80B55550  38 00 00 02 */	li r0, 2
/* 80B55554  7C 09 03 A6 */	mtctr r0
lbl_80B55558:
/* 80B55558  7C BF 22 14 */	add r5, r31, r4
/* 80B5555C  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80B55560  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80B55564  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80B55568  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B5556C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B55570  38 63 00 04 */	addi r3, r3, 4
/* 80B55574  38 84 00 06 */	addi r4, r4, 6
/* 80B55578  42 00 FF E0 */	bdnz lbl_80B55558
/* 80B5557C  38 00 00 00 */	li r0, 0
/* 80B55580  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B55584  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B55588  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B5558C  38 00 00 01 */	li r0, 1
/* 80B55590  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B55594:
/* 80B55594  38 7F 14 E4 */	addi r3, r31, 0x14e4
/* 80B55598  4B 80 CA 81 */	bl __ptmf_test
/* 80B5559C  2C 03 00 00 */	cmpwi r3, 0
/* 80B555A0  41 82 00 54 */	beq lbl_80B555F4
/* 80B555A4  38 7F 14 F0 */	addi r3, r31, 0x14f0
/* 80B555A8  38 9F 14 E4 */	addi r4, r31, 0x14e4
/* 80B555AC  4B 80 CA 9D */	bl __ptmf_cmpr
/* 80B555B0  2C 03 00 00 */	cmpwi r3, 0
/* 80B555B4  40 82 00 1C */	bne lbl_80B555D0
/* 80B555B8  7F E3 FB 78 */	mr r3, r31
/* 80B555BC  38 80 00 00 */	li r4, 0
/* 80B555C0  39 9F 14 F0 */	addi r12, r31, 0x14f0
/* 80B555C4  4B 80 CA C1 */	bl __ptmf_scall
/* 80B555C8  60 00 00 00 */	nop 
/* 80B555CC  48 00 00 28 */	b lbl_80B555F4
lbl_80B555D0:
/* 80B555D0  80 7F 14 E4 */	lwz r3, 0x14e4(r31)
/* 80B555D4  80 1F 14 E8 */	lwz r0, 0x14e8(r31)
/* 80B555D8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B555DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B555E0  80 1F 14 EC */	lwz r0, 0x14ec(r31)
/* 80B555E4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B555E8  7F E3 FB 78 */	mr r3, r31
/* 80B555EC  38 81 00 10 */	addi r4, r1, 0x10
/* 80B555F0  48 00 13 91 */	bl setAction__11daNpc_ykM_cFM11daNpc_ykM_cFPCvPvPv_i
lbl_80B555F4:
/* 80B555F4  88 1F 15 82 */	lbz r0, 0x1582(r31)
/* 80B555F8  28 00 00 00 */	cmplwi r0, 0
/* 80B555FC  41 82 00 20 */	beq lbl_80B5561C
/* 80B55600  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B55604  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B55608  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B5560C  28 00 00 00 */	cmplwi r0, 0
/* 80B55610  40 82 00 0C */	bne lbl_80B5561C
/* 80B55614  7F E3 FB 78 */	mr r3, r31
/* 80B55618  4B 4C 46 65 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80B5561C:
/* 80B5561C  80 7F 15 40 */	lwz r3, 0x1540(r31)
/* 80B55620  2C 03 00 00 */	cmpwi r3, 0
/* 80B55624  40 81 00 10 */	ble lbl_80B55634
/* 80B55628  38 03 FF FF */	addi r0, r3, -1
/* 80B5562C  90 1F 15 40 */	stw r0, 0x1540(r31)
/* 80B55630  48 00 00 10 */	b lbl_80B55640
lbl_80B55634:
/* 80B55634  40 80 00 0C */	bge lbl_80B55640
/* 80B55638  38 00 00 00 */	li r0, 0
/* 80B5563C  90 1F 15 40 */	stw r0, 0x1540(r31)
lbl_80B55640:
/* 80B55640  39 61 00 30 */	addi r11, r1, 0x30
/* 80B55644  4B 80 CB E5 */	bl _restgpr_29
/* 80B55648  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B5564C  7C 08 03 A6 */	mtlr r0
/* 80B55650  38 21 00 30 */	addi r1, r1, 0x30
/* 80B55654  4E 80 00 20 */	blr 
