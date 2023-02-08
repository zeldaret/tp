lbl_802C8258:
/* 802C8258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C825C  7C 08 02 A6 */	mflr r0
/* 802C8260  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C8264  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802C8268  41 82 00 48 */	beq lbl_802C82B0
/* 802C826C  38 00 00 01 */	li r0, 1
/* 802C8270  98 03 01 B8 */	stb r0, 0x1b8(r3)
/* 802C8274  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090027@ha */
/* 802C8278  38 03 00 27 */	addi r0, r3, 0x0027 /* 0x00090027@l */
/* 802C827C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C8280  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802C8284  38 81 00 0C */	addi r4, r1, 0xc
/* 802C8288  38 A0 00 00 */	li r5, 0
/* 802C828C  38 C0 00 00 */	li r6, 0
/* 802C8290  38 E0 00 00 */	li r7, 0
/* 802C8294  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C8298  FC 40 08 90 */	fmr f2, f1
/* 802C829C  C0 62 C3 74 */	lfs f3, lit_3705(r2)
/* 802C82A0  FC 80 18 90 */	fmr f4, f3
/* 802C82A4  39 00 00 00 */	li r8, 0
/* 802C82A8  4B FE 36 DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802C82AC  48 00 00 44 */	b lbl_802C82F0
lbl_802C82B0:
/* 802C82B0  38 00 FF FF */	li r0, -1
/* 802C82B4  98 03 01 B8 */	stb r0, 0x1b8(r3)
/* 802C82B8  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090028@ha */
/* 802C82BC  38 03 00 28 */	addi r0, r3, 0x0028 /* 0x00090028@l */
/* 802C82C0  90 01 00 08 */	stw r0, 8(r1)
/* 802C82C4  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802C82C8  38 81 00 08 */	addi r4, r1, 8
/* 802C82CC  38 A0 00 00 */	li r5, 0
/* 802C82D0  38 C0 00 00 */	li r6, 0
/* 802C82D4  38 E0 00 00 */	li r7, 0
/* 802C82D8  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C82DC  FC 40 08 90 */	fmr f2, f1
/* 802C82E0  C0 62 C3 74 */	lfs f3, lit_3705(r2)
/* 802C82E4  FC 80 18 90 */	fmr f4, f3
/* 802C82E8  39 00 00 00 */	li r8, 0
/* 802C82EC  4B FE 36 99 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_802C82F0:
/* 802C82F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C82F4  7C 08 03 A6 */	mtlr r0
/* 802C82F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802C82FC  4E 80 00 20 */	blr 
