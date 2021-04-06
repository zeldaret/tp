lbl_80026C34:
/* 80026C34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80026C38  7C 08 02 A6 */	mflr r0
/* 80026C3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80026C40  39 61 00 20 */	addi r11, r1, 0x20
/* 80026C44  48 33 B5 99 */	bl _savegpr_29
/* 80026C48  7C 7D 1B 78 */	mr r29, r3
/* 80026C4C  7C 9E 23 78 */	mr r30, r4
/* 80026C50  7C BF 2B 78 */	mr r31, r5
/* 80026C54  3C A0 80 3A */	lis r5, l_funcTable_5173@ha /* 0x803A689C@ha */
/* 80026C58  38 A5 68 9C */	addi r5, r5, l_funcTable_5173@l /* 0x803A689C@l */
/* 80026C5C  38 C0 00 08 */	li r6, 8
/* 80026C60  4B FF F4 55 */	bl dStage_dt_c_decode__FPvP11dStage_dt_cP9FuncTablei
/* 80026C64  7F A3 EB 78 */	mr r3, r29
/* 80026C68  7F C4 F3 78 */	mr r4, r30
/* 80026C6C  7F E5 FB 78 */	mr r5, r31
/* 80026C70  4B FF FE 81 */	bl layerActorLoader__FPvP11dStage_dt_ci
/* 80026C74  39 61 00 20 */	addi r11, r1, 0x20
/* 80026C78  48 33 B5 B1 */	bl _restgpr_29
/* 80026C7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80026C80  7C 08 03 A6 */	mtlr r0
/* 80026C84  38 21 00 20 */	addi r1, r1, 0x20
/* 80026C88  4E 80 00 20 */	blr 
