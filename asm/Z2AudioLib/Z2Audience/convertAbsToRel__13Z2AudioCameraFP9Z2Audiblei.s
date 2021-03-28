lbl_802BCBEC:
/* 802BCBEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BCBF0  7C 08 02 A6 */	mflr r0
/* 802BCBF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BCBF8  39 61 00 30 */	addi r11, r1, 0x30
/* 802BCBFC  48 0A 55 E1 */	bl _savegpr_29
/* 802BCC00  7C 7D 1B 78 */	mr r29, r3
/* 802BCC04  7C 9E 23 78 */	mr r30, r4
/* 802BCC08  7F C3 F3 78 */	mr r3, r30
/* 802BCC0C  7C A4 2B 78 */	mr r4, r5
/* 802BCC10  4B FF F5 F5 */	bl getChannel__9Z2AudibleFi
/* 802BCC14  28 03 00 00 */	cmplwi r3, 0
/* 802BCC18  41 82 00 4C */	beq lbl_802BCC64
/* 802BCC1C  3B E3 00 14 */	addi r31, r3, 0x14
/* 802BCC20  7F A3 EB 78 */	mr r3, r29
/* 802BCC24  38 9E 00 04 */	addi r4, r30, 4
/* 802BCC28  7F E5 FB 78 */	mr r5, r31
/* 802BCC2C  48 08 A1 41 */	bl PSMTXMultVec
/* 802BCC30  7F E3 FB 78 */	mr r3, r31
/* 802BCC34  48 08 A5 1D */	bl PSVECMag
/* 802BCC38  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 802BCC3C  38 61 00 08 */	addi r3, r1, 8
/* 802BCC40  E0 1F 00 00 */	psq_l f0, 0(r31), 0, 0 /* qr0 */
/* 802BCC44  C0 3F 00 08 */	lfs f1, 8(r31)
/* 802BCC48  F0 03 00 00 */	psq_st f0, 0(r3), 0, 0 /* qr0 */
/* 802BCC4C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802BCC50  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 802BCC54  EC 01 00 2A */	fadds f0, f1, f0
/* 802BCC58  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802BCC5C  48 08 A4 F5 */	bl PSVECMag
/* 802BCC60  D0 3F 00 10 */	stfs f1, 0x10(r31)
lbl_802BCC64:
/* 802BCC64  39 61 00 30 */	addi r11, r1, 0x30
/* 802BCC68  48 0A 55 C1 */	bl _restgpr_29
/* 802BCC6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BCC70  7C 08 03 A6 */	mtlr r0
/* 802BCC74  38 21 00 30 */	addi r1, r1, 0x30
/* 802BCC78  4E 80 00 20 */	blr 
