lbl_8068E178:
/* 8068E178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068E17C  7C 08 02 A6 */	mflr r0
/* 8068E180  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068E184  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068E188  93 C1 00 08 */	stw r30, 8(r1)
/* 8068E18C  7C 7E 1B 78 */	mr r30, r3
/* 8068E190  3C 60 80 69 */	lis r3, lit_3788@ha /* 0x80690DD8@ha */
/* 8068E194  3B E3 0D D8 */	addi r31, r3, lit_3788@l /* 0x80690DD8@l */
/* 8068E198  3C 60 80 69 */	lis r3, d_a_e_bs__stringBase0@ha /* 0x80690EB8@ha */
/* 8068E19C  38 63 0E B8 */	addi r3, r3, d_a_e_bs__stringBase0@l /* 0x80690EB8@l */
/* 8068E1A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068E1A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068E1A8  3C A5 00 02 */	addis r5, r5, 2
/* 8068E1AC  38 C0 00 80 */	li r6, 0x80
/* 8068E1B0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8068E1B4  4B 9A E1 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8068E1B8  7C 64 1B 78 */	mr r4, r3
/* 8068E1BC  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8068E1C0  38 A0 00 02 */	li r5, 2
/* 8068E1C4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8068E1C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068E1CC  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8068E1D0  C0 9F 00 40 */	lfs f4, 0x40(r31)
/* 8068E1D4  38 C0 00 00 */	li r6, 0
/* 8068E1D8  4B 98 21 A5 */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 8068E1DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068E1E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8068E1E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068E1E8  7C 08 03 A6 */	mtlr r0
/* 8068E1EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8068E1F0  4E 80 00 20 */	blr 
