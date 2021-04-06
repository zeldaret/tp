lbl_80A3B000:
/* 80A3B000  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A3B004  7C 08 02 A6 */	mflr r0
/* 80A3B008  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A3B00C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A3B010  7C 7F 1B 78 */	mr r31, r3
/* 80A3B014  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 80A3B018  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A3B01C  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 80A3B020  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A3B024  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 80A3B028  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3B02C  A8 05 00 08 */	lha r0, 8(r5)
/* 80A3B030  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80A3B034  40 82 00 14 */	bne lbl_80A3B048
/* 80A3B038  4B 72 43 C5 */	bl getAttentionOffsetY__9daPy_py_cFv
/* 80A3B03C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A3B040  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A3B044  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80A3B048:
/* 80A3B048  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A3B04C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80A3B050  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A3B054  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80A3B058  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A3B05C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80A3B060  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A3B064  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A3B068  7C 08 03 A6 */	mtlr r0
/* 80A3B06C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A3B070  4E 80 00 20 */	blr 
