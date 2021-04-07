lbl_80118FF8:
/* 80118FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80118FFC  7C 08 02 A6 */	mflr r0
/* 80119000  90 01 00 14 */	stw r0, 0x14(r1)
/* 80119004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80119008  93 C1 00 08 */	stw r30, 8(r1)
/* 8011900C  7C 7E 1B 78 */	mr r30, r3
/* 80119010  7C 9F 23 79 */	or. r31, r4, r4
/* 80119014  41 82 00 78 */	beq lbl_8011908C
/* 80119018  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 8011901C  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l /* 0x80406194@l */
/* 80119020  7C A4 2B 78 */	mr r4, r5
/* 80119024  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80119028  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011902C  3C A5 00 02 */	addis r5, r5, 2
/* 80119030  38 C0 00 80 */	li r6, 0x80
/* 80119034  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80119038  4B F2 33 C9 */	bl getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 8011903C  7C 64 1B 79 */	or. r4, r3, r3
/* 80119040  41 82 00 4C */	beq lbl_8011908C
/* 80119044  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80119048  7C 00 20 40 */	cmplw r0, r4
/* 8011904C  41 82 00 40 */	beq lbl_8011908C
/* 80119050  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 80119054  7C 00 20 40 */	cmplw r0, r4
/* 80119058  40 82 00 14 */	bne lbl_8011906C
/* 8011905C  80 7E 06 B0 */	lwz r3, 0x6b0(r30)
/* 80119060  38 80 00 00 */	li r4, 0
/* 80119064  4B EF 49 2D */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80119068  48 00 00 24 */	b lbl_8011908C
lbl_8011906C:
/* 8011906C  7F E3 FB 78 */	mr r3, r31
/* 80119070  38 A0 00 01 */	li r5, 1
/* 80119074  38 C0 FF FF */	li r6, -1
/* 80119078  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011907C  38 E0 00 00 */	li r7, 0
/* 80119080  39 00 FF FF */	li r8, -1
/* 80119084  39 20 00 01 */	li r9, 1
/* 80119088  4B EF 47 55 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
lbl_8011908C:
/* 8011908C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80119090  83 C1 00 08 */	lwz r30, 8(r1)
/* 80119094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80119098  7C 08 03 A6 */	mtlr r0
/* 8011909C  38 21 00 10 */	addi r1, r1, 0x10
/* 801190A0  4E 80 00 20 */	blr 
