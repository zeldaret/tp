lbl_80655E5C:
/* 80655E5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80655E60  7C 08 02 A6 */	mflr r0
/* 80655E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80655E68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80655E6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80655E70  7C 7E 1B 78 */	mr r30, r3
/* 80655E74  48 00 03 25 */	bl getBmdName__10daBullet_cFv
/* 80655E78  7C 7F 1B 78 */	mr r31, r3
/* 80655E7C  7F C3 F3 78 */	mr r3, r30
/* 80655E80  48 00 03 01 */	bl getResName__10daBullet_cFv
/* 80655E84  7F E4 FB 78 */	mr r4, r31
/* 80655E88  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80655E8C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80655E90  3C A5 00 02 */	addis r5, r5, 2
/* 80655E94  38 C0 00 80 */	li r6, 0x80
/* 80655E98  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80655E9C  4B 9E 64 E1 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80655EA0  3C 80 00 08 */	lis r4, 8
/* 80655EA4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80655EA8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80655EAC  4B 9B ED A9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80655EB0  90 7E 05 70 */	stw r3, 0x570(r30)
/* 80655EB4  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80655EB8  30 03 FF FF */	addic r0, r3, -1
/* 80655EBC  7C 00 19 10 */	subfe r0, r0, r3
/* 80655EC0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80655EC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80655EC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80655ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80655ED0  7C 08 03 A6 */	mtlr r0
/* 80655ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80655ED8  4E 80 00 20 */	blr 
