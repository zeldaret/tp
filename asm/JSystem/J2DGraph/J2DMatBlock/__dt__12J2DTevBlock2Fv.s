lbl_802EC6C8:
/* 802EC6C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EC6CC  7C 08 02 A6 */	mflr r0
/* 802EC6D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EC6D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EC6D8  93 C1 00 08 */	stw r30, 8(r1)
/* 802EC6DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802EC6E0  7C 9F 23 78 */	mr r31, r4
/* 802EC6E4  41 82 00 A0 */	beq lbl_802EC784
/* 802EC6E8  3C 60 80 3D */	lis r3, __vt__12J2DTevBlock2@ha
/* 802EC6EC  38 03 CC FC */	addi r0, r3, __vt__12J2DTevBlock2@l
/* 802EC6F0  90 1E 00 00 */	stw r0, 0(r30)
/* 802EC6F4  88 1E 00 78 */	lbz r0, 0x78(r30)
/* 802EC6F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802EC6FC  41 82 00 10 */	beq lbl_802EC70C
/* 802EC700  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 802EC704  38 80 00 01 */	li r4, 1
/* 802EC708  4B FF 1B 2D */	bl __dt__10JUTTextureFv
lbl_802EC70C:
/* 802EC70C  88 1E 00 78 */	lbz r0, 0x78(r30)
/* 802EC710  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802EC714  41 82 00 10 */	beq lbl_802EC724
/* 802EC718  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 802EC71C  38 80 00 01 */	li r4, 1
/* 802EC720  4B FF 1B 15 */	bl __dt__10JUTTextureFv
lbl_802EC724:
/* 802EC724  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 802EC728  4B FE 26 15 */	bl __dl__FPv
/* 802EC72C  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802EC730  4B FE 26 0D */	bl __dl__FPv
/* 802EC734  88 1E 00 78 */	lbz r0, 0x78(r30)
/* 802EC738  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802EC73C  41 82 00 24 */	beq lbl_802EC760
/* 802EC740  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 802EC744  28 03 00 00 */	cmplwi r3, 0
/* 802EC748  41 82 00 18 */	beq lbl_802EC760
/* 802EC74C  38 80 00 01 */	li r4, 1
/* 802EC750  81 83 00 00 */	lwz r12, 0(r3)
/* 802EC754  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EC758  7D 89 03 A6 */	mtctr r12
/* 802EC75C  4E 80 04 21 */	bctrl 
lbl_802EC760:
/* 802EC760  28 1E 00 00 */	cmplwi r30, 0
/* 802EC764  41 82 00 10 */	beq lbl_802EC774
/* 802EC768  3C 60 80 3D */	lis r3, __vt__11J2DTevBlock@ha
/* 802EC76C  38 03 CE 74 */	addi r0, r3, __vt__11J2DTevBlock@l
/* 802EC770  90 1E 00 00 */	stw r0, 0(r30)
lbl_802EC774:
/* 802EC774  7F E0 07 35 */	extsh. r0, r31
/* 802EC778  40 81 00 0C */	ble lbl_802EC784
/* 802EC77C  7F C3 F3 78 */	mr r3, r30
/* 802EC780  4B FE 25 BD */	bl __dl__FPv
lbl_802EC784:
/* 802EC784  7F C3 F3 78 */	mr r3, r30
/* 802EC788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EC78C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EC790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EC794  7C 08 03 A6 */	mtlr r0
/* 802EC798  38 21 00 10 */	addi r1, r1, 0x10
/* 802EC79C  4E 80 00 20 */	blr 
