lbl_80599888:
/* 80599888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059988C  7C 08 02 A6 */	mflr r0
/* 80599890  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80599898  7C 7F 1B 78 */	mr r31, r3
/* 8059989C  48 00 02 C1 */	bl getResName__13daObj_Stick_cFv
/* 805998A0  38 80 00 03 */	li r4, 3
/* 805998A4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805998A8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805998AC  3C A5 00 02 */	addis r5, r5, 2
/* 805998B0  38 C0 00 80 */	li r6, 0x80
/* 805998B4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805998B8  4B AA 2A 35 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805998BC  28 03 00 00 */	cmplwi r3, 0
/* 805998C0  40 82 00 0C */	bne lbl_805998CC
/* 805998C4  38 60 00 00 */	li r3, 0
/* 805998C8  48 00 00 24 */	b lbl_805998EC
lbl_805998CC:
/* 805998CC  3C 80 00 08 */	lis r4, 8
/* 805998D0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 805998D4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 805998D8  4B A7 B3 7D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805998DC  90 7F 05 74 */	stw r3, 0x574(r31)
/* 805998E0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 805998E4  30 03 FF FF */	addic r0, r3, -1
/* 805998E8  7C 60 19 10 */	subfe r3, r0, r3
lbl_805998EC:
/* 805998EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805998F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805998F4  7C 08 03 A6 */	mtlr r0
/* 805998F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805998FC  4E 80 00 20 */	blr 
