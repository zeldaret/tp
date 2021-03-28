lbl_80D434F8:
/* 80D434F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D434FC  7C 08 02 A6 */	mflr r0
/* 80D43500  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D43504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D43508  7C 7F 1B 78 */	mr r31, r3
/* 80D4350C  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D43510  38 63 3F A4 */	addi r3, r3, l_arcName@l
/* 80D43514  80 63 00 00 */	lwz r3, 0(r3)
/* 80D43518  88 1F 03 C8 */	lbz r0, 0x3c8(r31)
/* 80D4351C  7C 00 07 74 */	extsb r0, r0
/* 80D43520  54 00 10 3A */	slwi r0, r0, 2
/* 80D43524  3C 80 80 D4 */	lis r4, sHahenBmdType@ha
/* 80D43528  38 84 3E 4C */	addi r4, r4, sHahenBmdType@l
/* 80D4352C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D43530  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D43534  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D43538  3C A5 00 02 */	addis r5, r5, 2
/* 80D4353C  38 C0 00 80 */	li r6, 0x80
/* 80D43540  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D43544  4B 2F 8D A8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D43548  3C 80 00 08 */	lis r4, 8
/* 80D4354C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D43550  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D43554  4B 2D 17 00 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D43558  90 7F 00 00 */	stw r3, 0(r31)
/* 80D4355C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80D43560  30 03 FF FF */	addic r0, r3, -1
/* 80D43564  7C 60 19 10 */	subfe r3, r0, r3
/* 80D43568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4356C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D43570  7C 08 03 A6 */	mtlr r0
/* 80D43574  38 21 00 10 */	addi r1, r1, 0x10
/* 80D43578  4E 80 00 20 */	blr 
