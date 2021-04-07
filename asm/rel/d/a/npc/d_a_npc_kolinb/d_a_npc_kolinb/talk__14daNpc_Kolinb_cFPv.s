lbl_80A475D4:
/* 80A475D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A475D8  7C 08 02 A6 */	mflr r0
/* 80A475DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A475E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A475E4  7C 7F 1B 78 */	mr r31, r3
/* 80A475E8  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A475EC  2C 00 00 02 */	cmpwi r0, 2
/* 80A475F0  41 82 00 2C */	beq lbl_80A4761C
/* 80A475F4  40 80 00 80 */	bge lbl_80A47674
/* 80A475F8  2C 00 00 00 */	cmpwi r0, 0
/* 80A475FC  40 80 00 0C */	bge lbl_80A47608
/* 80A47600  48 00 00 74 */	b lbl_80A47674
/* 80A47604  48 00 00 70 */	b lbl_80A47674
lbl_80A47608:
/* 80A47608  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80A4760C  38 A0 00 00 */	li r5, 0
/* 80A47610  4B 70 45 E1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A47614  38 00 00 02 */	li r0, 2
/* 80A47618  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A4761C:
/* 80A4761C  7F E3 FB 78 */	mr r3, r31
/* 80A47620  38 80 00 00 */	li r4, 0
/* 80A47624  38 A0 00 00 */	li r5, 0
/* 80A47628  38 C0 00 00 */	li r6, 0
/* 80A4762C  38 E0 00 00 */	li r7, 0
/* 80A47630  4B 70 46 49 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A47634  2C 03 00 00 */	cmpwi r3, 0
/* 80A47638  41 82 00 3C */	beq lbl_80A47674
/* 80A4763C  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80A47640  28 00 00 01 */	cmplwi r0, 1
/* 80A47644  40 82 00 30 */	bne lbl_80A47674
/* 80A47648  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A4764C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A47650  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A47654  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A47658  4B 6F E0 89 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A4765C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A47660  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A47664  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A47668  4B 5F AE 01 */	bl reset__14dEvt_control_cFv
/* 80A4766C  38 00 00 03 */	li r0, 3
/* 80A47670  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A47674:
/* 80A47674  38 60 00 00 */	li r3, 0
/* 80A47678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A4767C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A47680  7C 08 03 A6 */	mtlr r0
/* 80A47684  38 21 00 10 */	addi r1, r1, 0x10
/* 80A47688  4E 80 00 20 */	blr 
