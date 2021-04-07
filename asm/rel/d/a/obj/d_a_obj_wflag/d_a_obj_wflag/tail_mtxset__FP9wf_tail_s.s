lbl_80D36F90:
/* 80D36F90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D36F94  7C 08 02 A6 */	mflr r0
/* 80D36F98  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D36F9C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D36FA0  4B 62 B2 29 */	bl _savegpr_24
/* 80D36FA4  7C 78 1B 78 */	mr r24, r3
/* 80D36FA8  3B 20 00 00 */	li r25, 0
/* 80D36FAC  3B E0 00 00 */	li r31, 0
/* 80D36FB0  3B C0 00 00 */	li r30, 0
/* 80D36FB4  3B A0 00 00 */	li r29, 0
/* 80D36FB8  3B 80 00 00 */	li r28, 0
/* 80D36FBC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80D36FC0  3B 63 07 68 */	addi r27, r3, calc_mtx@l /* 0x80450768@l */
lbl_80D36FC4:
/* 80D36FC4  7C 78 E2 14 */	add r3, r24, r28
/* 80D36FC8  C0 23 00 04 */	lfs f1, 4(r3)
/* 80D36FCC  C0 43 00 08 */	lfs f2, 8(r3)
/* 80D36FD0  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 80D36FD4  38 60 00 00 */	li r3, 0
/* 80D36FD8  4B 53 9E 85 */	bl MtxTrans__FfffUc
/* 80D36FDC  80 7B 00 00 */	lwz r3, 0(r27)
/* 80D36FE0  7F 58 EA 14 */	add r26, r24, r29
/* 80D36FE4  A8 9A 00 F4 */	lha r4, 0xf4(r26)
/* 80D36FE8  4B 2D 53 B5 */	bl mDoMtx_XrotM__FPA4_fs
/* 80D36FEC  80 7B 00 00 */	lwz r3, 0(r27)
/* 80D36FF0  A8 9A 00 F6 */	lha r4, 0xf6(r26)
/* 80D36FF4  4B 2D 54 41 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D36FF8  80 7B 00 00 */	lwz r3, 0(r27)
/* 80D36FFC  38 80 80 00 */	li r4, -32768
/* 80D37000  4B 2D 53 9D */	bl mDoMtx_XrotM__FPA4_fs
/* 80D37004  80 7B 00 00 */	lwz r3, 0(r27)
/* 80D37008  7F C4 07 34 */	extsh r4, r30
/* 80D3700C  4B 2D 54 C1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80D37010  80 7B 00 00 */	lwz r3, 0(r27)
/* 80D37014  38 1F 02 5C */	addi r0, r31, 0x25c
/* 80D37018  7C 98 00 2E */	lwzx r4, r24, r0
/* 80D3701C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D37020  4B 60 F4 91 */	bl PSMTXCopy
/* 80D37024  3B 39 00 01 */	addi r25, r25, 1
/* 80D37028  2C 19 00 13 */	cmpwi r25, 0x13
/* 80D3702C  3B FF 00 04 */	addi r31, r31, 4
/* 80D37030  3B DE 27 34 */	addi r30, r30, 0x2734
/* 80D37034  3B BD 00 06 */	addi r29, r29, 6
/* 80D37038  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80D3703C  41 80 FF 88 */	blt lbl_80D36FC4
/* 80D37040  39 61 00 30 */	addi r11, r1, 0x30
/* 80D37044  4B 62 B1 D1 */	bl _restgpr_24
/* 80D37048  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D3704C  7C 08 03 A6 */	mtlr r0
/* 80D37050  38 21 00 30 */	addi r1, r1, 0x30
/* 80D37054  4E 80 00 20 */	blr 
