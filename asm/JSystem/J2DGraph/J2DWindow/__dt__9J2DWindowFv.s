lbl_802FA880:
/* 802FA880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FA884  7C 08 02 A6 */	mflr r0
/* 802FA888  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FA88C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FA890  93 C1 00 08 */	stw r30, 8(r1)
/* 802FA894  7C 7E 1B 79 */	or. r30, r3, r3
/* 802FA898  7C 9F 23 78 */	mr r31, r4
/* 802FA89C  41 82 00 70 */	beq lbl_802FA90C
/* 802FA8A0  3C 60 80 3D */	lis r3, __vt__9J2DWindow@ha /* 0x803CD108@ha */
/* 802FA8A4  38 03 D1 08 */	addi r0, r3, __vt__9J2DWindow@l /* 0x803CD108@l */
/* 802FA8A8  90 1E 00 00 */	stw r0, 0(r30)
/* 802FA8AC  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 802FA8B0  38 80 00 01 */	li r4, 1
/* 802FA8B4  4B FE 39 81 */	bl __dt__10JUTTextureFv
/* 802FA8B8  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 802FA8BC  38 80 00 01 */	li r4, 1
/* 802FA8C0  4B FE 39 75 */	bl __dt__10JUTTextureFv
/* 802FA8C4  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 802FA8C8  38 80 00 01 */	li r4, 1
/* 802FA8CC  4B FE 39 69 */	bl __dt__10JUTTextureFv
/* 802FA8D0  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 802FA8D4  38 80 00 01 */	li r4, 1
/* 802FA8D8  4B FE 39 5D */	bl __dt__10JUTTextureFv
/* 802FA8DC  80 7E 01 24 */	lwz r3, 0x124(r30)
/* 802FA8E0  4B FD 44 5D */	bl __dl__FPv
/* 802FA8E4  80 7E 01 10 */	lwz r3, 0x110(r30)
/* 802FA8E8  38 80 00 01 */	li r4, 1
/* 802FA8EC  4B FE 39 49 */	bl __dt__10JUTTextureFv
/* 802FA8F0  7F C3 F3 78 */	mr r3, r30
/* 802FA8F4  38 80 00 00 */	li r4, 0
/* 802FA8F8  4B FF BC 95 */	bl __dt__7J2DPaneFv
/* 802FA8FC  7F E0 07 35 */	extsh. r0, r31
/* 802FA900  40 81 00 0C */	ble lbl_802FA90C
/* 802FA904  7F C3 F3 78 */	mr r3, r30
/* 802FA908  4B FD 44 35 */	bl __dl__FPv
lbl_802FA90C:
/* 802FA90C  7F C3 F3 78 */	mr r3, r30
/* 802FA910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FA914  83 C1 00 08 */	lwz r30, 8(r1)
/* 802FA918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FA91C  7C 08 03 A6 */	mtlr r0
/* 802FA920  38 21 00 10 */	addi r1, r1, 0x10
/* 802FA924  4E 80 00 20 */	blr 
