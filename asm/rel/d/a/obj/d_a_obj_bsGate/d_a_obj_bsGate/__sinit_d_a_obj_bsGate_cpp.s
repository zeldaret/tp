lbl_80BC3150:
/* 80BC3150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC3154  7C 08 02 A6 */	mflr r0
/* 80BC3158  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC315C  3C 60 80 BC */	lis r3, l_HIO@ha /* 0x80BC32DC@ha */
/* 80BC3160  38 63 32 DC */	addi r3, r3, l_HIO@l /* 0x80BC32DC@l */
/* 80BC3164  4B FF F7 29 */	bl __ct__14daBsGate_HIO_cFv
/* 80BC3168  3C 80 80 BC */	lis r4, __dt__14daBsGate_HIO_cFv@ha /* 0x80BC30F4@ha */
/* 80BC316C  38 84 30 F4 */	addi r4, r4, __dt__14daBsGate_HIO_cFv@l /* 0x80BC30F4@l */
/* 80BC3170  3C A0 80 BC */	lis r5, lit_3619@ha /* 0x80BC32D0@ha */
/* 80BC3174  38 A5 32 D0 */	addi r5, r5, lit_3619@l /* 0x80BC32D0@l */
/* 80BC3178  4B FF F6 A1 */	bl __register_global_object
/* 80BC317C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC3180  7C 08 03 A6 */	mtlr r0
/* 80BC3184  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC3188  4E 80 00 20 */	blr 
