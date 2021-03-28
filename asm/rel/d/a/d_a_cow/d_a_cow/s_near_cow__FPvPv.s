lbl_8065972C:
/* 8065972C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80659730  7C 08 02 A6 */	mflr r0
/* 80659734  90 01 00 24 */	stw r0, 0x24(r1)
/* 80659738  39 61 00 20 */	addi r11, r1, 0x20
/* 8065973C  4B D0 8A 9C */	b _savegpr_28
/* 80659740  7C 7C 1B 78 */	mr r28, r3
/* 80659744  7C 9D 23 78 */	mr r29, r4
/* 80659748  3C 80 80 66 */	lis r4, lit_1109@ha
/* 8065974C  3B E4 34 60 */	addi r31, r4, lit_1109@l
/* 80659750  4B 9B F5 90 */	b fopAc_IsActor__FPv
/* 80659754  2C 03 00 00 */	cmpwi r3, 0
/* 80659758  41 82 00 A0 */	beq lbl_806597F8
/* 8065975C  28 1C 00 00 */	cmplwi r28, 0
/* 80659760  41 82 00 0C */	beq lbl_8065976C
/* 80659764  80 7C 00 04 */	lwz r3, 4(r28)
/* 80659768  48 00 00 08 */	b lbl_80659770
lbl_8065976C:
/* 8065976C  38 60 FF FF */	li r3, -1
lbl_80659770:
/* 80659770  4B 9C 89 C8 */	b fpcM_IsCreating__FUi
/* 80659774  2C 03 00 00 */	cmpwi r3, 0
/* 80659778  40 82 00 80 */	bne lbl_806597F8
/* 8065977C  A8 1C 00 08 */	lha r0, 8(r28)
/* 80659780  2C 00 01 06 */	cmpwi r0, 0x106
/* 80659784  40 82 00 74 */	bne lbl_806597F8
/* 80659788  7C 1C E8 40 */	cmplw r28, r29
/* 8065978C  41 82 00 6C */	beq lbl_806597F8
/* 80659790  88 1C 0C A5 */	lbz r0, 0xca5(r28)
/* 80659794  28 00 00 00 */	cmplwi r0, 0
/* 80659798  40 82 00 60 */	bne lbl_806597F8
/* 8065979C  7F A3 EB 78 */	mr r3, r29
/* 806597A0  7F 84 E3 78 */	mr r4, r28
/* 806597A4  4B 9C 0F 6C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806597A8  7C 7E 1B 78 */	mr r30, r3
/* 806597AC  38 61 00 08 */	addi r3, r1, 8
/* 806597B0  7F A4 EB 78 */	mr r4, r29
/* 806597B4  48 00 95 BD */	bl getShapeAngle__7daCow_cFv
/* 806597B8  7F C3 F3 78 */	mr r3, r30
/* 806597BC  A8 81 00 0A */	lha r4, 0xa(r1)
/* 806597C0  4B C1 76 64 */	b cLib_distanceAngleS__Fss
/* 806597C4  7C 63 07 34 */	extsh r3, r3
/* 806597C8  A8 9F 00 9A */	lha r4, 0x9a(r31)
/* 806597CC  4B C1 76 58 */	b cLib_distanceAngleS__Fss
/* 806597D0  A8 1F 00 98 */	lha r0, 0x98(r31)
/* 806597D4  7C 03 00 00 */	cmpw r3, r0
/* 806597D8  40 80 00 20 */	bge lbl_806597F8
/* 806597DC  7F 83 E3 78 */	mr r3, r28
/* 806597E0  7F A4 EB 78 */	mr r4, r29
/* 806597E4  4B 9C 0F FC */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806597E8  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 806597EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806597F0  40 80 00 08 */	bge lbl_806597F8
/* 806597F4  D0 3F 00 94 */	stfs f1, 0x94(r31)
lbl_806597F8:
/* 806597F8  38 60 00 00 */	li r3, 0
/* 806597FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80659800  4B D0 8A 24 */	b _restgpr_28
/* 80659804  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80659808  7C 08 03 A6 */	mtlr r0
/* 8065980C  38 21 00 20 */	addi r1, r1, 0x20
/* 80659810  4E 80 00 20 */	blr 
