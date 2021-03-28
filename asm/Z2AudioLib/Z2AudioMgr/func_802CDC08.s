lbl_802CDC08:
/* 802CDC08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CDC0C  7C 08 02 A6 */	mflr r0
/* 802CDC10  90 01 00 34 */	stw r0, 0x34(r1)
/* 802CDC14  39 61 00 30 */	addi r11, r1, 0x30
/* 802CDC18  48 09 45 B1 */	bl _savegpr_24
/* 802CDC1C  7C 7F 1B 78 */	mr r31, r3
/* 802CDC20  7C 98 23 78 */	mr r24, r4
/* 802CDC24  3B 20 00 00 */	li r25, 0
/* 802CDC28  3B C0 00 00 */	li r30, 0
/* 802CDC2C  3C 60 80 3D */	lis r3, __files@ha
/* 802CDC30  38 63 29 B0 */	addi r3, r3, __files@l
/* 802CDC34  3B 63 00 A0 */	addi r27, r3, 0xa0
/* 802CDC38  3C 60 80 3A */	lis r3, Z2AudioMgr__stringBase0@ha
/* 802CDC3C  3B 83 CA 58 */	addi r28, r3, Z2AudioMgr__stringBase0@l
/* 802CDC40  3B A0 00 01 */	li r29, 1
/* 802CDC44  48 00 00 80 */	b lbl_802CDCC4
lbl_802CDC48:
/* 802CDC48  28 19 00 01 */	cmplwi r25, 1
/* 802CDC4C  41 80 00 18 */	blt lbl_802CDC64
/* 802CDC50  7F 63 DB 78 */	mr r3, r27
/* 802CDC54  38 9C 00 34 */	addi r4, r28, 0x34
/* 802CDC58  4C C6 31 82 */	crclr 6
/* 802CDC5C  48 09 8B 41 */	bl fprintf
/* 802CDC60  48 09 4E 5D */	bl abort
lbl_802CDC64:
/* 802CDC64  80 1F 00 04 */	lwz r0, 4(r31)
/* 802CDC68  7F BA C8 30 */	slw r26, r29, r25
/* 802CDC6C  7C 00 D0 39 */	and. r0, r0, r26
/* 802CDC70  41 82 00 4C */	beq lbl_802CDCBC
/* 802CDC74  38 1E 00 40 */	addi r0, r30, 0x40
/* 802CDC78  7C 1F 00 2E */	lwzx r0, r31, r0
/* 802CDC7C  7C 18 00 40 */	cmplw r24, r0
/* 802CDC80  40 82 00 3C */	bne lbl_802CDCBC
/* 802CDC84  28 19 00 01 */	cmplwi r25, 1
/* 802CDC88  41 80 00 20 */	blt lbl_802CDCA8
/* 802CDC8C  7F 63 DB 78 */	mr r3, r27
/* 802CDC90  3C 80 80 3A */	lis r4, Z2AudioMgr__stringBase0@ha
/* 802CDC94  38 84 CA 58 */	addi r4, r4, Z2AudioMgr__stringBase0@l
/* 802CDC98  38 84 00 10 */	addi r4, r4, 0x10
/* 802CDC9C  4C C6 31 82 */	crclr 6
/* 802CDCA0  48 09 8A FD */	bl fprintf
/* 802CDCA4  48 09 4E 19 */	bl abort
lbl_802CDCA8:
/* 802CDCA8  80 1F 00 04 */	lwz r0, 4(r31)
/* 802CDCAC  7C 00 D0 78 */	andc r0, r0, r26
/* 802CDCB0  90 1F 00 04 */	stw r0, 4(r31)
/* 802CDCB4  38 60 00 01 */	li r3, 1
/* 802CDCB8  48 00 00 1C */	b lbl_802CDCD4
lbl_802CDCBC:
/* 802CDCBC  3B 39 00 01 */	addi r25, r25, 1
/* 802CDCC0  3B DE 00 44 */	addi r30, r30, 0x44
lbl_802CDCC4:
/* 802CDCC4  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 802CDCC8  7C 19 00 40 */	cmplw r25, r0
/* 802CDCCC  41 80 FF 7C */	blt lbl_802CDC48
/* 802CDCD0  38 60 00 00 */	li r3, 0
lbl_802CDCD4:
/* 802CDCD4  39 61 00 30 */	addi r11, r1, 0x30
/* 802CDCD8  48 09 45 3D */	bl _restgpr_24
/* 802CDCDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CDCE0  7C 08 03 A6 */	mtlr r0
/* 802CDCE4  38 21 00 30 */	addi r1, r1, 0x30
/* 802CDCE8  4E 80 00 20 */	blr 
