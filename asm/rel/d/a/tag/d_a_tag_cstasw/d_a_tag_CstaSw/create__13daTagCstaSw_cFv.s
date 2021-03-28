lbl_805A20F0:
/* 805A20F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A20F4  7C 08 02 A6 */	mflr r0
/* 805A20F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A20FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A2100  7C 7F 1B 78 */	mr r31, r3
/* 805A2104  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A2108  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A210C  40 82 00 1C */	bne lbl_805A2128
/* 805A2110  28 1F 00 00 */	cmplwi r31, 0
/* 805A2114  41 82 00 08 */	beq lbl_805A211C
/* 805A2118  4B A7 6A 4C */	b __ct__10fopAc_ac_cFv
lbl_805A211C:
/* 805A211C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805A2120  60 00 00 08 */	ori r0, r0, 8
/* 805A2124  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805A2128:
/* 805A2128  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A212C  98 1F 05 68 */	stb r0, 0x568(r31)
/* 805A2130  7F E3 FB 78 */	mr r3, r31
/* 805A2134  4B FF FF 65 */	bl setBaseMtx__13daTagCstaSw_cFv
/* 805A2138  38 60 00 04 */	li r3, 4
/* 805A213C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A2140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2144  7C 08 03 A6 */	mtlr r0
/* 805A2148  38 21 00 10 */	addi r1, r1, 0x10
/* 805A214C  4E 80 00 20 */	blr 
