lbl_802BD1FC:
/* 802BD1FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BD200  7C 08 02 A6 */	mflr r0
/* 802BD204  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BD208  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BD20C  93 C1 00 08 */	stw r30, 8(r1)
/* 802BD210  7C 7E 1B 79 */	or. r30, r3, r3
/* 802BD214  7C 9F 23 78 */	mr r31, r4
/* 802BD218  41 82 00 54 */	beq lbl_802BD26C
/* 802BD21C  3C 60 80 3D */	lis r3, __vt__10Z2Audience@ha
/* 802BD220  38 03 AC 98 */	addi r0, r3, __vt__10Z2Audience@l
/* 802BD224  90 1E 00 00 */	stw r0, 0(r30)
/* 802BD228  34 1E 00 04 */	addic. r0, r30, 4
/* 802BD22C  41 82 00 24 */	beq lbl_802BD250
/* 802BD230  34 7E 00 04 */	addic. r3, r30, 4
/* 802BD234  41 82 00 08 */	beq lbl_802BD23C
/* 802BD238  38 63 FF FC */	addi r3, r3, -4
lbl_802BD23C:
/* 802BD23C  80 0D 85 C4 */	lwz r0, data_80450B44(r13)
/* 802BD240  7C 00 18 40 */	cmplw r0, r3
/* 802BD244  40 82 00 0C */	bne lbl_802BD250
/* 802BD248  38 00 00 00 */	li r0, 0
/* 802BD24C  90 0D 85 C4 */	stw r0, data_80450B44(r13)
lbl_802BD250:
/* 802BD250  7F C3 F3 78 */	mr r3, r30
/* 802BD254  38 80 00 00 */	li r4, 0
/* 802BD258  4B FE 1D 9D */	bl __dt__11JAIAudienceFv
/* 802BD25C  7F E0 07 35 */	extsh. r0, r31
/* 802BD260  40 81 00 0C */	ble lbl_802BD26C
/* 802BD264  7F C3 F3 78 */	mr r3, r30
/* 802BD268  48 01 1A D5 */	bl __dl__FPv
lbl_802BD26C:
/* 802BD26C  7F C3 F3 78 */	mr r3, r30
/* 802BD270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BD274  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BD278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BD27C  7C 08 03 A6 */	mtlr r0
/* 802BD280  38 21 00 10 */	addi r1, r1, 0x10
/* 802BD284  4E 80 00 20 */	blr 
