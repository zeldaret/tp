lbl_80CCDD00:
/* 80CCDD00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCDD04  7C 08 02 A6 */	mflr r0
/* 80CCDD08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCDD0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCDD10  7C 7F 1B 78 */	mr r31, r3
/* 80CCDD14  88 03 05 B0 */	lbz r0, 0x5b0(r3)
/* 80CCDD18  54 05 18 38 */	slwi r5, r0, 3
/* 80CCDD1C  3C 60 80 CD */	lis r3, l_bmdData@ha /* 0x80CCE19C@ha */
/* 80CCDD20  38 83 E1 9C */	addi r4, r3, l_bmdData@l /* 0x80CCE19C@l */
/* 80CCDD24  7C 64 2A 14 */	add r3, r4, r5
/* 80CCDD28  80 03 00 04 */	lwz r0, 4(r3)
/* 80CCDD2C  54 00 10 3A */	slwi r0, r0, 2
/* 80CCDD30  3C 60 80 CD */	lis r3, l_resNameList@ha /* 0x80CCE1AC@ha */
/* 80CCDD34  38 63 E1 AC */	addi r3, r3, l_resNameList@l /* 0x80CCE1AC@l */
/* 80CCDD38  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CCDD3C  7C 84 28 2E */	lwzx r4, r4, r5
/* 80CCDD40  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCDD44  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCDD48  3C A5 00 02 */	addis r5, r5, 2
/* 80CCDD4C  38 C0 00 80 */	li r6, 0x80
/* 80CCDD50  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CCDD54  4B 36 E5 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CCDD58  3C 80 00 08 */	lis r4, 8
/* 80CCDD5C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CCDD60  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CCDD64  4B 34 6E F1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CCDD68  90 7F 05 AC */	stw r3, 0x5ac(r31)
/* 80CCDD6C  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CCDD70  30 03 FF FF */	addic r0, r3, -1
/* 80CCDD74  7C 60 19 10 */	subfe r3, r0, r3
/* 80CCDD78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCDD7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCDD80  7C 08 03 A6 */	mtlr r0
/* 80CCDD84  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCDD88  4E 80 00 20 */	blr 
