lbl_80C73C6C:
/* 80C73C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73C70  7C 08 02 A6 */	mflr r0
/* 80C73C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73C78  3C 60 80 C7 */	lis r3, l_HIO@ha /* 0x80C73DFC@ha */
/* 80C73C7C  38 63 3D FC */	addi r3, r3, l_HIO@l /* 0x80C73DFC@l */
/* 80C73C80  4B FF F7 6D */	bl __ct__17daLv6Lblock_HIO_cFv
/* 80C73C84  3C 80 80 C7 */	lis r4, __dt__17daLv6Lblock_HIO_cFv@ha /* 0x80C73C10@ha */
/* 80C73C88  38 84 3C 10 */	addi r4, r4, __dt__17daLv6Lblock_HIO_cFv@l /* 0x80C73C10@l */
/* 80C73C8C  3C A0 80 C7 */	lis r5, lit_3621@ha /* 0x80C73DF0@ha */
/* 80C73C90  38 A5 3D F0 */	addi r5, r5, lit_3621@l /* 0x80C73DF0@l */
/* 80C73C94  4B FF F6 E5 */	bl __register_global_object
/* 80C73C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73C9C  7C 08 03 A6 */	mtlr r0
/* 80C73CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73CA4  4E 80 00 20 */	blr 
