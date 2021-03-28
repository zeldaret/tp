lbl_802F0AFC:
/* 802F0AFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F0B00  7C 08 02 A6 */	mflr r0
/* 802F0B04  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F0B08  39 61 00 20 */	addi r11, r1, 0x20
/* 802F0B0C  48 07 16 D1 */	bl _savegpr_29
/* 802F0B10  7C 7D 1B 78 */	mr r29, r3
/* 802F0B14  7C 9E 23 78 */	mr r30, r4
/* 802F0B18  7C BF 2B 78 */	mr r31, r5
/* 802F0B1C  28 1E 00 08 */	cmplwi r30, 8
/* 802F0B20  40 80 00 0C */	bge lbl_802F0B2C
/* 802F0B24  28 1F 00 00 */	cmplwi r31, 0
/* 802F0B28  40 82 00 0C */	bne lbl_802F0B34
lbl_802F0B2C:
/* 802F0B2C  38 60 00 00 */	li r3, 0
/* 802F0B30  48 00 01 44 */	b lbl_802F0C74
lbl_802F0B34:
/* 802F0B34  38 80 00 00 */	li r4, 0
/* 802F0B38  48 00 00 28 */	b lbl_802F0B60
lbl_802F0B3C:
/* 802F0B3C  54 83 15 BA */	rlwinm r3, r4, 2, 0x16, 0x1d
/* 802F0B40  38 03 01 6C */	addi r0, r3, 0x16c
/* 802F0B44  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802F0B48  28 03 00 00 */	cmplwi r3, 0
/* 802F0B4C  41 82 00 20 */	beq lbl_802F0B6C
/* 802F0B50  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802F0B54  28 00 00 00 */	cmplwi r0, 0
/* 802F0B58  41 82 00 14 */	beq lbl_802F0B6C
/* 802F0B5C  38 84 00 01 */	addi r4, r4, 1
lbl_802F0B60:
/* 802F0B60  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802F0B64  28 00 00 08 */	cmplwi r0, 8
/* 802F0B68  41 80 FF D4 */	blt lbl_802F0B3C
lbl_802F0B6C:
/* 802F0B6C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802F0B70  7C 00 F0 40 */	cmplw r0, r30
/* 802F0B74  40 80 00 0C */	bge lbl_802F0B80
/* 802F0B78  38 60 00 00 */	li r3, 0
/* 802F0B7C  48 00 00 F8 */	b lbl_802F0C74
lbl_802F0B80:
/* 802F0B80  28 00 00 08 */	cmplwi r0, 8
/* 802F0B84  40 82 00 0C */	bne lbl_802F0B90
/* 802F0B88  38 60 00 00 */	li r3, 0
/* 802F0B8C  48 00 00 E8 */	b lbl_802F0C74
lbl_802F0B90:
/* 802F0B90  80 7D 01 88 */	lwz r3, 0x188(r29)
/* 802F0B94  28 03 00 00 */	cmplwi r3, 0
/* 802F0B98  41 82 00 30 */	beq lbl_802F0BC8
/* 802F0B9C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802F0BA0  28 00 00 00 */	cmplwi r0, 0
/* 802F0BA4  40 82 00 24 */	bne lbl_802F0BC8
/* 802F0BA8  88 1D 01 B0 */	lbz r0, 0x1b0(r29)
/* 802F0BAC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802F0BB0  41 82 00 0C */	beq lbl_802F0BBC
/* 802F0BB4  38 80 00 01 */	li r4, 1
/* 802F0BB8  4B FE D6 7D */	bl __dt__10JUTTextureFv
lbl_802F0BBC:
/* 802F0BBC  88 1D 01 B0 */	lbz r0, 0x1b0(r29)
/* 802F0BC0  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802F0BC4  98 1D 01 B0 */	stb r0, 0x1b0(r29)
lbl_802F0BC8:
/* 802F0BC8  38 E0 00 07 */	li r7, 7
/* 802F0BCC  48 00 00 40 */	b lbl_802F0C0C
lbl_802F0BD0:
/* 802F0BD0  54 80 10 3A */	slwi r0, r4, 2
/* 802F0BD4  7C BD 02 14 */	add r5, r29, r0
/* 802F0BD8  80 65 01 68 */	lwz r3, 0x168(r5)
/* 802F0BDC  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 802F0BE0  7C DD 02 14 */	add r6, r29, r0
/* 802F0BE4  90 66 01 6C */	stw r3, 0x16c(r6)
/* 802F0BE8  80 05 01 88 */	lwz r0, 0x188(r5)
/* 802F0BEC  90 06 01 8C */	stw r0, 0x18c(r6)
/* 802F0BF0  54 83 08 3C */	slwi r3, r4, 1
/* 802F0BF4  38 03 00 02 */	addi r0, r3, 2
/* 802F0BF8  7C 9D 02 2E */	lhzx r4, r29, r0
/* 802F0BFC  54 E3 0D FC */	rlwinm r3, r7, 1, 0x17, 0x1e
/* 802F0C00  38 03 00 04 */	addi r0, r3, 4
/* 802F0C04  7C 9D 03 2E */	sthx r4, r29, r0
/* 802F0C08  38 E7 FF FF */	addi r7, r7, -1
lbl_802F0C0C:
/* 802F0C0C  54 E4 06 3E */	clrlwi r4, r7, 0x18
/* 802F0C10  7C 04 F0 40 */	cmplw r4, r30
/* 802F0C14  41 81 FF BC */	bgt lbl_802F0BD0
/* 802F0C18  57 C0 10 3A */	slwi r0, r30, 2
/* 802F0C1C  7C 7D 02 14 */	add r3, r29, r0
/* 802F0C20  93 E3 01 6C */	stw r31, 0x16c(r3)
/* 802F0C24  38 00 00 00 */	li r0, 0
/* 802F0C28  90 03 01 8C */	stw r0, 0x18c(r3)
/* 802F0C2C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802F0C30  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802F0C34  57 C0 08 3C */	slwi r0, r30, 1
/* 802F0C38  7C 7D 02 14 */	add r3, r29, r0
/* 802F0C3C  B0 83 00 04 */	sth r4, 4(r3)
/* 802F0C40  7F A3 EB 78 */	mr r3, r29
/* 802F0C44  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 802F0C48  38 A0 00 01 */	li r5, 1
/* 802F0C4C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802F0C50  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802F0C54  7D 89 03 A6 */	mtctr r12
/* 802F0C58  4E 80 04 21 */	bctrl 
/* 802F0C5C  88 7D 01 B0 */	lbz r3, 0x1b0(r29)
/* 802F0C60  38 00 00 01 */	li r0, 1
/* 802F0C64  7C 00 F0 30 */	slw r0, r0, r30
/* 802F0C68  7C 60 00 78 */	andc r0, r3, r0
/* 802F0C6C  98 1D 01 B0 */	stb r0, 0x1b0(r29)
/* 802F0C70  38 60 00 01 */	li r3, 1
lbl_802F0C74:
/* 802F0C74  39 61 00 20 */	addi r11, r1, 0x20
/* 802F0C78  48 07 15 B1 */	bl _restgpr_29
/* 802F0C7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F0C80  7C 08 03 A6 */	mtlr r0
/* 802F0C84  38 21 00 20 */	addi r1, r1, 0x20
/* 802F0C88  4E 80 00 20 */	blr 
