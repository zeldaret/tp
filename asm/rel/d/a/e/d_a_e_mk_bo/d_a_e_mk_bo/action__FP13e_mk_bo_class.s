lbl_8071E6C4:
/* 8071E6C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8071E6C8  7C 08 02 A6 */	mflr r0
/* 8071E6CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8071E6D0  39 61 00 30 */	addi r11, r1, 0x30
/* 8071E6D4  4B C4 3B 08 */	b _savegpr_29
/* 8071E6D8  7C 7F 1B 78 */	mr r31, r3
/* 8071E6DC  80 03 04 A4 */	lwz r0, 0x4a4(r3)
/* 8071E6E0  90 01 00 08 */	stw r0, 8(r1)
/* 8071E6E4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8071E6E8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8071E6EC  38 81 00 08 */	addi r4, r1, 8
/* 8071E6F0  4B 8F B1 08 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8071E6F4  3C 80 00 06 */	lis r4, 0x0006 /* 0x0006003E@ha */
/* 8071E6F8  3B A4 00 3E */	addi r29, r4, 0x003E /* 0x0006003E@l */
/* 8071E6FC  A8 1F 05 DA */	lha r0, 0x5da(r31)
/* 8071E700  2C 00 00 02 */	cmpwi r0, 2
/* 8071E704  41 82 01 08 */	beq lbl_8071E80C
/* 8071E708  40 80 00 14 */	bge lbl_8071E71C
/* 8071E70C  2C 00 00 00 */	cmpwi r0, 0
/* 8071E710  41 82 00 18 */	beq lbl_8071E728
/* 8071E714  40 80 00 E4 */	bge lbl_8071E7F8
/* 8071E718  48 00 01 20 */	b lbl_8071E838
lbl_8071E71C:
/* 8071E71C  2C 00 00 04 */	cmpwi r0, 4
/* 8071E720  40 80 01 18 */	bge lbl_8071E838
/* 8071E724  48 00 00 FC */	b lbl_8071E820
lbl_8071E728:
/* 8071E728  A8 03 0C 30 */	lha r0, 0xc30(r3)
/* 8071E72C  2C 00 00 01 */	cmpwi r0, 1
/* 8071E730  40 82 00 14 */	bne lbl_8071E744
/* 8071E734  7F E3 FB 78 */	mr r3, r31
/* 8071E738  4B FF EF 5D */	bl e_mk_bo_start__FP13e_mk_bo_class
/* 8071E73C  7C 7E 1B 78 */	mr r30, r3
/* 8071E740  48 00 00 3C */	b lbl_8071E77C
lbl_8071E744:
/* 8071E744  2C 00 00 03 */	cmpwi r0, 3
/* 8071E748  41 82 00 10 */	beq lbl_8071E758
/* 8071E74C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8071E750  2C 00 00 04 */	cmpwi r0, 4
/* 8071E754  40 82 00 14 */	bne lbl_8071E768
lbl_8071E758:
/* 8071E758  7F E3 FB 78 */	mr r3, r31
/* 8071E75C  4B FF F4 45 */	bl e_mk_bo_r04__FP13e_mk_bo_class
/* 8071E760  7C 7E 1B 78 */	mr r30, r3
/* 8071E764  48 00 00 18 */	b lbl_8071E77C
lbl_8071E768:
/* 8071E768  7F E3 FB 78 */	mr r3, r31
/* 8071E76C  4B FF E9 19 */	bl e_mk_bo_shot__FP13e_mk_bo_class
/* 8071E770  7C 7E 1B 78 */	mr r30, r3
/* 8071E774  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007007B@ha */
/* 8071E778  3B A3 00 7B */	addi r29, r3, 0x007B /* 0x0007007B@l */
lbl_8071E77C:
/* 8071E77C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8071E780  38 03 20 00 */	addi r0, r3, 0x2000
/* 8071E784  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8071E788  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 8071E78C  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 8071E790  40 82 00 28 */	bne lbl_8071E7B8
/* 8071E794  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8071E798  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 8071E79C  38 81 00 0C */	addi r4, r1, 0xc
/* 8071E7A0  38 A0 00 00 */	li r5, 0
/* 8071E7A4  38 C0 FF FF */	li r6, -1
/* 8071E7A8  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 8071E7AC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8071E7B0  7D 89 03 A6 */	mtctr r12
/* 8071E7B4  4E 80 04 21 */	bctrl 
lbl_8071E7B8:
/* 8071E7B8  7F C0 07 74 */	extsb r0, r30
/* 8071E7BC  2C 00 00 01 */	cmpwi r0, 1
/* 8071E7C0  40 82 00 24 */	bne lbl_8071E7E4
/* 8071E7C4  38 7F 06 44 */	addi r3, r31, 0x644
/* 8071E7C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8071E7CC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8071E7D0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8071E7D4  4B 95 82 D8 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8071E7D8  7F E3 FB 78 */	mr r3, r31
/* 8071E7DC  4B FF E6 55 */	bl hit_check__FP13e_mk_bo_class
/* 8071E7E0  48 00 00 58 */	b lbl_8071E838
lbl_8071E7E4:
/* 8071E7E4  7F C0 07 75 */	extsb. r0, r30
/* 8071E7E8  40 82 00 50 */	bne lbl_8071E838
/* 8071E7EC  38 00 00 0A */	li r0, 0xa
/* 8071E7F0  B0 1F 05 F8 */	sth r0, 0x5f8(r31)
/* 8071E7F4  48 00 00 44 */	b lbl_8071E838
lbl_8071E7F8:
/* 8071E7F8  7F E3 FB 78 */	mr r3, r31
/* 8071E7FC  4B FF F7 09 */	bl e_mk_bo_hasira__FP13e_mk_bo_class
/* 8071E800  38 00 00 0A */	li r0, 0xa
/* 8071E804  B0 1F 05 F8 */	sth r0, 0x5f8(r31)
/* 8071E808  48 00 00 30 */	b lbl_8071E838
lbl_8071E80C:
/* 8071E80C  7F E3 FB 78 */	mr r3, r31
/* 8071E810  4B FF F9 95 */	bl e_mk_bo_demo_ground__FP13e_mk_bo_class
/* 8071E814  38 00 00 0A */	li r0, 0xa
/* 8071E818  B0 1F 05 F8 */	sth r0, 0x5f8(r31)
/* 8071E81C  48 00 00 1C */	b lbl_8071E838
lbl_8071E820:
/* 8071E820  7F E3 FB 78 */	mr r3, r31
/* 8071E824  4B FF F9 DD */	bl e_mk_bo_demo_spin__FP13e_mk_bo_class
/* 8071E828  38 00 00 0A */	li r0, 0xa
/* 8071E82C  B0 1F 05 F8 */	sth r0, 0x5f8(r31)
/* 8071E830  38 00 00 01 */	li r0, 1
/* 8071E834  98 1F 09 B5 */	stb r0, 0x9b5(r31)
lbl_8071E838:
/* 8071E838  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8071E83C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8071E840  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8071E844  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8071E848  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8071E84C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8071E850  A8 1F 05 F8 */	lha r0, 0x5f8(r31)
/* 8071E854  2C 00 00 00 */	cmpwi r0, 0
/* 8071E858  41 82 00 14 */	beq lbl_8071E86C
/* 8071E85C  3C 60 80 72 */	lis r3, lit_4353@ha
/* 8071E860  C0 03 F6 C8 */	lfs f0, lit_4353@l(r3)
/* 8071E864  EC 01 00 2A */	fadds f0, f1, f0
/* 8071E868  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_8071E86C:
/* 8071E86C  38 7F 09 7C */	addi r3, r31, 0x97c
/* 8071E870  38 81 00 10 */	addi r4, r1, 0x10
/* 8071E874  4B B5 0D D4 */	b SetC__8cM3dGSphFRC4cXyz
/* 8071E878  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071E87C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071E880  38 63 23 3C */	addi r3, r3, 0x233c
/* 8071E884  38 9F 08 58 */	addi r4, r31, 0x858
/* 8071E888  4B B4 63 20 */	b Set__4cCcSFP8cCcD_Obj
/* 8071E88C  39 61 00 30 */	addi r11, r1, 0x30
/* 8071E890  4B C4 39 98 */	b _restgpr_29
/* 8071E894  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8071E898  7C 08 03 A6 */	mtlr r0
/* 8071E89C  38 21 00 30 */	addi r1, r1, 0x30
/* 8071E8A0  4E 80 00 20 */	blr 
