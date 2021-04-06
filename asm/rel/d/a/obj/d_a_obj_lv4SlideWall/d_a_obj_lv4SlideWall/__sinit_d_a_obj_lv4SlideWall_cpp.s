lbl_80C62658:
/* 80C62658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6265C  7C 08 02 A6 */	mflr r0
/* 80C62660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C62664  3C 60 80 C6 */	lis r3, l_HIO@ha /* 0x80C627DC@ha */
/* 80C62668  38 63 27 DC */	addi r3, r3, l_HIO@l /* 0x80C627DC@l */
/* 80C6266C  4B FF F7 C1 */	bl __ct__15daSldWall_HIO_cFv
/* 80C62670  3C 80 80 C6 */	lis r4, __dt__15daSldWall_HIO_cFv@ha /* 0x80C625FC@ha */
/* 80C62674  38 84 25 FC */	addi r4, r4, __dt__15daSldWall_HIO_cFv@l /* 0x80C625FC@l */
/* 80C62678  3C A0 80 C6 */	lis r5, lit_3621@ha /* 0x80C627D0@ha */
/* 80C6267C  38 A5 27 D0 */	addi r5, r5, lit_3621@l /* 0x80C627D0@l */
/* 80C62680  4B FF F7 39 */	bl __register_global_object
/* 80C62684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C62688  7C 08 03 A6 */	mtlr r0
/* 80C6268C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C62690  4E 80 00 20 */	blr 
