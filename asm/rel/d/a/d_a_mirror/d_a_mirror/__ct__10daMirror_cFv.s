lbl_80871E24:
/* 80871E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80871E28  7C 08 02 A6 */	mflr r0
/* 80871E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80871E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80871E34  7C 7F 1B 78 */	mr r31, r3
/* 80871E38  4B 7A 6D 2C */	b __ct__10fopAc_ac_cFv
/* 80871E3C  38 7F 05 70 */	addi r3, r31, 0x570
/* 80871E40  4B FF ED 99 */	bl __ct__16dMirror_packet_cFv
/* 80871E44  3C 60 80 42 */	lis r3, m_entryModel__10daMirror_c@ha
/* 80871E48  38 A3 45 7C */	addi r5, r3, m_entryModel__10daMirror_c@l
/* 80871E4C  3C 60 80 87 */	lis r3, lit_4377@ha
/* 80871E50  38 83 26 68 */	addi r4, r3, lit_4377@l
/* 80871E54  80 64 00 00 */	lwz r3, 0(r4)
/* 80871E58  80 04 00 04 */	lwz r0, 4(r4)
/* 80871E5C  90 65 00 00 */	stw r3, 0(r5)
/* 80871E60  90 05 00 04 */	stw r0, 4(r5)
/* 80871E64  80 04 00 08 */	lwz r0, 8(r4)
/* 80871E68  90 05 00 08 */	stw r0, 8(r5)
/* 80871E6C  7F E3 FB 78 */	mr r3, r31
/* 80871E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80871E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80871E78  7C 08 03 A6 */	mtlr r0
/* 80871E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80871E80  4E 80 00 20 */	blr 
