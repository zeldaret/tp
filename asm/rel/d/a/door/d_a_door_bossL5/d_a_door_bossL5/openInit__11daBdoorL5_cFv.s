lbl_806715D0:
/* 806715D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806715D4  7C 08 02 A6 */	mflr r0
/* 806715D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806715DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806715E0  93 C1 00 08 */	stw r30, 8(r1)
/* 806715E4  7C 7E 1B 78 */	mr r30, r3
/* 806715E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806715EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806715F0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806715F4  80 9E 05 88 */	lwz r4, 0x588(r30)
/* 806715F8  4B A0 2C 58 */	b Release__4cBgSFP9dBgW_Base
/* 806715FC  7F C3 F3 78 */	mr r3, r30
/* 80671600  4B FF F6 85 */	bl getOpenAnm__11daBdoorL5_cFv
/* 80671604  7C 7F 1B 78 */	mr r31, r3
/* 80671608  7F C3 F3 78 */	mr r3, r30
/* 8067160C  4B FF F6 69 */	bl getAnmArcName__11daBdoorL5_cFv
/* 80671610  7F E4 FB 78 */	mr r4, r31
/* 80671614  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80671618  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8067161C  3C A5 00 02 */	addis r5, r5, 2
/* 80671620  38 C0 00 80 */	li r6, 0x80
/* 80671624  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80671628  4B 9C AC C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8067162C  7C 64 1B 78 */	mr r4, r3
/* 80671630  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80671634  38 A0 00 01 */	li r5, 1
/* 80671638  38 C0 00 00 */	li r6, 0
/* 8067163C  3C E0 80 67 */	lis r7, lit_3757@ha
/* 80671640  C0 27 25 0C */	lfs f1, lit_3757@l(r7)
/* 80671644  38 E0 00 00 */	li r7, 0
/* 80671648  39 00 FF FF */	li r8, -1
/* 8067164C  39 20 00 01 */	li r9, 1
/* 80671650  4B 99 C1 8C */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80671654  38 60 00 01 */	li r3, 1
/* 80671658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067165C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80671660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80671664  7C 08 03 A6 */	mtlr r0
/* 80671668  38 21 00 10 */	addi r1, r1, 0x10
/* 8067166C  4E 80 00 20 */	blr 
