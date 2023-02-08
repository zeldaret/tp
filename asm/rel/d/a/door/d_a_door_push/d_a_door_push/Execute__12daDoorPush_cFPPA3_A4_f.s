lbl_8067839C:
/* 8067839C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806783A0  7C 08 02 A6 */	mflr r0
/* 806783A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806783A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806783AC  7C 7F 1B 78 */	mr r31, r3
/* 806783B0  38 1F 05 6C */	addi r0, r31, 0x56c
/* 806783B4  90 04 00 00 */	stw r0, 0(r4)
/* 806783B8  48 00 00 55 */	bl action__12daDoorPush_cFv
/* 806783BC  7F E3 FB 78 */	mr r3, r31
/* 806783C0  48 00 02 A5 */	bl event_proc_call__12daDoorPush_cFv
/* 806783C4  7F E3 FB 78 */	mr r3, r31
/* 806783C8  4B FF FB 71 */	bl setBaseMtx__12daDoorPush_cFv
/* 806783CC  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 806783D0  4B A0 35 F1 */	bl Move__4dBgWFv
/* 806783D4  38 80 00 00 */	li r4, 0
/* 806783D8  38 60 00 00 */	li r3, 0
/* 806783DC  38 00 00 02 */	li r0, 2
/* 806783E0  7C 09 03 A6 */	mtctr r0
lbl_806783E4:
/* 806783E4  38 04 06 2C */	addi r0, r4, 0x62c
/* 806783E8  7C 7F 01 AE */	stbx r3, r31, r0
/* 806783EC  38 84 00 01 */	addi r4, r4, 1
/* 806783F0  42 00 FF F4 */	bdnz lbl_806783E4
/* 806783F4  38 60 00 01 */	li r3, 1
/* 806783F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806783FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80678400  7C 08 03 A6 */	mtlr r0
/* 80678404  38 21 00 10 */	addi r1, r1, 0x10
/* 80678408  4E 80 00 20 */	blr 
