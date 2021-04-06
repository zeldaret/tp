lbl_803039CC:
/* 803039CC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803039D0  7C 08 02 A6 */	mflr r0
/* 803039D4  90 01 00 74 */	stw r0, 0x74(r1)
/* 803039D8  39 61 00 70 */	addi r11, r1, 0x70
/* 803039DC  48 05 E7 FD */	bl _savegpr_28
/* 803039E0  7C 7C 1B 78 */	mr r28, r3
/* 803039E4  7C 9F 23 78 */	mr r31, r4
/* 803039E8  80 63 01 50 */	lwz r3, 0x150(r3)
/* 803039EC  80 63 00 70 */	lwz r3, 0x70(r3)
/* 803039F0  81 83 00 00 */	lwz r12, 0(r3)
/* 803039F4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 803039F8  7D 89 03 A6 */	mtctr r12
/* 803039FC  4E 80 04 21 */	bctrl 
/* 80303A00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80303A04  40 82 00 0C */	bne lbl_80303A10
/* 80303A08  38 60 00 00 */	li r3, 0
/* 80303A0C  48 00 00 90 */	b lbl_80303A9C
lbl_80303A10:
/* 80303A10  3B A0 00 00 */	li r29, 0
/* 80303A14  3C 60 80 3A */	lis r3, j2dDefaultTexMtxInfo@ha /* 0x803A1BA0@ha */
/* 80303A18  3B C3 1B A0 */	addi r30, r3, j2dDefaultTexMtxInfo@l /* 0x803A1BA0@l */
/* 80303A1C  57 FF 06 3E */	clrlwi r31, r31, 0x18
/* 80303A20  48 00 00 6C */	b lbl_80303A8C
lbl_80303A24:
/* 80303A24  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80303A28  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80303A2C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80303A30  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80303A34  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80303A38  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80303A3C  88 1E 00 00 */	lbz r0, 0(r30)
/* 80303A40  98 01 00 08 */	stb r0, 8(r1)
/* 80303A44  88 1E 00 01 */	lbz r0, 1(r30)
/* 80303A48  98 01 00 09 */	stb r0, 9(r1)
/* 80303A4C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80303A50  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80303A54  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80303A58  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80303A5C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80303A60  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80303A64  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80303A68  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80303A6C  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80303A70  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80303A74  80 7C 01 50 */	lwz r3, 0x150(r28)
/* 80303A78  38 63 00 28 */	addi r3, r3, 0x28
/* 80303A7C  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 80303A80  38 A1 00 08 */	addi r5, r1, 8
/* 80303A84  4B FE 7C 21 */	bl setTexMtx__14J2DTexGenBlockFUlR9J2DTexMtx
/* 80303A88  3B BD 00 01 */	addi r29, r29, 1
lbl_80303A8C:
/* 80303A8C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80303A90  7C 00 F8 40 */	cmplw r0, r31
/* 80303A94  41 80 FF 90 */	blt lbl_80303A24
/* 80303A98  38 60 00 01 */	li r3, 1
lbl_80303A9C:
/* 80303A9C  39 61 00 70 */	addi r11, r1, 0x70
/* 80303AA0  48 05 E7 85 */	bl _restgpr_28
/* 80303AA4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80303AA8  7C 08 03 A6 */	mtlr r0
/* 80303AAC  38 21 00 70 */	addi r1, r1, 0x70
/* 80303AB0  4E 80 00 20 */	blr 
