lbl_80BEA98C:
/* 80BEA98C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BEA990  7C 08 02 A6 */	mflr r0
/* 80BEA994  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BEA998  39 61 00 40 */	addi r11, r1, 0x40
/* 80BEA99C  4B 77 78 30 */	b _savegpr_25
/* 80BEA9A0  7C 7F 1B 78 */	mr r31, r3
/* 80BEA9A4  A0 03 09 7A */	lhz r0, 0x97a(r3)
/* 80BEA9A8  54 00 E7 3F */	rlwinm. r0, r0, 0x1c, 0x1c, 0x1f
/* 80BEA9AC  40 82 00 90 */	bne lbl_80BEAA3C
/* 80BEA9B0  3B 20 00 00 */	li r25, 0
/* 80BEA9B4  3B C0 00 00 */	li r30, 0
/* 80BEA9B8  3B A0 00 00 */	li r29, 0
/* 80BEA9BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BEA9C0  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80BEA9C4  3C 60 80 BF */	lis r3, l_pipe_fire_id@ha
/* 80BEA9C8  3B 83 B5 F8 */	addi r28, r3, l_pipe_fire_id@l
/* 80BEA9CC  3C 60 80 BF */	lis r3, lit_3656@ha
/* 80BEA9D0  3B 63 B4 C4 */	addi r27, r3, lit_3656@l
lbl_80BEA9D4:
/* 80BEA9D4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BEA9D8  7C 04 07 74 */	extsb r4, r0
/* 80BEA9DC  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80BEA9E0  38 00 00 00 */	li r0, 0
/* 80BEA9E4  90 01 00 08 */	stw r0, 8(r1)
/* 80BEA9E8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BEA9EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BEA9F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEA9F4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BEA9F8  38 80 00 00 */	li r4, 0
/* 80BEA9FC  7C BC EA 2E */	lhzx r5, r28, r29
/* 80BEAA00  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80BEAA04  38 E0 00 00 */	li r7, 0
/* 80BEAA08  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 80BEAA0C  39 20 00 00 */	li r9, 0
/* 80BEAA10  39 40 00 FF */	li r10, 0xff
/* 80BEAA14  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80BEAA18  4B 46 20 78 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BEAA1C  38 1E 09 88 */	addi r0, r30, 0x988
/* 80BEAA20  7C 7F 01 2E */	stwx r3, r31, r0
/* 80BEAA24  3B 39 00 01 */	addi r25, r25, 1
/* 80BEAA28  2C 19 00 03 */	cmpwi r25, 3
/* 80BEAA2C  3B DE 00 04 */	addi r30, r30, 4
/* 80BEAA30  3B BD 00 02 */	addi r29, r29, 2
/* 80BEAA34  41 80 FF A0 */	blt lbl_80BEA9D4
/* 80BEAA38  48 00 00 84 */	b lbl_80BEAABC
lbl_80BEAA3C:
/* 80BEAA3C  28 00 00 01 */	cmplwi r0, 1
/* 80BEAA40  40 82 00 7C */	bne lbl_80BEAABC
/* 80BEAA44  3B 20 00 00 */	li r25, 0
/* 80BEAA48  3B C0 00 00 */	li r30, 0
/* 80BEAA4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BEAA50  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80BEAA54  3C 60 80 BF */	lis r3, l_yogan_foot_id@ha
/* 80BEAA58  3B 83 B6 00 */	addi r28, r3, l_yogan_foot_id@l
/* 80BEAA5C  3C 60 80 BF */	lis r3, lit_3656@ha
/* 80BEAA60  3B A3 B4 C4 */	addi r29, r3, lit_3656@l
lbl_80BEAA64:
/* 80BEAA64  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BEAA68  7C 04 07 74 */	extsb r4, r0
/* 80BEAA6C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80BEAA70  38 00 00 00 */	li r0, 0
/* 80BEAA74  90 01 00 08 */	stw r0, 8(r1)
/* 80BEAA78  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BEAA7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BEAA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEAA84  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BEAA88  38 80 00 00 */	li r4, 0
/* 80BEAA8C  7C BC F2 2E */	lhzx r5, r28, r30
/* 80BEAA90  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80BEAA94  38 E0 00 00 */	li r7, 0
/* 80BEAA98  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 80BEAA9C  39 3F 09 B0 */	addi r9, r31, 0x9b0
/* 80BEAAA0  39 40 00 FF */	li r10, 0xff
/* 80BEAAA4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80BEAAA8  4B 46 1F E8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BEAAAC  3B 39 00 01 */	addi r25, r25, 1
/* 80BEAAB0  2C 19 00 03 */	cmpwi r25, 3
/* 80BEAAB4  3B DE 00 02 */	addi r30, r30, 2
/* 80BEAAB8  41 80 FF AC */	blt lbl_80BEAA64
lbl_80BEAABC:
/* 80BEAABC  38 00 00 4B */	li r0, 0x4b
/* 80BEAAC0  B0 1F 09 78 */	sth r0, 0x978(r31)
/* 80BEAAC4  38 00 00 01 */	li r0, 1
/* 80BEAAC8  98 1F 09 7F */	stb r0, 0x97f(r31)
/* 80BEAACC  39 61 00 40 */	addi r11, r1, 0x40
/* 80BEAAD0  4B 77 77 48 */	b _restgpr_25
/* 80BEAAD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BEAAD8  7C 08 03 A6 */	mtlr r0
/* 80BEAADC  38 21 00 40 */	addi r1, r1, 0x40
/* 80BEAAE0  4E 80 00 20 */	blr 
