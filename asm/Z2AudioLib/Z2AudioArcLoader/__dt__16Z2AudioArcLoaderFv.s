lbl_802A9B58:
/* 802A9B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9B5C  7C 08 02 A6 */	mflr r0
/* 802A9B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9B64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9B68  93 C1 00 08 */	stw r30, 8(r1)
/* 802A9B6C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A9B70  7C 9F 23 78 */	mr r31, r4
/* 802A9B74  41 82 00 38 */	beq lbl_802A9BAC
/* 802A9B78  3C 80 80 3D */	lis r4, __vt__16Z2AudioArcLoader@ha
/* 802A9B7C  38 04 9C D0 */	addi r0, r4, __vt__16Z2AudioArcLoader@l
/* 802A9B80  90 1E 00 00 */	stw r0, 0(r30)
/* 802A9B84  41 82 00 18 */	beq lbl_802A9B9C
/* 802A9B88  3C 80 80 3D */	lis r4, __vt__17JAUAudioArcLoader@ha
/* 802A9B8C  38 04 9A 78 */	addi r0, r4, __vt__17JAUAudioArcLoader@l
/* 802A9B90  90 1E 00 00 */	stw r0, 0(r30)
/* 802A9B94  38 80 00 00 */	li r4, 0
/* 802A9B98  4B FF A6 C9 */	bl __dt__22JAUAudioArcInterpreterFv
lbl_802A9B9C:
/* 802A9B9C  7F E0 07 35 */	extsh. r0, r31
/* 802A9BA0  40 81 00 0C */	ble lbl_802A9BAC
/* 802A9BA4  7F C3 F3 78 */	mr r3, r30
/* 802A9BA8  48 02 51 95 */	bl __dl__FPv
lbl_802A9BAC:
/* 802A9BAC  7F C3 F3 78 */	mr r3, r30
/* 802A9BB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9BB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A9BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9BBC  7C 08 03 A6 */	mtlr r0
/* 802A9BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9BC4  4E 80 00 20 */	blr 
