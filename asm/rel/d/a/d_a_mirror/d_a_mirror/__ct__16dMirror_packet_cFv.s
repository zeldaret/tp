lbl_80870BD8:
/* 80870BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80870BDC  7C 08 02 A6 */	mflr r0
/* 80870BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80870BE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80870BE8  7C 7F 1B 78 */	mr r31, r3
/* 80870BEC  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80870BF0  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80870BF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80870BF8  38 00 00 00 */	li r0, 0
/* 80870BFC  90 1F 00 04 */	stw r0, 4(r31)
/* 80870C00  90 1F 00 08 */	stw r0, 8(r31)
/* 80870C04  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80870C08  3C 60 80 87 */	lis r3, __vt__16dMirror_packet_c@ha /* 0x808726C4@ha */
/* 80870C0C  38 03 26 C4 */	addi r0, r3, __vt__16dMirror_packet_c@l /* 0x808726C4@l */
/* 80870C10  90 1F 00 00 */	stw r0, 0(r31)
/* 80870C14  38 7F 01 34 */	addi r3, r31, 0x134
/* 80870C18  3C 80 80 87 */	lis r4, __ct__4cXyzFv@ha /* 0x80870C90@ha */
/* 80870C1C  38 84 0C 90 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80870C90@l */
/* 80870C20  3C A0 80 87 */	lis r5, __dt__4cXyzFv@ha /* 0x80870C54@ha */
/* 80870C24  38 A5 0C 54 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80870C54@l */
/* 80870C28  38 C0 00 0C */	li r6, 0xc
/* 80870C2C  38 E0 00 04 */	li r7, 4
/* 80870C30  4B AF 11 31 */	bl __construct_array
/* 80870C34  7F E3 FB 78 */	mr r3, r31
/* 80870C38  48 00 00 5D */	bl reset__16dMirror_packet_cFv
/* 80870C3C  7F E3 FB 78 */	mr r3, r31
/* 80870C40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80870C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80870C48  7C 08 03 A6 */	mtlr r0
/* 80870C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80870C50  4E 80 00 20 */	blr 
