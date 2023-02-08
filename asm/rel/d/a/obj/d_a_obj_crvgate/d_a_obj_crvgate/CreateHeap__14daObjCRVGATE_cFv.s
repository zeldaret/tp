lbl_80BD2670:
/* 80BD2670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD2674  7C 08 02 A6 */	mflr r0
/* 80BD2678  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD267C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD2680  93 C1 00 08 */	stw r30, 8(r1)
/* 80BD2684  7C 7E 1B 78 */	mr r30, r3
/* 80BD2688  3C 60 80 BD */	lis r3, l_arcName@ha /* 0x80BD31F4@ha */
/* 80BD268C  38 63 31 F4 */	addi r3, r3, l_arcName@l /* 0x80BD31F4@l */
/* 80BD2690  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD2694  3C 80 80 BD */	lis r4, d_a_obj_crvgate__stringBase0@ha /* 0x80BD31BC@ha */
/* 80BD2698  38 84 31 BC */	addi r4, r4, d_a_obj_crvgate__stringBase0@l /* 0x80BD31BC@l */
/* 80BD269C  38 84 00 08 */	addi r4, r4, 8
/* 80BD26A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD26A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD26A8  3F E5 00 02 */	addis r31, r5, 2
/* 80BD26AC  3B FF C2 F8 */	addi r31, r31, -15624
/* 80BD26B0  7F E5 FB 78 */	mr r5, r31
/* 80BD26B4  38 C0 00 80 */	li r6, 0x80
/* 80BD26B8  4B 46 9C C5 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BD26BC  3C 80 00 08 */	lis r4, 8
/* 80BD26C0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BD26C4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BD26C8  4B 44 25 8D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BD26CC  90 7E 06 74 */	stw r3, 0x674(r30)
/* 80BD26D0  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 80BD26D4  28 00 00 00 */	cmplwi r0, 0
/* 80BD26D8  40 82 00 0C */	bne lbl_80BD26E4
/* 80BD26DC  38 60 00 00 */	li r3, 0
/* 80BD26E0  48 00 00 60 */	b lbl_80BD2740
lbl_80BD26E4:
/* 80BD26E4  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80BD26E8  28 00 00 00 */	cmplwi r0, 0
/* 80BD26EC  40 82 00 3C */	bne lbl_80BD2728
/* 80BD26F0  3C 60 80 BD */	lis r3, l_arcName@ha /* 0x80BD31F4@ha */
/* 80BD26F4  38 63 31 F4 */	addi r3, r3, l_arcName@l /* 0x80BD31F4@l */
/* 80BD26F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD26FC  3C 80 80 BD */	lis r4, d_a_obj_crvgate__stringBase0@ha /* 0x80BD31BC@ha */
/* 80BD2700  38 84 31 BC */	addi r4, r4, d_a_obj_crvgate__stringBase0@l /* 0x80BD31BC@l */
/* 80BD2704  38 84 00 18 */	addi r4, r4, 0x18
/* 80BD2708  7F E5 FB 78 */	mr r5, r31
/* 80BD270C  38 C0 00 80 */	li r6, 0x80
/* 80BD2710  4B 46 9C 6D */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BD2714  3C 80 00 08 */	lis r4, 8
/* 80BD2718  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BD271C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BD2720  4B 44 25 35 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BD2724  90 7E 06 78 */	stw r3, 0x678(r30)
lbl_80BD2728:
/* 80BD2728  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 80BD272C  28 00 00 00 */	cmplwi r0, 0
/* 80BD2730  40 82 00 0C */	bne lbl_80BD273C
/* 80BD2734  38 60 00 00 */	li r3, 0
/* 80BD2738  48 00 00 08 */	b lbl_80BD2740
lbl_80BD273C:
/* 80BD273C  38 60 00 01 */	li r3, 1
lbl_80BD2740:
/* 80BD2740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD2744  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BD2748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD274C  7C 08 03 A6 */	mtlr r0
/* 80BD2750  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD2754  4E 80 00 20 */	blr 
