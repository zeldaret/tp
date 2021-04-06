lbl_809C45B0:
/* 809C45B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809C45B4  7C 08 02 A6 */	mflr r0
/* 809C45B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809C45BC  39 61 00 20 */	addi r11, r1, 0x20
/* 809C45C0  4B 99 DC 11 */	bl _savegpr_26
/* 809C45C4  7C 7F 1B 78 */	mr r31, r3
/* 809C45C8  7C 9A 23 78 */	mr r26, r4
/* 809C45CC  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C45D0  3B C3 9D 98 */	addi r30, r3, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C45D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C45D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C45DC  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 809C45E0  3B 80 00 00 */	li r28, 0
/* 809C45E4  3B 60 FF FF */	li r27, -1
/* 809C45E8  7F A3 EB 78 */	mr r3, r29
/* 809C45EC  3C A0 80 9D */	lis r5, d_a_npc_gra__stringBase0@ha /* 0x809CA4B8@ha */
/* 809C45F0  38 A5 A4 B8 */	addi r5, r5, d_a_npc_gra__stringBase0@l /* 0x809CA4B8@l */
/* 809C45F4  38 A5 01 46 */	addi r5, r5, 0x146
/* 809C45F8  38 C0 00 03 */	li r6, 3
/* 809C45FC  4B 68 3A F1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809C4600  28 03 00 00 */	cmplwi r3, 0
/* 809C4604  41 82 00 08 */	beq lbl_809C460C
/* 809C4608  83 63 00 00 */	lwz r27, 0(r3)
lbl_809C460C:
/* 809C460C  7F A3 EB 78 */	mr r3, r29
/* 809C4610  7F 44 D3 78 */	mr r4, r26
/* 809C4614  4B 68 37 39 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809C4618  2C 03 00 00 */	cmpwi r3, 0
/* 809C461C  41 82 00 BC */	beq lbl_809C46D8
/* 809C4620  2C 1B 00 14 */	cmpwi r27, 0x14
/* 809C4624  41 82 00 2C */	beq lbl_809C4650
/* 809C4628  40 80 00 10 */	bge lbl_809C4638
/* 809C462C  2C 1B 00 0A */	cmpwi r27, 0xa
/* 809C4630  41 82 00 14 */	beq lbl_809C4644
/* 809C4634  48 00 00 A4 */	b lbl_809C46D8
lbl_809C4638:
/* 809C4638  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 809C463C  41 82 00 68 */	beq lbl_809C46A4
/* 809C4640  48 00 00 98 */	b lbl_809C46D8
lbl_809C4644:
/* 809C4644  38 00 00 00 */	li r0, 0
/* 809C4648  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C464C  48 00 00 8C */	b lbl_809C46D8
lbl_809C4650:
/* 809C4650  88 1F 14 CE */	lbz r0, 0x14ce(r31)
/* 809C4654  28 00 00 00 */	cmplwi r0, 0
/* 809C4658  40 82 00 28 */	bne lbl_809C4680
/* 809C465C  7F E3 FB 78 */	mr r3, r31
/* 809C4660  38 80 00 18 */	li r4, 0x18
/* 809C4664  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C4668  38 A0 00 00 */	li r5, 0
/* 809C466C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C4670  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C4674  7D 89 03 A6 */	mtctr r12
/* 809C4678  4E 80 04 21 */	bctrl 
/* 809C467C  48 00 00 5C */	b lbl_809C46D8
lbl_809C4680:
/* 809C4680  7F E3 FB 78 */	mr r3, r31
/* 809C4684  38 80 00 17 */	li r4, 0x17
/* 809C4688  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C468C  38 A0 00 00 */	li r5, 0
/* 809C4690  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C4694  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C4698  7D 89 03 A6 */	mtctr r12
/* 809C469C  4E 80 04 21 */	bctrl 
/* 809C46A0  48 00 00 38 */	b lbl_809C46D8
lbl_809C46A4:
/* 809C46A4  7F E3 FB 78 */	mr r3, r31
/* 809C46A8  4B FF B2 F5 */	bl setHomeJump__11daNpc_grA_cFv
/* 809C46AC  7F E3 FB 78 */	mr r3, r31
/* 809C46B0  38 80 00 05 */	li r4, 5
/* 809C46B4  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C46B8  38 A0 00 00 */	li r5, 0
/* 809C46BC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C46C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C46C4  7D 89 03 A6 */	mtctr r12
/* 809C46C8  4E 80 04 21 */	bctrl 
/* 809C46CC  7F E3 FB 78 */	mr r3, r31
/* 809C46D0  38 80 00 02 */	li r4, 2
/* 809C46D4  4B FF E9 9D */	bl setLookMode__11daNpc_grA_cFi
lbl_809C46D8:
/* 809C46D8  2C 1B 00 14 */	cmpwi r27, 0x14
/* 809C46DC  41 82 00 28 */	beq lbl_809C4704
/* 809C46E0  40 80 00 10 */	bge lbl_809C46F0
/* 809C46E4  2C 1B 00 0A */	cmpwi r27, 0xa
/* 809C46E8  41 82 00 14 */	beq lbl_809C46FC
/* 809C46EC  48 00 00 E0 */	b lbl_809C47CC
lbl_809C46F0:
/* 809C46F0  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 809C46F4  41 82 00 D0 */	beq lbl_809C47C4
/* 809C46F8  48 00 00 D4 */	b lbl_809C47CC
lbl_809C46FC:
/* 809C46FC  3B 80 00 01 */	li r28, 1
/* 809C4700  48 00 00 D0 */	b lbl_809C47D0
lbl_809C4704:
/* 809C4704  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 809C4708  2C 00 00 05 */	cmpwi r0, 5
/* 809C470C  41 82 00 B0 */	beq lbl_809C47BC
/* 809C4710  80 1F 14 D8 */	lwz r0, 0x14d8(r31)
/* 809C4714  2C 00 00 17 */	cmpwi r0, 0x17
/* 809C4718  41 82 00 B8 */	beq lbl_809C47D0
/* 809C471C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809C4720  38 9F 14 8C */	addi r4, r31, 0x148c
/* 809C4724  C0 3E 06 D4 */	lfs f1, 0x6d4(r30)
/* 809C4728  4B 8A C2 69 */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 809C472C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C4730  38 80 00 01 */	li r4, 1
/* 809C4734  88 03 00 11 */	lbz r0, 0x11(r3)
/* 809C4738  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809C473C  40 82 00 18 */	bne lbl_809C4754
/* 809C4740  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 809C4744  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809C4748  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809C474C  41 82 00 08 */	beq lbl_809C4754
/* 809C4750  38 80 00 00 */	li r4, 0
lbl_809C4754:
/* 809C4754  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 809C4758  41 82 00 78 */	beq lbl_809C47D0
/* 809C475C  7F E3 FB 78 */	mr r3, r31
/* 809C4760  38 80 00 05 */	li r4, 5
/* 809C4764  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C4768  38 A0 00 00 */	li r5, 0
/* 809C476C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C4770  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C4774  7D 89 03 A6 */	mtctr r12
/* 809C4778  4E 80 04 21 */	bctrl 
/* 809C477C  C0 1F 14 8C */	lfs f0, 0x148c(r31)
/* 809C4780  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 809C4784  C0 1F 14 90 */	lfs f0, 0x1490(r31)
/* 809C4788  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 809C478C  C0 1F 14 94 */	lfs f0, 0x1494(r31)
/* 809C4790  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 809C4794  A8 1F 14 98 */	lha r0, 0x1498(r31)
/* 809C4798  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 809C479C  A8 1F 14 9A */	lha r0, 0x149a(r31)
/* 809C47A0  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 809C47A4  A8 1F 14 9C */	lha r0, 0x149c(r31)
/* 809C47A8  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 809C47AC  38 00 00 01 */	li r0, 1
/* 809C47B0  98 1F 14 D1 */	stb r0, 0x14d1(r31)
/* 809C47B4  3B 80 00 01 */	li r28, 1
/* 809C47B8  48 00 00 18 */	b lbl_809C47D0
lbl_809C47BC:
/* 809C47BC  3B 80 00 01 */	li r28, 1
/* 809C47C0  48 00 00 10 */	b lbl_809C47D0
lbl_809C47C4:
/* 809C47C4  3B 80 00 01 */	li r28, 1
/* 809C47C8  48 00 00 08 */	b lbl_809C47D0
lbl_809C47CC:
/* 809C47CC  3B 80 00 01 */	li r28, 1
lbl_809C47D0:
/* 809C47D0  7F 83 E3 78 */	mr r3, r28
/* 809C47D4  39 61 00 20 */	addi r11, r1, 0x20
/* 809C47D8  4B 99 DA 45 */	bl _restgpr_26
/* 809C47DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809C47E0  7C 08 03 A6 */	mtlr r0
/* 809C47E4  38 21 00 20 */	addi r1, r1, 0x20
/* 809C47E8  4E 80 00 20 */	blr 
