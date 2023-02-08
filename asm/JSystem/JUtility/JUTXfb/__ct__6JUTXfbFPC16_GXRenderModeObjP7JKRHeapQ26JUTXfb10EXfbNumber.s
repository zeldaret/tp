lbl_802E5260:
/* 802E5260  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E5264  7C 08 02 A6 */	mflr r0
/* 802E5268  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E526C  39 61 00 20 */	addi r11, r1, 0x20
/* 802E5270  48 07 CF 65 */	bl _savegpr_27
/* 802E5274  7C 7B 1B 78 */	mr r27, r3
/* 802E5278  7C 9E 23 78 */	mr r30, r4
/* 802E527C  7C BC 2B 78 */	mr r28, r5
/* 802E5280  7C DD 33 78 */	mr r29, r6
/* 802E5284  7F A4 EB 78 */	mr r4, r29
/* 802E5288  4B FF FF A1 */	bl common_init__6JUTXfbFi
/* 802E528C  28 1E 00 00 */	cmplwi r30, 0
/* 802E5290  41 82 00 20 */	beq lbl_802E52B0
/* 802E5294  7F 63 DB 78 */	mr r3, r27
/* 802E5298  A0 9E 00 04 */	lhz r4, 4(r30)
/* 802E529C  A0 BE 00 08 */	lhz r5, 8(r30)
/* 802E52A0  7F 86 E3 78 */	mr r6, r28
/* 802E52A4  7F A7 EB 78 */	mr r7, r29
/* 802E52A8  48 00 01 AD */	bl initiate__6JUTXfbFUsUsP7JKRHeapQ26JUTXfb10EXfbNumber
/* 802E52AC  48 00 00 40 */	b lbl_802E52EC
lbl_802E52B0:
/* 802E52B0  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 802E52B4  80 83 00 04 */	lwz r4, 4(r3)
/* 802E52B8  A3 E4 00 04 */	lhz r31, 4(r4)
/* 802E52BC  A0 64 00 06 */	lhz r3, 6(r4)
/* 802E52C0  7C 7E 1B 78 */	mr r30, r3
/* 802E52C4  A0 84 00 08 */	lhz r4, 8(r4)
/* 802E52C8  48 07 7A A5 */	bl GXGetYScaleFactor
/* 802E52CC  7F C3 F3 78 */	mr r3, r30
/* 802E52D0  48 07 7A 0D */	bl GXGetNumXfbLines
/* 802E52D4  7C 65 1B 78 */	mr r5, r3
/* 802E52D8  7F 63 DB 78 */	mr r3, r27
/* 802E52DC  7F E4 FB 78 */	mr r4, r31
/* 802E52E0  7F 86 E3 78 */	mr r6, r28
/* 802E52E4  7F A7 EB 78 */	mr r7, r29
/* 802E52E8  48 00 01 6D */	bl initiate__6JUTXfbFUsUsP7JKRHeapQ26JUTXfb10EXfbNumber
lbl_802E52EC:
/* 802E52EC  7F 63 DB 78 */	mr r3, r27
/* 802E52F0  39 61 00 20 */	addi r11, r1, 0x20
/* 802E52F4  48 07 CF 2D */	bl _restgpr_27
/* 802E52F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E52FC  7C 08 03 A6 */	mtlr r0
/* 802E5300  38 21 00 20 */	addi r1, r1, 0x20
/* 802E5304  4E 80 00 20 */	blr 
