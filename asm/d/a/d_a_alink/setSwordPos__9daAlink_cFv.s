lbl_800A92F0:
/* 800A92F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A92F4  7C 08 02 A6 */	mflr r0
/* 800A92F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A92FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A9300  93 C1 00 08 */	stw r30, 8(r1)
/* 800A9304  7C 7E 1B 78 */	mr r30, r3
/* 800A9308  3C 60 80 39 */	lis r3, lit_3757@ha
/* 800A930C  3B E3 D6 58 */	addi r31, r3, lit_3757@l
/* 800A9310  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 800A9314  D0 1E 34 B0 */	stfs f0, 0x34b0(r30)
/* 800A9318  C0 1E 05 C0 */	lfs f0, 0x5c0(r30)
/* 800A931C  D0 1E 34 B4 */	stfs f0, 0x34b4(r30)
/* 800A9320  C0 1E 05 C4 */	lfs f0, 0x5c4(r30)
/* 800A9324  D0 1E 34 B8 */	stfs f0, 0x34b8(r30)
/* 800A9328  C0 1E 34 98 */	lfs f0, 0x3498(r30)
/* 800A932C  D0 1E 34 BC */	stfs f0, 0x34bc(r30)
/* 800A9330  C0 1E 34 9C */	lfs f0, 0x349c(r30)
/* 800A9334  D0 1E 34 C0 */	stfs f0, 0x34c0(r30)
/* 800A9338  C0 1E 34 A0 */	lfs f0, 0x34a0(r30)
/* 800A933C  D0 1E 34 C4 */	stfs f0, 0x34c4(r30)
/* 800A9340  80 7E 06 B8 */	lwz r3, 0x6b8(r30)
/* 800A9344  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800A9348  D0 1E 34 98 */	stfs f0, 0x3498(r30)
/* 800A934C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 800A9350  D0 1E 34 9C */	stfs f0, 0x349c(r30)
/* 800A9354  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 800A9358  D0 1E 34 A0 */	stfs f0, 0x34a0(r30)
/* 800A935C  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 800A9360  28 00 00 1E */	cmplwi r0, 0x1e
/* 800A9364  41 82 00 0C */	beq lbl_800A9370
/* 800A9368  28 00 00 15 */	cmplwi r0, 0x15
/* 800A936C  40 82 00 1C */	bne lbl_800A9388
lbl_800A9370:
/* 800A9370  80 7E 06 B8 */	lwz r3, 0x6b8(r30)
/* 800A9374  38 63 00 24 */	addi r3, r3, 0x24
/* 800A9378  38 9F 49 AC */	addi r4, r31, 0x49ac
/* 800A937C  38 BE 34 A4 */	addi r5, r30, 0x34a4
/* 800A9380  48 29 DA CD */	bl PSMTXMultVecSR
/* 800A9384  48 00 00 18 */	b lbl_800A939C
lbl_800A9388:
/* 800A9388  80 7E 06 B8 */	lwz r3, 0x6b8(r30)
/* 800A938C  38 63 00 24 */	addi r3, r3, 0x24
/* 800A9390  38 9F 49 A0 */	addi r4, r31, 0x49a0
/* 800A9394  38 BE 34 A4 */	addi r5, r30, 0x34a4
/* 800A9398  48 29 DA B5 */	bl PSMTXMultVecSR
lbl_800A939C:
/* 800A939C  48 0B 5F FD */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 800A93A0  2C 03 00 00 */	cmpwi r3, 0
/* 800A93A4  41 82 00 1C */	beq lbl_800A93C0
/* 800A93A8  80 7E 06 B8 */	lwz r3, 0x6b8(r30)
/* 800A93AC  38 63 00 24 */	addi r3, r3, 0x24
/* 800A93B0  38 9F 24 E0 */	addi r4, r31, 0x24e0
/* 800A93B4  38 BE 05 BC */	addi r5, r30, 0x5bc
/* 800A93B8  48 29 D9 B5 */	bl PSMTXMultVec
/* 800A93BC  48 00 00 18 */	b lbl_800A93D4
lbl_800A93C0:
/* 800A93C0  80 7E 06 B8 */	lwz r3, 0x6b8(r30)
/* 800A93C4  38 63 00 24 */	addi r3, r3, 0x24
/* 800A93C8  38 9F 24 D4 */	addi r4, r31, 0x24d4
/* 800A93CC  38 BE 05 BC */	addi r5, r30, 0x5bc
/* 800A93D0  48 29 D9 9D */	bl PSMTXMultVec
lbl_800A93D4:
/* 800A93D4  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800A93D8  28 00 01 0B */	cmplwi r0, 0x10b
/* 800A93DC  40 82 00 24 */	bne lbl_800A9400
/* 800A93E0  48 04 A8 ED */	bl getCanoeLocalPaddleTop__9daAlink_cFv
/* 800A93E4  7C 7F 1B 78 */	mr r31, r3
/* 800A93E8  7F C3 F3 78 */	mr r3, r30
/* 800A93EC  48 04 AA 11 */	bl getCanoePaddleMatrix__9daAlink_cFv
/* 800A93F0  7F E4 FB 78 */	mr r4, r31
/* 800A93F4  38 BE 37 20 */	addi r5, r30, 0x3720
/* 800A93F8  48 29 D9 75 */	bl PSMTXMultVec
/* 800A93FC  48 00 00 3C */	b lbl_800A9438
lbl_800A9400:
/* 800A9400  28 00 00 46 */	cmplwi r0, 0x46
/* 800A9404  40 82 00 1C */	bne lbl_800A9420
/* 800A9408  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 800A940C  38 63 00 24 */	addi r3, r3, 0x24
/* 800A9410  38 9F 49 B8 */	addi r4, r31, 0x49b8
/* 800A9414  38 BE 37 20 */	addi r5, r30, 0x3720
/* 800A9418  48 29 D9 55 */	bl PSMTXMultVec
/* 800A941C  48 00 00 1C */	b lbl_800A9438
lbl_800A9420:
/* 800A9420  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 800A9424  D0 1E 37 20 */	stfs f0, 0x3720(r30)
/* 800A9428  C0 1E 05 C0 */	lfs f0, 0x5c0(r30)
/* 800A942C  D0 1E 37 24 */	stfs f0, 0x3724(r30)
/* 800A9430  C0 1E 05 C4 */	lfs f0, 0x5c4(r30)
/* 800A9434  D0 1E 37 28 */	stfs f0, 0x3728(r30)
lbl_800A9438:
/* 800A9438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A943C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A9440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A9444  7C 08 03 A6 */	mtlr r0
/* 800A9448  38 21 00 10 */	addi r1, r1, 0x10
/* 800A944C  4E 80 00 20 */	blr 
