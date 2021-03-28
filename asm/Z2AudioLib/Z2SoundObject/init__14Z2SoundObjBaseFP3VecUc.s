lbl_802BDFB0:
/* 802BDFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BDFB4  7C 08 02 A6 */	mflr r0
/* 802BDFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BDFBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BDFC0  93 C1 00 08 */	stw r30, 8(r1)
/* 802BDFC4  7C 7E 1B 78 */	mr r30, r3
/* 802BDFC8  7C 9F 23 78 */	mr r31, r4
/* 802BDFCC  7C A4 2B 78 */	mr r4, r5
/* 802BDFD0  4B FE D1 49 */	bl initHandlesPool__14Z2SoundHandlesFUc
/* 802BDFD4  93 FE 00 18 */	stw r31, 0x18(r30)
/* 802BDFD8  38 00 00 01 */	li r0, 1
/* 802BDFDC  98 1E 00 1F */	stb r0, 0x1f(r30)
/* 802BDFE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BDFE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BDFE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BDFEC  7C 08 03 A6 */	mtlr r0
/* 802BDFF0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BDFF4  4E 80 00 20 */	blr 
