lbl_80CFEB3C:
/* 80CFEB3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFEB40  7C 08 02 A6 */	mflr r0
/* 80CFEB44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFEB48  80 83 05 A4 */	lwz r4, 0x5a4(r3)
/* 80CFEB4C  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80CFEB50  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80CFEB54  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80CFEB58  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80CFEB5C  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80CFEB60  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80CFEB64  4B FF FF 51 */	bl set_mtx__Q212daObjSwpush25Act_cFv
/* 80CFEB68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFEB6C  7C 08 03 A6 */	mtlr r0
/* 80CFEB70  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFEB74  4E 80 00 20 */	blr 
