lbl_804DF0D8:
/* 804DF0D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF0DC  7C 08 02 A6 */	mflr r0
/* 804DF0E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF0E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DF0E8  7C 7F 1B 78 */	mr r31, r3
/* 804DF0EC  80 63 05 A0 */	lwz r3, 0x5a0(r3)
/* 804DF0F0  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 804DF0F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804DF0F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804DF0FC  3C A5 00 02 */	addis r5, r5, 2
/* 804DF100  38 C0 00 80 */	li r6, 0x80
/* 804DF104  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804DF108  4B B5 D1 E4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804DF10C  7C 65 1B 78 */	mr r5, r3
/* 804DF110  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 804DF114  80 83 00 04 */	lwz r4, 4(r3)
/* 804DF118  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 804DF11C  38 84 00 58 */	addi r4, r4, 0x58
/* 804DF120  38 C0 00 01 */	li r6, 1
/* 804DF124  38 E0 FF FF */	li r7, -1
/* 804DF128  3D 00 80 4E */	lis r8, lit_4206@ha
/* 804DF12C  C0 28 F9 00 */	lfs f1, lit_4206@l(r8)
/* 804DF130  39 00 00 00 */	li r8, 0
/* 804DF134  39 20 FF FF */	li r9, -1
/* 804DF138  4B B2 E5 D4 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 804DF13C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DF140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF144  7C 08 03 A6 */	mtlr r0
/* 804DF148  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF14C  4E 80 00 20 */	blr 
