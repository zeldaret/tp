lbl_808475F0:
/* 808475F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808475F4  7C 08 02 A6 */	mflr r0
/* 808475F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808475FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80847600  7C 7F 1B 78 */	mr r31, r3
/* 80847604  98 A3 06 DE */	stb r5, 0x6de(r3)
/* 80847608  3C 60 80 85 */	lis r3, l_arcName@ha
/* 8084760C  38 63 8E 3C */	addi r3, r3, l_arcName@l
/* 80847610  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80847614  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80847618  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8084761C  3C A5 00 02 */	addis r5, r5, 2
/* 80847620  38 C0 00 80 */	li r6, 0x80
/* 80847624  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80847628  4B 7F 4C C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8084762C  7C 65 1B 78 */	mr r5, r3
/* 80847630  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80847634  80 83 00 04 */	lwz r4, 4(r3)
/* 80847638  38 7F 05 90 */	addi r3, r31, 0x590
/* 8084763C  38 84 00 58 */	addi r4, r4, 0x58
/* 80847640  38 C0 00 01 */	li r6, 1
/* 80847644  38 E0 FF FF */	li r7, -1
/* 80847648  3D 00 80 85 */	lis r8, lit_3722@ha
/* 8084764C  C0 28 8E 58 */	lfs f1, lit_3722@l(r8)
/* 80847650  39 00 00 00 */	li r8, 0
/* 80847654  39 20 FF FF */	li r9, -1
/* 80847658  4B 7C 5F E4 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8084765C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80847660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80847664  7C 08 03 A6 */	mtlr r0
/* 80847668  38 21 00 10 */	addi r1, r1, 0x10
/* 8084766C  4E 80 00 20 */	blr 
