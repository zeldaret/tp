lbl_80BEAC68:
/* 80BEAC68  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BEAC6C  7C 08 02 A6 */	mflr r0
/* 80BEAC70  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BEAC74  39 61 00 40 */	addi r11, r1, 0x40
/* 80BEAC78  4B 77 75 54 */	b _savegpr_25
/* 80BEAC7C  7C 7C 1B 78 */	mr r28, r3
/* 80BEAC80  3C 60 80 BF */	lis r3, lit_3656@ha
/* 80BEAC84  3B C3 B4 C4 */	addi r30, r3, lit_3656@l
/* 80BEAC88  A0 1C 09 7A */	lhz r0, 0x97a(r28)
/* 80BEAC8C  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80BEAC90  28 00 00 01 */	cmplwi r0, 1
/* 80BEAC94  40 82 00 E8 */	bne lbl_80BEAD7C
/* 80BEAC98  3B A0 00 00 */	li r29, 0
/* 80BEAC9C  3B 60 00 00 */	li r27, 0
/* 80BEACA0  3B 40 00 00 */	li r26, 0
/* 80BEACA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BEACA8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80BEACAC  3C 60 80 BF */	lis r3, l_yogan_head_id@ha
/* 80BEACB0  3B 23 B6 20 */	addi r25, r3, l_yogan_head_id@l
lbl_80BEACB4:
/* 80BEACB4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80BEACB8  7C 04 07 74 */	extsb r4, r0
/* 80BEACBC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80BEACC0  38 00 00 00 */	li r0, 0
/* 80BEACC4  90 01 00 08 */	stw r0, 8(r1)
/* 80BEACC8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BEACCC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BEACD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEACD4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BEACD8  38 80 00 00 */	li r4, 0
/* 80BEACDC  A0 1C 09 7A */	lhz r0, 0x97a(r28)
/* 80BEACE0  54 00 16 BA */	rlwinm r0, r0, 2, 0x1a, 0x1d
/* 80BEACE4  7C B9 00 2E */	lwzx r5, r25, r0
/* 80BEACE8  7C A5 D2 2E */	lhzx r5, r5, r26
/* 80BEACEC  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 80BEACF0  38 E0 00 00 */	li r7, 0
/* 80BEACF4  39 1C 04 DC */	addi r8, r28, 0x4dc
/* 80BEACF8  39 20 00 00 */	li r9, 0
/* 80BEACFC  39 40 00 FF */	li r10, 0xff
/* 80BEAD00  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80BEAD04  4B 46 1D 8C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BEAD08  38 9B 09 A4 */	addi r4, r27, 0x9a4
/* 80BEAD0C  7C 7C 21 2E */	stwx r3, r28, r4
/* 80BEAD10  7C 7C 20 2E */	lwzx r3, r28, r4
/* 80BEAD14  28 03 00 00 */	cmplwi r3, 0
/* 80BEAD18  41 82 00 2C */	beq lbl_80BEAD44
/* 80BEAD1C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BEAD20  60 00 00 40 */	ori r0, r0, 0x40
/* 80BEAD24  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BEAD28  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 80BEAD2C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80BEAD30  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80BEAD34  7C BC 20 2E */	lwzx r5, r28, r4
/* 80BEAD38  38 85 00 68 */	addi r4, r5, 0x68
/* 80BEAD3C  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80BEAD40  4B 69 5A A0 */	b func_802807E0
lbl_80BEAD44:
/* 80BEAD44  3B BD 00 01 */	addi r29, r29, 1
/* 80BEAD48  2C 1D 00 03 */	cmpwi r29, 3
/* 80BEAD4C  3B 7B 00 04 */	addi r27, r27, 4
/* 80BEAD50  3B 5A 00 02 */	addi r26, r26, 2
/* 80BEAD54  41 80 FF 60 */	blt lbl_80BEACB4
/* 80BEAD58  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80BEAD5C  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80BEAD60  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80BEAD64  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80BEAD68  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80BEAD6C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80BEAD70  38 00 00 7D */	li r0, 0x7d
/* 80BEAD74  B0 1C 09 78 */	sth r0, 0x978(r28)
/* 80BEAD78  48 00 00 38 */	b lbl_80BEADB0
lbl_80BEAD7C:
/* 80BEAD7C  28 00 00 00 */	cmplwi r0, 0
/* 80BEAD80  40 82 00 30 */	bne lbl_80BEADB0
/* 80BEAD84  38 00 00 4B */	li r0, 0x4b
/* 80BEAD88  B0 1C 09 78 */	sth r0, 0x978(r28)
/* 80BEAD8C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80BEAD90  D0 3C 09 94 */	stfs f1, 0x994(r28)
/* 80BEAD94  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80BEAD98  D0 1C 09 A0 */	stfs f0, 0x9a0(r28)
/* 80BEAD9C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80BEADA0  D0 1C 09 98 */	stfs f0, 0x998(r28)
/* 80BEADA4  D0 3C 09 9C */	stfs f1, 0x99c(r28)
/* 80BEADA8  38 00 00 32 */	li r0, 0x32
/* 80BEADAC  98 1C 09 E9 */	stb r0, 0x9e9(r28)
lbl_80BEADB0:
/* 80BEADB0  38 00 00 02 */	li r0, 2
/* 80BEADB4  98 1C 09 7F */	stb r0, 0x97f(r28)
/* 80BEADB8  39 61 00 40 */	addi r11, r1, 0x40
/* 80BEADBC  4B 77 74 5C */	b _restgpr_25
/* 80BEADC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BEADC4  7C 08 03 A6 */	mtlr r0
/* 80BEADC8  38 21 00 40 */	addi r1, r1, 0x40
/* 80BEADCC  4E 80 00 20 */	blr 
