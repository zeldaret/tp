lbl_804C4394:
/* 804C4394  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C4398  7C 08 02 A6 */	mflr r0
/* 804C439C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C43A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804C43A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804C43A8  7C 9E 23 78 */	mr r30, r4
/* 804C43AC  3C 60 80 4C */	lis r3, l_arcName@ha
/* 804C43B0  38 63 64 D4 */	addi r3, r3, l_arcName@l
/* 804C43B4  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 804C43B8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804C43BC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804C43C0  3C A5 00 02 */	addis r5, r5, 2
/* 804C43C4  38 C0 00 80 */	li r6, 0x80
/* 804C43C8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804C43CC  4B B7 7F 20 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804C43D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 804C43D4  40 82 00 0C */	bne lbl_804C43E0
/* 804C43D8  38 60 00 00 */	li r3, 0
/* 804C43DC  48 00 00 50 */	b lbl_804C442C
lbl_804C43E0:
/* 804C43E0  7F C4 F3 78 */	mr r4, r30
/* 804C43E4  4B E6 74 98 */	b searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 804C43E8  38 7E 00 58 */	addi r3, r30, 0x58
/* 804C43EC  7F E4 FB 78 */	mr r4, r31
/* 804C43F0  4B E6 BA 80 */	b entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 804C43F4  A8 1F 00 06 */	lha r0, 6(r31)
/* 804C43F8  3C 60 80 4C */	lis r3, lit_4305@ha
/* 804C43FC  C8 23 65 88 */	lfd f1, lit_4305@l(r3)
/* 804C4400  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C4404  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C4408  3C 00 43 30 */	lis r0, 0x4330
/* 804C440C  90 01 00 08 */	stw r0, 8(r1)
/* 804C4410  C8 01 00 08 */	lfd f0, 8(r1)
/* 804C4414  EC 20 08 28 */	fsubs f1, f0, f1
/* 804C4418  3C 60 80 4C */	lis r3, lit_5079@ha
/* 804C441C  C0 03 68 68 */	lfs f0, lit_5079@l(r3)
/* 804C4420  EC 01 00 28 */	fsubs f0, f1, f0
/* 804C4424  D0 1F 00 08 */	stfs f0, 8(r31)
/* 804C4428  7F E3 FB 78 */	mr r3, r31
lbl_804C442C:
/* 804C442C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804C4430  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804C4434  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C4438  7C 08 03 A6 */	mtlr r0
/* 804C443C  38 21 00 20 */	addi r1, r1, 0x20
/* 804C4440  4E 80 00 20 */	blr 
