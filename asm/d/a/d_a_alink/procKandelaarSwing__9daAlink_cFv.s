lbl_801115CC:
/* 801115CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801115D0  7C 08 02 A6 */	mflr r0
/* 801115D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801115D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801115DC  93 C1 00 08 */	stw r30, 8(r1)
/* 801115E0  7C 7E 1B 78 */	mr r30, r3
/* 801115E4  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 801115E8  7F E3 FB 78 */	mr r3, r31
/* 801115EC  48 04 CE E1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801115F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801115F4  41 82 00 38 */	beq lbl_8011162C
/* 801115F8  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 801115FC  28 00 00 27 */	cmplwi r0, 0x27
/* 80111600  40 82 00 1C */	bne lbl_8011161C
/* 80111604  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80111608  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011160C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80111610  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 80111614  4B F3 6B 69 */	bl cutEnd__16dEvent_manager_cFi
/* 80111618  48 00 00 48 */	b lbl_80111660
lbl_8011161C:
/* 8011161C  7F C3 F3 78 */	mr r3, r30
/* 80111620  38 80 00 00 */	li r4, 0
/* 80111624  4B FA 8A AD */	bl checkNextAction__9daAlink_cFi
/* 80111628  48 00 00 38 */	b lbl_80111660
lbl_8011162C:
/* 8011162C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80111630  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 80111634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80111638  40 81 00 28 */	ble lbl_80111660
/* 8011163C  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 80111640  28 00 00 27 */	cmplwi r0, 0x27
/* 80111644  41 82 00 1C */	beq lbl_80111660
/* 80111648  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 8011164C  60 00 00 04 */	ori r0, r0, 4
/* 80111650  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 80111654  7F C3 F3 78 */	mr r3, r30
/* 80111658  38 80 00 01 */	li r4, 1
/* 8011165C  4B FA 8A 75 */	bl checkNextAction__9daAlink_cFi
lbl_80111660:
/* 80111660  38 60 00 01 */	li r3, 1
/* 80111664  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80111668  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011166C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80111670  7C 08 03 A6 */	mtlr r0
/* 80111674  38 21 00 10 */	addi r1, r1, 0x10
/* 80111678  4E 80 00 20 */	blr 
