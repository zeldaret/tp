lbl_80724E58:
/* 80724E58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80724E5C  7C 08 02 A6 */	mflr r0
/* 80724E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80724E64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80724E68  7C 7F 1B 78 */	mr r31, r3
/* 80724E6C  38 80 00 04 */	li r4, 4
/* 80724E70  88 03 04 99 */	lbz r0, 0x499(r3)
/* 80724E74  2C 00 00 01 */	cmpwi r0, 1
/* 80724E78  40 82 00 08 */	bne lbl_80724E80
/* 80724E7C  38 80 00 03 */	li r4, 3
lbl_80724E80:
/* 80724E80  3C 60 80 72 */	lis r3, d_a_e_mm_mt__stringBase0@ha /* 0x8072592C@ha */
/* 80724E84  38 63 59 2C */	addi r3, r3, d_a_e_mm_mt__stringBase0@l /* 0x8072592C@l */
/* 80724E88  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80724E8C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80724E90  3C A5 00 02 */	addis r5, r5, 2
/* 80724E94  38 C0 00 80 */	li r6, 0x80
/* 80724E98  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80724E9C  4B 91 74 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80724EA0  3C 80 00 08 */	lis r4, 8
/* 80724EA4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80724EA8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80724EAC  4B 8E FD A9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80724EB0  90 7F 06 5C */	stw r3, 0x65c(r31)
/* 80724EB4  80 1F 06 5C */	lwz r0, 0x65c(r31)
/* 80724EB8  28 00 00 00 */	cmplwi r0, 0
/* 80724EBC  40 82 00 0C */	bne lbl_80724EC8
/* 80724EC0  38 60 00 00 */	li r3, 0
/* 80724EC4  48 00 00 08 */	b lbl_80724ECC
lbl_80724EC8:
/* 80724EC8  38 60 00 01 */	li r3, 1
lbl_80724ECC:
/* 80724ECC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80724ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80724ED4  7C 08 03 A6 */	mtlr r0
/* 80724ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 80724EDC  4E 80 00 20 */	blr 
