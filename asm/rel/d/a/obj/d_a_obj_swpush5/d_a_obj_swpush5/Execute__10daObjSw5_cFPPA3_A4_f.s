lbl_8059BBD4:
/* 8059BBD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059BBD8  7C 08 02 A6 */	mflr r0
/* 8059BBDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059BBE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059BBE4  93 C1 00 08 */	stw r30, 8(r1)
/* 8059BBE8  7C 7E 1B 78 */	mr r30, r3
/* 8059BBEC  7C 9F 23 78 */	mr r31, r4
/* 8059BBF0  48 00 00 81 */	bl setting_ride_flag__10daObjSw5_cFv
/* 8059BBF4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8059BBF8  38 03 00 01 */	addi r0, r3, 1
/* 8059BBFC  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8059BC00  7F C3 F3 78 */	mr r3, r30
/* 8059BC04  48 00 01 29 */	bl event_proc_call__10daObjSw5_cFv
/* 8059BC08  7F C3 F3 78 */	mr r3, r30
/* 8059BC0C  48 00 03 D9 */	bl mode_proc_call__10daObjSw5_cFv
/* 8059BC10  7F C3 F3 78 */	mr r3, r30
/* 8059BC14  48 00 03 41 */	bl calc_top_pos__10daObjSw5_cFv
/* 8059BC18  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8059BC1C  4B AD FD A5 */	bl Move__4dBgWFv
/* 8059BC20  38 1E 05 6C */	addi r0, r30, 0x56c
/* 8059BC24  90 1F 00 00 */	stw r0, 0(r31)
/* 8059BC28  7F C3 F3 78 */	mr r3, r30
/* 8059BC2C  4B FF FC 61 */	bl setBaseMtx__10daObjSw5_cFv
/* 8059BC30  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 8059BC34  98 1E 05 AF */	stb r0, 0x5af(r30)
/* 8059BC38  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 8059BC3C  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 8059BC40  38 60 00 00 */	li r3, 0
/* 8059BC44  98 7E 05 AE */	stb r3, 0x5ae(r30)
/* 8059BC48  88 1E 05 B2 */	lbz r0, 0x5b2(r30)
/* 8059BC4C  98 1E 05 B3 */	stb r0, 0x5b3(r30)
/* 8059BC50  98 7E 05 B2 */	stb r3, 0x5b2(r30)
/* 8059BC54  38 60 00 01 */	li r3, 1
/* 8059BC58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059BC5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059BC60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059BC64  7C 08 03 A6 */	mtlr r0
/* 8059BC68  38 21 00 10 */	addi r1, r1, 0x10
/* 8059BC6C  4E 80 00 20 */	blr 
