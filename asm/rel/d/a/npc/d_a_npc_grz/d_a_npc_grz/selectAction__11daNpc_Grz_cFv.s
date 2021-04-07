lbl_809EBB10:
/* 809EBB10  3C 80 80 9F */	lis r4, cNullVec__6Z2Calc@ha /* 0x809EF6A0@ha */
/* 809EBB14  38 C4 F6 A0 */	addi r6, r4, cNullVec__6Z2Calc@l /* 0x809EF6A0@l */
/* 809EBB18  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 809EBB1C  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 809EBB20  80 85 00 00 */	lwz r4, 0(r5)
/* 809EBB24  80 05 00 04 */	lwz r0, 4(r5)
/* 809EBB28  90 83 1A 24 */	stw r4, 0x1a24(r3)
/* 809EBB2C  90 03 1A 28 */	stw r0, 0x1a28(r3)
/* 809EBB30  80 05 00 08 */	lwz r0, 8(r5)
/* 809EBB34  90 03 1A 2C */	stw r0, 0x1a2c(r3)
/* 809EBB38  3C 80 80 9F */	lis r4, m__17daNpc_Grz_Param_c@ha /* 0x809EF1F4@ha */
/* 809EBB3C  38 84 F1 F4 */	addi r4, r4, m__17daNpc_Grz_Param_c@l /* 0x809EF1F4@l */
/* 809EBB40  88 04 00 6A */	lbz r0, 0x6a(r4)
/* 809EBB44  28 00 00 00 */	cmplwi r0, 0
/* 809EBB48  41 82 00 20 */	beq lbl_809EBB68
/* 809EBB4C  80 86 03 B4 */	lwz r4, 0x3b4(r6)
/* 809EBB50  80 06 03 B8 */	lwz r0, 0x3b8(r6)
/* 809EBB54  90 83 1A 24 */	stw r4, 0x1a24(r3)
/* 809EBB58  90 03 1A 28 */	stw r0, 0x1a28(r3)
/* 809EBB5C  80 06 03 BC */	lwz r0, 0x3bc(r6)
/* 809EBB60  90 03 1A 2C */	stw r0, 0x1a2c(r3)
/* 809EBB64  48 00 00 98 */	b lbl_809EBBFC
lbl_809EBB68:
/* 809EBB68  88 03 1A 7C */	lbz r0, 0x1a7c(r3)
/* 809EBB6C  2C 00 00 02 */	cmpwi r0, 2
/* 809EBB70  41 82 00 58 */	beq lbl_809EBBC8
/* 809EBB74  40 80 00 70 */	bge lbl_809EBBE4
/* 809EBB78  2C 00 00 01 */	cmpwi r0, 1
/* 809EBB7C  40 80 00 08 */	bge lbl_809EBB84
/* 809EBB80  48 00 00 64 */	b lbl_809EBBE4
lbl_809EBB84:
/* 809EBB84  80 03 1A 84 */	lwz r0, 0x1a84(r3)
/* 809EBB88  2C 00 00 00 */	cmpwi r0, 0
/* 809EBB8C  40 81 00 20 */	ble lbl_809EBBAC
/* 809EBB90  80 86 03 C0 */	lwz r4, 0x3c0(r6)
/* 809EBB94  80 06 03 C4 */	lwz r0, 0x3c4(r6)
/* 809EBB98  90 83 1A 24 */	stw r4, 0x1a24(r3)
/* 809EBB9C  90 03 1A 28 */	stw r0, 0x1a28(r3)
/* 809EBBA0  80 06 03 C8 */	lwz r0, 0x3c8(r6)
/* 809EBBA4  90 03 1A 2C */	stw r0, 0x1a2c(r3)
/* 809EBBA8  48 00 00 54 */	b lbl_809EBBFC
lbl_809EBBAC:
/* 809EBBAC  80 86 03 CC */	lwz r4, 0x3cc(r6)
/* 809EBBB0  80 06 03 D0 */	lwz r0, 0x3d0(r6)
/* 809EBBB4  90 83 1A 24 */	stw r4, 0x1a24(r3)
/* 809EBBB8  90 03 1A 28 */	stw r0, 0x1a28(r3)
/* 809EBBBC  80 06 03 D4 */	lwz r0, 0x3d4(r6)
/* 809EBBC0  90 03 1A 2C */	stw r0, 0x1a2c(r3)
/* 809EBBC4  48 00 00 38 */	b lbl_809EBBFC
lbl_809EBBC8:
/* 809EBBC8  80 86 03 D8 */	lwz r4, 0x3d8(r6)
/* 809EBBCC  80 06 03 DC */	lwz r0, 0x3dc(r6)
/* 809EBBD0  90 83 1A 24 */	stw r4, 0x1a24(r3)
/* 809EBBD4  90 03 1A 28 */	stw r0, 0x1a28(r3)
/* 809EBBD8  80 06 03 E0 */	lwz r0, 0x3e0(r6)
/* 809EBBDC  90 03 1A 2C */	stw r0, 0x1a2c(r3)
/* 809EBBE0  48 00 00 1C */	b lbl_809EBBFC
lbl_809EBBE4:
/* 809EBBE4  80 86 03 E4 */	lwz r4, 0x3e4(r6)
/* 809EBBE8  80 06 03 E8 */	lwz r0, 0x3e8(r6)
/* 809EBBEC  90 83 1A 24 */	stw r4, 0x1a24(r3)
/* 809EBBF0  90 03 1A 28 */	stw r0, 0x1a28(r3)
/* 809EBBF4  80 06 03 EC */	lwz r0, 0x3ec(r6)
/* 809EBBF8  90 03 1A 2C */	stw r0, 0x1a2c(r3)
lbl_809EBBFC:
/* 809EBBFC  38 60 00 01 */	li r3, 1
/* 809EBC00  4E 80 00 20 */	blr 
