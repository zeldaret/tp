lbl_80CBBDB0:
/* 80CBBDB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBBDB4  7C 08 02 A6 */	mflr r0
/* 80CBBDB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBBDBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBBDC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CBBDC4  7C 7E 1B 78 */	mr r30, r3
/* 80CBBDC8  7C 9F 23 78 */	mr r31, r4
/* 80CBBDCC  4B FF FD 95 */	bl event_proc_call__12daObjRgate_cFv
/* 80CBBDD0  7F C3 F3 78 */	mr r3, r30
/* 80CBBDD4  4B FF F5 35 */	bl action__12daObjRgate_cFv
/* 80CBBDD8  80 7E 0B 98 */	lwz r3, 0xb98(r30)
/* 80CBBDDC  38 03 00 01 */	addi r0, r3, 1
/* 80CBBDE0  90 1E 0B 98 */	stw r0, 0xb98(r30)
/* 80CBBDE4  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80CBBDE8  90 1F 00 00 */	stw r0, 0(r31)
/* 80CBBDEC  7F C3 F3 78 */	mr r3, r30
/* 80CBBDF0  4B FF E1 5D */	bl setBaseMtx__12daObjRgate_cFv
/* 80CBBDF4  80 7E 0A E0 */	lwz r3, 0xae0(r30)
/* 80CBBDF8  4B 3B FB C9 */	bl Move__4dBgWFv
/* 80CBBDFC  38 60 00 01 */	li r3, 1
/* 80CBBE00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBBE04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CBBE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBBE0C  7C 08 03 A6 */	mtlr r0
/* 80CBBE10  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBBE14  4E 80 00 20 */	blr 
