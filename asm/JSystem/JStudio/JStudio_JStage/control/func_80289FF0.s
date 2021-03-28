lbl_80289FF0:
/* 80289FF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80289FF4  7C 08 02 A6 */	mflr r0
/* 80289FF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80289FFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8028A000  48 0D 81 D9 */	bl _savegpr_28
/* 8028A004  7C 7C 1B 78 */	mr r28, r3
/* 8028A008  7C BD 2B 78 */	mr r29, r5
/* 8028A00C  7C 9E 23 78 */	mr r30, r4
/* 8028A010  38 60 01 20 */	li r3, 0x120
/* 8028A014  48 04 4C 39 */	bl __nw__FUl
/* 8028A018  7C 7F 1B 79 */	or. r31, r3, r3
/* 8028A01C  41 82 00 14 */	beq lbl_8028A030
/* 8028A020  7F A4 EB 78 */	mr r4, r29
/* 8028A024  7F C5 F3 78 */	mr r5, r30
/* 8028A028  48 00 2B 29 */	bl __ct__Q214JStudio_JStage14TAdaptor_lightFPCQ26JStage7TSystemPQ26JStage6TLight
/* 8028A02C  7C 7F 1B 78 */	mr r31, r3
lbl_8028A030:
/* 8028A030  28 1F 00 00 */	cmplwi r31, 0
/* 8028A034  40 82 00 0C */	bne lbl_8028A040
/* 8028A038  38 60 00 00 */	li r3, 0
/* 8028A03C  48 00 00 A0 */	b lbl_8028A0DC
lbl_8028A040:
/* 8028A040  93 E1 00 08 */	stw r31, 8(r1)
/* 8028A044  38 60 00 38 */	li r3, 0x38
/* 8028A048  48 04 4C 05 */	bl __nw__FUl
/* 8028A04C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028A050  41 82 00 14 */	beq lbl_8028A064
/* 8028A054  7F 84 E3 78 */	mr r4, r28
/* 8028A058  7F E5 FB 78 */	mr r5, r31
/* 8028A05C  4B FF D3 0D */	bl __ct__Q27JStudio13TObject_lightFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio14TAdaptor_light
/* 8028A060  7C 7E 1B 78 */	mr r30, r3
lbl_8028A064:
/* 8028A064  28 1E 00 00 */	cmplwi r30, 0
/* 8028A068  40 82 00 0C */	bne lbl_8028A074
/* 8028A06C  3B C0 00 00 */	li r30, 0
/* 8028A070  48 00 00 28 */	b lbl_8028A098
lbl_8028A074:
/* 8028A074  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8028A078  28 03 00 00 */	cmplwi r3, 0
/* 8028A07C  41 82 00 1C */	beq lbl_8028A098
/* 8028A080  93 C3 00 04 */	stw r30, 4(r3)
/* 8028A084  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8028A088  81 83 00 00 */	lwz r12, 0(r3)
/* 8028A08C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8028A090  7D 89 03 A6 */	mtctr r12
/* 8028A094  4E 80 04 21 */	bctrl 
lbl_8028A098:
/* 8028A098  28 1E 00 00 */	cmplwi r30, 0
/* 8028A09C  40 82 00 2C */	bne lbl_8028A0C8
/* 8028A0A0  80 61 00 08 */	lwz r3, 8(r1)
/* 8028A0A4  28 03 00 00 */	cmplwi r3, 0
/* 8028A0A8  41 82 00 18 */	beq lbl_8028A0C0
/* 8028A0AC  38 80 00 01 */	li r4, 1
/* 8028A0B0  81 83 00 00 */	lwz r12, 0(r3)
/* 8028A0B4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8028A0B8  7D 89 03 A6 */	mtctr r12
/* 8028A0BC  4E 80 04 21 */	bctrl 
lbl_8028A0C0:
/* 8028A0C0  38 60 00 00 */	li r3, 0
/* 8028A0C4  48 00 00 18 */	b lbl_8028A0DC
lbl_8028A0C8:
/* 8028A0C8  38 00 00 00 */	li r0, 0
/* 8028A0CC  90 01 00 08 */	stw r0, 8(r1)
/* 8028A0D0  48 00 00 08 */	b lbl_8028A0D8
/* 8028A0D4  4E 80 04 21 */	bctrl 
lbl_8028A0D8:
/* 8028A0D8  7F C3 F3 78 */	mr r3, r30
lbl_8028A0DC:
/* 8028A0DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8028A0E0  48 0D 81 45 */	bl _restgpr_28
/* 8028A0E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028A0E8  7C 08 03 A6 */	mtlr r0
/* 8028A0EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8028A0F0  4E 80 00 20 */	blr 
