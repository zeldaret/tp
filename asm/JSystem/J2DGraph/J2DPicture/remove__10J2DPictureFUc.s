lbl_802FD6F4:
/* 802FD6F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FD6F8  7C 08 02 A6 */	mflr r0
/* 802FD6FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FD700  39 61 00 20 */	addi r11, r1, 0x20
/* 802FD704  48 06 4A D5 */	bl _savegpr_28
/* 802FD708  7C 7F 1B 78 */	mr r31, r3
/* 802FD70C  7C 9C 23 78 */	mr r28, r4
/* 802FD710  88 03 01 08 */	lbz r0, 0x108(r3)
/* 802FD714  54 9E 06 3E */	clrlwi r30, r4, 0x18
/* 802FD718  7C 00 F0 40 */	cmplw r0, r30
/* 802FD71C  40 81 00 0C */	ble lbl_802FD728
/* 802FD720  28 00 00 01 */	cmplwi r0, 1
/* 802FD724  40 82 00 0C */	bne lbl_802FD730
lbl_802FD728:
/* 802FD728  38 60 00 00 */	li r3, 0
/* 802FD72C  48 00 00 D0 */	b lbl_802FD7FC
lbl_802FD730:
/* 802FD730  88 7F 01 09 */	lbz r3, 0x109(r31)
/* 802FD734  38 00 00 01 */	li r0, 1
/* 802FD738  7C 1D F0 30 */	slw r29, r0, r30
/* 802FD73C  7C 60 E8 39 */	and. r0, r3, r29
/* 802FD740  41 82 00 18 */	beq lbl_802FD758
/* 802FD744  57 80 15 BA */	rlwinm r0, r28, 2, 0x16, 0x1d
/* 802FD748  7C 7F 02 14 */	add r3, r31, r0
/* 802FD74C  80 63 01 00 */	lwz r3, 0x100(r3)
/* 802FD750  38 80 00 01 */	li r4, 1
/* 802FD754  4B FE 0A E1 */	bl __dt__10JUTTextureFv
lbl_802FD758:
/* 802FD758  7F 86 E3 78 */	mr r6, r28
/* 802FD75C  48 00 00 30 */	b lbl_802FD78C
lbl_802FD760:
/* 802FD760  54 60 10 3A */	slwi r0, r3, 2
/* 802FD764  7C 9F 02 14 */	add r4, r31, r0
/* 802FD768  80 64 01 04 */	lwz r3, 0x104(r4)
/* 802FD76C  54 C0 15 BA */	rlwinm r0, r6, 2, 0x16, 0x1d
/* 802FD770  7C BF 02 14 */	add r5, r31, r0
/* 802FD774  90 65 01 00 */	stw r3, 0x100(r5)
/* 802FD778  C0 04 01 20 */	lfs f0, 0x120(r4)
/* 802FD77C  D0 05 01 1C */	stfs f0, 0x11c(r5)
/* 802FD780  C0 04 01 28 */	lfs f0, 0x128(r4)
/* 802FD784  D0 05 01 24 */	stfs f0, 0x124(r5)
/* 802FD788  38 C6 00 01 */	addi r6, r6, 1
lbl_802FD78C:
/* 802FD78C  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 802FD790  88 BF 01 08 */	lbz r5, 0x108(r31)
/* 802FD794  38 05 FF FF */	addi r0, r5, -1
/* 802FD798  7C 03 00 00 */	cmpw r3, r0
/* 802FD79C  41 80 FF C4 */	blt lbl_802FD760
/* 802FD7A0  38 80 00 00 */	li r4, 0
/* 802FD7A4  54 A0 10 3A */	slwi r0, r5, 2
/* 802FD7A8  7C 7F 02 14 */	add r3, r31, r0
/* 802FD7AC  90 83 00 FC */	stw r4, 0xfc(r3)
/* 802FD7B0  88 BF 01 09 */	lbz r5, 0x109(r31)
/* 802FD7B4  38 1D FF FF */	addi r0, r29, -1
/* 802FD7B8  7C A4 00 38 */	and r4, r5, r0
/* 802FD7BC  38 60 00 01 */	li r3, 1
/* 802FD7C0  38 1E 00 01 */	addi r0, r30, 1
/* 802FD7C4  7C 63 00 30 */	slw r3, r3, r0
/* 802FD7C8  38 03 FF FF */	addi r0, r3, -1
/* 802FD7CC  7C A0 00 78 */	andc r0, r5, r0
/* 802FD7D0  7C 00 0E 70 */	srawi r0, r0, 1
/* 802FD7D4  7C 80 03 78 */	or r0, r4, r0
/* 802FD7D8  98 1F 01 09 */	stb r0, 0x109(r31)
/* 802FD7DC  88 7F 01 08 */	lbz r3, 0x108(r31)
/* 802FD7E0  38 03 FF FF */	addi r0, r3, -1
/* 802FD7E4  98 1F 01 08 */	stb r0, 0x108(r31)
/* 802FD7E8  7F E3 FB 78 */	mr r3, r31
/* 802FD7EC  48 00 12 D9 */	bl setBlendKonstColor__10J2DPictureFv
/* 802FD7F0  7F E3 FB 78 */	mr r3, r31
/* 802FD7F4  48 00 13 A1 */	bl setBlendKonstAlpha__10J2DPictureFv
/* 802FD7F8  38 60 00 01 */	li r3, 1
lbl_802FD7FC:
/* 802FD7FC  39 61 00 20 */	addi r11, r1, 0x20
/* 802FD800  48 06 4A 25 */	bl _restgpr_28
/* 802FD804  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FD808  7C 08 03 A6 */	mtlr r0
/* 802FD80C  38 21 00 20 */	addi r1, r1, 0x20
/* 802FD810  4E 80 00 20 */	blr 
