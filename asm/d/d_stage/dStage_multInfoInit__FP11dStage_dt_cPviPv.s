lbl_800265DC:
/* 800265DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800265E0  7C 08 02 A6 */	mflr r0
/* 800265E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800265E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800265EC  7C 7F 1B 78 */	mr r31, r3
/* 800265F0  81 83 00 00 */	lwz r12, 0(r3)
/* 800265F4  81 8C 01 28 */	lwz r12, 0x128(r12)
/* 800265F8  7D 89 03 A6 */	mtctr r12
/* 800265FC  38 84 00 04 */	addi r4, r4, 4
/* 80026600  4E 80 04 21 */	bctrl 
/* 80026604  4B FF DA 65 */	bl dStage_initRoomKeepDoorInfo__Fv
/* 80026608  7F E3 FB 78 */	mr r3, r31
/* 8002660C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80026610  81 8C 01 2C */	lwz r12, 0x12c(r12)
/* 80026614  7D 89 03 A6 */	mtctr r12
/* 80026618  4E 80 04 21 */	bctrl 
/* 8002661C  7C 64 1B 78 */	mr r4, r3
/* 80026620  7F E3 FB 78 */	mr r3, r31
/* 80026624  38 A0 00 00 */	li r5, 0
/* 80026628  4B FF FE 35 */	bl readMult__FP11dStage_dt_cP14dStage_Multi_cb
/* 8002662C  7F E3 FB 78 */	mr r3, r31
/* 80026630  81 9F 00 00 */	lwz r12, 0(r31)
/* 80026634  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80026638  7D 89 03 A6 */	mtctr r12
/* 8002663C  4E 80 04 21 */	bctrl 
/* 80026640  7C 64 1B 78 */	mr r4, r3
/* 80026644  7F E3 FB 78 */	mr r3, r31
/* 80026648  38 A0 00 01 */	li r5, 1
/* 8002664C  4B FF FE 11 */	bl readMult__FP11dStage_dt_cP14dStage_Multi_cb
/* 80026650  38 00 FF FF */	li r0, -1
/* 80026654  98 1F 00 04 */	stb r0, 4(r31)
/* 80026658  38 60 00 01 */	li r3, 1
/* 8002665C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80026660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80026664  7C 08 03 A6 */	mtlr r0
/* 80026668  38 21 00 10 */	addi r1, r1, 0x10
/* 8002666C  4E 80 00 20 */	blr 
