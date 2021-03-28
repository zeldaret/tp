lbl_802EB998:
/* 802EB998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EB99C  7C 08 02 A6 */	mflr r0
/* 802EB9A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EB9A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EB9A8  93 C1 00 08 */	stw r30, 8(r1)
/* 802EB9AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802EB9B0  7C 9F 23 78 */	mr r31, r4
/* 802EB9B4  41 82 00 80 */	beq lbl_802EBA34
/* 802EB9B8  3C 60 80 3D */	lis r3, __vt__12J2DTevBlock1@ha
/* 802EB9BC  38 03 CD B8 */	addi r0, r3, __vt__12J2DTevBlock1@l
/* 802EB9C0  90 1E 00 00 */	stw r0, 0(r30)
/* 802EB9C4  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 802EB9C8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802EB9CC  41 82 00 10 */	beq lbl_802EB9DC
/* 802EB9D0  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 802EB9D4  38 80 00 01 */	li r4, 1
/* 802EB9D8  4B FF 28 5D */	bl __dt__10JUTTextureFv
lbl_802EB9DC:
/* 802EB9DC  80 7E 00 54 */	lwz r3, 0x54(r30)
/* 802EB9E0  4B FE 33 5D */	bl __dl__FPv
/* 802EB9E4  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 802EB9E8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802EB9EC  41 82 00 24 */	beq lbl_802EBA10
/* 802EB9F0  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 802EB9F4  28 03 00 00 */	cmplwi r3, 0
/* 802EB9F8  41 82 00 18 */	beq lbl_802EBA10
/* 802EB9FC  38 80 00 01 */	li r4, 1
/* 802EBA00  81 83 00 00 */	lwz r12, 0(r3)
/* 802EBA04  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EBA08  7D 89 03 A6 */	mtctr r12
/* 802EBA0C  4E 80 04 21 */	bctrl 
lbl_802EBA10:
/* 802EBA10  28 1E 00 00 */	cmplwi r30, 0
/* 802EBA14  41 82 00 10 */	beq lbl_802EBA24
/* 802EBA18  3C 60 80 3D */	lis r3, __vt__11J2DTevBlock@ha
/* 802EBA1C  38 03 CE 74 */	addi r0, r3, __vt__11J2DTevBlock@l
/* 802EBA20  90 1E 00 00 */	stw r0, 0(r30)
lbl_802EBA24:
/* 802EBA24  7F E0 07 35 */	extsh. r0, r31
/* 802EBA28  40 81 00 0C */	ble lbl_802EBA34
/* 802EBA2C  7F C3 F3 78 */	mr r3, r30
/* 802EBA30  4B FE 33 0D */	bl __dl__FPv
lbl_802EBA34:
/* 802EBA34  7F C3 F3 78 */	mr r3, r30
/* 802EBA38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EBA3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EBA40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EBA44  7C 08 03 A6 */	mtlr r0
/* 802EBA48  38 21 00 10 */	addi r1, r1, 0x10
/* 802EBA4C  4E 80 00 20 */	blr 
