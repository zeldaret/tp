lbl_80CD45B0:
/* 80CD45B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD45B4  7C 08 02 A6 */	mflr r0
/* 80CD45B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD45BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD45C0  7C 7F 1B 78 */	mr r31, r3
/* 80CD45C4  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80CD45C8  2C 00 00 02 */	cmpwi r0, 2
/* 80CD45CC  41 82 00 38 */	beq lbl_80CD4604
/* 80CD45D0  40 80 01 90 */	bge lbl_80CD4760
/* 80CD45D4  2C 00 00 00 */	cmpwi r0, 0
/* 80CD45D8  40 80 00 0C */	bge lbl_80CD45E4
/* 80CD45DC  48 00 01 84 */	b lbl_80CD4760
/* 80CD45E0  48 00 01 80 */	b lbl_80CD4760
lbl_80CD45E4:
/* 80CD45E4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80CD45E8  2C 00 00 00 */	cmpwi r0, 0
/* 80CD45EC  40 82 00 18 */	bne lbl_80CD4604
/* 80CD45F0  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80CD45F4  38 A0 00 00 */	li r5, 0
/* 80CD45F8  4B 47 75 F8 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80CD45FC  38 00 00 02 */	li r0, 2
/* 80CD4600  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80CD4604:
/* 80CD4604  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80CD4608  2C 00 00 00 */	cmpwi r0, 0
/* 80CD460C  40 82 01 54 */	bne lbl_80CD4760
/* 80CD4610  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80CD4614  28 00 00 00 */	cmplwi r0, 0
/* 80CD4618  40 82 00 14 */	bne lbl_80CD462C
/* 80CD461C  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80CD4620  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80CD4624  7C 03 00 00 */	cmpw r3, r0
/* 80CD4628  40 82 00 E0 */	bne lbl_80CD4708
lbl_80CD462C:
/* 80CD462C  7F E3 FB 78 */	mr r3, r31
/* 80CD4630  38 80 00 00 */	li r4, 0
/* 80CD4634  38 A0 00 00 */	li r5, 0
/* 80CD4638  38 C0 00 00 */	li r6, 0
/* 80CD463C  38 E0 00 00 */	li r7, 0
/* 80CD4640  4B 47 76 38 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80CD4644  2C 03 00 00 */	cmpwi r3, 0
/* 80CD4648  41 82 00 3C */	beq lbl_80CD4684
/* 80CD464C  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80CD4650  28 00 00 01 */	cmplwi r0, 1
/* 80CD4654  40 82 00 30 */	bne lbl_80CD4684
/* 80CD4658  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80CD465C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CD4660  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CD4664  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80CD4668  4B 47 10 78 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80CD466C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD4670  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD4674  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80CD4678  4B 36 DD F0 */	b reset__14dEvt_control_cFv
/* 80CD467C  38 00 00 03 */	li r0, 3
/* 80CD4680  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80CD4684:
/* 80CD4684  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80CD4688  2C 00 00 01 */	cmpwi r0, 1
/* 80CD468C  41 82 00 2C */	beq lbl_80CD46B8
/* 80CD4690  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80CD4694  4B 47 10 68 */	b remove__18daNpcT_ActorMngr_cFv
/* 80CD4698  38 00 00 00 */	li r0, 0
/* 80CD469C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80CD46A0  3C 60 80 CD */	lis r3, lit_4350@ha
/* 80CD46A4  C0 03 5D BC */	lfs f0, lit_4350@l(r3)
/* 80CD46A8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80CD46AC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80CD46B0  38 00 00 01 */	li r0, 1
/* 80CD46B4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80CD46B8:
/* 80CD46B8  38 00 00 00 */	li r0, 0
/* 80CD46BC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80CD46C0  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80CD46C4  28 00 00 00 */	cmplwi r0, 0
/* 80CD46C8  41 82 00 98 */	beq lbl_80CD4760
/* 80CD46CC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80CD46D0  2C 00 00 00 */	cmpwi r0, 0
/* 80CD46D4  41 82 00 28 */	beq lbl_80CD46FC
/* 80CD46D8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80CD46DC  4B 47 10 20 */	b remove__18daNpcT_ActorMngr_cFv
/* 80CD46E0  38 00 00 00 */	li r0, 0
/* 80CD46E4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80CD46E8  3C 60 80 CD */	lis r3, lit_4350@ha
/* 80CD46EC  C0 03 5D BC */	lfs f0, lit_4350@l(r3)
/* 80CD46F0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80CD46F4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80CD46F8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80CD46FC:
/* 80CD46FC  38 00 00 00 */	li r0, 0
/* 80CD4700  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80CD4704  48 00 00 5C */	b lbl_80CD4760
lbl_80CD4708:
/* 80CD4708  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80CD470C  2C 00 00 01 */	cmpwi r0, 1
/* 80CD4710  41 82 00 2C */	beq lbl_80CD473C
/* 80CD4714  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80CD4718  4B 47 0F E4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80CD471C  38 00 00 00 */	li r0, 0
/* 80CD4720  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80CD4724  3C 60 80 CD */	lis r3, lit_4350@ha
/* 80CD4728  C0 03 5D BC */	lfs f0, lit_4350@l(r3)
/* 80CD472C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80CD4730  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80CD4734  38 00 00 01 */	li r0, 1
/* 80CD4738  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80CD473C:
/* 80CD473C  38 00 00 00 */	li r0, 0
/* 80CD4740  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80CD4744  7F E3 FB 78 */	mr r3, r31
/* 80CD4748  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80CD474C  38 A0 FF FF */	li r5, -1
/* 80CD4750  38 C0 FF FF */	li r6, -1
/* 80CD4754  38 E0 00 0F */	li r7, 0xf
/* 80CD4758  39 00 00 00 */	li r8, 0
/* 80CD475C  4B 47 6E EC */	b step__8daNpcT_cFsiiii
lbl_80CD4760:
/* 80CD4760  38 60 00 00 */	li r3, 0
/* 80CD4764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD4768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD476C  7C 08 03 A6 */	mtlr r0
/* 80CD4770  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD4774  4E 80 00 20 */	blr 
