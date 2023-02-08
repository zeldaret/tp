lbl_80B9D4CC:
/* 80B9D4CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9D4D0  7C 08 02 A6 */	mflr r0
/* 80B9D4D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9D4D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9D4DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9D4E0  7C 7E 1B 78 */	mr r30, r3
/* 80B9D4E4  7C 9F 23 78 */	mr r31, r4
/* 80B9D4E8  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80B9D4EC  4B 4A B3 81 */	bl eventUpdate__17dEvLib_callback_cFv
/* 80B9D4F0  7F C3 F3 78 */	mr r3, r30
/* 80B9D4F4  48 00 00 55 */	bl move__10daTurara_cFv
/* 80B9D4F8  88 1E 09 84 */	lbz r0, 0x984(r30)
/* 80B9D4FC  54 00 10 3A */	slwi r0, r0, 2
/* 80B9D500  7C 7E 02 14 */	add r3, r30, r0
/* 80B9D504  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80B9D508  38 03 00 24 */	addi r0, r3, 0x24
/* 80B9D50C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9D510  80 1E 07 D4 */	lwz r0, 0x7d4(r30)
/* 80B9D514  54 00 A7 FE */	rlwinm r0, r0, 0x14, 0x1f, 0x1f
/* 80B9D518  98 1E 07 64 */	stb r0, 0x764(r30)
/* 80B9D51C  7F C3 F3 78 */	mr r3, r30
/* 80B9D520  4B FF F7 7D */	bl setBaseMtx__10daTurara_cFv
/* 80B9D524  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80B9D528  4B 4E 63 09 */	bl Move__10dCcD_GSttsFv
/* 80B9D52C  38 60 00 01 */	li r3, 1
/* 80B9D530  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9D534  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9D538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9D53C  7C 08 03 A6 */	mtlr r0
/* 80B9D540  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9D544  4E 80 00 20 */	blr 
