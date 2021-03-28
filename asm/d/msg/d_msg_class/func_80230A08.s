lbl_80230A08:
/* 80230A08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80230A0C  7C 08 02 A6 */	mflr r0
/* 80230A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80230A14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80230A18  93 C1 00 08 */	stw r30, 8(r1)
/* 80230A1C  7C 7E 1B 78 */	mr r30, r3
/* 80230A20  7C 9F 23 78 */	mr r31, r4
/* 80230A24  48 07 79 51 */	bl __ct__Q28JMessage18TSequenceProcessorFPCQ28JMessage10TReferencePQ28JMessage8TControl
/* 80230A28  3C 60 80 3C */	lis r3, __vt__34jmessage_string_tSequenceProcessor@ha
/* 80230A2C  38 03 09 48 */	addi r0, r3, __vt__34jmessage_string_tSequenceProcessor@l
/* 80230A30  90 1E 00 00 */	stw r0, 0(r30)
/* 80230A34  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80230A38  7F E4 FB 78 */	mr r4, r31
/* 80230A3C  4B FF F1 5D */	bl __ct__33jmessage_string_tMeasureProcessorFPC26jmessage_string_tReference
/* 80230A40  7F C3 F3 78 */	mr r3, r30
/* 80230A44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80230A48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80230A4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80230A50  7C 08 03 A6 */	mtlr r0
/* 80230A54  38 21 00 10 */	addi r1, r1, 0x10
/* 80230A58  4E 80 00 20 */	blr 
