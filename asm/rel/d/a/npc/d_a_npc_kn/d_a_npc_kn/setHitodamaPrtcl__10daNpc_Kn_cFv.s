lbl_80A3B5EC:
/* 80A3B5EC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A3B5F0  7C 08 02 A6 */	mflr r0
/* 80A3B5F4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A3B5F8  39 61 00 50 */	addi r11, r1, 0x50
/* 80A3B5FC  4B 92 6B CC */	b _savegpr_24
/* 80A3B600  7C 7D 1B 78 */	mr r29, r3
/* 80A3B604  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 80A3B608  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A3B60C  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 80A3B610  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A3B614  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 80A3B618  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A3B61C  3B C0 00 00 */	li r30, 0
/* 80A3B620  3B 80 00 00 */	li r28, 0
/* 80A3B624  3B 60 00 00 */	li r27, 0
/* 80A3B628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3B62C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80A3B630  3C 60 80 A4 */	lis r3, id@ha
/* 80A3B634  3B 03 09 6C */	addi r24, r3, id@l
/* 80A3B638  3C 60 80 A4 */	lis r3, lit_4327@ha
/* 80A3B63C  3B 23 09 0C */	addi r25, r3, lit_4327@l
lbl_80A3B640:
/* 80A3B640  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80A3B644  38 00 00 FF */	li r0, 0xff
/* 80A3B648  90 01 00 08 */	stw r0, 8(r1)
/* 80A3B64C  38 80 00 00 */	li r4, 0
/* 80A3B650  90 81 00 0C */	stw r4, 0xc(r1)
/* 80A3B654  38 00 FF FF */	li r0, -1
/* 80A3B658  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A3B65C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A3B660  90 81 00 18 */	stw r4, 0x18(r1)
/* 80A3B664  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80A3B668  3B 5B 0E 1C */	addi r26, r27, 0xe1c
/* 80A3B66C  7C 9D D0 2E */	lwzx r4, r29, r26
/* 80A3B670  38 A0 00 00 */	li r5, 0
/* 80A3B674  7C D8 E2 2E */	lhzx r6, r24, r28
/* 80A3B678  38 E1 00 20 */	addi r7, r1, 0x20
/* 80A3B67C  39 00 00 00 */	li r8, 0
/* 80A3B680  39 3D 0D AC */	addi r9, r29, 0xdac
/* 80A3B684  39 40 00 00 */	li r10, 0
/* 80A3B688  C0 39 00 00 */	lfs f1, 0(r25)
/* 80A3B68C  4B 61 1E 40 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80A3B690  7C 7D D1 2E */	stwx r3, r29, r26
/* 80A3B694  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80A3B698  38 63 02 10 */	addi r3, r3, 0x210
/* 80A3B69C  7C 9D D0 2E */	lwzx r4, r29, r26
/* 80A3B6A0  4B 61 02 78 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80A3B6A4  7C 7A 1B 79 */	or. r26, r3, r3
/* 80A3B6A8  41 82 00 34 */	beq lbl_80A3B6DC
/* 80A3B6AC  4B 5F 43 A8 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80A3B6B0  30 03 FF FF */	addic r0, r3, -1
/* 80A3B6B4  7C 60 01 10 */	subfe r3, r0, r0
/* 80A3B6B8  38 00 00 FF */	li r0, 0xff
/* 80A3B6BC  7C 00 18 38 */	and r0, r0, r3
/* 80A3B6C0  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80A3B6C4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80A3B6C8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A3B6CC  D0 1A 00 A4 */	stfs f0, 0xa4(r26)
/* 80A3B6D0  D0 3A 00 A8 */	stfs f1, 0xa8(r26)
/* 80A3B6D4  D0 5A 00 AC */	stfs f2, 0xac(r26)
/* 80A3B6D8  98 1A 00 BB */	stb r0, 0xbb(r26)
lbl_80A3B6DC:
/* 80A3B6DC  3B DE 00 01 */	addi r30, r30, 1
/* 80A3B6E0  2C 1E 00 02 */	cmpwi r30, 2
/* 80A3B6E4  3B 9C 00 02 */	addi r28, r28, 2
/* 80A3B6E8  3B 7B 00 04 */	addi r27, r27, 4
/* 80A3B6EC  41 80 FF 54 */	blt lbl_80A3B640
/* 80A3B6F0  39 61 00 50 */	addi r11, r1, 0x50
/* 80A3B6F4  4B 92 6B 20 */	b _restgpr_24
/* 80A3B6F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A3B6FC  7C 08 03 A6 */	mtlr r0
/* 80A3B700  38 21 00 50 */	addi r1, r1, 0x50
/* 80A3B704  4E 80 00 20 */	blr 
