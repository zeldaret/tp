lbl_806B9E6C:
/* 806B9E6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806B9E70  7C 08 02 A6 */	mflr r0
/* 806B9E74  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B9E78  39 61 00 20 */	addi r11, r1, 0x20
/* 806B9E7C  4B CA 83 61 */	bl _savegpr_29
/* 806B9E80  7C 7D 1B 78 */	mr r29, r3
/* 806B9E84  3C 60 80 6C */	lis r3, lit_3826@ha /* 0x806BB6D0@ha */
/* 806B9E88  3B C3 B6 D0 */	addi r30, r3, lit_3826@l /* 0x806BB6D0@l */
/* 806B9E8C  38 7D 06 04 */	addi r3, r29, 0x604
/* 806B9E90  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 806B9E94  C0 5E 01 00 */	lfs f2, 0x100(r30)
/* 806B9E98  4B BB 68 A9 */	bl cLib_chaseF__FPfff
/* 806B9E9C  2C 03 00 00 */	cmpwi r3, 0
/* 806B9EA0  41 82 00 0C */	beq lbl_806B9EAC
/* 806B9EA4  38 00 00 01 */	li r0, 1
/* 806B9EA8  98 1D 06 15 */	stb r0, 0x615(r29)
lbl_806B9EAC:
/* 806B9EAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B9EB0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B9EB4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806B9EB8  D0 1D 05 DC */	stfs f0, 0x5dc(r29)
/* 806B9EBC  7F A3 EB 78 */	mr r3, r29
/* 806B9EC0  4B FF FD 59 */	bl SpeedChk__8daE_FK_cFv
/* 806B9EC4  7F A3 EB 78 */	mr r3, r29
/* 806B9EC8  4B FF FC 65 */	bl SpeedSet__8daE_FK_cFv
/* 806B9ECC  7F A3 EB 78 */	mr r3, r29
/* 806B9ED0  4B FF FD 4D */	bl SetAnmSpeed__8daE_FK_cFv
/* 806B9ED4  7F A3 EB 78 */	mr r3, r29
/* 806B9ED8  4B FF FD 3D */	bl HsAngleSet__8daE_FK_cFv
/* 806B9EDC  7F A3 EB 78 */	mr r3, r29
/* 806B9EE0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806B9EE4  4B 96 08 2D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B9EE8  7C 64 1B 78 */	mr r4, r3
/* 806B9EEC  7F A3 EB 78 */	mr r3, r29
/* 806B9EF0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 806B9EF4  7C 00 20 50 */	subf r0, r0, r4
/* 806B9EF8  7C 04 07 34 */	extsh r4, r0
/* 806B9EFC  4B FF FC B9 */	bl TnNeckSet__8daE_FK_cFs
/* 806B9F00  7F A3 EB 78 */	mr r3, r29
/* 806B9F04  4B FF FD 1D */	bl TgChk__8daE_FK_cFv
/* 806B9F08  39 61 00 20 */	addi r11, r1, 0x20
/* 806B9F0C  4B CA 83 1D */	bl _restgpr_29
/* 806B9F10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B9F14  7C 08 03 A6 */	mtlr r0
/* 806B9F18  38 21 00 20 */	addi r1, r1, 0x20
/* 806B9F1C  4E 80 00 20 */	blr 
