lbl_8028A0F4:
/* 8028A0F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028A0F8  7C 08 02 A6 */	mflr r0
/* 8028A0FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028A100  39 61 00 20 */	addi r11, r1, 0x20
/* 8028A104  48 0D 80 D5 */	bl _savegpr_28
/* 8028A108  7C 7C 1B 78 */	mr r28, r3
/* 8028A10C  7C BD 2B 78 */	mr r29, r5
/* 8028A110  7C 9E 23 78 */	mr r30, r4
/* 8028A114  38 60 00 90 */	li r3, 0x90
/* 8028A118  48 04 4B 35 */	bl __nw__FUl
/* 8028A11C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8028A120  41 82 00 14 */	beq lbl_8028A134
/* 8028A124  7F A4 EB 78 */	mr r4, r29
/* 8028A128  7F C5 F3 78 */	mr r5, r30
/* 8028A12C  48 00 24 49 */	bl __ct__Q214JStudio_JStage12TAdaptor_fogFPCQ26JStage7TSystemPQ26JStage4TFog
/* 8028A130  7C 7F 1B 78 */	mr r31, r3
lbl_8028A134:
/* 8028A134  28 1F 00 00 */	cmplwi r31, 0
/* 8028A138  40 82 00 0C */	bne lbl_8028A144
/* 8028A13C  38 60 00 00 */	li r3, 0
/* 8028A140  48 00 00 A0 */	b lbl_8028A1E0
lbl_8028A144:
/* 8028A144  93 E1 00 08 */	stw r31, 8(r1)
/* 8028A148  38 60 00 38 */	li r3, 0x38
/* 8028A14C  48 04 4B 01 */	bl __nw__FUl
/* 8028A150  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028A154  41 82 00 14 */	beq lbl_8028A168
/* 8028A158  7F 84 E3 78 */	mr r4, r28
/* 8028A15C  7F E5 FB 78 */	mr r5, r31
/* 8028A160  4B FF D0 7D */	bl __ct__Q27JStudio11TObject_fogFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio12TAdaptor_fog
/* 8028A164  7C 7E 1B 78 */	mr r30, r3
lbl_8028A168:
/* 8028A168  28 1E 00 00 */	cmplwi r30, 0
/* 8028A16C  40 82 00 0C */	bne lbl_8028A178
/* 8028A170  3B C0 00 00 */	li r30, 0
/* 8028A174  48 00 00 28 */	b lbl_8028A19C
lbl_8028A178:
/* 8028A178  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8028A17C  28 03 00 00 */	cmplwi r3, 0
/* 8028A180  41 82 00 1C */	beq lbl_8028A19C
/* 8028A184  93 C3 00 04 */	stw r30, 4(r3)
/* 8028A188  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8028A18C  81 83 00 00 */	lwz r12, 0(r3)
/* 8028A190  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8028A194  7D 89 03 A6 */	mtctr r12
/* 8028A198  4E 80 04 21 */	bctrl 
lbl_8028A19C:
/* 8028A19C  28 1E 00 00 */	cmplwi r30, 0
/* 8028A1A0  40 82 00 2C */	bne lbl_8028A1CC
/* 8028A1A4  80 61 00 08 */	lwz r3, 8(r1)
/* 8028A1A8  28 03 00 00 */	cmplwi r3, 0
/* 8028A1AC  41 82 00 18 */	beq lbl_8028A1C4
/* 8028A1B0  38 80 00 01 */	li r4, 1
/* 8028A1B4  81 83 00 00 */	lwz r12, 0(r3)
/* 8028A1B8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8028A1BC  7D 89 03 A6 */	mtctr r12
/* 8028A1C0  4E 80 04 21 */	bctrl 
lbl_8028A1C4:
/* 8028A1C4  38 60 00 00 */	li r3, 0
/* 8028A1C8  48 00 00 18 */	b lbl_8028A1E0
lbl_8028A1CC:
/* 8028A1CC  38 00 00 00 */	li r0, 0
/* 8028A1D0  90 01 00 08 */	stw r0, 8(r1)
/* 8028A1D4  48 00 00 08 */	b lbl_8028A1DC
/* 8028A1D8  4E 80 04 21 */	bctrl 
lbl_8028A1DC:
/* 8028A1DC  7F C3 F3 78 */	mr r3, r30
lbl_8028A1E0:
/* 8028A1E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8028A1E4  48 0D 80 41 */	bl _restgpr_28
/* 8028A1E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028A1EC  7C 08 03 A6 */	mtlr r0
/* 8028A1F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8028A1F4  4E 80 00 20 */	blr 
