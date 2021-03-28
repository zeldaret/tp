lbl_8003FF14:
/* 8003FF14  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8003FF18  7C 08 02 A6 */	mflr r0
/* 8003FF1C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8003FF20  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 8003FF24  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8003FF28  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8003FF2C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8003FF30  C0 02 84 4C */	lfs f0, lit_4264(r2)
/* 8003FF34  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8003FF38  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8003FF3C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8003FF40  C0 02 84 50 */	lfs f0, lit_4265(r2)
/* 8003FF44  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8003FF48  C0 22 84 28 */	lfs f1, lit_3796(r2)
/* 8003FF4C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8003FF50  C0 02 84 54 */	lfs f0, lit_4266(r2)
/* 8003FF54  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8003FF58  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8003FF5C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8003FF60  38 81 00 20 */	addi r4, r1, 0x20
/* 8003FF64  38 A1 00 14 */	addi r5, r1, 0x14
/* 8003FF68  38 C1 00 08 */	addi r6, r1, 8
/* 8003FF6C  38 E0 00 00 */	li r7, 0
/* 8003FF70  4B FC C7 A1 */	bl mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs
/* 8003FF74  38 61 00 2C */	addi r3, r1, 0x2c
/* 8003FF78  38 80 00 00 */	li r4, 0
/* 8003FF7C  48 32 02 D1 */	bl GXLoadPosMtxImm
/* 8003FF80  48 31 B6 0D */	bl GXClearVtxDesc
/* 8003FF84  38 60 00 09 */	li r3, 9
/* 8003FF88  38 80 00 03 */	li r4, 3
/* 8003FF8C  48 31 AF 2D */	bl GXSetVtxDesc
/* 8003FF90  38 60 00 00 */	li r3, 0
/* 8003FF94  38 80 00 09 */	li r4, 9
/* 8003FF98  38 A0 00 00 */	li r5, 0
/* 8003FF9C  38 C0 00 04 */	li r6, 4
/* 8003FFA0  38 E0 00 00 */	li r7, 0
/* 8003FFA4  48 31 B6 21 */	bl GXSetVtxAttrFmt
/* 8003FFA8  38 60 00 01 */	li r3, 1
/* 8003FFAC  38 80 00 08 */	li r4, 8
/* 8003FFB0  48 31 BE 89 */	bl GXSetMisc
/* 8003FFB4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8003FFB8  7C 08 03 A6 */	mtlr r0
/* 8003FFBC  38 21 00 60 */	addi r1, r1, 0x60
/* 8003FFC0  4E 80 00 20 */	blr 
