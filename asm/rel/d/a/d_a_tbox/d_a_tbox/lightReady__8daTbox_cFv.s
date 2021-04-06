lbl_8049129C:
/* 8049129C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804912A0  7C 08 02 A6 */	mflr r0
/* 804912A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804912A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804912AC  7C 7F 1B 78 */	mr r31, r3
/* 804912B0  48 00 00 3D */	bl setLightPos__8daTbox_cFv
/* 804912B4  38 00 00 00 */	li r0, 0
/* 804912B8  B0 1F 09 DC */	sth r0, 0x9dc(r31)
/* 804912BC  B0 1F 09 DE */	sth r0, 0x9de(r31)
/* 804912C0  B0 1F 09 E0 */	sth r0, 0x9e0(r31)
/* 804912C4  3C 60 80 49 */	lis r3, lit_3934@ha /* 0x80496248@ha */
/* 804912C8  C0 03 62 48 */	lfs f0, lit_3934@l(r3)  /* 0x80496248@l */
/* 804912CC  D0 1F 09 E4 */	stfs f0, 0x9e4(r31)
/* 804912D0  D0 1F 09 E8 */	stfs f0, 0x9e8(r31)
/* 804912D4  D0 1F 09 F0 */	stfs f0, 0x9f0(r31)
/* 804912D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804912DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804912E0  7C 08 03 A6 */	mtlr r0
/* 804912E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804912E8  4E 80 00 20 */	blr 
