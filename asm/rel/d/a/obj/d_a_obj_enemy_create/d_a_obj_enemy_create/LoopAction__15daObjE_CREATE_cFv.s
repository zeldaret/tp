lbl_80BE34A0:
/* 80BE34A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE34A4  7C 08 02 A6 */	mflr r0
/* 80BE34A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE34AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE34B0  7C 7F 1B 78 */	mr r31, r3
/* 80BE34B4  4B FF FD 09 */	bl NormalAction__15daObjE_CREATE_cFv
/* 80BE34B8  88 1F 05 80 */	lbz r0, 0x580(r31)
/* 80BE34BC  28 00 00 03 */	cmplwi r0, 3
/* 80BE34C0  40 82 00 38 */	bne lbl_80BE34F8
/* 80BE34C4  A8 7F 05 82 */	lha r3, 0x582(r31)
/* 80BE34C8  38 03 FF FF */	addi r0, r3, -1
/* 80BE34CC  B0 1F 05 82 */	sth r0, 0x582(r31)
/* 80BE34D0  A8 1F 05 82 */	lha r0, 0x582(r31)
/* 80BE34D4  2C 00 00 00 */	cmpwi r0, 0
/* 80BE34D8  41 81 00 0C */	bgt lbl_80BE34E4
/* 80BE34DC  38 00 00 00 */	li r0, 0
/* 80BE34E0  B0 1F 05 82 */	sth r0, 0x582(r31)
lbl_80BE34E4:
/* 80BE34E4  A8 1F 05 82 */	lha r0, 0x582(r31)
/* 80BE34E8  2C 00 00 00 */	cmpwi r0, 0
/* 80BE34EC  40 82 00 0C */	bne lbl_80BE34F8
/* 80BE34F0  38 00 00 00 */	li r0, 0
/* 80BE34F4  98 1F 05 80 */	stb r0, 0x580(r31)
lbl_80BE34F8:
/* 80BE34F8  88 9F 05 6C */	lbz r4, 0x56c(r31)
/* 80BE34FC  28 04 00 FF */	cmplwi r4, 0xff
/* 80BE3500  41 82 00 30 */	beq lbl_80BE3530
/* 80BE3504  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE3508  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE350C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BE3510  7C 05 07 74 */	extsb r5, r0
/* 80BE3514  4B 45 1E 4D */	bl isSwitch__10dSv_info_cCFii
/* 80BE3518  2C 03 00 00 */	cmpwi r3, 0
/* 80BE351C  41 82 00 14 */	beq lbl_80BE3530
/* 80BE3520  38 00 00 00 */	li r0, 0
/* 80BE3524  98 1F 05 84 */	stb r0, 0x584(r31)
/* 80BE3528  38 00 00 02 */	li r0, 2
/* 80BE352C  98 1F 05 80 */	stb r0, 0x580(r31)
lbl_80BE3530:
/* 80BE3530  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE3534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE3538  7C 08 03 A6 */	mtlr r0
/* 80BE353C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE3540  4E 80 00 20 */	blr 
