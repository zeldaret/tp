lbl_802F658C:
/* 802F658C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F6590  7C 08 02 A6 */	mflr r0
/* 802F6594  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F6598  39 61 00 20 */	addi r11, r1, 0x20
/* 802F659C  48 06 BC 41 */	bl _savegpr_29
/* 802F65A0  7C 7D 1B 79 */	or. r29, r3, r3
/* 802F65A4  7C 9E 23 78 */	mr r30, r4
/* 802F65A8  41 82 00 A8 */	beq lbl_802F6650
/* 802F65AC  3C 60 80 3D */	lis r3, __vt__7J2DPane@ha
/* 802F65B0  38 03 CF D0 */	addi r0, r3, __vt__7J2DPane@l
/* 802F65B4  90 1D 00 00 */	stw r0, 0(r29)
/* 802F65B8  83 FD 00 DC */	lwz r31, 0xdc(r29)
/* 802F65BC  28 1F 00 00 */	cmplwi r31, 0
/* 802F65C0  41 82 00 48 */	beq lbl_802F6608
/* 802F65C4  3B FF FF F4 */	addi r31, r31, -12
/* 802F65C8  48 00 00 40 */	b lbl_802F6608
lbl_802F65CC:
/* 802F65CC  93 E1 00 08 */	stw r31, 8(r1)
/* 802F65D0  83 FF 00 18 */	lwz r31, 0x18(r31)
/* 802F65D4  28 1F 00 00 */	cmplwi r31, 0
/* 802F65D8  41 82 00 08 */	beq lbl_802F65E0
/* 802F65DC  3B FF FF F4 */	addi r31, r31, -12
lbl_802F65E0:
/* 802F65E0  80 61 00 08 */	lwz r3, 8(r1)
/* 802F65E4  90 61 00 0C */	stw r3, 0xc(r1)
/* 802F65E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802F65EC  28 03 00 00 */	cmplwi r3, 0
/* 802F65F0  41 82 00 18 */	beq lbl_802F6608
/* 802F65F4  38 80 00 01 */	li r4, 1
/* 802F65F8  81 83 00 00 */	lwz r12, 0(r3)
/* 802F65FC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F6600  7D 89 03 A6 */	mtctr r12
/* 802F6604  4E 80 04 21 */	bctrl 
lbl_802F6608:
/* 802F6608  28 1F 00 00 */	cmplwi r31, 0
/* 802F660C  40 82 FF C0 */	bne lbl_802F65CC
/* 802F6610  34 1D 00 DC */	addic. r0, r29, 0xdc
/* 802F6614  41 82 00 2C */	beq lbl_802F6640
/* 802F6618  34 1D 00 E8 */	addic. r0, r29, 0xe8
/* 802F661C  41 82 00 10 */	beq lbl_802F662C
/* 802F6620  38 7D 00 E8 */	addi r3, r29, 0xe8
/* 802F6624  38 80 00 00 */	li r4, 0
/* 802F6628  4B FE 57 ED */	bl __dt__10JSUPtrLinkFv
lbl_802F662C:
/* 802F662C  34 1D 00 DC */	addic. r0, r29, 0xdc
/* 802F6630  41 82 00 10 */	beq lbl_802F6640
/* 802F6634  38 7D 00 DC */	addi r3, r29, 0xdc
/* 802F6638  38 80 00 00 */	li r4, 0
/* 802F663C  4B FE 58 71 */	bl __dt__10JSUPtrListFv
lbl_802F6640:
/* 802F6640  7F C0 07 35 */	extsh. r0, r30
/* 802F6644  40 81 00 0C */	ble lbl_802F6650
/* 802F6648  7F A3 EB 78 */	mr r3, r29
/* 802F664C  4B FD 86 F1 */	bl __dl__FPv
lbl_802F6650:
/* 802F6650  7F A3 EB 78 */	mr r3, r29
/* 802F6654  39 61 00 20 */	addi r11, r1, 0x20
/* 802F6658  48 06 BB D1 */	bl _restgpr_29
/* 802F665C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F6660  7C 08 03 A6 */	mtlr r0
/* 802F6664  38 21 00 20 */	addi r1, r1, 0x20
/* 802F6668  4E 80 00 20 */	blr 
