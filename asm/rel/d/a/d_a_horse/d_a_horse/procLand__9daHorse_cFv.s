lbl_80843770:
/* 80843770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80843774  7C 08 02 A6 */	mflr r0
/* 80843778  90 01 00 24 */	stw r0, 0x24(r1)
/* 8084377C  39 61 00 20 */	addi r11, r1, 0x20
/* 80843780  4B B1 EA 58 */	b _savegpr_28
/* 80843784  7C 7C 1B 78 */	mr r28, r3
/* 80843788  3C 80 80 84 */	lis r4, lit_3894@ha
/* 8084378C  3B C4 54 AC */	addi r30, r4, lit_3894@l
/* 80843790  3B BC 05 B0 */	addi r29, r28, 0x5b0
/* 80843794  38 80 00 01 */	li r4, 1
/* 80843798  4B FF 87 B1 */	bl checkHorseNoMove__9daHorse_cFi
/* 8084379C  7C 7F 1B 78 */	mr r31, r3
/* 808437A0  2C 1F 00 02 */	cmpwi r31, 2
/* 808437A4  40 82 00 10 */	bne lbl_808437B4
/* 808437A8  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 808437AC  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 808437B0  48 00 00 20 */	b lbl_808437D0
lbl_808437B4:
/* 808437B4  2C 1F 00 00 */	cmpwi r31, 0
/* 808437B8  41 82 00 18 */	beq lbl_808437D0
/* 808437BC  38 7C 05 2C */	addi r3, r28, 0x52c
/* 808437C0  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 808437C4  38 9E 00 20 */	addi r4, r30, 0x20
/* 808437C8  C0 44 00 54 */	lfs f2, 0x54(r4)
/* 808437CC  4B A2 CF 74 */	b cLib_chaseF__FPfff
lbl_808437D0:
/* 808437D0  A8 1C 17 1A */	lha r0, 0x171a(r28)
/* 808437D4  2C 00 00 00 */	cmpwi r0, 0
/* 808437D8  41 82 00 3C */	beq lbl_80843814
/* 808437DC  38 7C 05 2C */	addi r3, r28, 0x52c
/* 808437E0  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 808437E4  38 9E 00 20 */	addi r4, r30, 0x20
/* 808437E8  C0 44 00 54 */	lfs f2, 0x54(r4)
/* 808437EC  4B A2 CF 54 */	b cLib_chaseF__FPfff
/* 808437F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808437F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808437F8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 808437FC  80 9C 17 2C */	lwz r4, 0x172c(r28)
/* 80843800  4B 80 49 7C */	b cutEnd__16dEvent_manager_cFi
/* 80843804  7F 83 E3 78 */	mr r3, r28
/* 80843808  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 8084380C  4B FF 80 25 */	bl setMoveAnime__9daHorse_cFf
/* 80843810  48 00 00 80 */	b lbl_80843890
lbl_80843814:
/* 80843814  7F A3 EB 78 */	mr r3, r29
/* 80843818  4B 91 AC B4 */	b checkAnmEnd__16daPy_frameCtrl_cFv
/* 8084381C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80843820  41 82 00 5C */	beq lbl_8084387C
/* 80843824  80 1C 17 40 */	lwz r0, 0x1740(r28)
/* 80843828  28 00 00 07 */	cmplwi r0, 7
/* 8084382C  40 82 00 44 */	bne lbl_80843870
/* 80843830  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80843834  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 80843838  38 9E 00 20 */	addi r4, r30, 0x20
/* 8084383C  C0 44 00 54 */	lfs f2, 0x54(r4)
/* 80843840  4B A2 CF 00 */	b cLib_chaseF__FPfff
/* 80843844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80843848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084384C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80843850  80 9C 17 2C */	lwz r4, 0x172c(r28)
/* 80843854  4B 80 49 28 */	b cutEnd__16dEvent_manager_cFi
/* 80843858  7F 83 E3 78 */	mr r3, r28
/* 8084385C  C0 3E 01 44 */	lfs f1, 0x144(r30)
/* 80843860  4B FF 7F D1 */	bl setMoveAnime__9daHorse_cFf
/* 80843864  38 00 00 01 */	li r0, 1
/* 80843868  B0 1C 17 1A */	sth r0, 0x171a(r28)
/* 8084386C  48 00 00 24 */	b lbl_80843890
lbl_80843870:
/* 80843870  7F 83 E3 78 */	mr r3, r28
/* 80843874  4B FF E6 91 */	bl procMoveInit__9daHorse_cFv
/* 80843878  48 00 00 18 */	b lbl_80843890
lbl_8084387C:
/* 8084387C  2C 1F 00 00 */	cmpwi r31, 0
/* 80843880  40 82 00 10 */	bne lbl_80843890
/* 80843884  7F 83 E3 78 */	mr r3, r28
/* 80843888  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8084388C  4B FF D1 35 */	bl checkTurnAfterFastMove__9daHorse_cFf
lbl_80843890:
/* 80843890  38 60 00 01 */	li r3, 1
/* 80843894  39 61 00 20 */	addi r11, r1, 0x20
/* 80843898  4B B1 E9 8C */	b _restgpr_28
/* 8084389C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 808438A0  7C 08 03 A6 */	mtlr r0
/* 808438A4  38 21 00 20 */	addi r1, r1, 0x20
/* 808438A8  4E 80 00 20 */	blr 
