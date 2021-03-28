lbl_80946BB4:
/* 80946BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80946BB8  7C 08 02 A6 */	mflr r0
/* 80946BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80946BC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80946BC4  7C 7F 1B 78 */	mr r31, r3
/* 80946BC8  38 80 00 00 */	li r4, 0
/* 80946BCC  3C A0 80 95 */	lis r5, lit_3926@ha
/* 80946BD0  C0 25 B1 F0 */	lfs f1, lit_3926@l(r5)
/* 80946BD4  48 00 34 81 */	bl setAnimeType__8daMyna_cFUcf
/* 80946BD8  38 00 00 00 */	li r0, 0
/* 80946BDC  B0 1F 09 1A */	sth r0, 0x91a(r31)
/* 80946BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80946BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80946BE8  7C 08 03 A6 */	mtlr r0
/* 80946BEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80946BF0  4E 80 00 20 */	blr 
