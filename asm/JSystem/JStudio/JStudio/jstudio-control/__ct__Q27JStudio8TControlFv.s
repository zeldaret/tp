lbl_80285114:
/* 80285114  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80285118  7C 08 02 A6 */	mflr r0
/* 8028511C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80285120  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80285124  7C 7F 1B 78 */	mr r31, r3
/* 80285128  48 00 3F 8D */	bl __ct__Q37JStudio3stb8TControlFv
/* 8028512C  3C 60 80 3C */	lis r3, __vt__Q27JStudio8TControl@ha /* 0x803C4AF4@ha */
/* 80285130  38 03 4A F4 */	addi r0, r3, __vt__Q27JStudio8TControl@l /* 0x803C4AF4@l */
/* 80285134  90 1F 00 00 */	stw r0, 0(r31)
/* 80285138  38 7F 00 60 */	addi r3, r31, 0x60
/* 8028513C  4B FF F5 2D */	bl __ct__Q37JStudio3fvb8TControlFv
/* 80285140  38 7F 00 74 */	addi r3, r31, 0x74
/* 80285144  4B FF BE 81 */	bl __ct__Q37JStudio3ctb8TControlFv
/* 80285148  38 00 00 00 */	li r0, 0
/* 8028514C  98 1F 00 88 */	stb r0, 0x88(r31)
/* 80285150  98 1F 00 89 */	stb r0, 0x89(r31)
/* 80285154  3C 60 80 3A */	lis r3, lit_745@ha /* 0x8039AA40@ha */
/* 80285158  38 83 AA 40 */	addi r4, r3, lit_745@l /* 0x8039AA40@l */
/* 8028515C  80 64 00 00 */	lwz r3, 0(r4)
/* 80285160  80 04 00 04 */	lwz r0, 4(r4)
/* 80285164  90 61 00 08 */	stw r3, 8(r1)
/* 80285168  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028516C  80 04 00 08 */	lwz r0, 8(r4)
/* 80285170  90 01 00 10 */	stw r0, 0x10(r1)
/* 80285174  7F E3 FB 78 */	mr r3, r31
/* 80285178  38 81 00 08 */	addi r4, r1, 8
/* 8028517C  C0 22 BA 58 */	lfs f1, lit_748(r2)
/* 80285180  48 00 00 D1 */	bl transformOnSet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf
/* 80285184  7F E3 FB 78 */	mr r3, r31
/* 80285188  38 81 00 08 */	addi r4, r1, 8
/* 8028518C  C0 22 BA 58 */	lfs f1, lit_748(r2)
/* 80285190  48 00 01 41 */	bl transformOnGet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf
/* 80285194  7F E3 FB 78 */	mr r3, r31
/* 80285198  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028519C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802851A0  7C 08 03 A6 */	mtlr r0
/* 802851A4  38 21 00 20 */	addi r1, r1, 0x20
/* 802851A8  4E 80 00 20 */	blr 
