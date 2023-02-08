lbl_80CC44D4:
/* 80CC44D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC44D8  7C 08 02 A6 */	mflr r0
/* 80CC44DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC44E0  3C 60 80 CC */	lis r3, l_HIO@ha /* 0x80CC465C@ha */
/* 80CC44E4  38 63 46 5C */	addi r3, r3, l_HIO@l /* 0x80CC465C@l */
/* 80CC44E8  4B FF F8 C5 */	bl __ct__14daSaidan_HIO_cFv
/* 80CC44EC  3C 80 80 CC */	lis r4, __dt__14daSaidan_HIO_cFv@ha /* 0x80CC4478@ha */
/* 80CC44F0  38 84 44 78 */	addi r4, r4, __dt__14daSaidan_HIO_cFv@l /* 0x80CC4478@l */
/* 80CC44F4  3C A0 80 CC */	lis r5, lit_3619@ha /* 0x80CC4650@ha */
/* 80CC44F8  38 A5 46 50 */	addi r5, r5, lit_3619@l /* 0x80CC4650@l */
/* 80CC44FC  4B FF F8 3D */	bl __register_global_object
/* 80CC4500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC4504  7C 08 03 A6 */	mtlr r0
/* 80CC4508  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC450C  4E 80 00 20 */	blr 
