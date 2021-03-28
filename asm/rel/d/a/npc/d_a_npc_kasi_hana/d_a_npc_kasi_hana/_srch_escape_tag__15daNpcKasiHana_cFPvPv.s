lbl_80A1E7F4:
/* 80A1E7F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1E7F8  7C 08 02 A6 */	mflr r0
/* 80A1E7FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1E800  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1E804  4B 94 39 D8 */	b _savegpr_29
/* 80A1E808  7C 7D 1B 78 */	mr r29, r3
/* 80A1E80C  7C 9E 23 78 */	mr r30, r4
/* 80A1E810  3C 80 80 A2 */	lis r4, lit_1109@ha
/* 80A1E814  3B E4 18 08 */	addi r31, r4, lit_1109@l
/* 80A1E818  4B 5F A4 C8 */	b fopAc_IsActor__FPv
/* 80A1E81C  2C 03 00 00 */	cmpwi r3, 0
/* 80A1E820  40 82 00 0C */	bne lbl_80A1E82C
/* 80A1E824  38 60 00 00 */	li r3, 0
/* 80A1E828  48 00 00 84 */	b lbl_80A1E8AC
lbl_80A1E82C:
/* 80A1E82C  A8 1D 00 08 */	lha r0, 8(r29)
/* 80A1E830  2C 00 02 8A */	cmpwi r0, 0x28a
/* 80A1E834  41 82 00 0C */	beq lbl_80A1E840
/* 80A1E838  38 60 00 00 */	li r3, 0
/* 80A1E83C  48 00 00 70 */	b lbl_80A1E8AC
lbl_80A1E840:
/* 80A1E840  7F C3 F3 78 */	mr r3, r30
/* 80A1E844  7F A4 EB 78 */	mr r4, r29
/* 80A1E848  4B 5F BE C8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A1E84C  7C 64 1B 78 */	mr r4, r3
/* 80A1E850  A8 7F 00 58 */	lha r3, 0x58(r31)
/* 80A1E854  4B 85 25 D0 */	b cLib_distanceAngleS__Fss
/* 80A1E858  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 80A1E85C  28 00 00 00 */	cmplwi r0, 0
/* 80A1E860  40 82 00 20 */	bne lbl_80A1E880
/* 80A1E864  7F C3 F3 78 */	mr r3, r30
/* 80A1E868  7F A4 EB 78 */	mr r4, r29
/* 80A1E86C  4B 5F C2 28 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A1E870  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 80A1E874  93 BF 00 50 */	stw r29, 0x50(r31)
/* 80A1E878  38 60 00 00 */	li r3, 0
/* 80A1E87C  48 00 00 30 */	b lbl_80A1E8AC
lbl_80A1E880:
/* 80A1E880  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80A1E884  40 81 00 24 */	ble lbl_80A1E8A8
/* 80A1E888  7F C3 F3 78 */	mr r3, r30
/* 80A1E88C  7F A4 EB 78 */	mr r4, r29
/* 80A1E890  4B 5F C2 04 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A1E894  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80A1E898  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A1E89C  40 80 00 0C */	bge lbl_80A1E8A8
/* 80A1E8A0  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 80A1E8A4  93 BF 00 50 */	stw r29, 0x50(r31)
lbl_80A1E8A8:
/* 80A1E8A8  38 60 00 00 */	li r3, 0
lbl_80A1E8AC:
/* 80A1E8AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1E8B0  4B 94 39 78 */	b _restgpr_29
/* 80A1E8B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1E8B8  7C 08 03 A6 */	mtlr r0
/* 80A1E8BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1E8C0  4E 80 00 20 */	blr 
