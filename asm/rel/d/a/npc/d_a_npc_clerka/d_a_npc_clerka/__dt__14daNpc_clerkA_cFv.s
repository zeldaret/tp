lbl_8099252C:
/* 8099252C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80992530  7C 08 02 A6 */	mflr r0
/* 80992534  90 01 00 14 */	stw r0, 0x14(r1)
/* 80992538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099253C  93 C1 00 08 */	stw r30, 8(r1)
/* 80992540  7C 7E 1B 79 */	or. r30, r3, r3
/* 80992544  7C 9F 23 78 */	mr r31, r4
/* 80992548  41 82 01 08 */	beq lbl_80992650
/* 8099254C  3C 80 80 99 */	lis r4, __vt__14daNpc_clerkA_c@ha /* 0x80995D3C@ha */
/* 80992550  38 04 5D 3C */	addi r0, r4, __vt__14daNpc_clerkA_c@l /* 0x80995D3C@l */
/* 80992554  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80992558  4B 80 80 0D */	bl deleteObject__13dShopSystem_cFv
/* 8099255C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80992560  28 00 00 00 */	cmplwi r0, 0
/* 80992564  41 82 00 0C */	beq lbl_80992570
/* 80992568  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8099256C  4B 67 ED A5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80992570:
/* 80992570  7F C3 F3 78 */	mr r3, r30
/* 80992574  88 1E 10 BC */	lbz r0, 0x10bc(r30)
/* 80992578  54 00 10 3A */	slwi r0, r0, 2
/* 8099257C  3C 80 80 99 */	lis r4, l_loadResPtrnList@ha /* 0x809959E0@ha */
/* 80992580  38 84 59 E0 */	addi r4, r4, l_loadResPtrnList@l /* 0x809959E0@l */
/* 80992584  7C 84 00 2E */	lwzx r4, r4, r0
/* 80992588  3C A0 80 99 */	lis r5, l_resNameList@ha /* 0x809959D4@ha */
/* 8099258C  38 A5 59 D4 */	addi r5, r5, l_resNameList@l /* 0x809959D4@l */
/* 80992590  4B 7B 5F 1D */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80992594  38 7E 10 C0 */	addi r3, r30, 0x10c0
/* 80992598  3C 80 80 99 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x809948E4@ha */
/* 8099259C  38 84 48 E4 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x809948E4@l */
/* 809925A0  38 A0 00 08 */	li r5, 8
/* 809925A4  38 C0 00 01 */	li r6, 1
/* 809925A8  4B 9C F7 41 */	bl __destroy_arr
/* 809925AC  34 1E 0F 80 */	addic. r0, r30, 0xf80
/* 809925B0  41 82 00 84 */	beq lbl_80992634
/* 809925B4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 809925B8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 809925BC  90 7E 0F BC */	stw r3, 0xfbc(r30)
/* 809925C0  38 03 00 2C */	addi r0, r3, 0x2c
/* 809925C4  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 809925C8  38 03 00 84 */	addi r0, r3, 0x84
/* 809925CC  90 1E 10 B8 */	stw r0, 0x10b8(r30)
/* 809925D0  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 809925D4  41 82 00 54 */	beq lbl_80992628
/* 809925D8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 809925DC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 809925E0  90 7E 10 A0 */	stw r3, 0x10a0(r30)
/* 809925E4  38 03 00 58 */	addi r0, r3, 0x58
/* 809925E8  90 1E 10 B8 */	stw r0, 0x10b8(r30)
/* 809925EC  34 1E 10 A4 */	addic. r0, r30, 0x10a4
/* 809925F0  41 82 00 10 */	beq lbl_80992600
/* 809925F4  3C 60 80 99 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80995D30@ha */
/* 809925F8  38 03 5D 30 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80995D30@l */
/* 809925FC  90 1E 10 B8 */	stw r0, 0x10b8(r30)
lbl_80992600:
/* 80992600  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 80992604  41 82 00 24 */	beq lbl_80992628
/* 80992608  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8099260C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80992610  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 80992614  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 80992618  41 82 00 10 */	beq lbl_80992628
/* 8099261C  3C 60 80 99 */	lis r3, __vt__8cM3dGAab@ha /* 0x80995D24@ha */
/* 80992620  38 03 5D 24 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80995D24@l */
/* 80992624  90 1E 10 9C */	stw r0, 0x109c(r30)
lbl_80992628:
/* 80992628  38 7E 0F 80 */	addi r3, r30, 0xf80
/* 8099262C  38 80 00 00 */	li r4, 0
/* 80992630  4B 6F 1A B5 */	bl __dt__12dCcD_GObjInfFv
lbl_80992634:
/* 80992634  7F C3 F3 78 */	mr r3, r30
/* 80992638  38 80 00 00 */	li r4, 0
/* 8099263C  4B 80 4E A9 */	bl __dt__13dShopSystem_cFv
/* 80992640  7F E0 07 35 */	extsh. r0, r31
/* 80992644  40 81 00 0C */	ble lbl_80992650
/* 80992648  7F C3 F3 78 */	mr r3, r30
/* 8099264C  4B 93 C6 F1 */	bl __dl__FPv
lbl_80992650:
/* 80992650  7F C3 F3 78 */	mr r3, r30
/* 80992654  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80992658  83 C1 00 08 */	lwz r30, 8(r1)
/* 8099265C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80992660  7C 08 03 A6 */	mtlr r0
/* 80992664  38 21 00 10 */	addi r1, r1, 0x10
/* 80992668  4E 80 00 20 */	blr 
