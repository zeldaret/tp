lbl_802BE5FC:
/* 802BE5FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BE600  7C 08 02 A6 */	mflr r0
/* 802BE604  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BE60C  93 C1 00 08 */	stw r30, 8(r1)
/* 802BE610  7C 7E 1B 79 */	or. r30, r3, r3
/* 802BE614  7C 9F 23 78 */	mr r31, r4
/* 802BE618  41 82 00 28 */	beq lbl_802BE640
/* 802BE61C  3C 80 80 3D */	lis r4, __vt__21Z2DopplerSoundObjBase@ha /* 0x803CAD30@ha */
/* 802BE620  38 04 AD 30 */	addi r0, r4, __vt__21Z2DopplerSoundObjBase@l /* 0x803CAD30@l */
/* 802BE624  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802BE628  38 80 00 00 */	li r4, 0
/* 802BE62C  4B FF F9 1D */	bl __dt__14Z2SoundObjBaseFv
/* 802BE630  7F E0 07 35 */	extsh. r0, r31
/* 802BE634  40 81 00 0C */	ble lbl_802BE640
/* 802BE638  7F C3 F3 78 */	mr r3, r30
/* 802BE63C  48 01 07 01 */	bl __dl__FPv
lbl_802BE640:
/* 802BE640  7F C3 F3 78 */	mr r3, r30
/* 802BE644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BE648  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BE64C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BE650  7C 08 03 A6 */	mtlr r0
/* 802BE654  38 21 00 10 */	addi r1, r1, 0x10
/* 802BE658  4E 80 00 20 */	blr 
