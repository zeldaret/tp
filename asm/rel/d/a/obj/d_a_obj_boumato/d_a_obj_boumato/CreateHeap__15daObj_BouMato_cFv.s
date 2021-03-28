lbl_80BBB770:
/* 80BBB770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBB774  7C 08 02 A6 */	mflr r0
/* 80BBB778  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBB77C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBB780  7C 7F 1B 78 */	mr r31, r3
/* 80BBB784  48 00 08 75 */	bl getResName__15daObj_BouMato_cFv
/* 80BBB788  38 80 00 04 */	li r4, 4
/* 80BBB78C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BBB790  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BBB794  3C A5 00 02 */	addis r5, r5, 2
/* 80BBB798  38 C0 00 80 */	li r6, 0x80
/* 80BBB79C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BBB7A0  4B 48 0B 4C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BBB7A4  3C 80 00 08 */	lis r4, 8
/* 80BBB7A8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BBB7AC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BBB7B0  4B 45 94 A4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BBB7B4  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80BBB7B8  80 DF 05 74 */	lwz r6, 0x574(r31)
/* 80BBB7BC  28 06 00 00 */	cmplwi r6, 0
/* 80BBB7C0  40 82 00 0C */	bne lbl_80BBB7CC
/* 80BBB7C4  38 60 00 00 */	li r3, 0
/* 80BBB7C8  48 00 00 24 */	b lbl_80BBB7EC
lbl_80BBB7CC:
/* 80BBB7CC  38 7F 09 E8 */	addi r3, r31, 0x9e8
/* 80BBB7D0  7F E4 FB 78 */	mr r4, r31
/* 80BBB7D4  3C A0 80 BC */	lis r5, jntCoData@ha
/* 80BBB7D8  38 A5 C5 8C */	addi r5, r5, jntCoData@l
/* 80BBB7DC  38 E0 00 01 */	li r7, 1
/* 80BBB7E0  4B 47 A4 C0 */	b init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli
/* 80BBB7E4  30 03 FF FF */	addic r0, r3, -1
/* 80BBB7E8  7C 60 19 10 */	subfe r3, r0, r3
lbl_80BBB7EC:
/* 80BBB7EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBB7F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBB7F4  7C 08 03 A6 */	mtlr r0
/* 80BBB7F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBB7FC  4E 80 00 20 */	blr 
