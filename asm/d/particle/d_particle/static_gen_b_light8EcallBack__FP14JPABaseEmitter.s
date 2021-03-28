lbl_8004A108:
/* 8004A108  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8004A10C  7C 08 02 A6 */	mflr r0
/* 8004A110  90 01 00 44 */	stw r0, 0x44(r1)
/* 8004A114  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8004A118  7C 7F 1B 78 */	mr r31, r3
/* 8004A11C  48 31 1D B1 */	bl GXFlush
/* 8004A120  38 61 00 08 */	addi r3, r1, 8
/* 8004A124  48 2F C3 61 */	bl PSMTXIdentity
/* 8004A128  38 61 00 08 */	addi r3, r1, 8
/* 8004A12C  38 80 00 00 */	li r4, 0
/* 8004A130  48 31 61 1D */	bl GXLoadPosMtxImm
/* 8004A134  38 61 00 08 */	addi r3, r1, 8
/* 8004A138  38 80 00 00 */	li r4, 0
/* 8004A13C  48 31 61 61 */	bl GXLoadNrmMtxImm
/* 8004A140  48 31 1A 2D */	bl GXInvalidateVtxCache
/* 8004A144  38 60 00 00 */	li r3, 0
/* 8004A148  38 80 00 09 */	li r4, 9
/* 8004A14C  38 A0 00 01 */	li r5, 1
/* 8004A150  38 C0 00 04 */	li r6, 4
/* 8004A154  38 E0 00 00 */	li r7, 0
/* 8004A158  48 31 14 6D */	bl GXSetVtxAttrFmt
/* 8004A15C  38 60 00 00 */	li r3, 0
/* 8004A160  38 80 00 0A */	li r4, 0xa
/* 8004A164  38 A0 00 00 */	li r5, 0
/* 8004A168  38 C0 00 04 */	li r6, 4
/* 8004A16C  38 E0 00 00 */	li r7, 0
/* 8004A170  48 31 14 55 */	bl GXSetVtxAttrFmt
/* 8004A174  38 60 00 00 */	li r3, 0
/* 8004A178  38 80 00 0B */	li r4, 0xb
/* 8004A17C  38 A0 00 01 */	li r5, 1
/* 8004A180  38 C0 00 05 */	li r6, 5
/* 8004A184  38 E0 00 00 */	li r7, 0
/* 8004A188  48 31 14 3D */	bl GXSetVtxAttrFmt
/* 8004A18C  38 60 00 00 */	li r3, 0
/* 8004A190  38 80 00 0D */	li r4, 0xd
/* 8004A194  38 A0 00 01 */	li r5, 1
/* 8004A198  38 C0 00 04 */	li r6, 4
/* 8004A19C  38 E0 00 00 */	li r7, 0
/* 8004A1A0  48 31 14 25 */	bl GXSetVtxAttrFmt
/* 8004A1A4  48 31 13 E9 */	bl GXClearVtxDesc
/* 8004A1A8  38 60 00 09 */	li r3, 9
/* 8004A1AC  38 80 00 01 */	li r4, 1
/* 8004A1B0  48 31 0D 09 */	bl GXSetVtxDesc
/* 8004A1B4  38 60 00 0A */	li r3, 0xa
/* 8004A1B8  38 80 00 01 */	li r4, 1
/* 8004A1BC  48 31 0C FD */	bl GXSetVtxDesc
/* 8004A1C0  38 60 00 0B */	li r3, 0xb
/* 8004A1C4  38 80 00 01 */	li r4, 1
/* 8004A1C8  48 31 0C F1 */	bl GXSetVtxDesc
/* 8004A1CC  38 60 00 0D */	li r3, 0xd
/* 8004A1D0  38 80 00 01 */	li r4, 1
/* 8004A1D4  48 31 0C E5 */	bl GXSetVtxDesc
/* 8004A1D8  7F E3 FB 78 */	mr r3, r31
/* 8004A1DC  48 23 4D 65 */	bl getDrawCount__14JPABaseEmitterCFv
/* 8004A1E0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8004A1E4  2C 00 00 02 */	cmpwi r0, 2
/* 8004A1E8  41 82 00 20 */	beq lbl_8004A208
/* 8004A1EC  40 80 00 24 */	bge lbl_8004A210
/* 8004A1F0  2C 00 00 01 */	cmpwi r0, 1
/* 8004A1F4  40 80 00 08 */	bge lbl_8004A1FC
/* 8004A1F8  48 00 00 18 */	b lbl_8004A210
lbl_8004A1FC:
/* 8004A1FC  7F E3 FB 78 */	mr r3, r31
/* 8004A200  4B FF FA 21 */	bl drawFirst_l8__FP14JPABaseEmitter
/* 8004A204  48 00 00 0C */	b lbl_8004A210
lbl_8004A208:
/* 8004A208  7F E3 FB 78 */	mr r3, r31
/* 8004A20C  4B FF FC 35 */	bl drawSecond_b_light8__FP14JPABaseEmitter
lbl_8004A210:
/* 8004A210  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8004A214  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8004A218  7C 08 03 A6 */	mtlr r0
/* 8004A21C  38 21 00 40 */	addi r1, r1, 0x40
/* 8004A220  4E 80 00 20 */	blr 
