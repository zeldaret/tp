lbl_80BEB3C8:
/* 80BEB3C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEB3CC  7C 08 02 A6 */	mflr r0
/* 80BEB3D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEB3D4  4B FF FD E1 */	bl draw__15daObjFPillar2_cFv
/* 80BEB3D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEB3DC  7C 08 03 A6 */	mtlr r0
/* 80BEB3E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEB3E4  4E 80 00 20 */	blr 
