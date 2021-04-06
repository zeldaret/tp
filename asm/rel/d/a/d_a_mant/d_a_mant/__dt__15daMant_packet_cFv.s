lbl_80862BA4:
/* 80862BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80862BA8  7C 08 02 A6 */	mflr r0
/* 80862BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80862BB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80862BB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80862BB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80862BBC  7C 9F 23 78 */	mr r31, r4
/* 80862BC0  41 82 00 64 */	beq lbl_80862C24
/* 80862BC4  3C 60 80 87 */	lis r3, __vt__15daMant_packet_c@ha /* 0x8086BF58@ha */
/* 80862BC8  38 03 BF 58 */	addi r0, r3, __vt__15daMant_packet_c@l /* 0x8086BF58@l */
/* 80862BCC  90 1E 00 00 */	stw r0, 0(r30)
/* 80862BD0  38 7E 10 50 */	addi r3, r30, 0x1050
/* 80862BD4  3C 80 80 86 */	lis r4, __dt__4cXyzFv@ha /* 0x80861F60@ha */
/* 80862BD8  38 84 1F 60 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80861F60@l */
/* 80862BDC  38 A0 00 0C */	li r5, 0xc
/* 80862BE0  38 C0 01 52 */	li r6, 0x152
/* 80862BE4  4B AF F1 05 */	bl __destroy_arr
/* 80862BE8  38 7E 00 78 */	addi r3, r30, 0x78
/* 80862BEC  3C 80 80 86 */	lis r4, __dt__4cXyzFv@ha /* 0x80861F60@ha */
/* 80862BF0  38 84 1F 60 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80861F60@l */
/* 80862BF4  38 A0 00 0C */	li r5, 0xc
/* 80862BF8  38 C0 01 52 */	li r6, 0x152
/* 80862BFC  4B AF F0 ED */	bl __destroy_arr
/* 80862C00  28 1E 00 00 */	cmplwi r30, 0
/* 80862C04  41 82 00 10 */	beq lbl_80862C14
/* 80862C08  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80862C0C  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80862C10  90 1E 00 00 */	stw r0, 0(r30)
lbl_80862C14:
/* 80862C14  7F E0 07 35 */	extsh. r0, r31
/* 80862C18  40 81 00 0C */	ble lbl_80862C24
/* 80862C1C  7F C3 F3 78 */	mr r3, r30
/* 80862C20  4B A6 C1 1D */	bl __dl__FPv
lbl_80862C24:
/* 80862C24  7F C3 F3 78 */	mr r3, r30
/* 80862C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80862C2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80862C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80862C34  7C 08 03 A6 */	mtlr r0
/* 80862C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80862C3C  4E 80 00 20 */	blr 
