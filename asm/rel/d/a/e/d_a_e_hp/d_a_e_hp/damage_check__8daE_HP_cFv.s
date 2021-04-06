lbl_806E673C:
/* 806E673C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806E6740  7C 08 02 A6 */	mflr r0
/* 806E6744  90 01 00 54 */	stw r0, 0x54(r1)
/* 806E6748  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 806E674C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 806E6750  7C 7F 1B 78 */	mr r31, r3
/* 806E6754  A8 03 05 62 */	lha r0, 0x562(r3)
/* 806E6758  2C 00 00 01 */	cmpwi r0, 1
/* 806E675C  40 81 01 D4 */	ble lbl_806E6930
/* 806E6760  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E6764  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E6768  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 806E676C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 806E6770  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 806E6774  41 82 01 BC */	beq lbl_806E6930
/* 806E6778  88 1F 07 1E */	lbz r0, 0x71e(r31)
/* 806E677C  28 00 00 00 */	cmplwi r0, 0
/* 806E6780  40 82 01 B0 */	bne lbl_806E6930
/* 806E6784  C0 3F 07 90 */	lfs f1, 0x790(r31)
/* 806E6788  3C 60 80 6F */	lis r3, lit_4301@ha /* 0x806EA240@ha */
/* 806E678C  C0 03 A2 40 */	lfs f0, lit_4301@l(r3)  /* 0x806EA240@l */
/* 806E6790  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E6794  41 80 01 9C */	blt lbl_806E6930
/* 806E6798  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 806E679C  2C 00 00 05 */	cmpwi r0, 5
/* 806E67A0  41 82 01 90 */	beq lbl_806E6930
/* 806E67A4  2C 00 00 06 */	cmpwi r0, 6
/* 806E67A8  40 82 00 08 */	bne lbl_806E67B0
/* 806E67AC  48 00 01 84 */	b lbl_806E6930
lbl_806E67B0:
/* 806E67B0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806E67B4  80 63 00 04 */	lwz r3, 4(r3)
/* 806E67B8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806E67BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806E67C0  38 63 00 30 */	addi r3, r3, 0x30
/* 806E67C4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E67C8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E67CC  4B C5 FC E5 */	bl PSMTXCopy
/* 806E67D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E67D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E67D8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806E67DC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806E67E0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806E67E4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806E67E8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806E67EC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806E67F0  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806EA4F8@ha */
/* 806E67F4  38 63 A4 F8 */	addi r3, r3, l_HIO@l /* 0x806EA4F8@l */
/* 806E67F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 806E67FC  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 806E6800  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 806E6804  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 806E6808  7F E3 FB 78 */	mr r3, r31
/* 806E680C  38 9F 05 C8 */	addi r4, r31, 0x5c8
/* 806E6810  38 A1 00 34 */	addi r5, r1, 0x34
/* 806E6814  38 DF 04 EC */	addi r6, r31, 0x4ec
/* 806E6818  48 00 35 B5 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 806E681C  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 806E6820  4B 99 D0 11 */	bl Move__10dCcD_GSttsFv
/* 806E6824  38 7F 0A 00 */	addi r3, r31, 0xa00
/* 806E6828  4B 99 DC 39 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806E682C  28 03 00 00 */	cmplwi r3, 0
/* 806E6830  41 82 01 00 */	beq lbl_806E6930
/* 806E6834  38 7F 0A 00 */	addi r3, r31, 0xa00
/* 806E6838  4B 99 DC C1 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806E683C  90 7F 0D B0 */	stw r3, 0xdb0(r31)
/* 806E6840  38 00 00 1F */	li r0, 0x1f
/* 806E6844  90 1F 0D C8 */	stw r0, 0xdc8(r31)
/* 806E6848  7F E3 FB 78 */	mr r3, r31
/* 806E684C  38 9F 0D B0 */	addi r4, r31, 0xdb0
/* 806E6850  4B 9A 13 B5 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806E6854  38 61 00 10 */	addi r3, r1, 0x10
/* 806E6858  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806E685C  3B DF 0A D4 */	addi r30, r31, 0xad4
/* 806E6860  7F C5 F3 78 */	mr r5, r30
/* 806E6864  4B B8 02 D1 */	bl __mi__4cXyzCFRC3Vec
/* 806E6868  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806E686C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806E6870  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806E6874  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806E6878  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806E687C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806E6880  C0 1E 00 00 */	lfs f0, 0(r30)
/* 806E6884  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806E6888  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E688C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E6890  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806E6894  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806E6898  38 00 00 00 */	li r0, 0
/* 806E689C  B0 01 00 08 */	sth r0, 8(r1)
/* 806E68A0  38 61 00 28 */	addi r3, r1, 0x28
/* 806E68A4  4B B8 08 85 */	bl atan2sX_Z__4cXyzCFv
/* 806E68A8  B0 61 00 0A */	sth r3, 0xa(r1)
/* 806E68AC  38 00 00 00 */	li r0, 0
/* 806E68B0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 806E68B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E68B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E68BC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806E68C0  38 80 00 03 */	li r4, 3
/* 806E68C4  7F E5 FB 78 */	mr r5, r31
/* 806E68C8  38 C1 00 1C */	addi r6, r1, 0x1c
/* 806E68CC  38 E1 00 08 */	addi r7, r1, 8
/* 806E68D0  39 00 00 00 */	li r8, 0
/* 806E68D4  39 20 00 00 */	li r9, 0
/* 806E68D8  4B 96 59 41 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 806E68DC  38 00 00 08 */	li r0, 8
/* 806E68E0  98 1F 07 1E */	stb r0, 0x71e(r31)
/* 806E68E4  38 7F 0A 00 */	addi r3, r31, 0xa00
/* 806E68E8  81 9F 0A 3C */	lwz r12, 0xa3c(r31)
/* 806E68EC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806E68F0  7D 89 03 A6 */	mtctr r12
/* 806E68F4  4E 80 04 21 */	bctrl 
/* 806E68F8  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 806E68FC  2C 00 00 01 */	cmpwi r0, 1
/* 806E6900  40 81 00 18 */	ble lbl_806E6918
/* 806E6904  7F E3 FB 78 */	mr r3, r31
/* 806E6908  38 80 00 04 */	li r4, 4
/* 806E690C  38 A0 00 00 */	li r5, 0
/* 806E6910  4B FF FC B1 */	bl setActionMode__8daE_HP_cFii
/* 806E6914  48 00 00 1C */	b lbl_806E6930
lbl_806E6918:
/* 806E6918  38 00 00 00 */	li r0, 0
/* 806E691C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 806E6920  7F E3 FB 78 */	mr r3, r31
/* 806E6924  38 80 00 05 */	li r4, 5
/* 806E6928  38 A0 00 00 */	li r5, 0
/* 806E692C  4B FF FC 95 */	bl setActionMode__8daE_HP_cFii
lbl_806E6930:
/* 806E6930  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 806E6934  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 806E6938  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806E693C  7C 08 03 A6 */	mtlr r0
/* 806E6940  38 21 00 50 */	addi r1, r1, 0x50
/* 806E6944  4E 80 00 20 */	blr 
