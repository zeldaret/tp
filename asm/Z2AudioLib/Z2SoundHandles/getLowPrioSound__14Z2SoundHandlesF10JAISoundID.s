lbl_802AB3D0:
/* 802AB3D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802AB3D4  7C 08 02 A6 */	mflr r0
/* 802AB3D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AB3DC  39 61 00 30 */	addi r11, r1, 0x30
/* 802AB3E0  48 0B 6D F1 */	bl _savegpr_26
/* 802AB3E4  7C 9A 23 78 */	mr r26, r4
/* 802AB3E8  83 ED 85 DC */	lwz r31, __OSReport_disable-0x3C(r13)
/* 802AB3EC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 802AB3F0  3B A4 FF FF */	addi r29, r4, 0xFFFF /* 0x0000FFFF@l */
/* 802AB3F4  3B 80 00 00 */	li r28, 0
/* 802AB3F8  83 63 00 00 */	lwz r27, 0(r3)
/* 802AB3FC  48 00 00 50 */	b lbl_802AB44C
lbl_802AB400:
/* 802AB400  83 DB 00 00 */	lwz r30, 0(r27)
/* 802AB404  80 7E 00 00 */	lwz r3, 0(r30)
/* 802AB408  28 03 00 00 */	cmplwi r3, 0
/* 802AB40C  40 82 00 0C */	bne lbl_802AB418
/* 802AB410  7F C3 F3 78 */	mr r3, r30
/* 802AB414  48 00 00 74 */	b lbl_802AB488
lbl_802AB418:
/* 802AB418  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802AB41C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802AB420  7F E3 FB 78 */	mr r3, r31
/* 802AB424  38 81 00 0C */	addi r4, r1, 0xc
/* 802AB428  81 9F 00 00 */	lwz r12, 0(r31)
/* 802AB42C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802AB430  7D 89 03 A6 */	mtctr r12
/* 802AB434  4E 80 04 21 */	bctrl 
/* 802AB438  7C 03 E8 40 */	cmplw r3, r29
/* 802AB43C  40 80 00 0C */	bge lbl_802AB448
/* 802AB440  7C 7D 1B 78 */	mr r29, r3
/* 802AB444  7F DC F3 78 */	mr r28, r30
lbl_802AB448:
/* 802AB448  83 7B 00 0C */	lwz r27, 0xc(r27)
lbl_802AB44C:
/* 802AB44C  28 1B 00 00 */	cmplwi r27, 0
/* 802AB450  40 82 FF B0 */	bne lbl_802AB400
/* 802AB454  80 1A 00 00 */	lwz r0, 0(r26)
/* 802AB458  90 01 00 08 */	stw r0, 8(r1)
/* 802AB45C  7F E3 FB 78 */	mr r3, r31
/* 802AB460  38 81 00 08 */	addi r4, r1, 8
/* 802AB464  81 9F 00 00 */	lwz r12, 0(r31)
/* 802AB468  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802AB46C  7D 89 03 A6 */	mtctr r12
/* 802AB470  4E 80 04 21 */	bctrl 
/* 802AB474  7C 03 E8 40 */	cmplw r3, r29
/* 802AB478  41 80 00 0C */	blt lbl_802AB484
/* 802AB47C  7F 83 E3 78 */	mr r3, r28
/* 802AB480  48 00 00 08 */	b lbl_802AB488
lbl_802AB484:
/* 802AB484  38 60 00 00 */	li r3, 0
lbl_802AB488:
/* 802AB488  39 61 00 30 */	addi r11, r1, 0x30
/* 802AB48C  48 0B 6D 91 */	bl _restgpr_26
/* 802AB490  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802AB494  7C 08 03 A6 */	mtlr r0
/* 802AB498  38 21 00 30 */	addi r1, r1, 0x30
/* 802AB49C  4E 80 00 20 */	blr 
