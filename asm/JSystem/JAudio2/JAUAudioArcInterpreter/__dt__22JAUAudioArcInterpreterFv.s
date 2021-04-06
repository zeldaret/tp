lbl_802A4260:
/* 802A4260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4264  7C 08 02 A6 */	mflr r0
/* 802A4268  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A426C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A4270  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A4274  41 82 00 1C */	beq lbl_802A4290
/* 802A4278  3C A0 80 3D */	lis r5, __vt__22JAUAudioArcInterpreter@ha /* 0x803C9A30@ha */
/* 802A427C  38 05 9A 30 */	addi r0, r5, __vt__22JAUAudioArcInterpreter@l /* 0x803C9A30@l */
/* 802A4280  90 1F 00 00 */	stw r0, 0(r31)
/* 802A4284  7C 80 07 35 */	extsh. r0, r4
/* 802A4288  40 81 00 08 */	ble lbl_802A4290
/* 802A428C  48 02 AA B1 */	bl __dl__FPv
lbl_802A4290:
/* 802A4290  7F E3 FB 78 */	mr r3, r31
/* 802A4294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A4298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A429C  7C 08 03 A6 */	mtlr r0
/* 802A42A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A42A4  4E 80 00 20 */	blr 
