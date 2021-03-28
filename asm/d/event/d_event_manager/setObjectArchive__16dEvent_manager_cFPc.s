lbl_80046800:
/* 80046800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80046804  7C 08 02 A6 */	mflr r0
/* 80046808  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004680C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80046810  93 C1 00 08 */	stw r30, 8(r1)
/* 80046814  7C 7E 1B 78 */	mr r30, r3
/* 80046818  3B E0 00 00 */	li r31, 0
/* 8004681C  28 04 00 00 */	cmplwi r4, 0
/* 80046820  41 82 00 40 */	beq lbl_80046860
/* 80046824  7C 83 23 78 */	mr r3, r4
/* 80046828  3C 80 80 38 */	lis r4, data_80379F50@ha
/* 8004682C  38 84 9F 50 */	addi r4, r4, data_80379F50@l
/* 80046830  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80046834  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80046838  3C A5 00 02 */	addis r5, r5, 2
/* 8004683C  38 C0 00 80 */	li r6, 0x80
/* 80046840  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80046844  4B FF 5B 39 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80046848  7C 64 1B 78 */	mr r4, r3
/* 8004684C  7C 9F 23 78 */	mr r31, r4
/* 80046850  38 7E 00 48 */	addi r3, r30, 0x48
/* 80046854  38 A0 FF FF */	li r5, -1
/* 80046858  4B FF F9 15 */	bl init__11dEvDtBase_cFPci
/* 8004685C  48 00 00 0C */	b lbl_80046868
lbl_80046860:
/* 80046860  38 7E 00 48 */	addi r3, r30, 0x48
/* 80046864  4B FF F8 D5 */	bl init__11dEvDtBase_cFv
lbl_80046868:
/* 80046868  30 1F FF FF */	addic r0, r31, -1
/* 8004686C  7C 60 F9 10 */	subfe r3, r0, r31
/* 80046870  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80046874  83 C1 00 08 */	lwz r30, 8(r1)
/* 80046878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004687C  7C 08 03 A6 */	mtlr r0
/* 80046880  38 21 00 10 */	addi r1, r1, 0x10
/* 80046884  4E 80 00 20 */	blr 
