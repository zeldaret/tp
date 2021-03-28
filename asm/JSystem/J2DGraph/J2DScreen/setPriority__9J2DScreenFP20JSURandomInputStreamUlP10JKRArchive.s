lbl_802F8748:
/* 802F8748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F874C  7C 08 02 A6 */	mflr r0
/* 802F8750  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F8754  28 06 00 00 */	cmplwi r6, 0
/* 802F8758  40 82 00 0C */	bne lbl_802F8764
/* 802F875C  38 60 00 00 */	li r3, 0
/* 802F8760  48 00 00 08 */	b lbl_802F8768
lbl_802F8764:
/* 802F8764  48 00 00 15 */	bl private_set__9J2DScreenFP20JSURandomInputStreamUlP10JKRArchive
lbl_802F8768:
/* 802F8768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F876C  7C 08 03 A6 */	mtlr r0
/* 802F8770  38 21 00 10 */	addi r1, r1, 0x10
/* 802F8774  4E 80 00 20 */	blr 
