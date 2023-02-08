lbl_80C8FA98:
/* 80C8FA98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8FA9C  7C 08 02 A6 */	mflr r0
/* 80C8FAA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8FAA4  3C 60 80 C9 */	lis r3, l_HIO@ha /* 0x80C8FCCC@ha */
/* 80C8FAA8  38 63 FC CC */	addi r3, r3, l_HIO@l /* 0x80C8FCCC@l */
/* 80C8FAAC  4B FF EE A1 */	bl __ct__18daMagLiftRot_HIO_cFv
/* 80C8FAB0  3C 80 80 C9 */	lis r4, __dt__18daMagLiftRot_HIO_cFv@ha /* 0x80C8FA3C@ha */
/* 80C8FAB4  38 84 FA 3C */	addi r4, r4, __dt__18daMagLiftRot_HIO_cFv@l /* 0x80C8FA3C@l */
/* 80C8FAB8  3C A0 80 C9 */	lis r5, lit_3621@ha /* 0x80C8FCC0@ha */
/* 80C8FABC  38 A5 FC C0 */	addi r5, r5, lit_3621@l /* 0x80C8FCC0@l */
/* 80C8FAC0  4B FF EE 19 */	bl __register_global_object
/* 80C8FAC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8FAC8  7C 08 03 A6 */	mtlr r0
/* 80C8FACC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8FAD0  4E 80 00 20 */	blr 
