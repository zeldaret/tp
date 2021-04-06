lbl_80CA62F8:
/* 80CA62F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA62FC  7C 08 02 A6 */	mflr r0
/* 80CA6300  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA6304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA6308  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA630C  7C 7E 1B 78 */	mr r30, r3
/* 80CA6310  7C 9F 23 78 */	mr r31, r4
/* 80CA6314  4B FF F5 E1 */	bl Action__15daObjOCTHASHI_cFv
/* 80CA6318  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80CA631C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA6320  7F C3 F3 78 */	mr r3, r30
/* 80CA6324  4B FF F6 99 */	bl setBaseMtx__15daObjOCTHASHI_cFv
/* 80CA6328  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CA632C  7C 03 07 74 */	extsb r3, r0
/* 80CA6330  4B 38 6D 3D */	bl dComIfGp_getReverb__Fi
/* 80CA6334  7C 65 1B 78 */	mr r5, r3
/* 80CA6338  38 7E 06 EC */	addi r3, r30, 0x6ec
/* 80CA633C  38 80 00 00 */	li r4, 0
/* 80CA6340  81 9E 06 EC */	lwz r12, 0x6ec(r30)
/* 80CA6344  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80CA6348  7D 89 03 A6 */	mtctr r12
/* 80CA634C  4E 80 04 21 */	bctrl 
/* 80CA6350  38 60 00 01 */	li r3, 1
/* 80CA6354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA6358  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA635C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6360  7C 08 03 A6 */	mtlr r0
/* 80CA6364  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA6368  4E 80 00 20 */	blr 
