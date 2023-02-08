lbl_802A49FC:
/* 802A49FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4A00  7C 08 02 A6 */	mflr r0
/* 802A4A04  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4A08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A4A0C  93 C1 00 08 */	stw r30, 8(r1)
/* 802A4A10  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A4A14  7C 9F 23 78 */	mr r31, r4
/* 802A4A18  41 82 00 28 */	beq lbl_802A4A40
/* 802A4A1C  3C 80 80 3D */	lis r4, __vt__17JAUAudioArcLoader@ha /* 0x803C9A78@ha */
/* 802A4A20  38 04 9A 78 */	addi r0, r4, __vt__17JAUAudioArcLoader@l /* 0x803C9A78@l */
/* 802A4A24  90 1E 00 00 */	stw r0, 0(r30)
/* 802A4A28  38 80 00 00 */	li r4, 0
/* 802A4A2C  4B FF F8 35 */	bl __dt__22JAUAudioArcInterpreterFv
/* 802A4A30  7F E0 07 35 */	extsh. r0, r31
/* 802A4A34  40 81 00 0C */	ble lbl_802A4A40
/* 802A4A38  7F C3 F3 78 */	mr r3, r30
/* 802A4A3C  48 02 A3 01 */	bl __dl__FPv
lbl_802A4A40:
/* 802A4A40  7F C3 F3 78 */	mr r3, r30
/* 802A4A44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A4A48  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A4A4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4A50  7C 08 03 A6 */	mtlr r0
/* 802A4A54  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4A58  4E 80 00 20 */	blr 
