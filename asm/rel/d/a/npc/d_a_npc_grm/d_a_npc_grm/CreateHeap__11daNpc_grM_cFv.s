lbl_809D441C:
/* 809D441C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D4420  7C 08 02 A6 */	mflr r0
/* 809D4424  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D4428  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809D442C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809D4430  7C 7E 1B 78 */	mr r30, r3
/* 809D4434  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 809D4438  28 00 00 01 */	cmplwi r0, 1
/* 809D443C  38 00 00 00 */	li r0, 0
/* 809D4440  54 05 18 38 */	slwi r5, r0, 3
/* 809D4444  3C 60 80 9D */	lis r3, l_bmdData@ha /* 0x809D6EB4@ha */
/* 809D4448  38 83 6E B4 */	addi r4, r3, l_bmdData@l /* 0x809D6EB4@l */
/* 809D444C  7C 64 2A 14 */	add r3, r4, r5
/* 809D4450  80 03 00 04 */	lwz r0, 4(r3)
/* 809D4454  54 00 10 3A */	slwi r0, r0, 2
/* 809D4458  3C 60 80 9D */	lis r3, l_resNameList@ha /* 0x809D6ED4@ha */
/* 809D445C  38 63 6E D4 */	addi r3, r3, l_resNameList@l /* 0x809D6ED4@l */
/* 809D4460  7C 63 00 2E */	lwzx r3, r3, r0
/* 809D4464  7C 84 28 2E */	lwzx r4, r4, r5
/* 809D4468  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D446C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D4470  3C A5 00 02 */	addis r5, r5, 2
/* 809D4474  38 C0 00 80 */	li r6, 0x80
/* 809D4478  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809D447C  4B 66 7E 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809D4480  7C 7F 1B 78 */	mr r31, r3
/* 809D4484  38 60 00 58 */	li r3, 0x58
/* 809D4488  4B 8F A7 C5 */	bl __nw__FUl
/* 809D448C  7C 60 1B 79 */	or. r0, r3, r3
/* 809D4490  41 82 00 4C */	beq lbl_809D44DC
/* 809D4494  38 1E 05 80 */	addi r0, r30, 0x580
/* 809D4498  90 01 00 08 */	stw r0, 8(r1)
/* 809D449C  3C 00 00 08 */	lis r0, 8
/* 809D44A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 809D44A4  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 809D44A8  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 809D44AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 809D44B0  7F E4 FB 78 */	mr r4, r31
/* 809D44B4  38 A0 00 00 */	li r5, 0
/* 809D44B8  38 C0 00 00 */	li r6, 0
/* 809D44BC  38 E0 00 00 */	li r7, 0
/* 809D44C0  39 00 FF FF */	li r8, -1
/* 809D44C4  3D 20 80 9D */	lis r9, lit_4373@ha /* 0x809D6E2C@ha */
/* 809D44C8  C0 29 6E 2C */	lfs f1, lit_4373@l(r9)  /* 0x809D6E2C@l */
/* 809D44CC  39 20 00 00 */	li r9, 0
/* 809D44D0  39 40 FF FF */	li r10, -1
/* 809D44D4  4B 63 C2 FD */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809D44D8  7C 60 1B 78 */	mr r0, r3
lbl_809D44DC:
/* 809D44DC  90 1E 05 78 */	stw r0, 0x578(r30)
/* 809D44E0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809D44E4  28 03 00 00 */	cmplwi r3, 0
/* 809D44E8  41 82 00 1C */	beq lbl_809D4504
/* 809D44EC  80 03 00 04 */	lwz r0, 4(r3)
/* 809D44F0  28 00 00 00 */	cmplwi r0, 0
/* 809D44F4  40 82 00 10 */	bne lbl_809D4504
/* 809D44F8  4B 63 CE 19 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 809D44FC  38 00 00 00 */	li r0, 0
/* 809D4500  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_809D4504:
/* 809D4504  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809D4508  28 03 00 00 */	cmplwi r3, 0
/* 809D450C  40 82 00 0C */	bne lbl_809D4518
/* 809D4510  38 60 00 00 */	li r3, 0
/* 809D4514  48 00 00 98 */	b lbl_809D45AC
lbl_809D4518:
/* 809D4518  80 A3 00 04 */	lwz r5, 4(r3)
/* 809D451C  38 C0 00 00 */	li r6, 0
/* 809D4520  3C 60 80 9D */	lis r3, ctrlJointCallBack__11daNpc_grM_cFP8J3DJointi@ha /* 0x809D4788@ha */
/* 809D4524  38 83 47 88 */	addi r4, r3, ctrlJointCallBack__11daNpc_grM_cFP8J3DJointi@l /* 0x809D4788@l */
/* 809D4528  48 00 00 18 */	b lbl_809D4540
lbl_809D452C:
/* 809D452C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 809D4530  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809D4534  7C 63 00 2E */	lwzx r3, r3, r0
/* 809D4538  90 83 00 04 */	stw r4, 4(r3)
/* 809D453C  38 C6 00 01 */	addi r6, r6, 1
lbl_809D4540:
/* 809D4540  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809D4544  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 809D4548  7C 03 00 40 */	cmplw r3, r0
/* 809D454C  41 80 FF E0 */	blt lbl_809D452C
/* 809D4550  93 C5 00 14 */	stw r30, 0x14(r5)
/* 809D4554  38 00 00 00 */	li r0, 0
/* 809D4558  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809D455C  7F C3 F3 78 */	mr r3, r30
/* 809D4560  38 80 00 02 */	li r4, 2
/* 809D4564  38 A0 00 00 */	li r5, 0
/* 809D4568  4B 77 5E 21 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 809D456C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809D4570  41 82 00 38 */	beq lbl_809D45A8
/* 809D4574  7F C3 F3 78 */	mr r3, r30
/* 809D4578  38 80 00 00 */	li r4, 0
/* 809D457C  3C A0 80 9D */	lis r5, lit_4009@ha /* 0x809D6E18@ha */
/* 809D4580  C0 25 6E 18 */	lfs f1, lit_4009@l(r5)  /* 0x809D6E18@l */
/* 809D4584  38 A0 00 00 */	li r5, 0
/* 809D4588  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809D458C  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 809D4590  7D 89 03 A6 */	mtctr r12
/* 809D4594  4E 80 04 21 */	bctrl 
/* 809D4598  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809D459C  41 82 00 0C */	beq lbl_809D45A8
/* 809D45A0  38 60 00 01 */	li r3, 1
/* 809D45A4  48 00 00 08 */	b lbl_809D45AC
lbl_809D45A8:
/* 809D45A8  38 60 00 00 */	li r3, 0
lbl_809D45AC:
/* 809D45AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809D45B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809D45B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D45B8  7C 08 03 A6 */	mtlr r0
/* 809D45BC  38 21 00 20 */	addi r1, r1, 0x20
/* 809D45C0  4E 80 00 20 */	blr 
