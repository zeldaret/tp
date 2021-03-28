lbl_802D8698:
/* 802D8698  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802D869C  7C 08 02 A6 */	mflr r0
/* 802D86A0  90 01 00 64 */	stw r0, 0x64(r1)
/* 802D86A4  39 61 00 60 */	addi r11, r1, 0x60
/* 802D86A8  48 08 9B 35 */	bl _savegpr_29
/* 802D86AC  7C 7F 1B 78 */	mr r31, r3
/* 802D86B0  7C 9E 23 78 */	mr r30, r4
/* 802D86B4  80 03 00 50 */	lwz r0, 0x50(r3)
/* 802D86B8  28 00 00 00 */	cmplwi r0, 0
/* 802D86BC  40 82 00 18 */	bne lbl_802D86D4
/* 802D86C0  81 83 00 00 */	lwz r12, 0(r3)
/* 802D86C4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802D86C8  7D 89 03 A6 */	mtctr r12
/* 802D86CC  4E 80 04 21 */	bctrl 
/* 802D86D0  48 00 00 EC */	b lbl_802D87BC
lbl_802D86D4:
/* 802D86D4  4B FF E0 61 */	bl findPtrResource__10JKRArchiveCFPCv
/* 802D86D8  7C 7D 1B 79 */	or. r29, r3, r3
/* 802D86DC  40 82 00 0C */	bne lbl_802D86E8
/* 802D86E0  38 60 FF FF */	li r3, -1
/* 802D86E4  48 00 00 D8 */	b lbl_802D87BC
lbl_802D86E8:
/* 802D86E8  80 1D 00 04 */	lwz r0, 4(r29)
/* 802D86EC  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 802D86F0  40 82 00 20 */	bne lbl_802D8710
/* 802D86F4  7F E3 FB 78 */	mr r3, r31
/* 802D86F8  7F C4 F3 78 */	mr r4, r30
/* 802D86FC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D8700  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802D8704  7D 89 03 A6 */	mtctr r12
/* 802D8708  4E 80 04 21 */	bctrl 
/* 802D870C  48 00 00 B0 */	b lbl_802D87BC
lbl_802D8710:
/* 802D8710  7F E3 FB 78 */	mr r3, r31
/* 802D8714  7F A4 EB 78 */	mr r4, r29
/* 802D8718  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D871C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802D8720  7D 89 03 A6 */	mtctr r12
/* 802D8724  4E 80 04 21 */	bctrl 
/* 802D8728  28 03 00 00 */	cmplwi r3, 0
/* 802D872C  41 82 00 08 */	beq lbl_802D8734
/* 802D8730  48 00 00 8C */	b lbl_802D87BC
lbl_802D8734:
/* 802D8734  38 01 00 2F */	addi r0, r1, 0x2f
/* 802D8738  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 802D873C  38 00 00 00 */	li r0, 0
/* 802D8740  90 01 00 08 */	stw r0, 8(r1)
/* 802D8744  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 802D8748  7F C4 F3 78 */	mr r4, r30
/* 802D874C  38 A0 00 02 */	li r5, 2
/* 802D8750  38 C0 00 20 */	li r6, 0x20
/* 802D8754  38 E0 00 00 */	li r7, 0
/* 802D8758  39 00 00 01 */	li r8, 1
/* 802D875C  81 3F 00 64 */	lwz r9, 0x64(r31)
/* 802D8760  80 1D 00 08 */	lwz r0, 8(r29)
/* 802D8764  7D 29 02 14 */	add r9, r9, r0
/* 802D8768  39 40 00 00 */	li r10, 0
/* 802D876C  48 00 14 E9 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D8770  7F C3 F3 78 */	mr r3, r30
/* 802D8774  38 80 00 20 */	li r4, 0x20
/* 802D8778  48 06 2E 09 */	bl DCInvalidateRange
/* 802D877C  88 BE 00 07 */	lbz r5, 7(r30)
/* 802D8780  88 9E 00 06 */	lbz r4, 6(r30)
/* 802D8784  88 7E 00 04 */	lbz r3, 4(r30)
/* 802D8788  88 1E 00 05 */	lbz r0, 5(r30)
/* 802D878C  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D8790  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D8794  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D8798  7C BE 03 78 */	or r30, r5, r0
/* 802D879C  7F E3 FB 78 */	mr r3, r31
/* 802D87A0  7F A4 EB 78 */	mr r4, r29
/* 802D87A4  7F C5 F3 78 */	mr r5, r30
/* 802D87A8  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D87AC  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802D87B0  7D 89 03 A6 */	mtctr r12
/* 802D87B4  4E 80 04 21 */	bctrl 
/* 802D87B8  7F C3 F3 78 */	mr r3, r30
lbl_802D87BC:
/* 802D87BC  39 61 00 60 */	addi r11, r1, 0x60
/* 802D87C0  48 08 9A 69 */	bl _restgpr_29
/* 802D87C4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802D87C8  7C 08 03 A6 */	mtlr r0
/* 802D87CC  38 21 00 60 */	addi r1, r1, 0x60
/* 802D87D0  4E 80 00 20 */	blr 
