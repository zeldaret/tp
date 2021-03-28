lbl_802A9A34:
/* 802A9A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9A38  7C 08 02 A6 */	mflr r0
/* 802A9A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9A44  7C 7F 1B 78 */	mr r31, r3
/* 802A9A48  4B FF AC F9 */	bl __ct__17JAUAudioArcLoaderFP10JAUSection
/* 802A9A4C  3C 60 80 3D */	lis r3, __vt__16Z2AudioArcLoader@ha
/* 802A9A50  38 03 9C D0 */	addi r0, r3, __vt__16Z2AudioArcLoader@l
/* 802A9A54  90 1F 00 00 */	stw r0, 0(r31)
/* 802A9A58  7F E3 FB 78 */	mr r3, r31
/* 802A9A5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9A64  7C 08 03 A6 */	mtlr r0
/* 802A9A68  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9A6C  4E 80 00 20 */	blr 
