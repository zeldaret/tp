lbl_80117B90:
/* 80117B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80117B94  7C 08 02 A6 */	mflr r0
/* 80117B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80117B9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80117BA0  7C 7F 1B 78 */	mr r31, r3
/* 80117BA4  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 80117BA8  38 C4 D6 58 */	addi r6, r4, lit_3757@l /* 0x8038D658@l */
/* 80117BAC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 80117BB0  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 80117BB4  B0 03 21 44 */	sth r0, 0x2144(r3)
/* 80117BB8  B0 03 21 1C */	sth r0, 0x211c(r3)
/* 80117BBC  B0 03 21 30 */	sth r0, 0x2130(r3)
/* 80117BC0  B0 03 1F 5C */	sth r0, 0x1f5c(r3)
/* 80117BC4  B0 03 1F 58 */	sth r0, 0x1f58(r3)
/* 80117BC8  B0 03 21 40 */	sth r0, 0x2140(r3)
/* 80117BCC  B0 03 21 18 */	sth r0, 0x2118(r3)
/* 80117BD0  B0 03 21 2C */	sth r0, 0x212c(r3)
/* 80117BD4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80117BD8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80117BDC  41 82 00 2C */	beq lbl_80117C08
/* 80117BE0  38 80 00 00 */	li r4, 0
/* 80117BE4  38 A6 18 D0 */	addi r5, r6, 0x18d0
/* 80117BE8  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 80117BEC  38 A6 17 D0 */	addi r5, r6, 0x17d0
/* 80117BF0  C0 45 00 94 */	lfs f2, 0x94(r5)
/* 80117BF4  48 01 1A E5 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 80117BF8  7F E3 FB 78 */	mr r3, r31
/* 80117BFC  38 80 00 19 */	li r4, 0x19
/* 80117C00  4B F9 7D A9 */	bl setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 80117C04  48 00 00 1C */	b lbl_80117C20
lbl_80117C08:
/* 80117C08  38 80 00 19 */	li r4, 0x19
/* 80117C0C  38 A6 00 64 */	addi r5, r6, 0x64
/* 80117C10  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 80117C14  38 A6 00 0C */	addi r5, r6, 0xc
/* 80117C18  C0 45 00 18 */	lfs f2, 0x18(r5)
/* 80117C1C  4B F9 53 C5 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_80117C20:
/* 80117C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80117C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80117C28  7C 08 03 A6 */	mtlr r0
/* 80117C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80117C30  4E 80 00 20 */	blr 
