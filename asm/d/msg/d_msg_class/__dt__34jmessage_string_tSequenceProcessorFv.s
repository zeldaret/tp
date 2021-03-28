lbl_80232858:
/* 80232858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023285C  7C 08 02 A6 */	mflr r0
/* 80232860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80232864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80232868  93 C1 00 08 */	stw r30, 8(r1)
/* 8023286C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80232870  7C 9F 23 78 */	mr r31, r4
/* 80232874  41 82 00 4C */	beq lbl_802328C0
/* 80232878  3C 60 80 3C */	lis r3, __vt__34jmessage_string_tSequenceProcessor@ha
/* 8023287C  38 03 09 48 */	addi r0, r3, __vt__34jmessage_string_tSequenceProcessor@l
/* 80232880  90 1E 00 00 */	stw r0, 0(r30)
/* 80232884  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 80232888  41 82 00 1C */	beq lbl_802328A4
/* 8023288C  3C 60 80 3C */	lis r3, __vt__33jmessage_string_tMeasureProcessor@ha
/* 80232890  38 03 09 A0 */	addi r0, r3, __vt__33jmessage_string_tMeasureProcessor@l
/* 80232894  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80232898  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8023289C  38 80 00 00 */	li r4, 0
/* 802328A0  48 07 62 21 */	bl __dt__Q28JMessage19TRenderingProcessorFv
lbl_802328A4:
/* 802328A4  7F C3 F3 78 */	mr r3, r30
/* 802328A8  38 80 00 00 */	li r4, 0
/* 802328AC  48 07 5B 0D */	bl __dt__Q28JMessage18TSequenceProcessorFv
/* 802328B0  7F E0 07 35 */	extsh. r0, r31
/* 802328B4  40 81 00 0C */	ble lbl_802328C0
/* 802328B8  7F C3 F3 78 */	mr r3, r30
/* 802328BC  48 09 C4 81 */	bl __dl__FPv
lbl_802328C0:
/* 802328C0  7F C3 F3 78 */	mr r3, r30
/* 802328C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802328C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802328CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802328D0  7C 08 03 A6 */	mtlr r0
/* 802328D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802328D8  4E 80 00 20 */	blr 
