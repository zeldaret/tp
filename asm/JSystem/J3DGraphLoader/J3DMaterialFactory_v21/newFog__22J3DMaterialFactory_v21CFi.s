lbl_80333E04:
/* 80333E04  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80333E08  7C 08 02 A6 */	mflr r0
/* 80333E0C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80333E10  39 61 00 70 */	addi r11, r1, 0x70
/* 80333E14  48 02 E3 C9 */	bl _savegpr_29
/* 80333E18  7C 7F 1B 78 */	mr r31, r3
/* 80333E1C  7C 9D 23 78 */	mr r29, r4
/* 80333E20  7C BE 2B 78 */	mr r30, r5
/* 80333E24  38 61 00 34 */	addi r3, r1, 0x34
/* 80333E28  3C 80 80 3A */	lis r4, j3dDefaultFogInfo@ha
/* 80333E2C  38 84 1F BC */	addi r4, r4, j3dDefaultFogInfo@l
/* 80333E30  4B FF 19 D1 */	bl __as__10J3DFogInfoFRC10J3DFogInfo
/* 80333E34  80 9D 00 04 */	lwz r4, 4(r29)
/* 80333E38  80 7D 00 08 */	lwz r3, 8(r29)
/* 80333E3C  57 C0 08 3C */	slwi r0, r30, 1
/* 80333E40  7C 03 02 2E */	lhzx r0, r3, r0
/* 80333E44  1C 00 01 38 */	mulli r0, r0, 0x138
/* 80333E48  7C 64 02 14 */	add r3, r4, r0
/* 80333E4C  A0 03 01 30 */	lhz r0, 0x130(r3)
/* 80333E50  28 00 FF FF */	cmplwi r0, 0xffff
/* 80333E54  41 82 00 48 */	beq lbl_80333E9C
/* 80333E58  80 7D 00 50 */	lwz r3, 0x50(r29)
/* 80333E5C  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 80333E60  38 A1 00 04 */	addi r5, r1, 4
/* 80333E64  7C 83 02 14 */	add r4, r3, r0
/* 80333E68  38 00 00 05 */	li r0, 5
/* 80333E6C  7C 09 03 A6 */	mtctr r0
/* 80333E70  38 84 FF FC */	addi r4, r4, -4
lbl_80333E74:
/* 80333E74  80 64 00 04 */	lwz r3, 4(r4)
/* 80333E78  84 04 00 08 */	lwzu r0, 8(r4)
/* 80333E7C  90 65 00 04 */	stw r3, 4(r5)
/* 80333E80  94 05 00 08 */	stwu r0, 8(r5)
/* 80333E84  42 00 FF F0 */	bdnz lbl_80333E74
/* 80333E88  80 04 00 04 */	lwz r0, 4(r4)
/* 80333E8C  90 05 00 04 */	stw r0, 4(r5)
/* 80333E90  38 61 00 34 */	addi r3, r1, 0x34
/* 80333E94  38 81 00 08 */	addi r4, r1, 8
/* 80333E98  4B FF 19 69 */	bl __as__10J3DFogInfoFRC10J3DFogInfo
lbl_80333E9C:
/* 80333E9C  38 BF FF FC */	addi r5, r31, -4
/* 80333EA0  38 81 00 30 */	addi r4, r1, 0x30
/* 80333EA4  38 00 00 05 */	li r0, 5
/* 80333EA8  7C 09 03 A6 */	mtctr r0
lbl_80333EAC:
/* 80333EAC  80 64 00 04 */	lwz r3, 4(r4)
/* 80333EB0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80333EB4  90 65 00 04 */	stw r3, 4(r5)
/* 80333EB8  94 05 00 08 */	stwu r0, 8(r5)
/* 80333EBC  42 00 FF F0 */	bdnz lbl_80333EAC
/* 80333EC0  80 04 00 04 */	lwz r0, 4(r4)
/* 80333EC4  90 05 00 04 */	stw r0, 4(r5)
/* 80333EC8  39 61 00 70 */	addi r11, r1, 0x70
/* 80333ECC  48 02 E3 5D */	bl _restgpr_29
/* 80333ED0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80333ED4  7C 08 03 A6 */	mtlr r0
/* 80333ED8  38 21 00 70 */	addi r1, r1, 0x70
/* 80333EDC  4E 80 00 20 */	blr 
