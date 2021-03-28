lbl_80C494A8:
/* 80C494A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C494AC  7C 08 02 A6 */	mflr r0
/* 80C494B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C494B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C494B8  7C 7F 1B 78 */	mr r31, r3
/* 80C494BC  80 03 06 14 */	lwz r0, 0x614(r3)
/* 80C494C0  90 01 00 08 */	stw r0, 8(r1)
/* 80C494C4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C494C8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C494CC  38 81 00 08 */	addi r4, r1, 8
/* 80C494D0  4B 3D 03 28 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C494D4  88 1F 05 E9 */	lbz r0, 0x5e9(r31)
/* 80C494D8  2C 00 00 02 */	cmpwi r0, 2
/* 80C494DC  41 82 00 78 */	beq lbl_80C49554
/* 80C494E0  40 80 00 14 */	bge lbl_80C494F4
/* 80C494E4  2C 00 00 00 */	cmpwi r0, 0
/* 80C494E8  41 82 00 1C */	beq lbl_80C49504
/* 80C494EC  40 80 00 48 */	bge lbl_80C49534
/* 80C494F0  48 00 00 9C */	b lbl_80C4958C
lbl_80C494F4:
/* 80C494F4  2C 00 00 04 */	cmpwi r0, 4
/* 80C494F8  41 82 00 94 */	beq lbl_80C4958C
/* 80C494FC  40 80 00 90 */	bge lbl_80C4958C
/* 80C49500  48 00 00 74 */	b lbl_80C49574
lbl_80C49504:
/* 80C49504  28 03 00 00 */	cmplwi r3, 0
/* 80C49508  41 82 00 0C */	beq lbl_80C49514
/* 80C4950C  38 00 00 01 */	li r0, 1
/* 80C49510  98 03 2C A4 */	stb r0, 0x2ca4(r3)
lbl_80C49514:
/* 80C49514  38 00 00 01 */	li r0, 1
/* 80C49518  98 1F 05 E9 */	stb r0, 0x5e9(r31)
/* 80C4951C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C49520  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C49524  A8 64 5D C8 */	lha r3, 0x5dc8(r4)
/* 80C49528  38 03 FF FF */	addi r0, r3, -1
/* 80C4952C  B0 04 5D C8 */	sth r0, 0x5dc8(r4)
/* 80C49530  48 00 00 5C */	b lbl_80C4958C
lbl_80C49534:
/* 80C49534  28 03 00 00 */	cmplwi r3, 0
/* 80C49538  41 82 00 54 */	beq lbl_80C4958C
/* 80C4953C  88 03 2C A4 */	lbz r0, 0x2ca4(r3)
/* 80C49540  28 00 00 03 */	cmplwi r0, 3
/* 80C49544  40 82 00 48 */	bne lbl_80C4958C
/* 80C49548  38 00 00 02 */	li r0, 2
/* 80C4954C  98 1F 05 E9 */	stb r0, 0x5e9(r31)
/* 80C49550  48 00 00 3C */	b lbl_80C4958C
lbl_80C49554:
/* 80C49554  3C 60 80 C5 */	lis r3, lit_3779@ha
/* 80C49558  C0 03 9C FC */	lfs f0, lit_3779@l(r3)
/* 80C4955C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C49560  38 00 00 03 */	li r0, 3
/* 80C49564  98 1F 05 E9 */	stb r0, 0x5e9(r31)
/* 80C49568  7F E3 FB 78 */	mr r3, r31
/* 80C4956C  48 00 01 65 */	bl anmInit__12daObjKshtr_cFv
/* 80C49570  48 00 00 1C */	b lbl_80C4958C
lbl_80C49574:
/* 80C49574  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80C49578  4B 3C 3E B0 */	b play__14mDoExt_baseAnmFv
/* 80C4957C  2C 03 00 00 */	cmpwi r3, 0
/* 80C49580  41 82 00 0C */	beq lbl_80C4958C
/* 80C49584  38 00 00 04 */	li r0, 4
/* 80C49588  98 1F 05 E9 */	stb r0, 0x5e9(r31)
lbl_80C4958C:
/* 80C4958C  38 60 00 00 */	li r3, 0
/* 80C49590  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C49594  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C49598  7C 08 03 A6 */	mtlr r0
/* 80C4959C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C495A0  4E 80 00 20 */	blr 
