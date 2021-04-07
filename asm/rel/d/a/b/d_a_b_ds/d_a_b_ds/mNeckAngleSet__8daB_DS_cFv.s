lbl_805D3D80:
/* 805D3D80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805D3D84  7C 08 02 A6 */	mflr r0
/* 805D3D88  90 01 00 34 */	stw r0, 0x34(r1)
/* 805D3D8C  39 61 00 30 */	addi r11, r1, 0x30
/* 805D3D90  4B D8 E4 4D */	bl _savegpr_29
/* 805D3D94  7C 7D 1B 78 */	mr r29, r3
/* 805D3D98  3B C0 00 00 */	li r30, 0
/* 805D3D9C  38 61 00 08 */	addi r3, r1, 8
/* 805D3DA0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D3DA4  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D3DA8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805D3DAC  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 805D3DB0  38 BD 07 00 */	addi r5, r29, 0x700
/* 805D3DB4  4B C9 2D 81 */	bl __mi__4cXyzCFRC3Vec
/* 805D3DB8  C0 01 00 08 */	lfs f0, 8(r1)
/* 805D3DBC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805D3DC0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805D3DC4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805D3DC8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805D3DCC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805D3DD0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805D3DD4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D3DD8  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 805D3DDC  7D 89 03 A6 */	mtctr r12
/* 805D3DE0  4E 80 04 21 */	bctrl 
/* 805D3DE4  28 03 00 00 */	cmplwi r3, 0
/* 805D3DE8  41 82 00 18 */	beq lbl_805D3E00
/* 805D3DEC  7F A3 EB 78 */	mr r3, r29
/* 805D3DF0  48 00 02 65 */	bl mRailInOutCheck__8daB_DS_cFv
/* 805D3DF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D3DF8  40 82 00 08 */	bne lbl_805D3E00
/* 805D3DFC  3B C0 FA D4 */	li r30, -1324
lbl_805D3E00:
/* 805D3E00  38 61 00 14 */	addi r3, r1, 0x14
/* 805D3E04  4B C9 33 25 */	bl atan2sX_Z__4cXyzCFv
/* 805D3E08  7F DF 07 34 */	extsh r31, r30
/* 805D3E0C  7C 1F 1A 14 */	add r0, r31, r3
/* 805D3E10  7C 04 07 34 */	extsh r4, r0
/* 805D3E14  38 7D 04 DE */	addi r3, r29, 0x4de
/* 805D3E18  38 A0 00 02 */	li r5, 2
/* 805D3E1C  38 C0 10 00 */	li r6, 0x1000
/* 805D3E20  4B C9 C7 E9 */	bl cLib_addCalcAngleS2__FPssss
/* 805D3E24  38 61 00 14 */	addi r3, r1, 0x14
/* 805D3E28  4B C9 33 29 */	bl atan2sY_XZ__4cXyzCFv
/* 805D3E2C  7C 64 07 34 */	extsh r4, r3
/* 805D3E30  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 805D3E34  38 A0 00 08 */	li r5, 8
/* 805D3E38  38 C0 02 00 */	li r6, 0x200
/* 805D3E3C  4B C9 C7 CD */	bl cLib_addCalcAngleS2__FPssss
/* 805D3E40  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 805D3E44  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 805D3E48  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805D3E4C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 805D3E50  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 805D3E54  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 805D3E58  38 61 00 14 */	addi r3, r1, 0x14
/* 805D3E5C  4B C9 32 CD */	bl atan2sX_Z__4cXyzCFv
/* 805D3E60  7C 7F 1A 14 */	add r3, r31, r3
/* 805D3E64  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805D3E68  7C 03 00 50 */	subf r0, r3, r0
/* 805D3E6C  7C 03 07 34 */	extsh r3, r0
/* 805D3E70  4B D9 12 61 */	bl abs
/* 805D3E74  38 00 02 00 */	li r0, 0x200
/* 805D3E78  7C 05 FE 70 */	srawi r5, r0, 0x1f
/* 805D3E7C  54 64 0F FE */	srwi r4, r3, 0x1f
/* 805D3E80  7C 03 00 10 */	subfc r0, r3, r0
/* 805D3E84  7C 65 21 14 */	adde r3, r5, r4
/* 805D3E88  39 61 00 30 */	addi r11, r1, 0x30
/* 805D3E8C  4B D8 E3 9D */	bl _restgpr_29
/* 805D3E90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805D3E94  7C 08 03 A6 */	mtlr r0
/* 805D3E98  38 21 00 30 */	addi r1, r1, 0x30
/* 805D3E9C  4E 80 00 20 */	blr 
