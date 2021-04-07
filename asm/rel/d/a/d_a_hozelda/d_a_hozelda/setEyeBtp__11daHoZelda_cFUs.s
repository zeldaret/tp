lbl_80847574:
/* 80847574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80847578  7C 08 02 A6 */	mflr r0
/* 8084757C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80847580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80847584  7C 7F 1B 78 */	mr r31, r3
/* 80847588  3C 60 80 85 */	lis r3, l_arcName@ha /* 0x80848E3C@ha */
/* 8084758C  38 63 8E 3C */	addi r3, r3, l_arcName@l /* 0x80848E3C@l */
/* 80847590  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80847594  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80847598  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084759C  3C A5 00 02 */	addis r5, r5, 2
/* 808475A0  38 C0 00 80 */	li r6, 0x80
/* 808475A4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 808475A8  4B 7F 4D 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 808475AC  7C 65 1B 78 */	mr r5, r3
/* 808475B0  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 808475B4  80 83 00 04 */	lwz r4, 4(r3)
/* 808475B8  38 7F 05 78 */	addi r3, r31, 0x578
/* 808475BC  38 84 00 58 */	addi r4, r4, 0x58
/* 808475C0  38 C0 00 01 */	li r6, 1
/* 808475C4  38 E0 FF FF */	li r7, -1
/* 808475C8  3D 00 80 85 */	lis r8, lit_3722@ha /* 0x80848E58@ha */
/* 808475CC  C0 28 8E 58 */	lfs f1, lit_3722@l(r8)  /* 0x80848E58@l */
/* 808475D0  39 00 00 00 */	li r8, 0
/* 808475D4  39 20 FF FF */	li r9, -1
/* 808475D8  4B 7C 5F 75 */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 808475DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808475E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808475E4  7C 08 03 A6 */	mtlr r0
/* 808475E8  38 21 00 10 */	addi r1, r1, 0x10
/* 808475EC  4E 80 00 20 */	blr 
