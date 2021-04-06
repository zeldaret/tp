lbl_802CDCEC:
/* 802CDCEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CDCF0  7C 08 02 A6 */	mflr r0
/* 802CDCF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802CDCF8  39 61 00 30 */	addi r11, r1, 0x30
/* 802CDCFC  48 09 44 D1 */	bl _savegpr_25
/* 802CDD00  7C 7E 1B 78 */	mr r30, r3
/* 802CDD04  7C 9F 23 78 */	mr r31, r4
/* 802CDD08  3B 20 00 00 */	li r25, 0
/* 802CDD0C  3C 60 80 3D */	lis r3, __files@ha /* 0x803D29B0@ha */
/* 802CDD10  38 63 29 B0 */	addi r3, r3, __files@l /* 0x803D29B0@l */
/* 802CDD14  3B 63 00 A0 */	addi r27, r3, 0xa0
/* 802CDD18  3C 60 80 3A */	lis r3, Z2AudioMgr__stringBase0@ha /* 0x8039CA58@ha */
/* 802CDD1C  3B 83 CA 58 */	addi r28, r3, Z2AudioMgr__stringBase0@l /* 0x8039CA58@l */
/* 802CDD20  3B A0 00 01 */	li r29, 1
/* 802CDD24  48 00 00 7C */	b lbl_802CDDA0
lbl_802CDD28:
/* 802CDD28  28 19 00 01 */	cmplwi r25, 1
/* 802CDD2C  41 80 00 18 */	blt lbl_802CDD44
/* 802CDD30  7F 63 DB 78 */	mr r3, r27
/* 802CDD34  38 9C 00 34 */	addi r4, r28, 0x34
/* 802CDD38  4C C6 31 82 */	crclr 6
/* 802CDD3C  48 09 8A 61 */	bl fprintf
/* 802CDD40  48 09 4D 7D */	bl abort
lbl_802CDD44:
/* 802CDD44  80 1E 00 04 */	lwz r0, 4(r30)
/* 802CDD48  7F BA C8 30 */	slw r26, r29, r25
/* 802CDD4C  7C 00 D0 39 */	and. r0, r0, r26
/* 802CDD50  40 82 00 4C */	bne lbl_802CDD9C
/* 802CDD54  28 19 00 01 */	cmplwi r25, 1
/* 802CDD58  41 80 00 20 */	blt lbl_802CDD78
/* 802CDD5C  7F 63 DB 78 */	mr r3, r27
/* 802CDD60  3C 80 80 3A */	lis r4, Z2AudioMgr__stringBase0@ha /* 0x8039CA58@ha */
/* 802CDD64  38 84 CA 58 */	addi r4, r4, Z2AudioMgr__stringBase0@l /* 0x8039CA58@l */
/* 802CDD68  38 84 00 57 */	addi r4, r4, 0x57
/* 802CDD6C  4C C6 31 82 */	crclr 6
/* 802CDD70  48 09 8A 2D */	bl fprintf
/* 802CDD74  48 09 4D 49 */	bl abort
lbl_802CDD78:
/* 802CDD78  80 1E 00 04 */	lwz r0, 4(r30)
/* 802CDD7C  7C 00 D3 78 */	or r0, r0, r26
/* 802CDD80  90 1E 00 04 */	stw r0, 4(r30)
/* 802CDD84  1C 19 00 44 */	mulli r0, r25, 0x44
/* 802CDD88  7C 7E 02 14 */	add r3, r30, r0
/* 802CDD8C  80 03 00 44 */	lwz r0, 0x44(r3)
/* 802CDD90  90 1F 00 00 */	stw r0, 0(r31)
/* 802CDD94  80 63 00 40 */	lwz r3, 0x40(r3)
/* 802CDD98  48 00 00 18 */	b lbl_802CDDB0
lbl_802CDD9C:
/* 802CDD9C  3B 39 00 01 */	addi r25, r25, 1
lbl_802CDDA0:
/* 802CDDA0  80 1E 00 4C */	lwz r0, 0x4c(r30)
/* 802CDDA4  7C 19 00 40 */	cmplw r25, r0
/* 802CDDA8  41 80 FF 80 */	blt lbl_802CDD28
/* 802CDDAC  38 60 00 00 */	li r3, 0
lbl_802CDDB0:
/* 802CDDB0  39 61 00 30 */	addi r11, r1, 0x30
/* 802CDDB4  48 09 44 65 */	bl _restgpr_25
/* 802CDDB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CDDBC  7C 08 03 A6 */	mtlr r0
/* 802CDDC0  38 21 00 30 */	addi r1, r1, 0x30
/* 802CDDC4  4E 80 00 20 */	blr 
