lbl_80C9E3D8:
/* 80C9E3D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C9E3DC  7C 08 02 A6 */	mflr r0
/* 80C9E3E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C9E3E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C9E3E8  7C 7F 1B 78 */	mr r31, r3
/* 80C9E3EC  80 03 05 B4 */	lwz r0, 0x5b4(r3)
/* 80C9E3F0  28 00 00 00 */	cmplwi r0, 0
/* 80C9E3F4  40 82 00 60 */	bne lbl_80C9E454
/* 80C9E3F8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C9E3FC  7C 04 07 74 */	extsb r4, r0
/* 80C9E400  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9E404  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9E408  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C9E40C  38 1F 05 B0 */	addi r0, r31, 0x5b0
/* 80C9E410  90 01 00 08 */	stw r0, 8(r1)
/* 80C9E414  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C9E418  38 00 00 00 */	li r0, 0
/* 80C9E41C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C9E420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9E424  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C9E428  38 80 00 00 */	li r4, 0
/* 80C9E42C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000833C@ha */
/* 80C9E430  38 A5 83 3C */	addi r5, r5, 0x833C /* 0x0000833C@l */
/* 80C9E434  38 DF 06 00 */	addi r6, r31, 0x600
/* 80C9E438  38 E0 00 00 */	li r7, 0
/* 80C9E43C  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 80C9E440  39 20 00 00 */	li r9, 0
/* 80C9E444  39 40 00 FF */	li r10, 0xff
/* 80C9E448  3D 60 80 CA */	lis r11, lit_4061@ha
/* 80C9E44C  C0 2B E8 F8 */	lfs f1, lit_4061@l(r11)
/* 80C9E450  4B 3A E6 40 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80C9E454:
/* 80C9E454  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 80C9E458  28 00 00 00 */	cmplwi r0, 0
/* 80C9E45C  40 82 00 60 */	bne lbl_80C9E4BC
/* 80C9E460  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C9E464  7C 04 07 74 */	extsb r4, r0
/* 80C9E468  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9E46C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9E470  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C9E474  38 1F 05 C4 */	addi r0, r31, 0x5c4
/* 80C9E478  90 01 00 08 */	stw r0, 8(r1)
/* 80C9E47C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C9E480  38 00 00 00 */	li r0, 0
/* 80C9E484  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C9E488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9E48C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C9E490  38 80 00 00 */	li r4, 0
/* 80C9E494  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000833C@ha */
/* 80C9E498  38 A5 83 3C */	addi r5, r5, 0x833C /* 0x0000833C@l */
/* 80C9E49C  38 DF 06 0C */	addi r6, r31, 0x60c
/* 80C9E4A0  38 E0 00 00 */	li r7, 0
/* 80C9E4A4  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 80C9E4A8  39 20 00 00 */	li r9, 0
/* 80C9E4AC  39 40 00 FF */	li r10, 0xff
/* 80C9E4B0  3D 60 80 CA */	lis r11, lit_4061@ha
/* 80C9E4B4  C0 2B E8 F8 */	lfs f1, lit_4061@l(r11)
/* 80C9E4B8  4B 3A E5 D8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80C9E4BC:
/* 80C9E4BC  80 1F 05 DC */	lwz r0, 0x5dc(r31)
/* 80C9E4C0  28 00 00 00 */	cmplwi r0, 0
/* 80C9E4C4  40 82 00 60 */	bne lbl_80C9E524
/* 80C9E4C8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C9E4CC  7C 04 07 74 */	extsb r4, r0
/* 80C9E4D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9E4D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9E4D8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C9E4DC  38 1F 05 D8 */	addi r0, r31, 0x5d8
/* 80C9E4E0  90 01 00 08 */	stw r0, 8(r1)
/* 80C9E4E4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C9E4E8  38 00 00 00 */	li r0, 0
/* 80C9E4EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C9E4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9E4F4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C9E4F8  38 80 00 00 */	li r4, 0
/* 80C9E4FC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000833D@ha */
/* 80C9E500  38 A5 83 3D */	addi r5, r5, 0x833D /* 0x0000833D@l */
/* 80C9E504  38 DF 06 18 */	addi r6, r31, 0x618
/* 80C9E508  38 E0 00 00 */	li r7, 0
/* 80C9E50C  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 80C9E510  39 20 00 00 */	li r9, 0
/* 80C9E514  39 40 00 FF */	li r10, 0xff
/* 80C9E518  3D 60 80 CA */	lis r11, lit_4061@ha
/* 80C9E51C  C0 2B E8 F8 */	lfs f1, lit_4061@l(r11)
/* 80C9E520  4B 3A E5 70 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80C9E524:
/* 80C9E524  80 1F 05 F0 */	lwz r0, 0x5f0(r31)
/* 80C9E528  28 00 00 00 */	cmplwi r0, 0
/* 80C9E52C  40 82 00 60 */	bne lbl_80C9E58C
/* 80C9E530  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C9E534  7C 04 07 74 */	extsb r4, r0
/* 80C9E538  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9E53C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9E540  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C9E544  38 1F 05 EC */	addi r0, r31, 0x5ec
/* 80C9E548  90 01 00 08 */	stw r0, 8(r1)
/* 80C9E54C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C9E550  38 00 00 00 */	li r0, 0
/* 80C9E554  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C9E558  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9E55C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C9E560  38 80 00 00 */	li r4, 0
/* 80C9E564  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000833D@ha */
/* 80C9E568  38 A5 83 3D */	addi r5, r5, 0x833D /* 0x0000833D@l */
/* 80C9E56C  38 DF 06 24 */	addi r6, r31, 0x624
/* 80C9E570  38 E0 00 00 */	li r7, 0
/* 80C9E574  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 80C9E578  39 20 00 00 */	li r9, 0
/* 80C9E57C  39 40 00 FF */	li r10, 0xff
/* 80C9E580  3D 60 80 CA */	lis r11, lit_4061@ha
/* 80C9E584  C0 2B E8 F8 */	lfs f1, lit_4061@l(r11)
/* 80C9E588  4B 3A E5 08 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80C9E58C:
/* 80C9E58C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C9E590  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C9E594  7C 08 03 A6 */	mtlr r0
/* 80C9E598  38 21 00 30 */	addi r1, r1, 0x30
/* 80C9E59C  4E 80 00 20 */	blr 
