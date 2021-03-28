lbl_8047E7B0:
/* 8047E7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047E7B4  7C 08 02 A6 */	mflr r0
/* 8047E7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047E7BC  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 8047E7C0  28 04 00 00 */	cmplwi r4, 0
/* 8047E7C4  41 82 00 1C */	beq lbl_8047E7E0
/* 8047E7C8  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 8047E7CC  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 8047E7D0  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 8047E7D4  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 8047E7D8  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 8047E7DC  D0 04 00 20 */	stfs f0, 0x20(r4)
lbl_8047E7E0:
/* 8047E7E0  4B FF FE E9 */	bl set_mtx__Q212daObjMovebox5Act_cFv
/* 8047E7E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047E7E8  7C 08 03 A6 */	mtlr r0
/* 8047E7EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8047E7F0  4E 80 00 20 */	blr 
