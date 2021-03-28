lbl_80077288:
/* 80077288  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007728C  7C 08 02 A6 */	mflr r0
/* 80077290  90 01 00 24 */	stw r0, 0x24(r1)
/* 80077294  39 61 00 20 */	addi r11, r1, 0x20
/* 80077298  48 2E AF 45 */	bl _savegpr_29
/* 8007729C  7C 7D 1B 78 */	mr r29, r3
/* 800772A0  7C BE 2B 78 */	mr r30, r5
/* 800772A4  80 03 00 8C */	lwz r0, 0x8c(r3)
/* 800772A8  54 9F 30 32 */	slwi r31, r4, 6
/* 800772AC  7C 60 FA 14 */	add r3, r0, r31
/* 800772B0  80 9D 00 78 */	lwz r4, 0x78(r29)
/* 800772B4  80 BD 00 7C */	lwz r5, 0x7c(r29)
/* 800772B8  80 DD 00 80 */	lwz r6, 0x80(r29)
/* 800772BC  48 1F 0E B1 */	bl SetActorInfo__13cBgS_PolyInfoFiPvUi
/* 800772C0  80 1D 00 8C */	lwz r0, 0x8c(r29)
/* 800772C4  7C 60 FA 14 */	add r3, r0, r31
/* 800772C8  7F C4 F3 78 */	mr r4, r30
/* 800772CC  48 1F 0E D9 */	bl SetPolyIndex__13cBgS_PolyInfoFi
/* 800772D0  39 61 00 20 */	addi r11, r1, 0x20
/* 800772D4  48 2E AF 55 */	bl _restgpr_29
/* 800772D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800772DC  7C 08 03 A6 */	mtlr r0
/* 800772E0  38 21 00 20 */	addi r1, r1, 0x20
/* 800772E4  4E 80 00 20 */	blr 
