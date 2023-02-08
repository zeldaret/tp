lbl_80230A5C:
/* 80230A5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80230A60  7C 08 02 A6 */	mflr r0
/* 80230A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80230A68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80230A6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80230A70  7C 7E 1B 79 */	or. r30, r3, r3
/* 80230A74  7C 9F 23 78 */	mr r31, r4
/* 80230A78  41 82 00 28 */	beq lbl_80230AA0
/* 80230A7C  3C 80 80 3C */	lis r4, __vt__33jmessage_string_tMeasureProcessor@ha /* 0x803C09A0@ha */
/* 80230A80  38 04 09 A0 */	addi r0, r4, __vt__33jmessage_string_tMeasureProcessor@l /* 0x803C09A0@l */
/* 80230A84  90 1E 00 00 */	stw r0, 0(r30)
/* 80230A88  38 80 00 00 */	li r4, 0
/* 80230A8C  48 07 80 35 */	bl __dt__Q28JMessage19TRenderingProcessorFv
/* 80230A90  7F E0 07 35 */	extsh. r0, r31
/* 80230A94  40 81 00 0C */	ble lbl_80230AA0
/* 80230A98  7F C3 F3 78 */	mr r3, r30
/* 80230A9C  48 09 E2 A1 */	bl __dl__FPv
lbl_80230AA0:
/* 80230AA0  7F C3 F3 78 */	mr r3, r30
/* 80230AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80230AA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80230AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80230AB0  7C 08 03 A6 */	mtlr r0
/* 80230AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80230AB8  4E 80 00 20 */	blr 
