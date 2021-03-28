lbl_809EC4C4:
/* 809EC4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EC4C8  7C 08 02 A6 */	mflr r0
/* 809EC4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EC4D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EC4D4  93 C1 00 08 */	stw r30, 8(r1)
/* 809EC4D8  7C 7F 1B 78 */	mr r31, r3
/* 809EC4DC  A0 03 1A 7A */	lhz r0, 0x1a7a(r3)
/* 809EC4E0  2C 00 00 02 */	cmpwi r0, 2
/* 809EC4E4  41 82 00 C4 */	beq lbl_809EC5A8
/* 809EC4E8  40 80 02 6C */	bge lbl_809EC754
/* 809EC4EC  2C 00 00 00 */	cmpwi r0, 0
/* 809EC4F0  41 82 00 0C */	beq lbl_809EC4FC
/* 809EC4F4  48 00 02 60 */	b lbl_809EC754
/* 809EC4F8  48 00 02 5C */	b lbl_809EC754
lbl_809EC4FC:
/* 809EC4FC  88 1F 1A 7C */	lbz r0, 0x1a7c(r31)
/* 809EC500  28 00 00 01 */	cmplwi r0, 1
/* 809EC504  40 82 00 48 */	bne lbl_809EC54C
/* 809EC508  38 80 00 09 */	li r4, 9
/* 809EC50C  3C A0 80 9F */	lis r5, lit_4685@ha
/* 809EC510  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)
/* 809EC514  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809EC518  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809EC51C  7D 89 03 A6 */	mtctr r12
/* 809EC520  4E 80 04 21 */	bctrl 
/* 809EC524  7F E3 FB 78 */	mr r3, r31
/* 809EC528  38 80 00 01 */	li r4, 1
/* 809EC52C  3C A0 80 9F */	lis r5, lit_4685@ha
/* 809EC530  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)
/* 809EC534  38 A0 00 00 */	li r5, 0
/* 809EC538  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EC53C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809EC540  7D 89 03 A6 */	mtctr r12
/* 809EC544  4E 80 04 21 */	bctrl 
/* 809EC548  48 00 00 44 */	b lbl_809EC58C
lbl_809EC54C:
/* 809EC54C  38 80 00 0A */	li r4, 0xa
/* 809EC550  3C A0 80 9F */	lis r5, lit_4685@ha
/* 809EC554  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)
/* 809EC558  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809EC55C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809EC560  7D 89 03 A6 */	mtctr r12
/* 809EC564  4E 80 04 21 */	bctrl 
/* 809EC568  7F E3 FB 78 */	mr r3, r31
/* 809EC56C  38 80 00 00 */	li r4, 0
/* 809EC570  3C A0 80 9F */	lis r5, lit_4685@ha
/* 809EC574  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)
/* 809EC578  38 A0 00 00 */	li r5, 0
/* 809EC57C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EC580  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809EC584  7D 89 03 A6 */	mtctr r12
/* 809EC588  4E 80 04 21 */	bctrl 
lbl_809EC58C:
/* 809EC58C  7F E3 FB 78 */	mr r3, r31
/* 809EC590  38 80 00 00 */	li r4, 0
/* 809EC594  4B FF FB D1 */	bl setLookMode__11daNpc_Grz_cFi
/* 809EC598  38 00 00 00 */	li r0, 0
/* 809EC59C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809EC5A0  38 00 00 02 */	li r0, 2
/* 809EC5A4  B0 1F 1A 7A */	sth r0, 0x1a7a(r31)
lbl_809EC5A8:
/* 809EC5A8  88 1F 1A 7C */	lbz r0, 0x1a7c(r31)
/* 809EC5AC  28 00 00 00 */	cmplwi r0, 0
/* 809EC5B0  40 82 00 18 */	bne lbl_809EC5C8
/* 809EC5B4  88 1F 09 F2 */	lbz r0, 0x9f2(r31)
/* 809EC5B8  28 00 00 01 */	cmplwi r0, 1
/* 809EC5BC  40 82 00 0C */	bne lbl_809EC5C8
/* 809EC5C0  7F E3 FB 78 */	mr r3, r31
/* 809EC5C4  4B 62 D6 B8 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_809EC5C8:
/* 809EC5C8  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809EC5CC  28 00 00 00 */	cmplwi r0, 0
/* 809EC5D0  40 82 01 84 */	bne lbl_809EC754
/* 809EC5D4  38 7F 12 A8 */	addi r3, r31, 0x12a8
/* 809EC5D8  4B 76 41 14 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809EC5DC  30 03 FF FF */	addic r0, r3, -1
/* 809EC5E0  7C 00 19 10 */	subfe r0, r0, r3
/* 809EC5E4  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 809EC5E8  7F E3 FB 78 */	mr r3, r31
/* 809EC5EC  7F C4 F3 78 */	mr r4, r30
/* 809EC5F0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 809EC5F4  4B 76 83 EC */	b chkFindPlayer2__8daNpcF_cFis
/* 809EC5F8  2C 03 00 00 */	cmpwi r3, 0
/* 809EC5FC  41 82 00 2C */	beq lbl_809EC628
/* 809EC600  2C 1E 00 00 */	cmpwi r30, 0
/* 809EC604  40 82 00 3C */	bne lbl_809EC640
/* 809EC608  38 7F 12 A8 */	addi r3, r31, 0x12a8
/* 809EC60C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809EC610  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809EC614  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809EC618  4B 76 40 A4 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809EC61C  38 00 00 00 */	li r0, 0
/* 809EC620  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809EC624  48 00 00 1C */	b lbl_809EC640
lbl_809EC628:
/* 809EC628  2C 1E 00 00 */	cmpwi r30, 0
/* 809EC62C  41 82 00 14 */	beq lbl_809EC640
/* 809EC630  38 7F 12 A8 */	addi r3, r31, 0x12a8
/* 809EC634  4B 76 40 AC */	b remove__18daNpcF_ActorMngr_cFv
/* 809EC638  38 00 00 00 */	li r0, 0
/* 809EC63C  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809EC640:
/* 809EC640  38 7F 12 A8 */	addi r3, r31, 0x12a8
/* 809EC644  4B 76 40 A8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809EC648  28 03 00 00 */	cmplwi r3, 0
/* 809EC64C  41 82 00 14 */	beq lbl_809EC660
/* 809EC650  7F E3 FB 78 */	mr r3, r31
/* 809EC654  38 80 00 02 */	li r4, 2
/* 809EC658  4B FF FB 0D */	bl setLookMode__11daNpc_Grz_cFi
/* 809EC65C  48 00 00 78 */	b lbl_809EC6D4
lbl_809EC660:
/* 809EC660  7F E3 FB 78 */	mr r3, r31
/* 809EC664  38 80 00 00 */	li r4, 0
/* 809EC668  4B FF FA FD */	bl setLookMode__11daNpc_Grz_cFi
/* 809EC66C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809EC670  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809EC674  7C 04 00 00 */	cmpw r4, r0
/* 809EC678  41 82 00 5C */	beq lbl_809EC6D4
/* 809EC67C  88 1F 1A 7C */	lbz r0, 0x1a7c(r31)
/* 809EC680  28 00 00 01 */	cmplwi r0, 1
/* 809EC684  40 82 00 2C */	bne lbl_809EC6B0
/* 809EC688  7F E3 FB 78 */	mr r3, r31
/* 809EC68C  38 A0 00 09 */	li r5, 9
/* 809EC690  38 C0 00 0E */	li r6, 0xe
/* 809EC694  38 E0 00 2D */	li r7, 0x2d
/* 809EC698  4B 76 7A 0C */	b step__8daNpcF_cFsiii
/* 809EC69C  2C 03 00 00 */	cmpwi r3, 0
/* 809EC6A0  41 82 00 34 */	beq lbl_809EC6D4
/* 809EC6A4  38 00 00 00 */	li r0, 0
/* 809EC6A8  B0 1F 1A 7A */	sth r0, 0x1a7a(r31)
/* 809EC6AC  48 00 00 28 */	b lbl_809EC6D4
lbl_809EC6B0:
/* 809EC6B0  7F E3 FB 78 */	mr r3, r31
/* 809EC6B4  38 A0 00 0A */	li r5, 0xa
/* 809EC6B8  38 C0 00 0D */	li r6, 0xd
/* 809EC6BC  38 E0 00 0F */	li r7, 0xf
/* 809EC6C0  4B 76 79 E4 */	b step__8daNpcF_cFsiii
/* 809EC6C4  2C 03 00 00 */	cmpwi r3, 0
/* 809EC6C8  41 82 00 0C */	beq lbl_809EC6D4
/* 809EC6CC  38 00 00 00 */	li r0, 0
/* 809EC6D0  B0 1F 1A 7A */	sth r0, 0x1a7a(r31)
lbl_809EC6D4:
/* 809EC6D4  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 809EC6D8  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809EC6DC  7C 03 00 00 */	cmpw r3, r0
/* 809EC6E0  40 82 00 6C */	bne lbl_809EC74C
/* 809EC6E4  38 7F 12 A8 */	addi r3, r31, 0x12a8
/* 809EC6E8  4B 76 40 04 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809EC6EC  30 03 FF FF */	addic r0, r3, -1
/* 809EC6F0  7C 00 19 10 */	subfe r0, r0, r3
/* 809EC6F4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 809EC6F8  7F E3 FB 78 */	mr r3, r31
/* 809EC6FC  3C A0 80 15 */	lis r5, srchAttnActor1__8daNpcF_cFPvPv@ha
/* 809EC700  38 A5 26 54 */	addi r5, r5, srchAttnActor1__8daNpcF_cFPvPv@l
/* 809EC704  3C C0 80 9F */	lis r6, m__17daNpc_Grz_Param_c@ha
/* 809EC708  38 C6 F1 F4 */	addi r6, r6, m__17daNpc_Grz_Param_c@l
/* 809EC70C  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 809EC710  C0 46 00 58 */	lfs f2, 0x58(r6)
/* 809EC714  C0 66 00 5C */	lfs f3, 0x5c(r6)
/* 809EC718  C0 86 00 50 */	lfs f4, 0x50(r6)
/* 809EC71C  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 809EC720  38 E0 00 78 */	li r7, 0x78
/* 809EC724  39 00 00 01 */	li r8, 1
/* 809EC728  4B 76 7C 44 */	b getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii
/* 809EC72C  7C 64 1B 79 */	or. r4, r3, r3
/* 809EC730  41 82 00 24 */	beq lbl_809EC754
/* 809EC734  38 7F 12 B0 */	addi r3, r31, 0x12b0
/* 809EC738  4B 76 3F 84 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809EC73C  7F E3 FB 78 */	mr r3, r31
/* 809EC740  38 80 00 04 */	li r4, 4
/* 809EC744  4B FF FA 21 */	bl setLookMode__11daNpc_Grz_cFi
/* 809EC748  48 00 00 0C */	b lbl_809EC754
lbl_809EC74C:
/* 809EC74C  38 00 00 00 */	li r0, 0
/* 809EC750  90 1F 09 38 */	stw r0, 0x938(r31)
lbl_809EC754:
/* 809EC754  38 60 00 01 */	li r3, 1
/* 809EC758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EC75C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809EC760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EC764  7C 08 03 A6 */	mtlr r0
/* 809EC768  38 21 00 10 */	addi r1, r1, 0x10
/* 809EC76C  4E 80 00 20 */	blr 
