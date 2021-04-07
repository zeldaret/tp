lbl_809E44E0:
/* 809E44E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809E44E4  7C 08 02 A6 */	mflr r0
/* 809E44E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 809E44EC  39 61 00 40 */	addi r11, r1, 0x40
/* 809E44F0  4B 97 DC D9 */	bl _savegpr_24
/* 809E44F4  7C 7E 1B 78 */	mr r30, r3
/* 809E44F8  3C 80 80 9E */	lis r4, m__17daNpc_grS_Param_c@ha /* 0x809E7DCC@ha */
/* 809E44FC  3B E4 7D CC */	addi r31, r4, m__17daNpc_grS_Param_c@l /* 0x809E7DCC@l */
/* 809E4500  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809E4504  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809E4508  40 82 00 1C */	bne lbl_809E4524
/* 809E450C  28 1E 00 00 */	cmplwi r30, 0
/* 809E4510  41 82 00 08 */	beq lbl_809E4518
/* 809E4514  4B FF FB B9 */	bl __ct__11daNpc_grS_cFv
lbl_809E4518:
/* 809E4518  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 809E451C  60 00 00 08 */	ori r0, r0, 8
/* 809E4520  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_809E4524:
/* 809E4524  7F C3 F3 78 */	mr r3, r30
/* 809E4528  48 00 18 8D */	bl getTypeFromParam__11daNpc_grS_cFv
/* 809E452C  98 7E 0E 14 */	stb r3, 0xe14(r30)
/* 809E4530  A8 7E 04 B4 */	lha r3, 0x4b4(r30)
/* 809E4534  3C 03 00 00 */	addis r0, r3, 0
/* 809E4538  28 00 FF FF */	cmplwi r0, 0xffff
/* 809E453C  41 82 00 0C */	beq lbl_809E4548
/* 809E4540  90 7E 0E 0C */	stw r3, 0xe0c(r30)
/* 809E4544  48 00 00 0C */	b lbl_809E4550
lbl_809E4548:
/* 809E4548  38 00 FF FF */	li r0, -1
/* 809E454C  90 1E 0E 0C */	stw r0, 0xe0c(r30)
lbl_809E4550:
/* 809E4550  7F C3 F3 78 */	mr r3, r30
/* 809E4554  48 00 18 81 */	bl isDelete__11daNpc_grS_cFv
/* 809E4558  2C 03 00 00 */	cmpwi r3, 0
/* 809E455C  41 82 00 0C */	beq lbl_809E4568
/* 809E4560  38 60 00 05 */	li r3, 5
/* 809E4564  48 00 02 38 */	b lbl_809E479C
lbl_809E4568:
/* 809E4568  3B 20 00 00 */	li r25, 0
/* 809E456C  3B 00 00 00 */	li r24, 0
/* 809E4570  3B A0 00 00 */	li r29, 0
/* 809E4574  3B 80 00 00 */	li r28, 0
/* 809E4578  3C 60 80 9F */	lis r3, l_resNames@ha /* 0x809E8084@ha */
/* 809E457C  3B 43 80 84 */	addi r26, r3, l_resNames@l /* 0x809E8084@l */
/* 809E4580  3C 60 80 9F */	lis r3, l_loadRes_list@ha /* 0x809E807C@ha */
/* 809E4584  3B 63 80 7C */	addi r27, r3, l_loadRes_list@l /* 0x809E807C@l */
/* 809E4588  48 00 00 48 */	b lbl_809E45D0
lbl_809E458C:
/* 809E458C  38 7C 0D E4 */	addi r3, r28, 0xde4
/* 809E4590  7C 7E 1A 14 */	add r3, r30, r3
/* 809E4594  54 00 10 3A */	slwi r0, r0, 2
/* 809E4598  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809E459C  4B 64 89 21 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809E45A0  2C 03 00 05 */	cmpwi r3, 5
/* 809E45A4  41 82 00 0C */	beq lbl_809E45B0
/* 809E45A8  2C 03 00 03 */	cmpwi r3, 3
/* 809E45AC  40 82 00 0C */	bne lbl_809E45B8
lbl_809E45B0:
/* 809E45B0  38 60 00 05 */	li r3, 5
/* 809E45B4  48 00 01 E8 */	b lbl_809E479C
lbl_809E45B8:
/* 809E45B8  2C 03 00 04 */	cmpwi r3, 4
/* 809E45BC  40 82 00 08 */	bne lbl_809E45C4
/* 809E45C0  3B 39 00 01 */	addi r25, r25, 1
lbl_809E45C4:
/* 809E45C4  3B 18 00 01 */	addi r24, r24, 1
/* 809E45C8  3B BD 00 04 */	addi r29, r29, 4
/* 809E45CC  3B 9C 00 08 */	addi r28, r28, 8
lbl_809E45D0:
/* 809E45D0  88 1E 0E 14 */	lbz r0, 0xe14(r30)
/* 809E45D4  54 00 10 3A */	slwi r0, r0, 2
/* 809E45D8  7C 7B 00 2E */	lwzx r3, r27, r0
/* 809E45DC  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809E45E0  2C 00 00 00 */	cmpwi r0, 0
/* 809E45E4  40 80 FF A8 */	bge lbl_809E458C
/* 809E45E8  7C 19 C0 00 */	cmpw r25, r24
/* 809E45EC  40 82 01 AC */	bne lbl_809E4798
/* 809E45F0  7F C3 F3 78 */	mr r3, r30
/* 809E45F4  3C 80 80 9E */	lis r4, createHeapCallBack__11daNpc_grS_cFP10fopAc_ac_c@ha /* 0x809E4F70@ha */
/* 809E45F8  38 84 4F 70 */	addi r4, r4, createHeapCallBack__11daNpc_grS_cFP10fopAc_ac_c@l /* 0x809E4F70@l */
/* 809E45FC  38 A0 3E 30 */	li r5, 0x3e30
/* 809E4600  4B 63 5E B1 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809E4604  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809E4608  40 82 00 0C */	bne lbl_809E4614
/* 809E460C  38 60 00 05 */	li r3, 5
/* 809E4610  48 00 01 8C */	b lbl_809E479C
lbl_809E4614:
/* 809E4614  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809E4618  80 63 00 04 */	lwz r3, 4(r3)
/* 809E461C  38 03 00 24 */	addi r0, r3, 0x24
/* 809E4620  90 1E 05 04 */	stw r0, 0x504(r30)
/* 809E4624  7F C3 F3 78 */	mr r3, r30
/* 809E4628  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 809E462C  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 809E4630  FC 60 08 90 */	fmr f3, f1
/* 809E4634  C0 9F 00 74 */	lfs f4, 0x74(r31)
/* 809E4638  C0 BF 00 78 */	lfs f5, 0x78(r31)
/* 809E463C  FC C0 20 90 */	fmr f6, f4
/* 809E4640  4B 63 5F 09 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809E4644  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809E4648  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809E464C  38 BE 05 38 */	addi r5, r30, 0x538
/* 809E4650  38 C0 00 03 */	li r6, 3
/* 809E4654  38 E0 00 01 */	li r7, 1
/* 809E4658  4B 8D BE D9 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 809E465C  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809E4660  38 9F 00 00 */	addi r4, r31, 0
/* 809E4664  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809E4668  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 809E466C  4B 69 18 ED */	bl SetWall__12dBgS_AcchCirFff
/* 809E4670  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 809E4674  90 01 00 08 */	stw r0, 8(r1)
/* 809E4678  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809E467C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809E4680  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 809E4684  7F C6 F3 78 */	mr r6, r30
/* 809E4688  38 E0 00 01 */	li r7, 1
/* 809E468C  39 1E 07 E4 */	addi r8, r30, 0x7e4
/* 809E4690  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 809E4694  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 809E4698  4B 69 1B B1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809E469C  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 809E46A0  38 9F 00 00 */	addi r4, r31, 0
/* 809E46A4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809E46A8  FC 00 00 1E */	fctiwz f0, f0
/* 809E46AC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809E46B0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809E46B4  38 A0 00 00 */	li r5, 0
/* 809E46B8  7F C6 F3 78 */	mr r6, r30
/* 809E46BC  4B 69 F1 A5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809E46C0  38 7E 0C 90 */	addi r3, r30, 0xc90
/* 809E46C4  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 809E46C8  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 809E46CC  4B 6A 01 E9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809E46D0  38 1E 07 A8 */	addi r0, r30, 0x7a8
/* 809E46D4  90 1E 0C D4 */	stw r0, 0xcd4(r30)
/* 809E46D8  3C 60 80 15 */	lis r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80152614@ha */
/* 809E46DC  38 03 26 14 */	addi r0, r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80152614@l */
/* 809E46E0  90 1E 0D 34 */	stw r0, 0xd34(r30)
/* 809E46E4  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809E46E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E46EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E46F0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809E46F4  4B 69 23 B9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809E46F8  80 1E 06 AC */	lwz r0, 0x6ac(r30)
/* 809E46FC  90 1E 0A 44 */	stw r0, 0xa44(r30)
/* 809E4700  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 809E4704  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 809E4708  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 809E470C  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 809E4710  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 809E4714  98 1E 0A 50 */	stb r0, 0xa50(r30)
/* 809E4718  A0 1E 06 C0 */	lhz r0, 0x6c0(r30)
/* 809E471C  B0 1E 0A 58 */	sth r0, 0xa58(r30)
/* 809E4720  A0 1E 06 C2 */	lhz r0, 0x6c2(r30)
/* 809E4724  B0 1E 0A 5A */	sth r0, 0xa5a(r30)
/* 809E4728  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 809E472C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809E4730  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 809E4734  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 809E4738  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 809E473C  D0 1E 0A 68 */	stfs f0, 0xa68(r30)
/* 809E4740  C0 1E 06 D4 */	lfs f0, 0x6d4(r30)
/* 809E4744  D0 1E 0A 6C */	stfs f0, 0xa6c(r30)
/* 809E4748  C0 1E 06 D8 */	lfs f0, 0x6d8(r30)
/* 809E474C  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 809E4750  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 809E4754  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 809E4758  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 809E475C  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 809E4760  80 1E 06 E4 */	lwz r0, 0x6e4(r30)
/* 809E4764  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 809E4768  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 809E476C  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 809E4770  7F C3 F3 78 */	mr r3, r30
/* 809E4774  4B 76 E6 11 */	bl setEnvTevColor__8daNpcF_cFv
/* 809E4778  7F C3 F3 78 */	mr r3, r30
/* 809E477C  4B 76 E6 65 */	bl setRoomNo__8daNpcF_cFv
/* 809E4780  7F C3 F3 78 */	mr r3, r30
/* 809E4784  48 00 16 D5 */	bl reset__11daNpc_grS_cFv
/* 809E4788  7F C3 F3 78 */	mr r3, r30
/* 809E478C  48 00 05 01 */	bl Execute__11daNpc_grS_cFv
/* 809E4790  38 60 00 04 */	li r3, 4
/* 809E4794  48 00 00 08 */	b lbl_809E479C
lbl_809E4798:
/* 809E4798  38 60 00 00 */	li r3, 0
lbl_809E479C:
/* 809E479C  39 61 00 40 */	addi r11, r1, 0x40
/* 809E47A0  4B 97 DA 75 */	bl _restgpr_24
/* 809E47A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809E47A8  7C 08 03 A6 */	mtlr r0
/* 809E47AC  38 21 00 40 */	addi r1, r1, 0x40
/* 809E47B0  4E 80 00 20 */	blr 
