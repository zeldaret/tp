lbl_802F030C:
/* 802F030C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F0310  7C 08 02 A6 */	mflr r0
/* 802F0314  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F0318  39 61 00 20 */	addi r11, r1, 0x20
/* 802F031C  48 07 1E B9 */	bl _savegpr_27
/* 802F0320  7C 7B 1B 79 */	or. r27, r3, r3
/* 802F0324  7C 9C 23 78 */	mr r28, r4
/* 802F0328  41 82 00 A8 */	beq lbl_802F03D0
/* 802F032C  3C 60 80 3D */	lis r3, __vt__13J2DTevBlock16@ha /* 0x803CCAC8@ha */
/* 802F0330  38 03 CA C8 */	addi r0, r3, __vt__13J2DTevBlock16@l /* 0x803CCAC8@l */
/* 802F0334  90 1B 00 00 */	stw r0, 0(r27)
/* 802F0338  3B A0 00 00 */	li r29, 0
/* 802F033C  3B E0 00 00 */	li r31, 0
/* 802F0340  3B C0 00 01 */	li r30, 1
lbl_802F0344:
/* 802F0344  88 7B 01 B0 */	lbz r3, 0x1b0(r27)
/* 802F0348  7F C0 E8 30 */	slw r0, r30, r29
/* 802F034C  7C 60 00 39 */	and. r0, r3, r0
/* 802F0350  41 82 00 14 */	beq lbl_802F0364
/* 802F0354  38 1F 01 6C */	addi r0, r31, 0x16c
/* 802F0358  7C 7B 00 2E */	lwzx r3, r27, r0
/* 802F035C  38 80 00 01 */	li r4, 1
/* 802F0360  4B FE DE D5 */	bl __dt__10JUTTextureFv
lbl_802F0364:
/* 802F0364  38 1F 01 8C */	addi r0, r31, 0x18c
/* 802F0368  7C 7B 00 2E */	lwzx r3, r27, r0
/* 802F036C  4B FD E9 D1 */	bl __dl__FPv
/* 802F0370  3B BD 00 01 */	addi r29, r29, 1
/* 802F0374  2C 1D 00 08 */	cmpwi r29, 8
/* 802F0378  3B FF 00 04 */	addi r31, r31, 4
/* 802F037C  41 80 FF C8 */	blt lbl_802F0344
/* 802F0380  88 1B 01 B1 */	lbz r0, 0x1b1(r27)
/* 802F0384  28 00 00 00 */	cmplwi r0, 0
/* 802F0388  41 82 00 24 */	beq lbl_802F03AC
/* 802F038C  80 7B 01 AC */	lwz r3, 0x1ac(r27)
/* 802F0390  28 03 00 00 */	cmplwi r3, 0
/* 802F0394  41 82 00 18 */	beq lbl_802F03AC
/* 802F0398  38 80 00 01 */	li r4, 1
/* 802F039C  81 83 00 00 */	lwz r12, 0(r3)
/* 802F03A0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F03A4  7D 89 03 A6 */	mtctr r12
/* 802F03A8  4E 80 04 21 */	bctrl 
lbl_802F03AC:
/* 802F03AC  28 1B 00 00 */	cmplwi r27, 0
/* 802F03B0  41 82 00 10 */	beq lbl_802F03C0
/* 802F03B4  3C 60 80 3D */	lis r3, __vt__11J2DTevBlock@ha /* 0x803CCE74@ha */
/* 802F03B8  38 03 CE 74 */	addi r0, r3, __vt__11J2DTevBlock@l /* 0x803CCE74@l */
/* 802F03BC  90 1B 00 00 */	stw r0, 0(r27)
lbl_802F03C0:
/* 802F03C0  7F 80 07 35 */	extsh. r0, r28
/* 802F03C4  40 81 00 0C */	ble lbl_802F03D0
/* 802F03C8  7F 63 DB 78 */	mr r3, r27
/* 802F03CC  4B FD E9 71 */	bl __dl__FPv
lbl_802F03D0:
/* 802F03D0  7F 63 DB 78 */	mr r3, r27
/* 802F03D4  39 61 00 20 */	addi r11, r1, 0x20
/* 802F03D8  48 07 1E 49 */	bl _restgpr_27
/* 802F03DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F03E0  7C 08 03 A6 */	mtlr r0
/* 802F03E4  38 21 00 20 */	addi r1, r1, 0x20
/* 802F03E8  4E 80 00 20 */	blr 
