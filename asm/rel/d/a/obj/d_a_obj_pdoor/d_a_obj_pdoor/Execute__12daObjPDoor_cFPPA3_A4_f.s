lbl_80CAA23C:
/* 80CAA23C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAA240  7C 08 02 A6 */	mflr r0
/* 80CAA244  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAA248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAA24C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CAA250  7C 7E 1B 78 */	mr r30, r3
/* 80CAA254  7C 9F 23 78 */	mr r31, r4
/* 80CAA258  48 00 00 39 */	bl mode_proc_call__12daObjPDoor_cFv
/* 80CAA25C  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80CAA260  90 1F 00 00 */	stw r0, 0(r31)
/* 80CAA264  7F C3 F3 78 */	mr r3, r30
/* 80CAA268  4B FF FD 71 */	bl setBaseMtx__12daObjPDoor_cFv
/* 80CAA26C  38 00 00 00 */	li r0, 0
/* 80CAA270  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 80CAA274  38 60 00 01 */	li r3, 1
/* 80CAA278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAA27C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CAA280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAA284  7C 08 03 A6 */	mtlr r0
/* 80CAA288  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAA28C  4E 80 00 20 */	blr 
