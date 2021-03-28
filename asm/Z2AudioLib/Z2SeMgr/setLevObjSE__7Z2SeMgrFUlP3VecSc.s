lbl_802ADE5C:
/* 802ADE5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802ADE60  7C 08 02 A6 */	mflr r0
/* 802ADE64  90 01 00 34 */	stw r0, 0x34(r1)
/* 802ADE68  39 61 00 30 */	addi r11, r1, 0x30
/* 802ADE6C  48 0B 43 71 */	bl _savegpr_29
/* 802ADE70  7C 7E 1B 78 */	mr r30, r3
/* 802ADE74  7C DF 33 78 */	mr r31, r6
/* 802ADE78  38 60 00 00 */	li r3, 0
/* 802ADE7C  88 FE 01 D0 */	lbz r7, 0x1d0(r30)
/* 802ADE80  48 00 00 20 */	b lbl_802ADEA0
lbl_802ADE84:
/* 802ADE84  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802ADE88  1C C0 00 24 */	mulli r6, r0, 0x24
/* 802ADE8C  38 06 00 84 */	addi r0, r6, 0x84
/* 802ADE90  7C 1E 00 2E */	lwzx r0, r30, r0
/* 802ADE94  7C 00 20 40 */	cmplw r0, r4
/* 802ADE98  41 82 00 14 */	beq lbl_802ADEAC
/* 802ADE9C  38 63 00 01 */	addi r3, r3, 1
lbl_802ADEA0:
/* 802ADEA0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802ADEA4  7C 00 38 40 */	cmplw r0, r7
/* 802ADEA8  41 80 FF DC */	blt lbl_802ADE84
lbl_802ADEAC:
/* 802ADEAC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802ADEB0  7C 00 38 40 */	cmplw r0, r7
/* 802ADEB4  40 82 00 24 */	bne lbl_802ADED8
/* 802ADEB8  28 07 00 0A */	cmplwi r7, 0xa
/* 802ADEBC  41 82 01 20 */	beq lbl_802ADFDC
/* 802ADEC0  1C 00 00 24 */	mulli r0, r0, 0x24
/* 802ADEC4  7C DE 02 14 */	add r6, r30, r0
/* 802ADEC8  90 86 00 84 */	stw r4, 0x84(r6)
/* 802ADECC  88 DE 01 D0 */	lbz r6, 0x1d0(r30)
/* 802ADED0  38 06 00 01 */	addi r0, r6, 1
/* 802ADED4  98 1E 01 D0 */	stb r0, 0x1d0(r30)
lbl_802ADED8:
/* 802ADED8  C0 42 BE 80 */	lfs f2, lit_4042(r2)
/* 802ADEDC  3C C0 80 3A */	lis r6, lit_5054@ha
/* 802ADEE0  38 E6 B9 F0 */	addi r7, r6, lit_5054@l
/* 802ADEE4  80 C7 00 00 */	lwz r6, 0(r7)
/* 802ADEE8  80 07 00 04 */	lwz r0, 4(r7)
/* 802ADEEC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802ADEF0  90 01 00 18 */	stw r0, 0x18(r1)
/* 802ADEF4  80 07 00 08 */	lwz r0, 8(r7)
/* 802ADEF8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802ADEFC  28 05 00 00 */	cmplwi r5, 0
/* 802ADF00  41 82 00 20 */	beq lbl_802ADF20
/* 802ADF04  C0 05 00 00 */	lfs f0, 0(r5)
/* 802ADF08  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802ADF0C  C0 05 00 04 */	lfs f0, 4(r5)
/* 802ADF10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802ADF14  C0 05 00 08 */	lfs f0, 8(r5)
/* 802ADF18  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802ADF1C  48 00 00 2C */	b lbl_802ADF48
lbl_802ADF20:
/* 802ADF20  80 AD 85 C4 */	lwz r5, data_80450B44(r13)
/* 802ADF24  E0 05 01 70 */	psq_l f0, 368(r5), 0, 0 /* qr0 */
/* 802ADF28  C0 25 01 78 */	lfs f1, 0x178(r5)
/* 802ADF2C  F0 01 00 08 */	psq_st f0, 8(r1), 0, 0 /* qr0 */
/* 802ADF30  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802ADF34  C0 01 00 08 */	lfs f0, 8(r1)
/* 802ADF38  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802ADF3C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802ADF40  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802ADF44  D0 21 00 1C */	stfs f1, 0x1c(r1)
lbl_802ADF48:
/* 802ADF48  3C A0 00 08 */	lis r5, 0x0008 /* 0x00080018@ha */
/* 802ADF4C  38 05 00 18 */	addi r0, r5, 0x0018 /* 0x00080018@l */
/* 802ADF50  7C 04 00 00 */	cmpw r4, r0
/* 802ADF54  41 82 00 40 */	beq lbl_802ADF94
/* 802ADF58  40 80 00 2C */	bge lbl_802ADF84
/* 802ADF5C  3C A0 00 07 */	lis r5, 0x0007 /* 0x00070426@ha */
/* 802ADF60  38 05 04 26 */	addi r0, r5, 0x0426 /* 0x00070426@l */
/* 802ADF64  7C 04 00 00 */	cmpw r4, r0
/* 802ADF68  41 82 00 34 */	beq lbl_802ADF9C
/* 802ADF6C  40 80 00 34 */	bge lbl_802ADFA0
/* 802ADF70  3C A0 00 06 */	lis r5, 0x0006 /* 0x000600D6@ha */
/* 802ADF74  38 05 00 D6 */	addi r0, r5, 0x00D6 /* 0x000600D6@l */
/* 802ADF78  7C 04 00 00 */	cmpw r4, r0
/* 802ADF7C  41 82 00 24 */	beq lbl_802ADFA0
/* 802ADF80  48 00 00 20 */	b lbl_802ADFA0
lbl_802ADF84:
/* 802ADF84  38 05 02 10 */	addi r0, r5, 0x210
/* 802ADF88  7C 04 00 00 */	cmpw r4, r0
/* 802ADF8C  41 82 00 14 */	beq lbl_802ADFA0
/* 802ADF90  48 00 00 10 */	b lbl_802ADFA0
lbl_802ADF94:
/* 802ADF94  C0 42 BE 84 */	lfs f2, lit_4043(r2)
/* 802ADF98  48 00 00 08 */	b lbl_802ADFA0
lbl_802ADF9C:
/* 802ADF9C  C0 42 BF 90 */	lfs f2, lit_5085(r2)
lbl_802ADFA0:
/* 802ADFA0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802ADFA4  1F A0 00 24 */	mulli r29, r0, 0x24
/* 802ADFA8  7C 7E EA 14 */	add r3, r30, r29
/* 802ADFAC  D0 43 00 68 */	stfs f2, 0x68(r3)
/* 802ADFB0  38 7D 00 68 */	addi r3, r29, 0x68
/* 802ADFB4  7C 7E 1A 14 */	add r3, r30, r3
/* 802ADFB8  38 81 00 14 */	addi r4, r1, 0x14
/* 802ADFBC  48 00 0B B5 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802ADFC0  7C 9E EA 14 */	add r4, r30, r29
/* 802ADFC4  88 04 00 88 */	lbz r0, 0x88(r4)
/* 802ADFC8  7C 03 07 74 */	extsb r3, r0
/* 802ADFCC  7F E0 07 74 */	extsb r0, r31
/* 802ADFD0  7C 03 00 00 */	cmpw r3, r0
/* 802ADFD4  40 80 00 08 */	bge lbl_802ADFDC
/* 802ADFD8  9B E4 00 88 */	stb r31, 0x88(r4)
lbl_802ADFDC:
/* 802ADFDC  39 61 00 30 */	addi r11, r1, 0x30
/* 802ADFE0  48 0B 42 49 */	bl _restgpr_29
/* 802ADFE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802ADFE8  7C 08 03 A6 */	mtlr r0
/* 802ADFEC  38 21 00 30 */	addi r1, r1, 0x30
/* 802ADFF0  4E 80 00 20 */	blr 
