lbl_8000C50C:
/* 8000C50C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8000C510  7C 08 02 A6 */	mflr r0
/* 8000C514  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8000C518  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 8000C51C  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 8000C520  7C 7E 1B 78 */	mr r30, r3
/* 8000C524  7C DF 33 78 */	mr r31, r6
/* 8000C528  C0 04 00 00 */	lfs f0, 0(r4)
/* 8000C52C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8000C530  C0 04 00 04 */	lfs f0, 4(r4)
/* 8000C534  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8000C538  C0 04 00 08 */	lfs f0, 8(r4)
/* 8000C53C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8000C540  C0 05 00 00 */	lfs f0, 0(r5)
/* 8000C544  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8000C548  C0 05 00 04 */	lfs f0, 4(r5)
/* 8000C54C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8000C550  C0 05 00 08 */	lfs f0, 8(r5)
/* 8000C554  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8000C558  38 61 00 50 */	addi r3, r1, 0x50
/* 8000C55C  38 81 00 8C */	addi r4, r1, 0x8c
/* 8000C560  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8000C564  48 25 A5 D1 */	bl __mi__4cXyzCFRC3Vec
/* 8000C568  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8000C56C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8000C570  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8000C574  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8000C578  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8000C57C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8000C580  38 61 00 44 */	addi r3, r1, 0x44
/* 8000C584  38 81 00 68 */	addi r4, r1, 0x68
/* 8000C588  48 25 A9 6D */	bl normalize__4cXyzFv
/* 8000C58C  C0 22 81 0C */	lfs f1, lit_3677(r2)
/* 8000C590  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8000C594  C0 02 81 08 */	lfs f0, lit_3676(r2)
/* 8000C598  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8000C59C  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8000C5A0  38 61 00 38 */	addi r3, r1, 0x38
/* 8000C5A4  38 81 00 80 */	addi r4, r1, 0x80
/* 8000C5A8  38 A1 00 68 */	addi r5, r1, 0x68
/* 8000C5AC  48 25 A7 11 */	bl outprod__4cXyzCFRC3Vec
/* 8000C5B0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8000C5B4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8000C5B8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8000C5BC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8000C5C0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8000C5C4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8000C5C8  38 61 00 80 */	addi r3, r1, 0x80
/* 8000C5CC  48 25 AA 11 */	bl normalizeRS__4cXyzFv
/* 8000C5D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8000C5D4  40 82 00 50 */	bne lbl_8000C624
/* 8000C5D8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8000C5DC  FC 00 00 50 */	fneg f0, f0
/* 8000C5E0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8000C5E4  C0 02 81 0C */	lfs f0, lit_3677(r2)
/* 8000C5E8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8000C5EC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8000C5F0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8000C5F4  38 81 00 80 */	addi r4, r1, 0x80
/* 8000C5F8  38 A1 00 68 */	addi r5, r1, 0x68
/* 8000C5FC  48 25 A6 C1 */	bl outprod__4cXyzCFRC3Vec
/* 8000C600  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8000C604  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8000C608  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8000C60C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8000C610  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8000C614  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8000C618  38 61 00 20 */	addi r3, r1, 0x20
/* 8000C61C  38 81 00 80 */	addi r4, r1, 0x80
/* 8000C620  48 25 A8 D5 */	bl normalize__4cXyzFv
lbl_8000C624:
/* 8000C624  38 61 00 14 */	addi r3, r1, 0x14
/* 8000C628  38 81 00 68 */	addi r4, r1, 0x68
/* 8000C62C  38 A1 00 80 */	addi r5, r1, 0x80
/* 8000C630  48 25 A6 8D */	bl outprod__4cXyzCFRC3Vec
/* 8000C634  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8000C638  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8000C63C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8000C640  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8000C644  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8000C648  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8000C64C  38 61 00 08 */	addi r3, r1, 8
/* 8000C650  38 81 00 74 */	addi r4, r1, 0x74
/* 8000C654  48 25 A8 A1 */	bl normalize__4cXyzFv
/* 8000C658  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8000C65C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8000C660  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8000C664  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8000C668  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8000C66C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8000C670  38 61 00 80 */	addi r3, r1, 0x80
/* 8000C674  38 81 00 8C */	addi r4, r1, 0x8c
/* 8000C678  48 33 AB 1D */	bl PSVECDotProduct
/* 8000C67C  FC 00 08 50 */	fneg f0, f1
/* 8000C680  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8000C684  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8000C688  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8000C68C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8000C690  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 8000C694  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8000C698  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8000C69C  38 61 00 74 */	addi r3, r1, 0x74
/* 8000C6A0  38 81 00 8C */	addi r4, r1, 0x8c
/* 8000C6A4  48 33 AA F1 */	bl PSVECDotProduct
/* 8000C6A8  FC 00 08 50 */	fneg f0, f1
/* 8000C6AC  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8000C6B0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8000C6B4  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 8000C6B8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8000C6BC  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 8000C6C0  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8000C6C4  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8000C6C8  38 61 00 68 */	addi r3, r1, 0x68
/* 8000C6CC  38 81 00 8C */	addi r4, r1, 0x8c
/* 8000C6D0  48 33 AA C5 */	bl PSVECDotProduct
/* 8000C6D4  FC 00 08 50 */	fneg f0, f1
/* 8000C6D8  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8000C6DC  38 61 00 98 */	addi r3, r1, 0x98
/* 8000C6E0  7F E4 FB 78 */	mr r4, r31
/* 8000C6E4  4B FF FD 91 */	bl mDoMtx_ZrotS__FPA4_fs
/* 8000C6E8  38 61 00 98 */	addi r3, r1, 0x98
/* 8000C6EC  7F C4 F3 78 */	mr r4, r30
/* 8000C6F0  7F C5 F3 78 */	mr r5, r30
/* 8000C6F4  48 33 9D F1 */	bl PSMTXConcat
/* 8000C6F8  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 8000C6FC  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 8000C700  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8000C704  7C 08 03 A6 */	mtlr r0
/* 8000C708  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8000C70C  4E 80 00 20 */	blr 
