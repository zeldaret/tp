lbl_80BF9DF0:
/* 80BF9DF0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BF9DF4  7C 08 02 A6 */	mflr r0
/* 80BF9DF8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BF9DFC  39 61 00 60 */	addi r11, r1, 0x60
/* 80BF9E00  4B 76 83 BC */	b _savegpr_21
/* 80BF9E04  7C 7A 1B 78 */	mr r26, r3
/* 80BF9E08  3C 60 80 C0 */	lis r3, cNullVec__6Z2Calc@ha
/* 80BF9E0C  3A C3 A9 D0 */	addi r22, r3, cNullVec__6Z2Calc@l
/* 80BF9E10  38 61 00 20 */	addi r3, r1, 0x20
/* 80BF9E14  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80BF9E18  38 BA 09 68 */	addi r5, r26, 0x968
/* 80BF9E1C  4B 66 CD 18 */	b __mi__4cXyzCFRC3Vec
/* 80BF9E20  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BF9E24  D0 1A 09 74 */	stfs f0, 0x974(r26)
/* 80BF9E28  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BF9E2C  D0 1A 09 78 */	stfs f0, 0x978(r26)
/* 80BF9E30  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BF9E34  D0 1A 09 7C */	stfs f0, 0x97c(r26)
/* 80BF9E38  3B 60 00 00 */	li r27, 0
/* 80BF9E3C  3B 20 00 00 */	li r25, 0
/* 80BF9E40  3B 00 00 00 */	li r24, 0
/* 80BF9E44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF9E48  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80BF9E4C  3B BA 09 74 */	addi r29, r26, 0x974
/* 80BF9E50  3B F6 00 78 */	addi r31, r22, 0x78
/* 80BF9E54  3A B6 00 7C */	addi r21, r22, 0x7c
/* 80BF9E58  3A D6 00 D4 */	addi r22, r22, 0xd4
/* 80BF9E5C  3C 60 80 C0 */	lis r3, lit_4012@ha
/* 80BF9E60  3A E3 A9 B8 */	addi r23, r3, lit_4012@l
lbl_80BF9E64:
/* 80BF9E64  3B 98 09 84 */	addi r28, r24, 0x984
/* 80BF9E68  7C 9A E0 2E */	lwzx r4, r26, r28
/* 80BF9E6C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BF9E70  38 00 00 FF */	li r0, 0xff
/* 80BF9E74  90 01 00 08 */	stw r0, 8(r1)
/* 80BF9E78  38 A0 00 00 */	li r5, 0
/* 80BF9E7C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80BF9E80  38 00 FF FF */	li r0, -1
/* 80BF9E84  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BF9E88  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80BF9E8C  88 1A 09 54 */	lbz r0, 0x954(r26)
/* 80BF9E90  54 00 10 3A */	slwi r0, r0, 2
/* 80BF9E94  7C 15 02 14 */	add r0, r21, r0
/* 80BF9E98  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BF9E9C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80BF9EA0  38 A0 00 00 */	li r5, 0
/* 80BF9EA4  7C D6 CA 2E */	lhzx r6, r22, r25
/* 80BF9EA8  38 FA 04 D0 */	addi r7, r26, 0x4d0
/* 80BF9EAC  39 1A 01 0C */	addi r8, r26, 0x10c
/* 80BF9EB0  39 20 00 00 */	li r9, 0
/* 80BF9EB4  39 40 00 00 */	li r10, 0
/* 80BF9EB8  C0 37 00 00 */	lfs f1, 0(r23)
/* 80BF9EBC  4B 45 36 10 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BF9EC0  7C 7A E1 2E */	stwx r3, r26, r28
/* 80BF9EC4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BF9EC8  38 63 02 10 */	addi r3, r3, 0x210
/* 80BF9ECC  7C 9A E0 2E */	lwzx r4, r26, r28
/* 80BF9ED0  4B 45 1A 48 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80BF9ED4  28 03 00 00 */	cmplwi r3, 0
/* 80BF9ED8  41 82 00 14 */	beq lbl_80BF9EEC
/* 80BF9EDC  3C 80 80 45 */	lis r4, mParticleTracePCB__13dPa_control_c@ha
/* 80BF9EE0  38 04 0E C8 */	addi r0, r4, mParticleTracePCB__13dPa_control_c@l
/* 80BF9EE4  90 03 00 F0 */	stw r0, 0xf0(r3)
/* 80BF9EE8  93 A3 00 C0 */	stw r29, 0xc0(r3)
lbl_80BF9EEC:
/* 80BF9EEC  3B 7B 00 01 */	addi r27, r27, 1
/* 80BF9EF0  2C 1B 00 02 */	cmpwi r27, 2
/* 80BF9EF4  3B 39 00 02 */	addi r25, r25, 2
/* 80BF9EF8  3B 18 00 04 */	addi r24, r24, 4
/* 80BF9EFC  41 80 FF 68 */	blt lbl_80BF9E64
/* 80BF9F00  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BF9F04  D0 1A 09 68 */	stfs f0, 0x968(r26)
/* 80BF9F08  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80BF9F0C  D0 1A 09 6C */	stfs f0, 0x96c(r26)
/* 80BF9F10  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BF9F14  D0 1A 09 70 */	stfs f0, 0x970(r26)
/* 80BF9F18  39 61 00 60 */	addi r11, r1, 0x60
/* 80BF9F1C  4B 76 82 EC */	b _restgpr_21
/* 80BF9F20  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BF9F24  7C 08 03 A6 */	mtlr r0
/* 80BF9F28  38 21 00 60 */	addi r1, r1, 0x60
/* 80BF9F2C  4E 80 00 20 */	blr 
