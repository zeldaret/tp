lbl_802722B8:
/* 802722B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802722BC  7C 08 02 A6 */	mflr r0
/* 802722C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802722C4  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 802722C8  39 61 00 28 */	addi r11, r1, 0x28
/* 802722CC  48 0E FF 0D */	bl _savegpr_28
/* 802722D0  7C 7C 1B 78 */	mr r28, r3
/* 802722D4  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 802722D8  80 63 00 04 */	lwz r3, 4(r3)
/* 802722DC  A3 E3 00 04 */	lhz r31, 4(r3)
/* 802722E0  A3 C3 00 06 */	lhz r30, 6(r3)
/* 802722E4  A0 83 00 08 */	lhz r4, 8(r3)
/* 802722E8  7F C3 F3 78 */	mr r3, r30
/* 802722EC  48 0E AA 81 */	bl GXGetYScaleFactor
/* 802722F0  FF E0 08 90 */	fmr f31, f1
/* 802722F4  7F C3 F3 78 */	mr r3, r30
/* 802722F8  48 0E A9 E5 */	bl GXGetNumXfbLines
/* 802722FC  7C 7D 1B 78 */	mr r29, r3
/* 80272300  80 1C 00 08 */	lwz r0, 8(r28)
/* 80272304  90 01 00 08 */	stw r0, 8(r1)
/* 80272308  38 61 00 08 */	addi r3, r1, 8
/* 8027230C  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 80272310  48 0E AD 61 */	bl GXSetCopyClear
/* 80272314  38 60 00 00 */	li r3, 0
/* 80272318  38 80 00 00 */	li r4, 0
/* 8027231C  7F E5 FB 78 */	mr r5, r31
/* 80272320  7F C6 F3 78 */	mr r6, r30
/* 80272324  48 0E A6 E1 */	bl GXSetDispCopySrc
/* 80272328  7F E3 FB 78 */	mr r3, r31
/* 8027232C  7F A4 EB 78 */	mr r4, r29
/* 80272330  48 0E A7 CD */	bl GXSetDispCopyDst
/* 80272334  FC 20 F8 90 */	fmr f1, f31
/* 80272338  48 0E AC 6D */	bl GXSetDispCopyYScale
/* 8027233C  48 0D B3 59 */	bl VIFlush
/* 80272340  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 80272344  80 63 00 04 */	lwz r3, 4(r3)
/* 80272348  38 C3 00 32 */	addi r6, r3, 0x32
/* 8027234C  38 83 00 1A */	addi r4, r3, 0x1a
/* 80272350  88 63 00 19 */	lbz r3, 0x19(r3)
/* 80272354  38 A0 00 01 */	li r5, 1
/* 80272358  48 0E AD 91 */	bl GXSetCopyFilter
/* 8027235C  A0 7C 00 26 */	lhz r3, 0x26(r28)
/* 80272360  48 0E A9 25 */	bl GXSetCopyClamp
/* 80272364  A0 7C 00 14 */	lhz r3, 0x14(r28)
/* 80272368  48 0E AF 89 */	bl GXSetDispCopyGamma
/* 8027236C  38 60 00 01 */	li r3, 1
/* 80272370  38 80 00 03 */	li r4, 3
/* 80272374  38 A0 00 01 */	li r5, 1
/* 80272378  48 0E D9 25 */	bl GXSetZMode
/* 8027237C  88 1C 00 24 */	lbz r0, 0x24(r28)
/* 80272380  28 00 00 00 */	cmplwi r0, 0
/* 80272384  41 82 00 0C */	beq lbl_80272390
/* 80272388  38 60 00 01 */	li r3, 1
/* 8027238C  48 0E D8 E5 */	bl GXSetAlphaUpdate
lbl_80272390:
/* 80272390  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 80272394  39 61 00 28 */	addi r11, r1, 0x28
/* 80272398  48 0E FE 8D */	bl _restgpr_28
/* 8027239C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802723A0  7C 08 03 A6 */	mtlr r0
/* 802723A4  38 21 00 30 */	addi r1, r1, 0x30
/* 802723A8  4E 80 00 20 */	blr 
