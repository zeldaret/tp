lbl_802A4740:
/* 802A4740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4744  7C 08 02 A6 */	mflr r0
/* 802A4748  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A474C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A4750  93 C1 00 08 */	stw r30, 8(r1)
/* 802A4754  7C 7E 1B 78 */	mr r30, r3
/* 802A4758  7C 9F 23 78 */	mr r31, r4
/* 802A475C  4B FF FA E9 */	bl __ct__22JAUAudioArcInterpreterFv
/* 802A4760  3C 60 80 3D */	lis r3, __vt__17JAUAudioArcLoader@ha /* 0x803C9A78@ha */
/* 802A4764  38 03 9A 78 */	addi r0, r3, __vt__17JAUAudioArcLoader@l /* 0x803C9A78@l */
/* 802A4768  90 1E 00 00 */	stw r0, 0(r30)
/* 802A476C  93 FE 00 0C */	stw r31, 0xc(r30)
/* 802A4770  7F C3 F3 78 */	mr r3, r30
/* 802A4774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A4778  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A477C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4780  7C 08 03 A6 */	mtlr r0
/* 802A4784  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4788  4E 80 00 20 */	blr 
