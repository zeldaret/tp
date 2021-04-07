lbl_80026BBC:
/* 80026BBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80026BC0  7C 08 02 A6 */	mflr r0
/* 80026BC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80026BC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80026BCC  48 33 B6 11 */	bl _savegpr_29
/* 80026BD0  7C 7D 1B 78 */	mr r29, r3
/* 80026BD4  7C 9E 23 78 */	mr r30, r4
/* 80026BD8  7C BF 2B 78 */	mr r31, r5
/* 80026BDC  4B FF F7 81 */	bl dStage_dt_c_offsetToPtr__FPv
/* 80026BE0  7F C3 F3 78 */	mr r3, r30
/* 80026BE4  81 9E 00 00 */	lwz r12, 0(r30)
/* 80026BE8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80026BEC  7D 89 03 A6 */	mtctr r12
/* 80026BF0  4E 80 04 21 */	bctrl 
/* 80026BF4  7F A3 EB 78 */	mr r3, r29
/* 80026BF8  7F C4 F3 78 */	mr r4, r30
/* 80026BFC  3C A0 80 3A */	lis r5, l_funcTable_5168@ha /* 0x803A67F4@ha */
/* 80026C00  38 A5 67 F4 */	addi r5, r5, l_funcTable_5168@l /* 0x803A67F4@l */
/* 80026C04  38 C0 00 0E */	li r6, 0xe
/* 80026C08  4B FF F4 AD */	bl dStage_dt_c_decode__FPvP11dStage_dt_cP9FuncTablei
/* 80026C0C  7F A3 EB 78 */	mr r3, r29
/* 80026C10  7F C4 F3 78 */	mr r4, r30
/* 80026C14  7F E5 FB 78 */	mr r5, r31
/* 80026C18  4B FF FD 9D */	bl layerTableLoader__FPvP11dStage_dt_ci
/* 80026C1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80026C20  48 33 B6 09 */	bl _restgpr_29
/* 80026C24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80026C28  7C 08 03 A6 */	mtlr r0
/* 80026C2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80026C30  4E 80 00 20 */	blr 
