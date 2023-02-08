lbl_80C5F9EC:
/* 80C5F9EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F9F0  7C 08 02 A6 */	mflr r0
/* 80C5F9F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F9F8  3C 60 80 C6 */	lis r3, l_HIO@ha /* 0x80C5FAEC@ha */
/* 80C5F9FC  38 63 FA EC */	addi r3, r3, l_HIO@l /* 0x80C5FAEC@l */
/* 80C5FA00  4B FF FC 2D */	bl __ct__19daLv4HsTarget_HIO_cFv
/* 80C5FA04  3C 80 80 C6 */	lis r4, __dt__19daLv4HsTarget_HIO_cFv@ha /* 0x80C5F990@ha */
/* 80C5FA08  38 84 F9 90 */	addi r4, r4, __dt__19daLv4HsTarget_HIO_cFv@l /* 0x80C5F990@l */
/* 80C5FA0C  3C A0 80 C6 */	lis r5, lit_3618@ha /* 0x80C5FAE0@ha */
/* 80C5FA10  38 A5 FA E0 */	addi r5, r5, lit_3618@l /* 0x80C5FAE0@l */
/* 80C5FA14  4B FF FB A5 */	bl __register_global_object
/* 80C5FA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5FA1C  7C 08 03 A6 */	mtlr r0
/* 80C5FA20  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5FA24  4E 80 00 20 */	blr 
