lbl_80C507F8:
/* 80C507F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C507FC  7C 08 02 A6 */	mflr r0
/* 80C50800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C50804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C50808  7C 7F 1B 78 */	mr r31, r3
/* 80C5080C  3C 60 80 C5 */	lis r3, l_arcName@ha
/* 80C50810  38 63 0D C4 */	addi r3, r3, l_arcName@l
/* 80C50814  80 63 00 00 */	lwz r3, 0(r3)
/* 80C50818  3C 80 80 C5 */	lis r4, stringBase0@ha
/* 80C5081C  38 84 0D 90 */	addi r4, r4, stringBase0@l
/* 80C50820  38 84 00 09 */	addi r4, r4, 9
/* 80C50824  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C50828  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C5082C  3C A5 00 02 */	addis r5, r5, 2
/* 80C50830  38 C0 00 80 */	li r6, 0x80
/* 80C50834  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C50838  4B 3E BB 44 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C5083C  3C 80 00 08 */	lis r4, 8
/* 80C50840  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C50844  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C50848  4B 3C 44 0C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C5084C  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80C50850  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C50854  30 03 FF FF */	addic r0, r3, -1
/* 80C50858  7C 60 19 10 */	subfe r3, r0, r3
/* 80C5085C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C50860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C50864  7C 08 03 A6 */	mtlr r0
/* 80C50868  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5086C  4E 80 00 20 */	blr 
