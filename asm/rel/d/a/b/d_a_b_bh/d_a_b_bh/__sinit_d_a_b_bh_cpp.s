lbl_805B30E0:
/* 805B30E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B30E4  7C 08 02 A6 */	mflr r0
/* 805B30E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B30EC  3C 60 80 5B */	lis r3, l_HIO@ha /* 0x805B33FC@ha */
/* 805B30F0  38 63 33 FC */	addi r3, r3, l_HIO@l /* 0x805B33FC@l */
/* 805B30F4  4B FF B1 79 */	bl __ct__12daB_BH_HIO_cFv
/* 805B30F8  3C 80 80 5B */	lis r4, __dt__12daB_BH_HIO_cFv@ha /* 0x805B3098@ha */
/* 805B30FC  38 84 30 98 */	addi r4, r4, __dt__12daB_BH_HIO_cFv@l /* 0x805B3098@l */
/* 805B3100  3C A0 80 5B */	lis r5, lit_3759@ha /* 0x805B33F0@ha */
/* 805B3104  38 A5 33 F0 */	addi r5, r5, lit_3759@l /* 0x805B33F0@l */
/* 805B3108  4B FF B0 F1 */	bl __register_global_object
/* 805B310C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B3110  7C 08 03 A6 */	mtlr r0
/* 805B3114  38 21 00 10 */	addi r1, r1, 0x10
/* 805B3118  4E 80 00 20 */	blr 
