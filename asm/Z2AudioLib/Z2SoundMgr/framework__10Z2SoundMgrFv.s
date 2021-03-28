lbl_802AA67C:
/* 802AA67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AA680  7C 08 02 A6 */	mflr r0
/* 802AA684  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AA688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AA68C  7C 7F 1B 78 */	mr r31, r3
/* 802AA690  4B FF FB 21 */	bl calc__10Z2SoundMgrFv
/* 802AA694  7F E3 FB 78 */	mr r3, r31
/* 802AA698  4B FF FE 91 */	bl mixOut__10Z2SoundMgrFv
/* 802AA69C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AA6A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AA6A4  7C 08 03 A6 */	mtlr r0
/* 802AA6A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802AA6AC  4E 80 00 20 */	blr 
