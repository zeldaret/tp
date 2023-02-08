lbl_80159708:
/* 80159708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015970C  7C 08 02 A6 */	mflr r0
/* 80159710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80159714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80159718  93 C1 00 08 */	stw r30, 8(r1)
/* 8015971C  7C 7E 1B 78 */	mr r30, r3
/* 80159720  7C 9F 23 78 */	mr r31, r4
/* 80159724  4B EB F5 BD */	bl fopAc_IsActor__FPv
/* 80159728  2C 03 00 00 */	cmpwi r3, 0
/* 8015972C  41 82 00 78 */	beq lbl_801597A4
/* 80159730  A8 1E 00 08 */	lha r0, 8(r30)
/* 80159734  2C 00 02 8A */	cmpwi r0, 0x28a
/* 80159738  40 82 00 6C */	bne lbl_801597A4
/* 8015973C  7F E3 FB 78 */	mr r3, r31
/* 80159740  7F C4 F3 78 */	mr r4, r30
/* 80159744  4B EC 0F CD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80159748  7C 64 1B 78 */	mr r4, r3
/* 8015974C  A8 6D 8A 8C */	lha r3, wolfAngle(r13)
/* 80159750  48 11 76 D5 */	bl cLib_distanceAngleS__Fss
/* 80159754  80 0D 8A 84 */	lwz r0, target(r13)
/* 80159758  28 00 00 00 */	cmplwi r0, 0
/* 8015975C  40 82 00 20 */	bne lbl_8015977C
/* 80159760  7F E3 FB 78 */	mr r3, r31
/* 80159764  7F C4 F3 78 */	mr r4, r30
/* 80159768  4B EC 13 2D */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8015976C  D0 2D 8A 88 */	stfs f1, targetWay(r13)
/* 80159770  93 CD 8A 84 */	stw r30, target(r13)
/* 80159774  38 60 00 00 */	li r3, 0
/* 80159778  48 00 00 30 */	b lbl_801597A8
lbl_8015977C:
/* 8015977C  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80159780  40 81 00 24 */	ble lbl_801597A4
/* 80159784  7F E3 FB 78 */	mr r3, r31
/* 80159788  7F C4 F3 78 */	mr r4, r30
/* 8015978C  4B EC 13 09 */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80159790  C0 0D 8A 88 */	lfs f0, targetWay(r13)
/* 80159794  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80159798  40 81 00 0C */	ble lbl_801597A4
/* 8015979C  D0 2D 8A 88 */	stfs f1, targetWay(r13)
/* 801597A0  93 CD 8A 84 */	stw r30, target(r13)
lbl_801597A4:
/* 801597A4  38 60 00 00 */	li r3, 0
lbl_801597A8:
/* 801597A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801597AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801597B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801597B4  7C 08 03 A6 */	mtlr r0
/* 801597B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801597BC  4E 80 00 20 */	blr 
