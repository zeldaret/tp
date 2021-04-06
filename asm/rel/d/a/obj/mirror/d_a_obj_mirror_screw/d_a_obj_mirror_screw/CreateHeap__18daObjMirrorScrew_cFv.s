lbl_80C992F4:
/* 80C992F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C992F8  7C 08 02 A6 */	mflr r0
/* 80C992FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C99300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C99304  7C 7F 1B 78 */	mr r31, r3
/* 80C99308  3C 60 80 CA */	lis r3, l_arcName@ha /* 0x80C997C0@ha */
/* 80C9930C  38 63 97 C0 */	addi r3, r3, l_arcName@l /* 0x80C997C0@l */
/* 80C99310  80 63 00 00 */	lwz r3, 0(r3)
/* 80C99314  38 80 00 04 */	li r4, 4
/* 80C99318  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9931C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C99320  3C A5 00 02 */	addis r5, r5, 2
/* 80C99324  38 C0 00 80 */	li r6, 0x80
/* 80C99328  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C9932C  4B 3A 2F C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C99330  3C 80 00 08 */	lis r4, 8
/* 80C99334  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C99338  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C9933C  4B 37 B9 19 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C99340  90 7F 05 A0 */	stw r3, 0x5a0(r31)
/* 80C99344  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80C99348  30 03 FF FF */	addic r0, r3, -1
/* 80C9934C  7C 60 19 10 */	subfe r3, r0, r3
/* 80C99350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C99354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C99358  7C 08 03 A6 */	mtlr r0
/* 80C9935C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C99360  4E 80 00 20 */	blr 
