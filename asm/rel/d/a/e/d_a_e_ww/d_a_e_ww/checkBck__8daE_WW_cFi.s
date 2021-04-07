lbl_807E7B80:
/* 807E7B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E7B84  7C 08 02 A6 */	mflr r0
/* 807E7B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E7B8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E7B90  7C 7F 1B 78 */	mr r31, r3
/* 807E7B94  3C 60 80 7F */	lis r3, d_a_e_ww__stringBase0@ha /* 0x807EF8B8@ha */
/* 807E7B98  38 63 F8 B8 */	addi r3, r3, d_a_e_ww__stringBase0@l /* 0x807EF8B8@l */
/* 807E7B9C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E7BA0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E7BA4  3C A5 00 02 */	addis r5, r5, 2
/* 807E7BA8  38 C0 00 80 */	li r6, 0x80
/* 807E7BAC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807E7BB0  4B 85 47 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807E7BB4  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 807E7BB8  80 04 00 08 */	lwz r0, 8(r4)
/* 807E7BBC  7C 00 18 50 */	subf r0, r0, r3
/* 807E7BC0  7C 00 00 34 */	cntlzw r0, r0
/* 807E7BC4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 807E7BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E7BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E7BD0  7C 08 03 A6 */	mtlr r0
/* 807E7BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 807E7BD8  4E 80 00 20 */	blr 
