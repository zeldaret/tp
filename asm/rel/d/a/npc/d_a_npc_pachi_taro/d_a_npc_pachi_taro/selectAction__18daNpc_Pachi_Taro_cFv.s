lbl_80A9DD24:
/* 80A9DD24  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A9DD28  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80A9DD2C  80 85 00 00 */	lwz r4, 0(r5)
/* 80A9DD30  80 05 00 04 */	lwz r0, 4(r5)
/* 80A9DD34  90 83 0F BC */	stw r4, 0xfbc(r3)
/* 80A9DD38  90 03 0F C0 */	stw r0, 0xfc0(r3)
/* 80A9DD3C  80 05 00 08 */	lwz r0, 8(r5)
/* 80A9DD40  90 03 0F C4 */	stw r0, 0xfc4(r3)
/* 80A9DD44  88 03 0F 88 */	lbz r0, 0xf88(r3)
/* 80A9DD48  2C 00 00 00 */	cmpwi r0, 0
/* 80A9DD4C  41 82 00 08 */	beq lbl_80A9DD54
/* 80A9DD50  48 00 00 28 */	b lbl_80A9DD78
lbl_80A9DD54:
/* 80A9DD54  3C 80 80 AA */	lis r4, lit_5097@ha /* 0x80AA27E4@ha */
/* 80A9DD58  38 A4 27 E4 */	addi r5, r4, lit_5097@l /* 0x80AA27E4@l */
/* 80A9DD5C  80 85 00 00 */	lwz r4, 0(r5)
/* 80A9DD60  80 05 00 04 */	lwz r0, 4(r5)
/* 80A9DD64  90 83 0F BC */	stw r4, 0xfbc(r3)
/* 80A9DD68  90 03 0F C0 */	stw r0, 0xfc0(r3)
/* 80A9DD6C  80 05 00 08 */	lwz r0, 8(r5)
/* 80A9DD70  90 03 0F C4 */	stw r0, 0xfc4(r3)
/* 80A9DD74  48 00 00 24 */	b lbl_80A9DD98
lbl_80A9DD78:
/* 80A9DD78  3C 80 80 AA */	lis r4, lit_5099@ha /* 0x80AA27F0@ha */
/* 80A9DD7C  38 A4 27 F0 */	addi r5, r4, lit_5099@l /* 0x80AA27F0@l */
/* 80A9DD80  80 85 00 00 */	lwz r4, 0(r5)
/* 80A9DD84  80 05 00 04 */	lwz r0, 4(r5)
/* 80A9DD88  90 83 0F BC */	stw r4, 0xfbc(r3)
/* 80A9DD8C  90 03 0F C0 */	stw r0, 0xfc0(r3)
/* 80A9DD90  80 05 00 08 */	lwz r0, 8(r5)
/* 80A9DD94  90 03 0F C4 */	stw r0, 0xfc4(r3)
lbl_80A9DD98:
/* 80A9DD98  38 60 00 01 */	li r3, 1
/* 80A9DD9C  4E 80 00 20 */	blr 
