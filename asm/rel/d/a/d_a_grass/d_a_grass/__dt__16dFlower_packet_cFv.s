lbl_8051C194:
/* 8051C194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C198  7C 08 02 A6 */	mflr r0
/* 8051C19C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C1A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051C1A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8051C1A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8051C1AC  7C 9F 23 78 */	mr r31, r4
/* 8051C1B0  41 82 00 4C */	beq lbl_8051C1FC
/* 8051C1B4  3C 60 80 52 */	lis r3, __vt__16dFlower_packet_c@ha /* 0x80527890@ha */
/* 8051C1B8  38 03 78 90 */	addi r0, r3, __vt__16dFlower_packet_c@l /* 0x80527890@l */
/* 8051C1BC  90 1E 00 00 */	stw r0, 0(r30)
/* 8051C1C0  38 7E 00 14 */	addi r3, r30, 0x14
/* 8051C1C4  3C 80 80 52 */	lis r4, __dt__14dFlower_data_cFv@ha /* 0x80522FCC@ha */
/* 8051C1C8  38 84 2F CC */	addi r4, r4, __dt__14dFlower_data_cFv@l /* 0x80522FCC@l */
/* 8051C1CC  38 A0 00 48 */	li r5, 0x48
/* 8051C1D0  38 C0 03 E8 */	li r6, 0x3e8
/* 8051C1D4  4B E4 5B 15 */	bl __destroy_arr
/* 8051C1D8  28 1E 00 00 */	cmplwi r30, 0
/* 8051C1DC  41 82 00 10 */	beq lbl_8051C1EC
/* 8051C1E0  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 8051C1E4  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 8051C1E8  90 1E 00 00 */	stw r0, 0(r30)
lbl_8051C1EC:
/* 8051C1EC  7F E0 07 35 */	extsh. r0, r31
/* 8051C1F0  40 81 00 0C */	ble lbl_8051C1FC
/* 8051C1F4  7F C3 F3 78 */	mr r3, r30
/* 8051C1F8  4B DB 2B 45 */	bl __dl__FPv
lbl_8051C1FC:
/* 8051C1FC  7F C3 F3 78 */	mr r3, r30
/* 8051C200  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051C204  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051C208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C20C  7C 08 03 A6 */	mtlr r0
/* 8051C210  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C214  4E 80 00 20 */	blr 
