lbl_802F81A0:
/* 802F81A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F81A4  7C 08 02 A6 */	mflr r0
/* 802F81A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F81AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F81B0  93 C1 00 08 */	stw r30, 8(r1)
/* 802F81B4  7C 7F 1B 78 */	mr r31, r3
/* 802F81B8  7C 9E 23 78 */	mr r30, r4
/* 802F81BC  81 83 00 00 */	lwz r12, 0(r3)
/* 802F81C0  81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 802F81C4  7D 89 03 A6 */	mtctr r12
/* 802F81C8  4E 80 04 21 */	bctrl 
/* 802F81CC  83 FF 00 DC */	lwz r31, 0xdc(r31)
/* 802F81D0  28 1F 00 00 */	cmplwi r31, 0
/* 802F81D4  41 82 00 34 */	beq lbl_802F8208
/* 802F81D8  3B FF FF F4 */	addi r31, r31, -12
/* 802F81DC  48 00 00 2C */	b lbl_802F8208
lbl_802F81E0:
/* 802F81E0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802F81E4  7F C4 F3 78 */	mr r4, r30
/* 802F81E8  81 83 00 00 */	lwz r12, 0(r3)
/* 802F81EC  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 802F81F0  7D 89 03 A6 */	mtctr r12
/* 802F81F4  4E 80 04 21 */	bctrl 
/* 802F81F8  83 FF 00 18 */	lwz r31, 0x18(r31)
/* 802F81FC  28 1F 00 00 */	cmplwi r31, 0
/* 802F8200  41 82 00 08 */	beq lbl_802F8208
/* 802F8204  3B FF FF F4 */	addi r31, r31, -12
lbl_802F8208:
/* 802F8208  28 1F 00 00 */	cmplwi r31, 0
/* 802F820C  40 82 FF D4 */	bne lbl_802F81E0
/* 802F8210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F8214  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F8218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F821C  7C 08 03 A6 */	mtlr r0
/* 802F8220  38 21 00 10 */	addi r1, r1, 0x10
/* 802F8224  4E 80 00 20 */	blr 
