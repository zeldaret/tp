lbl_80284960:
/* 80284960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80284964  7C 08 02 A6 */	mflr r0
/* 80284968  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028496C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80284970  7C 9F 23 78 */	mr r31, r4
/* 80284974  80 64 00 00 */	lwz r3, 0(r4)
/* 80284978  A0 03 00 04 */	lhz r0, 4(r3)
/* 8028497C  2C 00 00 04 */	cmpwi r0, 4
/* 80284980  41 82 00 9C */	beq lbl_80284A1C
/* 80284984  40 80 00 1C */	bge lbl_802849A0
/* 80284988  2C 00 00 02 */	cmpwi r0, 2
/* 8028498C  41 82 00 48 */	beq lbl_802849D4
/* 80284990  40 80 00 68 */	bge lbl_802849F8
/* 80284994  2C 00 00 01 */	cmpwi r0, 1
/* 80284998  40 80 00 18 */	bge lbl_802849B0
/* 8028499C  48 00 00 EC */	b lbl_80284A88
lbl_802849A0:
/* 802849A0  2C 00 00 06 */	cmpwi r0, 6
/* 802849A4  41 82 00 C0 */	beq lbl_80284A64
/* 802849A8  40 80 00 E0 */	bge lbl_80284A88
/* 802849AC  48 00 00 94 */	b lbl_80284A40
lbl_802849B0:
/* 802849B0  38 60 00 40 */	li r3, 0x40
/* 802849B4  48 04 A2 99 */	bl __nw__FUl
/* 802849B8  7C 60 1B 79 */	or. r0, r3, r3
/* 802849BC  41 82 00 10 */	beq lbl_802849CC
/* 802849C0  7F E4 FB 78 */	mr r4, r31
/* 802849C4  4B FF F8 91 */	bl __ct__Q37JStudio3fvb17TObject_compositeFRCQ47JStudio3fvb4data13TParse_TBlock
/* 802849C8  7C 60 1B 78 */	mr r0, r3
lbl_802849CC:
/* 802849CC  7C 03 03 78 */	mr r3, r0
/* 802849D0  48 00 00 BC */	b lbl_80284A8C
lbl_802849D4:
/* 802849D4  38 60 00 28 */	li r3, 0x28
/* 802849D8  48 04 A2 75 */	bl __nw__FUl
/* 802849DC  7C 60 1B 79 */	or. r0, r3, r3
/* 802849E0  41 82 00 10 */	beq lbl_802849F0
/* 802849E4  7F E4 FB 78 */	mr r4, r31
/* 802849E8  4B FF F9 51 */	bl __ct__Q37JStudio3fvb16TObject_constantFRCQ47JStudio3fvb4data13TParse_TBlock
/* 802849EC  7C 60 1B 78 */	mr r0, r3
lbl_802849F0:
/* 802849F0  7C 03 03 78 */	mr r3, r0
/* 802849F4  48 00 00 98 */	b lbl_80284A8C
lbl_802849F8:
/* 802849F8  38 60 00 70 */	li r3, 0x70
/* 802849FC  48 04 A2 51 */	bl __nw__FUl
/* 80284A00  7C 60 1B 79 */	or. r0, r3, r3
/* 80284A04  41 82 00 10 */	beq lbl_80284A14
/* 80284A08  7F E4 FB 78 */	mr r4, r31
/* 80284A0C  4B FF F9 BD */	bl __ct__Q37JStudio3fvb18TObject_transitionFRCQ47JStudio3fvb4data13TParse_TBlock
/* 80284A10  7C 60 1B 78 */	mr r0, r3
lbl_80284A14:
/* 80284A14  7C 03 03 78 */	mr r3, r0
/* 80284A18  48 00 00 74 */	b lbl_80284A8C
lbl_80284A1C:
/* 80284A1C  38 60 00 78 */	li r3, 0x78
/* 80284A20  48 04 A2 2D */	bl __nw__FUl
/* 80284A24  7C 60 1B 79 */	or. r0, r3, r3
/* 80284A28  41 82 00 10 */	beq lbl_80284A38
/* 80284A2C  7F E4 FB 78 */	mr r4, r31
/* 80284A30  4B FF FA 31 */	bl __ct__Q37JStudio3fvb12TObject_listFRCQ47JStudio3fvb4data13TParse_TBlock
/* 80284A34  7C 60 1B 78 */	mr r0, r3
lbl_80284A38:
/* 80284A38  7C 03 03 78 */	mr r3, r0
/* 80284A3C  48 00 00 50 */	b lbl_80284A8C
lbl_80284A40:
/* 80284A40  38 60 00 78 */	li r3, 0x78
/* 80284A44  48 04 A2 09 */	bl __nw__FUl
/* 80284A48  7C 60 1B 79 */	or. r0, r3, r3
/* 80284A4C  41 82 00 10 */	beq lbl_80284A5C
/* 80284A50  7F E4 FB 78 */	mr r4, r31
/* 80284A54  4B FF FA AD */	bl __ct__Q37JStudio3fvb22TObject_list_parameterFRCQ47JStudio3fvb4data13TParse_TBlock
/* 80284A58  7C 60 1B 78 */	mr r0, r3
lbl_80284A5C:
/* 80284A5C  7C 03 03 78 */	mr r3, r0
/* 80284A60  48 00 00 2C */	b lbl_80284A8C
lbl_80284A64:
/* 80284A64  38 60 00 80 */	li r3, 0x80
/* 80284A68  48 04 A1 E5 */	bl __nw__FUl
/* 80284A6C  7C 60 1B 79 */	or. r0, r3, r3
/* 80284A70  41 82 00 10 */	beq lbl_80284A80
/* 80284A74  7F E4 FB 78 */	mr r4, r31
/* 80284A78  4B FF FB 39 */	bl __ct__Q37JStudio3fvb15TObject_hermiteFRCQ47JStudio3fvb4data13TParse_TBlock
/* 80284A7C  7C 60 1B 78 */	mr r0, r3
lbl_80284A80:
/* 80284A80  7C 03 03 78 */	mr r3, r0
/* 80284A84  48 00 00 08 */	b lbl_80284A8C
lbl_80284A88:
/* 80284A88  38 60 00 00 */	li r3, 0
lbl_80284A8C:
/* 80284A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80284A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80284A94  7C 08 03 A6 */	mtlr r0
/* 80284A98  38 21 00 10 */	addi r1, r1, 0x10
/* 80284A9C  4E 80 00 20 */	blr 
