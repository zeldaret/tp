lbl_80C2E0B0:
/* 80C2E0B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2E0B4  7C 08 02 A6 */	mflr r0
/* 80C2E0B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2E0BC  3C 60 80 C3 */	lis r3, l_HIO@ha /* 0x80C2E300@ha */
/* 80C2E0C0  38 63 E3 00 */	addi r3, r3, l_HIO@l /* 0x80C2E300@l */
/* 80C2E0C4  4B FF CD A9 */	bl __ct__14daObj_KabHIO_cFv
/* 80C2E0C8  3C 80 80 C3 */	lis r4, __dt__14daObj_KabHIO_cFv@ha /* 0x80C2E068@ha */
/* 80C2E0CC  38 84 E0 68 */	addi r4, r4, __dt__14daObj_KabHIO_cFv@l /* 0x80C2E068@l */
/* 80C2E0D0  3C A0 80 C3 */	lis r5, lit_3770@ha /* 0x80C2E2F4@ha */
/* 80C2E0D4  38 A5 E2 F4 */	addi r5, r5, lit_3770@l /* 0x80C2E2F4@l */
/* 80C2E0D8  4B FF CD 21 */	bl __register_global_object
/* 80C2E0DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2E0E0  7C 08 03 A6 */	mtlr r0
/* 80C2E0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2E0E8  4E 80 00 20 */	blr 
