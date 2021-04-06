lbl_8085AF74:
/* 8085AF74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085AF78  7C 08 02 A6 */	mflr r0
/* 8085AF7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085AF80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8085AF84  7C 7F 1B 78 */	mr r31, r3
/* 8085AF88  3C 60 80 86 */	lis r3, d_a_kytag08__stringBase0@ha /* 0x8085B310@ha */
/* 8085AF8C  38 63 B3 10 */	addi r3, r3, d_a_kytag08__stringBase0@l /* 0x8085B310@l */
/* 8085AF90  38 80 00 03 */	li r4, 3
/* 8085AF94  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085AF98  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085AF9C  3C A5 00 02 */	addis r5, r5, 2
/* 8085AFA0  38 C0 00 80 */	li r6, 0x80
/* 8085AFA4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8085AFA8  4B 7E 13 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8085AFAC  3C 80 00 08 */	lis r4, 8
/* 8085AFB0  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020202@ha */
/* 8085AFB4  38 A5 02 02 */	addi r5, r5, 0x0202 /* 0x11020202@l */
/* 8085AFB8  4B 7B 9C 9D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8085AFBC  90 7F 05 68 */	stw r3, 0x568(r31)
/* 8085AFC0  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 8085AFC4  28 00 00 00 */	cmplwi r0, 0
/* 8085AFC8  40 82 00 0C */	bne lbl_8085AFD4
/* 8085AFCC  38 60 00 00 */	li r3, 0
/* 8085AFD0  48 00 00 08 */	b lbl_8085AFD8
lbl_8085AFD4:
/* 8085AFD4  38 60 00 01 */	li r3, 1
lbl_8085AFD8:
/* 8085AFD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8085AFDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085AFE0  7C 08 03 A6 */	mtlr r0
/* 8085AFE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8085AFE8  4E 80 00 20 */	blr 
