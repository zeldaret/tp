lbl_80C82E38:
/* 80C82E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82E3C  7C 08 02 A6 */	mflr r0
/* 80C82E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C82E48  7C 7F 1B 78 */	mr r31, r3
/* 80C82E4C  3C 60 80 C8 */	lis r3, l_arcName@ha /* 0x80C83854@ha */
/* 80C82E50  38 63 38 54 */	addi r3, r3, l_arcName@l /* 0x80C83854@l */
/* 80C82E54  80 63 00 00 */	lwz r3, 0(r3)
/* 80C82E58  38 80 00 04 */	li r4, 4
/* 80C82E5C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C82E60  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C82E64  3C A5 00 02 */	addis r5, r5, 2
/* 80C82E68  38 C0 00 80 */	li r6, 0x80
/* 80C82E6C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C82E70  4B 3B 94 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C82E74  3C 80 00 08 */	lis r4, 8
/* 80C82E78  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C82E7C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C82E80  4B 39 1D D5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C82E84  90 7F 06 18 */	stw r3, 0x618(r31)
/* 80C82E88  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 80C82E8C  30 03 FF FF */	addic r0, r3, -1
/* 80C82E90  7C 60 19 10 */	subfe r3, r0, r3
/* 80C82E94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C82E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C82E9C  7C 08 03 A6 */	mtlr r0
/* 80C82EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82EA4  4E 80 00 20 */	blr 
