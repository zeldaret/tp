lbl_8058DA64:
/* 8058DA64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DA68  7C 08 02 A6 */	mflr r0
/* 8058DA6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DA70  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 8058DA74  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 8058DA78  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 8058DA7C  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 8058DA80  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 8058DA84  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 8058DA88  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 8058DA8C  4B FF FF 45 */	bl set_mtx__Q211daObjLadder5Act_cFv
/* 8058DA90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DA94  7C 08 03 A6 */	mtlr r0
/* 8058DA98  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DA9C  4E 80 00 20 */	blr 
