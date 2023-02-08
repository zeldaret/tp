lbl_8028AA5C:
/* 8028AA5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028AA60  7C 08 02 A6 */	mflr r0
/* 8028AA64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028AA68  7C 89 23 78 */	mr r9, r4
/* 8028AA6C  7C A8 2B 78 */	mr r8, r5
/* 8028AA70  7C C7 33 78 */	mr r7, r6
/* 8028AA74  3C 80 80 3C */	lis r4, lit_916@ha /* 0x803C5748@ha */
/* 8028AA78  38 A4 57 48 */	addi r5, r4, lit_916@l /* 0x803C5748@l */
/* 8028AA7C  80 85 00 00 */	lwz r4, 0(r5)
/* 8028AA80  80 05 00 04 */	lwz r0, 4(r5)
/* 8028AA84  90 81 00 08 */	stw r4, 8(r1)
/* 8028AA88  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028AA8C  80 05 00 08 */	lwz r0, 8(r5)
/* 8028AA90  90 01 00 10 */	stw r0, 0x10(r1)
/* 8028AA94  38 81 00 08 */	addi r4, r1, 8
/* 8028AA98  7D 25 4B 78 */	mr r5, r9
/* 8028AA9C  7D 06 43 78 */	mr r6, r8
/* 8028AAA0  48 00 02 5D */	bl setJSG_ID___Q214JStudio_JStage14TAdaptor_actorFMQ26JStage6TActorFPCvPvUl_vQ37JStudio4data15TEOperationDataPCvUl
/* 8028AAA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028AAA8  7C 08 03 A6 */	mtlr r0
/* 8028AAAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8028AAB0  4E 80 00 20 */	blr 
