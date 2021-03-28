lbl_80312FBC:
/* 80312FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80312FC0  7C 08 02 A6 */	mflr r0
/* 80312FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80312FC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80312FCC  7C 7F 1B 78 */	mr r31, r3
/* 80312FD0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80312FD4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80312FD8  40 82 00 58 */	bne lbl_80313030
/* 80312FDC  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80312FE0  28 00 00 00 */	cmplwi r0, 0
/* 80312FE4  41 82 00 4C */	beq lbl_80313030
/* 80312FE8  4B FF FE 21 */	bl prepareDraw__14J3DShapePacketCFv
/* 80312FEC  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80312FF0  28 00 00 00 */	cmplwi r0, 0
/* 80312FF4  41 82 00 20 */	beq lbl_80313014
/* 80312FF8  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80312FFC  80 63 00 04 */	lwz r3, 4(r3)
/* 80313000  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80313004  90 0D 90 40 */	stw r0, sTexGenBlock__17J3DDifferedTexMtx(r13)
/* 80313008  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8031300C  90 0D 90 44 */	stw r0, sTexMtxObj__17J3DDifferedTexMtx(r13)
/* 80313010  48 00 00 0C */	b lbl_8031301C
lbl_80313014:
/* 80313014  38 00 00 00 */	li r0, 0
/* 80313018  90 0D 90 40 */	stw r0, sTexGenBlock__17J3DDifferedTexMtx(r13)
lbl_8031301C:
/* 8031301C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80313020  81 83 00 00 */	lwz r12, 0(r3)
/* 80313024  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80313028  7D 89 03 A6 */	mtctr r12
/* 8031302C  4E 80 04 21 */	bctrl 
lbl_80313030:
/* 80313030  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80313034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80313038  7C 08 03 A6 */	mtlr r0
/* 8031303C  38 21 00 10 */	addi r1, r1, 0x10
/* 80313040  4E 80 00 20 */	blr 
