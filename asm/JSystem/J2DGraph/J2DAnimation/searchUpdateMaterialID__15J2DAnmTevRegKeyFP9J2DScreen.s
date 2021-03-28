lbl_8030C678:
/* 8030C678  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030C67C  7C 08 02 A6 */	mflr r0
/* 8030C680  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030C684  39 61 00 20 */	addi r11, r1, 0x20
/* 8030C688  48 05 5B 55 */	bl _savegpr_29
/* 8030C68C  7C 7E 1B 78 */	mr r30, r3
/* 8030C690  7C 9F 23 79 */	or. r31, r4, r4
/* 8030C694  41 82 00 D0 */	beq lbl_8030C764
/* 8030C698  80 1F 01 10 */	lwz r0, 0x110(r31)
/* 8030C69C  28 00 00 00 */	cmplwi r0, 0
/* 8030C6A0  41 82 00 C4 */	beq lbl_8030C764
/* 8030C6A4  3B A0 00 00 */	li r29, 0
/* 8030C6A8  48 00 00 4C */	b lbl_8030C6F4
lbl_8030C6AC:
/* 8030C6AC  38 7E 00 28 */	addi r3, r30, 0x28
/* 8030C6B0  7F A4 EB 78 */	mr r4, r29
/* 8030C6B4  4B FD 24 45 */	bl getName__10JUTNameTabCFUs
/* 8030C6B8  7C 64 1B 78 */	mr r4, r3
/* 8030C6BC  80 7F 01 10 */	lwz r3, 0x110(r31)
/* 8030C6C0  4B FD 23 99 */	bl getIndex__10JUTNameTabCFPCc
/* 8030C6C4  2C 03 FF FF */	cmpwi r3, -1
/* 8030C6C8  41 82 00 14 */	beq lbl_8030C6DC
/* 8030C6CC  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 8030C6D0  57 A0 0B FC */	rlwinm r0, r29, 1, 0xf, 0x1e
/* 8030C6D4  7C 64 03 2E */	sthx r3, r4, r0
/* 8030C6D8  48 00 00 18 */	b lbl_8030C6F0
lbl_8030C6DC:
/* 8030C6DC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8030C6E0  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8030C6E4  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8030C6E8  57 A0 0B FC */	rlwinm r0, r29, 1, 0xf, 0x1e
/* 8030C6EC  7C 83 03 2E */	sthx r4, r3, r0
lbl_8030C6F0:
/* 8030C6F0  3B BD 00 01 */	addi r29, r29, 1
lbl_8030C6F4:
/* 8030C6F4  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 8030C6F8  A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 8030C6FC  7C 03 00 40 */	cmplw r3, r0
/* 8030C700  41 80 FF AC */	blt lbl_8030C6AC
/* 8030C704  3B A0 00 00 */	li r29, 0
/* 8030C708  48 00 00 4C */	b lbl_8030C754
lbl_8030C70C:
/* 8030C70C  38 7E 00 3C */	addi r3, r30, 0x3c
/* 8030C710  7F A4 EB 78 */	mr r4, r29
/* 8030C714  4B FD 23 E5 */	bl getName__10JUTNameTabCFUs
/* 8030C718  7C 64 1B 78 */	mr r4, r3
/* 8030C71C  80 7F 01 10 */	lwz r3, 0x110(r31)
/* 8030C720  4B FD 23 39 */	bl getIndex__10JUTNameTabCFPCc
/* 8030C724  2C 03 FF FF */	cmpwi r3, -1
/* 8030C728  41 82 00 14 */	beq lbl_8030C73C
/* 8030C72C  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 8030C730  57 A0 0B FC */	rlwinm r0, r29, 1, 0xf, 0x1e
/* 8030C734  7C 64 03 2E */	sthx r3, r4, r0
/* 8030C738  48 00 00 18 */	b lbl_8030C750
lbl_8030C73C:
/* 8030C73C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8030C740  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8030C744  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8030C748  57 A0 0B FC */	rlwinm r0, r29, 1, 0xf, 0x1e
/* 8030C74C  7C 83 03 2E */	sthx r4, r3, r0
lbl_8030C750:
/* 8030C750  3B BD 00 01 */	addi r29, r29, 1
lbl_8030C754:
/* 8030C754  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 8030C758  A0 1E 00 12 */	lhz r0, 0x12(r30)
/* 8030C75C  7C 03 00 40 */	cmplw r3, r0
/* 8030C760  41 80 FF AC */	blt lbl_8030C70C
lbl_8030C764:
/* 8030C764  39 61 00 20 */	addi r11, r1, 0x20
/* 8030C768  48 05 5A C1 */	bl _restgpr_29
/* 8030C76C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030C770  7C 08 03 A6 */	mtlr r0
/* 8030C774  38 21 00 20 */	addi r1, r1, 0x20
/* 8030C778  4E 80 00 20 */	blr 
