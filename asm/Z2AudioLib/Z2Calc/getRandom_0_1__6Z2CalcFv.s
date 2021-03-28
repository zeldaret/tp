lbl_802A98D4:
/* 802A98D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A98D8  7C 08 02 A6 */	mflr r0
/* 802A98DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A98E0  88 0D 8D B0 */	lbz r0, data_80451330(r13)
/* 802A98E4  7C 00 07 75 */	extsb. r0, r0
/* 802A98E8  40 82 00 18 */	bne lbl_802A9900
/* 802A98EC  38 6D 8D B4 */	la r3, oRandom(r13) /* 80451334-_SDA_BASE_ */
/* 802A98F0  38 80 00 00 */	li r4, 0
/* 802A98F4  48 09 01 F1 */	bl __ct__Q25JMath13TRandom_fast_FUl
/* 802A98F8  38 00 00 01 */	li r0, 1
/* 802A98FC  98 0D 8D B0 */	stb r0, data_80451330(r13)
lbl_802A9900:
/* 802A9900  80 8D 8D B4 */	lwz r4, oRandom(r13)
/* 802A9904  3C 60 00 19 */	lis r3, 0x0019 /* 0x0019660D@ha */
/* 802A9908  38 03 66 0D */	addi r0, r3, 0x660D /* 0x0019660D@l */
/* 802A990C  7C 64 01 D6 */	mullw r3, r4, r0
/* 802A9910  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 802A9914  38 03 F3 5F */	addi r0, r3, -3233
/* 802A9918  90 0D 8D B4 */	stw r0, oRandom(r13)
/* 802A991C  54 00 BA 7E */	srwi r0, r0, 9
/* 802A9920  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 802A9924  90 01 00 08 */	stw r0, 8(r1)
/* 802A9928  C0 21 00 08 */	lfs f1, 8(r1)
/* 802A992C  C0 02 BE 2C */	lfs f0, lit_381(r2)
/* 802A9930  EC 21 00 28 */	fsubs f1, f1, f0
/* 802A9934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9938  7C 08 03 A6 */	mtlr r0
/* 802A993C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9940  4E 80 00 20 */	blr 
