lbl_80BFA890:
/* 80BFA890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFA894  7C 08 02 A6 */	mflr r0
/* 80BFA898  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFA89C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFA8A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BFA8A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BFA8A8  7C 9F 23 78 */	mr r31, r4
/* 80BFA8AC  41 82 00 38 */	beq lbl_80BFA8E4
/* 80BFA8B0  38 00 00 00 */	li r0, 0
/* 80BFA8B4  90 1E 00 00 */	stw r0, 0(r30)
/* 80BFA8B8  4B FF FC 01 */	bl _clrLstBuf__12_GlSph_Mng_cFv
/* 80BFA8BC  38 7E 00 04 */	addi r3, r30, 4
/* 80BFA8C0  3C 80 80 C0 */	lis r4, __dt__16_GlSph_LstInfo_cFv@ha /* 0x80BFA900@ha */
/* 80BFA8C4  38 84 A9 00 */	addi r4, r4, __dt__16_GlSph_LstInfo_cFv@l /* 0x80BFA900@l */
/* 80BFA8C8  38 A0 00 08 */	li r5, 8
/* 80BFA8CC  38 C0 00 78 */	li r6, 0x78
/* 80BFA8D0  4B 76 74 19 */	bl __destroy_arr
/* 80BFA8D4  7F E0 07 35 */	extsh. r0, r31
/* 80BFA8D8  40 81 00 0C */	ble lbl_80BFA8E4
/* 80BFA8DC  7F C3 F3 78 */	mr r3, r30
/* 80BFA8E0  4B 6D 44 5D */	bl __dl__FPv
lbl_80BFA8E4:
/* 80BFA8E4  7F C3 F3 78 */	mr r3, r30
/* 80BFA8E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFA8EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BFA8F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFA8F4  7C 08 03 A6 */	mtlr r0
/* 80BFA8F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFA8FC  4E 80 00 20 */	blr 
