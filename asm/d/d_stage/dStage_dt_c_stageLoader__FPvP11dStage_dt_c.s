lbl_80026B58:
/* 80026B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80026B5C  7C 08 02 A6 */	mflr r0
/* 80026B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80026B64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80026B68  93 C1 00 08 */	stw r30, 8(r1)
/* 80026B6C  7C 7E 1B 78 */	mr r30, r3
/* 80026B70  7C 9F 23 78 */	mr r31, r4
/* 80026B74  3C A0 80 3A */	lis r5, l_funcTable_5163@ha /* 0x803A66BC@ha */
/* 80026B78  38 A5 66 BC */	addi r5, r5, l_funcTable_5163@l /* 0x803A66BC@l */
/* 80026B7C  38 C0 00 1A */	li r6, 0x1a
/* 80026B80  4B FF F5 35 */	bl dStage_dt_c_decode__FPvP11dStage_dt_cP9FuncTablei
/* 80026B84  7F C3 F3 78 */	mr r3, r30
/* 80026B88  7F E4 FB 78 */	mr r4, r31
/* 80026B8C  38 A0 FF FF */	li r5, -1
/* 80026B90  4B FF FE 25 */	bl layerTableLoader__FPvP11dStage_dt_ci
/* 80026B94  7F C3 F3 78 */	mr r3, r30
/* 80026B98  7F E4 FB 78 */	mr r4, r31
/* 80026B9C  38 A0 FF FF */	li r5, -1
/* 80026BA0  4B FF FF 51 */	bl layerActorLoader__FPvP11dStage_dt_ci
/* 80026BA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80026BA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80026BAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80026BB0  7C 08 03 A6 */	mtlr r0
/* 80026BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80026BB8  4E 80 00 20 */	blr 
