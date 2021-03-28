lbl_8029D028:
/* 8029D028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D02C  7C 08 02 A6 */	mflr r0
/* 8029D030  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029D038  93 C1 00 08 */	stw r30, 8(r1)
/* 8029D03C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8029D040  7C 9F 23 78 */	mr r31, r4
/* 8029D044  41 82 00 54 */	beq lbl_8029D098
/* 8029D048  3C 60 80 3C */	lis r3, __vt__14JASAudioThread@ha
/* 8029D04C  38 03 78 E0 */	addi r0, r3, __vt__14JASAudioThread@l
/* 8029D050  90 1E 00 00 */	stw r0, 0(r30)
/* 8029D054  34 1E 00 7C */	addic. r0, r30, 0x7c
/* 8029D058  41 82 00 24 */	beq lbl_8029D07C
/* 8029D05C  34 7E 00 7C */	addic. r3, r30, 0x7c
/* 8029D060  41 82 00 08 */	beq lbl_8029D068
/* 8029D064  38 63 FF 84 */	addi r3, r3, -124
lbl_8029D068:
/* 8029D068  80 0D 86 0C */	lwz r0, data_80450B8C(r13)
/* 8029D06C  7C 00 18 40 */	cmplw r0, r3
/* 8029D070  40 82 00 0C */	bne lbl_8029D07C
/* 8029D074  38 00 00 00 */	li r0, 0
/* 8029D078  90 0D 86 0C */	stw r0, data_80450B8C(r13)
lbl_8029D07C:
/* 8029D07C  7F C3 F3 78 */	mr r3, r30
/* 8029D080  38 80 00 00 */	li r4, 0
/* 8029D084  48 03 46 D5 */	bl __dt__9JKRThreadFv
/* 8029D088  7F E0 07 35 */	extsh. r0, r31
/* 8029D08C  40 81 00 0C */	ble lbl_8029D098
/* 8029D090  7F C3 F3 78 */	mr r3, r30
/* 8029D094  48 03 1C A9 */	bl __dl__FPv
lbl_8029D098:
/* 8029D098  7F C3 F3 78 */	mr r3, r30
/* 8029D09C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029D0A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029D0A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D0A8  7C 08 03 A6 */	mtlr r0
/* 8029D0AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D0B0  4E 80 00 20 */	blr 
