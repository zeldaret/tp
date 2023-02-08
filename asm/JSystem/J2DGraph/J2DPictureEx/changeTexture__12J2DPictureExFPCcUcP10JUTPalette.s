lbl_80306298:
/* 80306298  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030629C  7C 08 02 A6 */	mflr r0
/* 803062A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803062A4  39 61 00 20 */	addi r11, r1, 0x20
/* 803062A8  48 05 BF 35 */	bl _savegpr_29
/* 803062AC  7C 7D 1B 78 */	mr r29, r3
/* 803062B0  7C BE 2B 78 */	mr r30, r5
/* 803062B4  7C DF 33 78 */	mr r31, r6
/* 803062B8  7C 83 23 78 */	mr r3, r4
/* 803062BC  4B FF 33 85 */	bl getNameResource__9J2DScreenFPCc
/* 803062C0  7C 64 1B 78 */	mr r4, r3
/* 803062C4  7F A3 EB 78 */	mr r3, r29
/* 803062C8  7F C5 F3 78 */	mr r5, r30
/* 803062CC  7F E6 FB 78 */	mr r6, r31
/* 803062D0  81 9D 00 00 */	lwz r12, 0(r29)
/* 803062D4  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 803062D8  7D 89 03 A6 */	mtctr r12
/* 803062DC  4E 80 04 21 */	bctrl 
/* 803062E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803062E4  48 05 BF 45 */	bl _restgpr_29
/* 803062E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803062EC  7C 08 03 A6 */	mtlr r0
/* 803062F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803062F4  4E 80 00 20 */	blr 
