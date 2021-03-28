lbl_802A4118:
/* 802A4118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A411C  7C 08 02 A6 */	mflr r0
/* 802A4120  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A4124  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A4128  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A412C  7C 7E 1B 78 */	mr r30, r3
/* 802A4130  83 E3 00 58 */	lwz r31, 0x58(r3)
/* 802A4134  48 00 00 20 */	b lbl_802A4154
lbl_802A4138:
/* 802A4138  88 1E 00 00 */	lbz r0, 0(r30)
/* 802A413C  98 01 00 08 */	stb r0, 8(r1)
/* 802A4140  80 7F 00 00 */	lwz r3, 0(r31)
/* 802A4144  38 9E 00 04 */	addi r4, r30, 4
/* 802A4148  38 A1 00 08 */	addi r5, r1, 8
/* 802A414C  4B FF F3 99 */	bl JAIStreamMgr_mixOut___9JAIStreamFRC14JASSoundParams16JAISoundActivity
/* 802A4150  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802A4154:
/* 802A4154  28 1F 00 00 */	cmplwi r31, 0
/* 802A4158  40 82 FF E0 */	bne lbl_802A4138
/* 802A415C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A4160  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A4164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A4168  7C 08 03 A6 */	mtlr r0
/* 802A416C  38 21 00 20 */	addi r1, r1, 0x20
/* 802A4170  4E 80 00 20 */	blr 
