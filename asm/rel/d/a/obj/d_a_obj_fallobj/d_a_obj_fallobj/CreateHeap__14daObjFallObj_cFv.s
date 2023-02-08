lbl_80BE3C28:
/* 80BE3C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE3C2C  7C 08 02 A6 */	mflr r0
/* 80BE3C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE3C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE3C38  7C 7F 1B 78 */	mr r31, r3
/* 80BE3C3C  3C 60 80 BE */	lis r3, l_arcName@ha /* 0x80BE4B20@ha */
/* 80BE3C40  38 63 4B 20 */	addi r3, r3, l_arcName@l /* 0x80BE4B20@l */
/* 80BE3C44  80 63 00 00 */	lwz r3, 0(r3)
/* 80BE3C48  38 80 00 04 */	li r4, 4
/* 80BE3C4C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE3C50  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE3C54  3C A5 00 02 */	addis r5, r5, 2
/* 80BE3C58  38 C0 00 80 */	li r6, 0x80
/* 80BE3C5C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BE3C60  4B 45 86 8D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BE3C64  3C 80 00 08 */	lis r4, 8
/* 80BE3C68  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BE3C6C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BE3C70  4B 43 0F E5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BE3C74  90 7F 05 E8 */	stw r3, 0x5e8(r31)
/* 80BE3C78  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BE3C7C  30 03 FF FF */	addic r0, r3, -1
/* 80BE3C80  7C 60 19 10 */	subfe r3, r0, r3
/* 80BE3C84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE3C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE3C8C  7C 08 03 A6 */	mtlr r0
/* 80BE3C90  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE3C94  4E 80 00 20 */	blr 
