lbl_80343D84:
/* 80343D84  7C 08 02 A6 */	mflr r0
/* 80343D88  90 01 00 04 */	stw r0, 4(r1)
/* 80343D8C  94 21 FD 18 */	stwu r1, -0x2e8(r1)
/* 80343D90  93 E1 02 E4 */	stw r31, 0x2e4(r1)
/* 80343D94  93 C1 02 E0 */	stw r30, 0x2e0(r1)
/* 80343D98  93 A1 02 DC */	stw r29, 0x2dc(r1)
/* 80343D9C  93 81 02 D8 */	stw r28, 0x2d8(r1)
/* 80343DA0  3B E4 00 00 */	addi r31, r4, 0
/* 80343DA4  7C 63 07 34 */	extsh r3, r3
/* 80343DA8  38 03 FF F5 */	addi r0, r3, -11
/* 80343DAC  3C 60 55 55 */	lis r3, 0x5555 /* 0x55555556@ha */
/* 80343DB0  38 63 55 56 */	addi r3, r3, 0x5556 /* 0x55555556@l */
/* 80343DB4  7C 63 00 96 */	mulhw r3, r3, r0
/* 80343DB8  54 60 0F FE */	srwi r0, r3, 0x1f
/* 80343DBC  7F C3 02 14 */	add r30, r3, r0
/* 80343DC0  3C 60 00 50 */	lis r3, 0x50
/* 80343DC4  1C 1E 00 03 */	mulli r0, r30, 3
/* 80343DC8  7C 63 04 30 */	srw r3, r3, r0
/* 80343DCC  4B FF 9C F1 */	bl __OSMaskInterrupts
/* 80343DD0  57 C4 30 32 */	slwi r4, r30, 6
/* 80343DD4  3C 60 80 45 */	lis r3, Ecb@ha /* 0x8044C570@ha */
/* 80343DD8  38 03 C5 70 */	addi r0, r3, Ecb@l /* 0x8044C570@l */
/* 80343DDC  7F A0 22 14 */	add r29, r0, r4
/* 80343DE0  83 9D 00 08 */	lwz r28, 8(r29)
/* 80343DE4  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80343DE8  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80343DEC  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80343DF0  28 1C 00 00 */	cmplwi r28, 0
/* 80343DF4  41 82 00 40 */	beq lbl_80343E34
/* 80343DF8  38 61 00 10 */	addi r3, r1, 0x10
/* 80343DFC  4B FF 82 05 */	bl OSClearContext
/* 80343E00  38 61 00 10 */	addi r3, r1, 0x10
/* 80343E04  4B FF 80 35 */	bl OSSetCurrentContext
/* 80343E08  38 00 00 00 */	li r0, 0
/* 80343E0C  90 1D 00 08 */	stw r0, 8(r29)
/* 80343E10  38 7E 00 00 */	addi r3, r30, 0
/* 80343E14  38 9F 00 00 */	addi r4, r31, 0
/* 80343E18  39 9C 00 00 */	addi r12, r28, 0
/* 80343E1C  7D 88 03 A6 */	mtlr r12
/* 80343E20  4E 80 00 21 */	blrl 
/* 80343E24  38 61 00 10 */	addi r3, r1, 0x10
/* 80343E28  4B FF 81 D9 */	bl OSClearContext
/* 80343E2C  7F E3 FB 78 */	mr r3, r31
/* 80343E30  4B FF 80 09 */	bl OSSetCurrentContext
lbl_80343E34:
/* 80343E34  80 01 02 EC */	lwz r0, 0x2ec(r1)
/* 80343E38  83 E1 02 E4 */	lwz r31, 0x2e4(r1)
/* 80343E3C  83 C1 02 E0 */	lwz r30, 0x2e0(r1)
/* 80343E40  83 A1 02 DC */	lwz r29, 0x2dc(r1)
/* 80343E44  83 81 02 D8 */	lwz r28, 0x2d8(r1)
/* 80343E48  38 21 02 E8 */	addi r1, r1, 0x2e8
/* 80343E4C  7C 08 03 A6 */	mtlr r0
/* 80343E50  4E 80 00 20 */	blr 
