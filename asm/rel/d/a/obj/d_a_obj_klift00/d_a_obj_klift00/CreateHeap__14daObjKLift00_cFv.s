lbl_8058B5EC:
/* 8058B5EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058B5F0  7C 08 02 A6 */	mflr r0
/* 8058B5F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058B5F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8058B5FC  4B DD 6B E1 */	bl _savegpr_29
/* 8058B600  7C 7E 1B 78 */	mr r30, r3
/* 8058B604  3C 60 80 59 */	lis r3, l_arcName@ha /* 0x8058C3F4@ha */
/* 8058B608  38 63 C3 F4 */	addi r3, r3, l_arcName@l /* 0x8058C3F4@l */
/* 8058B60C  80 63 00 00 */	lwz r3, 0(r3)
/* 8058B610  3C 80 80 59 */	lis r4, l_bmdidx@ha /* 0x8058C380@ha */
/* 8058B614  38 84 C3 80 */	addi r4, r4, l_bmdidx@l /* 0x8058C380@l */
/* 8058B618  80 84 00 08 */	lwz r4, 8(r4)
/* 8058B61C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8058B620  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8058B624  3F E5 00 02 */	addis r31, r5, 2
/* 8058B628  3B FF C2 F8 */	addi r31, r31, -15624
/* 8058B62C  7F E5 FB 78 */	mr r5, r31
/* 8058B630  38 C0 00 80 */	li r6, 0x80
/* 8058B634  4B AB 0C B9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058B638  3C 80 00 08 */	lis r4, 8
/* 8058B63C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8058B640  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8058B644  4B A8 96 11 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8058B648  90 7E 06 08 */	stw r3, 0x608(r30)
/* 8058B64C  80 1E 06 08 */	lwz r0, 0x608(r30)
/* 8058B650  28 00 00 00 */	cmplwi r0, 0
/* 8058B654  40 82 00 0C */	bne lbl_8058B660
/* 8058B658  38 60 00 00 */	li r3, 0
/* 8058B65C  48 00 01 08 */	b lbl_8058B764
lbl_8058B660:
/* 8058B660  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8058B664  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8058B668  40 82 00 50 */	bne lbl_8058B6B8
/* 8058B66C  3C 60 80 59 */	lis r3, l_arcName@ha /* 0x8058C3F4@ha */
/* 8058B670  38 63 C3 F4 */	addi r3, r3, l_arcName@l /* 0x8058C3F4@l */
/* 8058B674  80 63 00 00 */	lwz r3, 0(r3)
/* 8058B678  3C 80 80 59 */	lis r4, l_bmdidx@ha /* 0x8058C380@ha */
/* 8058B67C  38 84 C3 80 */	addi r4, r4, l_bmdidx@l /* 0x8058C380@l */
/* 8058B680  80 84 00 00 */	lwz r4, 0(r4)
/* 8058B684  7F E5 FB 78 */	mr r5, r31
/* 8058B688  38 C0 00 80 */	li r6, 0x80
/* 8058B68C  4B AB 0C 61 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058B690  3C 80 00 08 */	lis r4, 8
/* 8058B694  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8058B698  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8058B69C  4B A8 95 B9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8058B6A0  90 7E 06 0C */	stw r3, 0x60c(r30)
/* 8058B6A4  80 1E 06 0C */	lwz r0, 0x60c(r30)
/* 8058B6A8  28 00 00 00 */	cmplwi r0, 0
/* 8058B6AC  40 82 00 14 */	bne lbl_8058B6C0
/* 8058B6B0  38 60 00 00 */	li r3, 0
/* 8058B6B4  48 00 00 B0 */	b lbl_8058B764
lbl_8058B6B8:
/* 8058B6B8  38 00 00 00 */	li r0, 0
/* 8058B6BC  90 1E 06 0C */	stw r0, 0x60c(r30)
lbl_8058B6C0:
/* 8058B6C0  83 BE 06 14 */	lwz r29, 0x614(r30)
/* 8058B6C4  1C 7D 00 24 */	mulli r3, r29, 0x24
/* 8058B6C8  38 63 00 10 */	addi r3, r3, 0x10
/* 8058B6CC  4B D4 35 F9 */	bl __nwa__FUl
/* 8058B6D0  3C 80 80 59 */	lis r4, __ct__Q214daObjKLift00_c8ChainPosFv@ha /* 0x8058C374@ha */
/* 8058B6D4  38 84 C3 74 */	addi r4, r4, __ct__Q214daObjKLift00_c8ChainPosFv@l /* 0x8058C374@l */
/* 8058B6D8  3C A0 80 59 */	lis r5, __dt__Q214daObjKLift00_c8ChainPosFv@ha /* 0x8058C338@ha */
/* 8058B6DC  38 A5 C3 38 */	addi r5, r5, __dt__Q214daObjKLift00_c8ChainPosFv@l /* 0x8058C338@l */
/* 8058B6E0  38 C0 00 24 */	li r6, 0x24
/* 8058B6E4  7F A7 EB 78 */	mr r7, r29
/* 8058B6E8  4B DD 68 2D */	bl __construct_new_array
/* 8058B6EC  90 7E 06 18 */	stw r3, 0x618(r30)
/* 8058B6F0  80 1E 06 18 */	lwz r0, 0x618(r30)
/* 8058B6F4  28 00 00 00 */	cmplwi r0, 0
/* 8058B6F8  40 82 00 0C */	bne lbl_8058B704
/* 8058B6FC  38 60 00 00 */	li r3, 0
/* 8058B700  48 00 00 64 */	b lbl_8058B764
lbl_8058B704:
/* 8058B704  3C 60 80 59 */	lis r3, l_arcName@ha /* 0x8058C3F4@ha */
/* 8058B708  38 63 C3 F4 */	addi r3, r3, l_arcName@l /* 0x8058C3F4@l */
/* 8058B70C  80 63 00 00 */	lwz r3, 0(r3)
/* 8058B710  3C 80 80 59 */	lis r4, l_bmdidx@ha /* 0x8058C380@ha */
/* 8058B714  38 84 C3 80 */	addi r4, r4, l_bmdidx@l /* 0x8058C380@l */
/* 8058B718  80 84 00 04 */	lwz r4, 4(r4)
/* 8058B71C  7F E5 FB 78 */	mr r5, r31
/* 8058B720  38 C0 00 80 */	li r6, 0x80
/* 8058B724  4B AB 0B C9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058B728  90 7E 06 10 */	stw r3, 0x610(r30)
/* 8058B72C  83 BE 06 1C */	lwz r29, 0x61c(r30)
/* 8058B730  1C 7D 00 34 */	mulli r3, r29, 0x34
/* 8058B734  38 63 00 10 */	addi r3, r3, 0x10
/* 8058B738  4B D4 35 8D */	bl __nwa__FUl
/* 8058B73C  3C 80 80 59 */	lis r4, __ct__10dMdl_obj_cFv@ha /* 0x8058C32C@ha */
/* 8058B740  38 84 C3 2C */	addi r4, r4, __ct__10dMdl_obj_cFv@l /* 0x8058C32C@l */
/* 8058B744  38 A0 00 00 */	li r5, 0
/* 8058B748  38 C0 00 34 */	li r6, 0x34
/* 8058B74C  7F A7 EB 78 */	mr r7, r29
/* 8058B750  4B DD 67 C5 */	bl __construct_new_array
/* 8058B754  90 7E 06 20 */	stw r3, 0x620(r30)
/* 8058B758  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 8058B75C  30 03 FF FF */	addic r0, r3, -1
/* 8058B760  7C 60 19 10 */	subfe r3, r0, r3
lbl_8058B764:
/* 8058B764  39 61 00 20 */	addi r11, r1, 0x20
/* 8058B768  4B DD 6A C1 */	bl _restgpr_29
/* 8058B76C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058B770  7C 08 03 A6 */	mtlr r0
/* 8058B774  38 21 00 20 */	addi r1, r1, 0x20
/* 8058B778  4E 80 00 20 */	blr 
