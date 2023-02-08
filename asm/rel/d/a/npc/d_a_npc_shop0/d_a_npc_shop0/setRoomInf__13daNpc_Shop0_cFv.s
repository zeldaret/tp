lbl_80AEB6DC:
/* 80AEB6DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AEB6E0  7C 08 02 A6 */	mflr r0
/* 80AEB6E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AEB6E8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AEB6EC  4B 87 6A F1 */	bl _savegpr_29
/* 80AEB6F0  7C 7D 1B 78 */	mr r29, r3
/* 80AEB6F4  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 80AEB6F8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AEB6FC  4B 77 C6 2D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80AEB700  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AEB704  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AEB708  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80AEB70C  7F E3 FB 78 */	mr r3, r31
/* 80AEB710  38 9D 05 F0 */	addi r4, r29, 0x5f0
/* 80AEB714  4B 58 8D 8D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80AEB718  D0 3D 05 EC */	stfs f1, 0x5ec(r29)
/* 80AEB71C  3C 60 80 AF */	lis r3, lit_4051@ha /* 0x80AEBC30@ha */
/* 80AEB720  C0 23 BC 30 */	lfs f1, lit_4051@l(r3)  /* 0x80AEBC30@l */
/* 80AEB724  C0 1D 05 EC */	lfs f0, 0x5ec(r29)
/* 80AEB728  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80AEB72C  41 82 00 28 */	beq lbl_80AEB754
/* 80AEB730  7F E3 FB 78 */	mr r3, r31
/* 80AEB734  38 9D 06 04 */	addi r4, r29, 0x604
/* 80AEB738  4B 58 99 C9 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80AEB73C  7C 7E 1B 78 */	mr r30, r3
/* 80AEB740  7F E3 FB 78 */	mr r3, r31
/* 80AEB744  38 9D 06 04 */	addi r4, r29, 0x604
/* 80AEB748  4B 58 94 A1 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80AEB74C  98 7D 04 8D */	stb r3, 0x48d(r29)
/* 80AEB750  48 00 00 10 */	b lbl_80AEB760
lbl_80AEB754:
/* 80AEB754  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80AEB758  8B C3 0D 64 */	lbz r30, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 80AEB75C  7F DE 07 74 */	extsb r30, r30
lbl_80AEB760:
/* 80AEB760  9B DD 04 8C */	stb r30, 0x48c(r29)
/* 80AEB764  9B DD 04 E2 */	stb r30, 0x4e2(r29)
/* 80AEB768  39 61 00 20 */	addi r11, r1, 0x20
/* 80AEB76C  4B 87 6A BD */	bl _restgpr_29
/* 80AEB770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AEB774  7C 08 03 A6 */	mtlr r0
/* 80AEB778  38 21 00 20 */	addi r1, r1, 0x20
/* 80AEB77C  4E 80 00 20 */	blr 
