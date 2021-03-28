lbl_8007DA04:
/* 8007DA04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007DA08  7C 08 02 A6 */	mflr r0
/* 8007DA0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007DA10  39 61 00 20 */	addi r11, r1, 0x20
/* 8007DA14  48 2E 47 C5 */	bl _savegpr_28
/* 8007DA18  7C 7D 1B 78 */	mr r29, r3
/* 8007DA1C  7C 9E 23 78 */	mr r30, r4
/* 8007DA20  7C BC 2B 78 */	mr r28, r5
/* 8007DA24  7C DF 33 78 */	mr r31, r6
/* 8007DA28  38 9E 00 2C */	addi r4, r30, 0x2c
/* 8007DA2C  80 03 00 A8 */	lwz r0, 0xa8(r3)
/* 8007DA30  54 A3 28 34 */	slwi r3, r5, 5
/* 8007DA34  38 63 00 04 */	addi r3, r3, 4
/* 8007DA38  7C 60 1A 14 */	add r3, r0, r3
/* 8007DA3C  48 1E AF AD */	bl cM3d_Cross_AabAab__FPC8cM3dGAabPC8cM3dGAab
/* 8007DA40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007DA44  41 82 00 9C */	beq lbl_8007DAE0
/* 8007DA48  7F A3 EB 78 */	mr r3, r29
/* 8007DA4C  7F 84 E3 78 */	mr r4, r28
/* 8007DA50  80 BE 00 04 */	lwz r5, 4(r30)
/* 8007DA54  7F E6 FB 78 */	mr r6, r31
/* 8007DA58  81 9D 00 04 */	lwz r12, 4(r29)
/* 8007DA5C  81 8C 01 00 */	lwz r12, 0x100(r12)
/* 8007DA60  7D 89 03 A6 */	mtctr r12
/* 8007DA64  4E 80 04 21 */	bctrl 
/* 8007DA68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007DA6C  40 82 00 74 */	bne lbl_8007DAE0
/* 8007DA70  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 8007DA74  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8007DA78  1F 9C 00 34 */	mulli r28, r28, 0x34
/* 8007DA7C  7C 60 E2 14 */	add r3, r0, r28
/* 8007DA80  A0 A3 00 2E */	lhz r5, 0x2e(r3)
/* 8007DA84  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007DA88  41 82 00 10 */	beq lbl_8007DA98
/* 8007DA8C  7F A3 EB 78 */	mr r3, r29
/* 8007DA90  7F C4 F3 78 */	mr r4, r30
/* 8007DA94  4B FF FE 55 */	bl CaptPolyRp__4dBgWFR13dBgS_CaptPolyi
lbl_8007DA98:
/* 8007DA98  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 8007DA9C  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8007DAA0  7C 60 E2 14 */	add r3, r0, r28
/* 8007DAA4  A3 83 00 28 */	lhz r28, 0x28(r3)
lbl_8007DAA8:
/* 8007DAA8  3C 1C 00 00 */	addis r0, r28, 0
/* 8007DAAC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007DAB0  41 82 00 30 */	beq lbl_8007DAE0
/* 8007DAB4  7F A3 EB 78 */	mr r3, r29
/* 8007DAB8  7F C4 F3 78 */	mr r4, r30
/* 8007DABC  7F 85 E3 78 */	mr r5, r28
/* 8007DAC0  38 DF 00 01 */	addi r6, r31, 1
/* 8007DAC4  4B FF FF 41 */	bl CaptPolyGrpRp__4dBgWFR13dBgS_CaptPolyii
/* 8007DAC8  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 8007DACC  80 83 00 24 */	lwz r4, 0x24(r3)
/* 8007DAD0  1C 7C 00 34 */	mulli r3, r28, 0x34
/* 8007DAD4  38 03 00 26 */	addi r0, r3, 0x26
/* 8007DAD8  7F 84 02 2E */	lhzx r28, r4, r0
/* 8007DADC  4B FF FF CC */	b lbl_8007DAA8
lbl_8007DAE0:
/* 8007DAE0  39 61 00 20 */	addi r11, r1, 0x20
/* 8007DAE4  48 2E 47 41 */	bl _restgpr_28
/* 8007DAE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007DAEC  7C 08 03 A6 */	mtlr r0
/* 8007DAF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8007DAF4  4E 80 00 20 */	blr 
