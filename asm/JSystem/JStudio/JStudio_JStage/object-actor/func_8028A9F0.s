lbl_8028A9F0:
/* 8028A9F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028A9F4  7C 08 02 A6 */	mflr r0
/* 8028A9F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028A9FC  7C 89 23 78 */	mr r9, r4
/* 8028AA00  7C A8 2B 78 */	mr r8, r5
/* 8028AA04  7C C7 33 78 */	mr r7, r6
/* 8028AA08  3C 80 80 3C */	lis r4, lit_899@ha /* 0x803C573C@ha */
/* 8028AA0C  38 A4 57 3C */	addi r5, r4, lit_899@l /* 0x803C573C@l */
/* 8028AA10  80 85 00 00 */	lwz r4, 0(r5)
/* 8028AA14  80 05 00 04 */	lwz r0, 4(r5)
/* 8028AA18  90 81 00 08 */	stw r4, 8(r1)
/* 8028AA1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028AA20  80 05 00 08 */	lwz r0, 8(r5)
/* 8028AA24  90 01 00 10 */	stw r0, 0x10(r1)
/* 8028AA28  38 81 00 08 */	addi r4, r1, 8
/* 8028AA2C  7D 25 4B 78 */	mr r5, r9
/* 8028AA30  7D 06 43 78 */	mr r6, r8
/* 8028AA34  48 00 02 C9 */	bl setJSG_ID___Q214JStudio_JStage14TAdaptor_actorFMQ26JStage6TActorFPCvPvUl_vQ37JStudio4data15TEOperationDataPCvUl
/* 8028AA38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028AA3C  7C 08 03 A6 */	mtlr r0
/* 8028AA40  38 21 00 20 */	addi r1, r1, 0x20
/* 8028AA44  4E 80 00 20 */	blr 
