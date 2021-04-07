lbl_80871F08:
/* 80871F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80871F0C  7C 08 02 A6 */	mflr r0
/* 80871F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80871F14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80871F18  7C 7F 1B 78 */	mr r31, r3
/* 80871F1C  3C 60 80 87 */	lis r3, l_arcName@ha /* 0x80872660@ha */
/* 80871F20  38 63 26 60 */	addi r3, r3, l_arcName@l /* 0x80872660@l */
/* 80871F24  80 63 00 00 */	lwz r3, 0(r3)
/* 80871F28  38 80 00 04 */	li r4, 4
/* 80871F2C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80871F30  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80871F34  3C A5 00 02 */	addis r5, r5, 2
/* 80871F38  38 C0 00 80 */	li r6, 0x80
/* 80871F3C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80871F40  4B 7C A3 AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80871F44  3C 80 00 08 */	lis r4, 8
/* 80871F48  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80871F4C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80871F50  4B 7A 2D 05 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80871F54  90 7F 06 F8 */	stw r3, 0x6f8(r31)
/* 80871F58  80 7F 06 F8 */	lwz r3, 0x6f8(r31)
/* 80871F5C  30 03 FF FF */	addic r0, r3, -1
/* 80871F60  7C 60 19 10 */	subfe r3, r0, r3
/* 80871F64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80871F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80871F6C  7C 08 03 A6 */	mtlr r0
/* 80871F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80871F74  4E 80 00 20 */	blr 
