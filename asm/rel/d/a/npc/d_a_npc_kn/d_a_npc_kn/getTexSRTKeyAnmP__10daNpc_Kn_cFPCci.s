lbl_80A38604:
/* 80A38604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A38608  7C 08 02 A6 */	mflr r0
/* 80A3860C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A38610  7C 83 23 78 */	mr r3, r4
/* 80A38614  7C A4 2B 78 */	mr r4, r5
/* 80A38618  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3861C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A38620  3C A5 00 02 */	addis r5, r5, 2
/* 80A38624  38 C0 00 80 */	li r6, 0x80
/* 80A38628  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A3862C  4B 60 3C C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A38630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A38634  7C 08 03 A6 */	mtlr r0
/* 80A38638  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3863C  4E 80 00 20 */	blr 
