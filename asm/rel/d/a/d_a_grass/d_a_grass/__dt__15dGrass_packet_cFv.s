lbl_8051BFBC:
/* 8051BFBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BFC0  7C 08 02 A6 */	mflr r0
/* 8051BFC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BFC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051BFCC  93 C1 00 08 */	stw r30, 8(r1)
/* 8051BFD0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8051BFD4  7C 9F 23 78 */	mr r31, r4
/* 8051BFD8  41 82 00 4C */	beq lbl_8051C024
/* 8051BFDC  3C 60 80 52 */	lis r3, __vt__15dGrass_packet_c@ha /* 0x805278A4@ha */
/* 8051BFE0  38 03 78 A4 */	addi r0, r3, __vt__15dGrass_packet_c@l /* 0x805278A4@l */
/* 8051BFE4  90 1E 00 00 */	stw r0, 0(r30)
/* 8051BFE8  38 7E 00 14 */	addi r3, r30, 0x14
/* 8051BFEC  3C 80 80 52 */	lis r4, __dt__13dGrass_data_cFv@ha /* 0x80520940@ha */
/* 8051BFF0  38 84 09 40 */	addi r4, r4, __dt__13dGrass_data_cFv@l /* 0x80520940@l */
/* 8051BFF4  38 A0 00 4C */	li r5, 0x4c
/* 8051BFF8  38 C0 05 DC */	li r6, 0x5dc
/* 8051BFFC  4B E4 5C ED */	bl __destroy_arr
/* 8051C000  28 1E 00 00 */	cmplwi r30, 0
/* 8051C004  41 82 00 10 */	beq lbl_8051C014
/* 8051C008  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 8051C00C  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 8051C010  90 1E 00 00 */	stw r0, 0(r30)
lbl_8051C014:
/* 8051C014  7F E0 07 35 */	extsh. r0, r31
/* 8051C018  40 81 00 0C */	ble lbl_8051C024
/* 8051C01C  7F C3 F3 78 */	mr r3, r30
/* 8051C020  4B DB 2D 1D */	bl __dl__FPv
lbl_8051C024:
/* 8051C024  7F C3 F3 78 */	mr r3, r30
/* 8051C028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051C02C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051C030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C034  7C 08 03 A6 */	mtlr r0
/* 8051C038  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C03C  4E 80 00 20 */	blr 
