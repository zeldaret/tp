lbl_805A10F8:
/* 805A10F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A10FC  7C 08 02 A6 */	mflr r0
/* 805A1100  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1104  3C 60 80 5A */	lis r3, l_HIO@ha /* 0x805A1340@ha */
/* 805A1108  38 63 13 40 */	addi r3, r3, l_HIO@l /* 0x805A1340@l */
/* 805A110C  4B FF E5 61 */	bl __ct__10daSq_HIO_cFv
/* 805A1110  3C 80 80 5A */	lis r4, __dt__10daSq_HIO_cFv@ha /* 0x805A10B0@ha */
/* 805A1114  38 84 10 B0 */	addi r4, r4, __dt__10daSq_HIO_cFv@l /* 0x805A10B0@l */
/* 805A1118  3C A0 80 5A */	lis r5, lit_3764@ha /* 0x805A1334@ha */
/* 805A111C  38 A5 13 34 */	addi r5, r5, lit_3764@l /* 0x805A1334@l */
/* 805A1120  4B FF E4 D9 */	bl __register_global_object
/* 805A1124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1128  7C 08 03 A6 */	mtlr r0
/* 805A112C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1130  4E 80 00 20 */	blr 
