lbl_8023299C:
/* 8023299C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802329A0  7C 08 02 A6 */	mflr r0
/* 802329A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802329A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802329AC  93 C1 00 08 */	stw r30, 8(r1)
/* 802329B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802329B4  7C 9F 23 78 */	mr r31, r4
/* 802329B8  41 82 00 4C */	beq lbl_80232A04
/* 802329BC  3C 60 80 3C */	lis r3, __vt__27jmessage_tSequenceProcessor@ha /* 0x803C0A3C@ha */
/* 802329C0  38 03 0A 3C */	addi r0, r3, __vt__27jmessage_tSequenceProcessor@l /* 0x803C0A3C@l */
/* 802329C4  90 1E 00 00 */	stw r0, 0(r30)
/* 802329C8  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 802329CC  41 82 00 1C */	beq lbl_802329E8
/* 802329D0  3C 60 80 3C */	lis r3, __vt__26jmessage_tMeasureProcessor@ha /* 0x803C0A94@ha */
/* 802329D4  38 03 0A 94 */	addi r0, r3, __vt__26jmessage_tMeasureProcessor@l /* 0x803C0A94@l */
/* 802329D8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 802329DC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 802329E0  38 80 00 00 */	li r4, 0
/* 802329E4  48 07 60 DD */	bl __dt__Q28JMessage19TRenderingProcessorFv
lbl_802329E8:
/* 802329E8  7F C3 F3 78 */	mr r3, r30
/* 802329EC  38 80 00 00 */	li r4, 0
/* 802329F0  48 07 59 C9 */	bl __dt__Q28JMessage18TSequenceProcessorFv
/* 802329F4  7F E0 07 35 */	extsh. r0, r31
/* 802329F8  40 81 00 0C */	ble lbl_80232A04
/* 802329FC  7F C3 F3 78 */	mr r3, r30
/* 80232A00  48 09 C3 3D */	bl __dl__FPv
lbl_80232A04:
/* 80232A04  7F C3 F3 78 */	mr r3, r30
/* 80232A08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80232A0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80232A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80232A14  7C 08 03 A6 */	mtlr r0
/* 80232A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80232A1C  4E 80 00 20 */	blr 
