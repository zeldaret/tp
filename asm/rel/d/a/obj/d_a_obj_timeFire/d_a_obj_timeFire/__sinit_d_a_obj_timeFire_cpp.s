lbl_80D0F094:
/* 80D0F094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0F098  7C 08 02 A6 */	mflr r0
/* 80D0F09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0F0A0  3C 60 80 D1 */	lis r3, l_HIO@ha
/* 80D0F0A4  38 63 F1 7C */	addi r3, r3, l_HIO@l
/* 80D0F0A8  4B FF F8 45 */	bl __ct__16daTimeFire_HIO_cFv
/* 80D0F0AC  3C 80 80 D1 */	lis r4, __dt__16daTimeFire_HIO_cFv@ha
/* 80D0F0B0  38 84 F0 38 */	addi r4, r4, __dt__16daTimeFire_HIO_cFv@l
/* 80D0F0B4  3C A0 80 D1 */	lis r5, lit_3621@ha
/* 80D0F0B8  38 A5 F1 70 */	addi r5, r5, lit_3621@l
/* 80D0F0BC  4B FF F7 BD */	bl __register_global_object
/* 80D0F0C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0F0C4  7C 08 03 A6 */	mtlr r0
/* 80D0F0C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0F0CC  4E 80 00 20 */	blr 
