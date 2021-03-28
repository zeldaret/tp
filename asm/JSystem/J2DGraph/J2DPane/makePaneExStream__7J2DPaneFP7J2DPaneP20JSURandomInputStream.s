lbl_802F7B18:
/* 802F7B18  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802F7B1C  7C 08 02 A6 */	mflr r0
/* 802F7B20  90 01 00 64 */	stw r0, 0x64(r1)
/* 802F7B24  39 61 00 60 */	addi r11, r1, 0x60
/* 802F7B28  48 06 A6 B5 */	bl _savegpr_29
/* 802F7B2C  7C 7E 1B 78 */	mr r30, r3
/* 802F7B30  7C 9F 23 78 */	mr r31, r4
/* 802F7B34  7C BD 2B 78 */	mr r29, r5
/* 802F7B38  7F A3 EB 78 */	mr r3, r29
/* 802F7B3C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802F7B40  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F7B44  7D 89 03 A6 */	mtctr r12
/* 802F7B48  4E 80 04 21 */	bctrl 
/* 802F7B4C  7F A3 EB 78 */	mr r3, r29
/* 802F7B50  38 81 00 08 */	addi r4, r1, 8
/* 802F7B54  38 A0 00 48 */	li r5, 0x48
/* 802F7B58  4B FE 47 41 */	bl read__14JSUInputStreamFPvl
/* 802F7B5C  A0 01 00 12 */	lhz r0, 0x12(r1)
/* 802F7B60  B0 1E 00 04 */	sth r0, 4(r30)
/* 802F7B64  88 61 00 14 */	lbz r3, 0x14(r1)
/* 802F7B68  30 03 FF FF */	addic r0, r3, -1
/* 802F7B6C  7C 00 19 10 */	subfe r0, r0, r3
/* 802F7B70  98 1E 00 B0 */	stb r0, 0xb0(r30)
/* 802F7B74  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802F7B78  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 802F7B7C  90 7E 00 14 */	stw r3, 0x14(r30)
/* 802F7B80  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802F7B84  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802F7B88  80 61 00 24 */	lwz r3, 0x24(r1)
/* 802F7B8C  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802F7B90  90 1E 00 18 */	stw r0, 0x18(r30)
/* 802F7B94  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 802F7B98  D0 1E 00 CC */	stfs f0, 0xcc(r30)
/* 802F7B9C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 802F7BA0  D0 1E 00 D0 */	stfs f0, 0xd0(r30)
/* 802F7BA4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 802F7BA8  D0 1E 00 B8 */	stfs f0, 0xb8(r30)
/* 802F7BAC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 802F7BB0  D0 1E 00 BC */	stfs f0, 0xbc(r30)
/* 802F7BB4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 802F7BB8  D0 1E 00 C0 */	stfs f0, 0xc0(r30)
/* 802F7BBC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 802F7BC0  D0 1E 00 D4 */	stfs f0, 0xd4(r30)
/* 802F7BC4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 802F7BC8  D0 1E 00 D8 */	stfs f0, 0xd8(r30)
/* 802F7BCC  38 00 00 7A */	li r0, 0x7a
/* 802F7BD0  98 1E 00 B6 */	stb r0, 0xb6(r30)
/* 802F7BD4  88 81 00 15 */	lbz r4, 0x15(r1)
/* 802F7BD8  38 60 00 03 */	li r3, 3
/* 802F7BDC  7C 04 1B D6 */	divw r0, r4, r3
/* 802F7BE0  7C 00 19 D6 */	mullw r0, r0, r3
/* 802F7BE4  7C 00 20 51 */	subf. r0, r0, r4
/* 802F7BE8  40 82 00 10 */	bne lbl_802F7BF8
/* 802F7BEC  C0 02 C7 F0 */	lfs f0, lit_1469(r2)
/* 802F7BF0  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 802F7BF4  48 00 00 28 */	b lbl_802F7C1C
lbl_802F7BF8:
/* 802F7BF8  2C 00 00 01 */	cmpwi r0, 1
/* 802F7BFC  40 82 00 18 */	bne lbl_802F7C14
/* 802F7C00  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 802F7C04  C0 02 C8 08 */	lfs f0, lit_1725(r2)
/* 802F7C08  EC 01 00 32 */	fmuls f0, f1, f0
/* 802F7C0C  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 802F7C10  48 00 00 0C */	b lbl_802F7C1C
lbl_802F7C14:
/* 802F7C14  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 802F7C18  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
lbl_802F7C1C:
/* 802F7C1C  88 61 00 15 */	lbz r3, 0x15(r1)
/* 802F7C20  38 00 00 03 */	li r0, 3
/* 802F7C24  7C 03 03 D7 */	divw. r0, r3, r0
/* 802F7C28  40 82 00 10 */	bne lbl_802F7C38
/* 802F7C2C  C0 02 C7 F0 */	lfs f0, lit_1469(r2)
/* 802F7C30  D0 1E 00 C8 */	stfs f0, 0xc8(r30)
/* 802F7C34  48 00 00 28 */	b lbl_802F7C5C
lbl_802F7C38:
/* 802F7C38  2C 00 00 01 */	cmpwi r0, 1
/* 802F7C3C  40 82 00 18 */	bne lbl_802F7C54
/* 802F7C40  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 802F7C44  C0 02 C8 08 */	lfs f0, lit_1725(r2)
/* 802F7C48  EC 01 00 32 */	fmuls f0, f1, f0
/* 802F7C4C  D0 1E 00 C8 */	stfs f0, 0xc8(r30)
/* 802F7C50  48 00 00 0C */	b lbl_802F7C5C
lbl_802F7C54:
/* 802F7C54  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 802F7C58  D0 1E 00 C8 */	stfs f0, 0xc8(r30)
lbl_802F7C5C:
/* 802F7C5C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 802F7C60  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 802F7C64  EC 60 08 28 */	fsubs f3, f0, f1
/* 802F7C68  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 802F7C6C  C0 9E 00 C4 */	lfs f4, 0xc4(r30)
/* 802F7C70  EC 40 20 28 */	fsubs f2, f0, f4
/* 802F7C74  FC 20 08 50 */	fneg f1, f1
/* 802F7C78  FC 00 20 50 */	fneg f0, f4
/* 802F7C7C  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 802F7C80  D0 3E 00 24 */	stfs f1, 0x24(r30)
/* 802F7C84  D0 5E 00 28 */	stfs f2, 0x28(r30)
/* 802F7C88  D0 7E 00 2C */	stfs f3, 0x2c(r30)
/* 802F7C8C  88 01 00 15 */	lbz r0, 0x15(r1)
/* 802F7C90  98 1E 00 B7 */	stb r0, 0xb7(r30)
/* 802F7C94  38 00 00 FF */	li r0, 0xff
/* 802F7C98  98 1E 00 B2 */	stb r0, 0xb2(r30)
/* 802F7C9C  38 00 00 00 */	li r0, 0
/* 802F7CA0  98 1E 00 B4 */	stb r0, 0xb4(r30)
/* 802F7CA4  28 1F 00 00 */	cmplwi r31, 0
/* 802F7CA8  41 82 00 18 */	beq lbl_802F7CC0
/* 802F7CAC  34 9E 00 DC */	addic. r4, r30, 0xdc
/* 802F7CB0  41 82 00 08 */	beq lbl_802F7CB8
/* 802F7CB4  38 84 00 0C */	addi r4, r4, 0xc
lbl_802F7CB8:
/* 802F7CB8  38 7F 00 DC */	addi r3, r31, 0xdc
/* 802F7CBC  4B FE 42 91 */	bl append__10JSUPtrListFP10JSUPtrLink
lbl_802F7CC0:
/* 802F7CC0  38 60 00 00 */	li r3, 0
/* 802F7CC4  98 7E 00 B1 */	stb r3, 0xb1(r30)
/* 802F7CC8  38 00 00 FF */	li r0, 0xff
/* 802F7CCC  98 1E 00 B3 */	stb r0, 0xb3(r30)
/* 802F7CD0  98 7E 00 B5 */	stb r3, 0xb5(r30)
/* 802F7CD4  7F C3 F3 78 */	mr r3, r30
/* 802F7CD8  81 9E 00 00 */	lwz r12, 0(r30)
/* 802F7CDC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802F7CE0  7D 89 03 A6 */	mtctr r12
/* 802F7CE4  4E 80 04 21 */	bctrl 
/* 802F7CE8  39 61 00 60 */	addi r11, r1, 0x60
/* 802F7CEC  48 06 A5 3D */	bl _restgpr_29
/* 802F7CF0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802F7CF4  7C 08 03 A6 */	mtlr r0
/* 802F7CF8  38 21 00 60 */	addi r1, r1, 0x60
/* 802F7CFC  4E 80 00 20 */	blr 
