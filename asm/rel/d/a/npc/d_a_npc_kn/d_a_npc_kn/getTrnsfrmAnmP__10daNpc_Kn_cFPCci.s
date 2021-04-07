lbl_80A38550:
/* 80A38550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A38554  7C 08 02 A6 */	mflr r0
/* 80A38558  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3855C  7C 83 23 78 */	mr r3, r4
/* 80A38560  7C A4 2B 78 */	mr r4, r5
/* 80A38564  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A38568  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3856C  3C A5 00 02 */	addis r5, r5, 2
/* 80A38570  38 C0 00 80 */	li r6, 0x80
/* 80A38574  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A38578  4B 60 3D 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A3857C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A38580  7C 08 03 A6 */	mtlr r0
/* 80A38584  38 21 00 10 */	addi r1, r1, 0x10
/* 80A38588  4E 80 00 20 */	blr 
