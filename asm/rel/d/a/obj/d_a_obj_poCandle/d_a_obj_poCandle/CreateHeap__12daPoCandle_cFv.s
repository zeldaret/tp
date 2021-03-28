lbl_80CB1B6C:
/* 80CB1B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB1B70  7C 08 02 A6 */	mflr r0
/* 80CB1B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB1B78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB1B7C  7C 7F 1B 78 */	mr r31, r3
/* 80CB1B80  3C 60 80 CB */	lis r3, stringBase0@ha
/* 80CB1B84  38 63 26 E8 */	addi r3, r3, stringBase0@l
/* 80CB1B88  38 80 00 04 */	li r4, 4
/* 80CB1B8C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CB1B90  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CB1B94  3C A5 00 02 */	addis r5, r5, 2
/* 80CB1B98  38 C0 00 80 */	li r6, 0x80
/* 80CB1B9C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CB1BA0  4B 38 A7 4C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB1BA4  3C 80 00 08 */	lis r4, 8
/* 80CB1BA8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CB1BAC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CB1BB0  4B 36 30 A4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CB1BB4  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 80CB1BB8  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80CB1BBC  30 03 FF FF */	addic r0, r3, -1
/* 80CB1BC0  7C 60 19 10 */	subfe r3, r0, r3
/* 80CB1BC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB1BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB1BCC  7C 08 03 A6 */	mtlr r0
/* 80CB1BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB1BD4  4E 80 00 20 */	blr 
