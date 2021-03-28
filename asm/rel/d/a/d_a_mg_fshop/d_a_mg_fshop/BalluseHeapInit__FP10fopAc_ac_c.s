lbl_8086F5C8:
/* 8086F5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8086F5CC  7C 08 02 A6 */	mflr r0
/* 8086F5D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086F5D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8086F5D8  7C 7F 1B 78 */	mr r31, r3
/* 8086F5DC  3C 60 80 87 */	lis r3, stringBase0@ha
/* 8086F5E0  38 63 02 7C */	addi r3, r3, stringBase0@l
/* 8086F5E4  38 80 00 09 */	li r4, 9
/* 8086F5E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8086F5EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8086F5F0  3C A5 00 02 */	addis r5, r5, 2
/* 8086F5F4  38 C0 00 80 */	li r6, 0x80
/* 8086F5F8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8086F5FC  4B 7C CC F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086F600  3C 80 00 08 */	lis r4, 8
/* 8086F604  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8086F608  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8086F60C  4B 7A 56 48 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8086F610  90 7F 40 70 */	stw r3, 0x4070(r31)
/* 8086F614  80 7F 40 70 */	lwz r3, 0x4070(r31)
/* 8086F618  30 03 FF FF */	addic r0, r3, -1
/* 8086F61C  7C 60 19 10 */	subfe r3, r0, r3
/* 8086F620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8086F624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086F628  7C 08 03 A6 */	mtlr r0
/* 8086F62C  38 21 00 10 */	addi r1, r1, 0x10
/* 8086F630  4E 80 00 20 */	blr 
