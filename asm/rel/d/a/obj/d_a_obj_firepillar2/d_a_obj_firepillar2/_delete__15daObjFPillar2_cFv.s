lbl_80BEB278:
/* 80BEB278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEB27C  7C 08 02 A6 */	mflr r0
/* 80BEB280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEB284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEB288  7C 7F 1B 78 */	mr r31, r3
/* 80BEB28C  80 63 09 80 */	lwz r3, 0x980(r3)
/* 80BEB290  28 03 00 00 */	cmplwi r3, 0
/* 80BEB294  41 82 00 30 */	beq lbl_80BEB2C4
/* 80BEB298  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BEB29C  60 00 00 01 */	ori r0, r0, 1
/* 80BEB2A0  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BEB2A4  38 00 00 01 */	li r0, 1
/* 80BEB2A8  90 03 00 24 */	stw r0, 0x24(r3)
/* 80BEB2AC  80 7F 09 80 */	lwz r3, 0x980(r31)
/* 80BEB2B0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BEB2B4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BEB2B8  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BEB2BC  38 00 00 00 */	li r0, 0
/* 80BEB2C0  90 1F 09 80 */	stw r0, 0x980(r31)
lbl_80BEB2C4:
/* 80BEB2C4  80 7F 09 84 */	lwz r3, 0x984(r31)
/* 80BEB2C8  28 03 00 00 */	cmplwi r3, 0
/* 80BEB2CC  41 82 00 30 */	beq lbl_80BEB2FC
/* 80BEB2D0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BEB2D4  60 00 00 01 */	ori r0, r0, 1
/* 80BEB2D8  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BEB2DC  38 00 00 01 */	li r0, 1
/* 80BEB2E0  90 03 00 24 */	stw r0, 0x24(r3)
/* 80BEB2E4  80 7F 09 84 */	lwz r3, 0x984(r31)
/* 80BEB2E8  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BEB2EC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BEB2F0  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BEB2F4  38 00 00 00 */	li r0, 0
/* 80BEB2F8  90 1F 09 84 */	stw r0, 0x984(r31)
lbl_80BEB2FC:
/* 80BEB2FC  38 60 00 00 */	li r3, 0
/* 80BEB300  38 00 00 03 */	li r0, 3
/* 80BEB304  7C 09 03 A6 */	mtctr r0
lbl_80BEB308:
/* 80BEB308  7C BF 1A 14 */	add r5, r31, r3
/* 80BEB30C  80 85 09 A4 */	lwz r4, 0x9a4(r5)
/* 80BEB310  28 04 00 00 */	cmplwi r4, 0
/* 80BEB314  41 82 00 30 */	beq lbl_80BEB344
/* 80BEB318  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BEB31C  60 00 00 01 */	ori r0, r0, 1
/* 80BEB320  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BEB324  38 00 00 01 */	li r0, 1
/* 80BEB328  90 04 00 24 */	stw r0, 0x24(r4)
/* 80BEB32C  80 85 09 A4 */	lwz r4, 0x9a4(r5)
/* 80BEB330  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BEB334  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BEB338  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BEB33C  38 00 00 00 */	li r0, 0
/* 80BEB340  90 05 09 A4 */	stw r0, 0x9a4(r5)
lbl_80BEB344:
/* 80BEB344  80 85 09 88 */	lwz r4, 0x988(r5)
/* 80BEB348  28 04 00 00 */	cmplwi r4, 0
/* 80BEB34C  41 82 00 30 */	beq lbl_80BEB37C
/* 80BEB350  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BEB354  60 00 00 01 */	ori r0, r0, 1
/* 80BEB358  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BEB35C  38 00 00 01 */	li r0, 1
/* 80BEB360  90 04 00 24 */	stw r0, 0x24(r4)
/* 80BEB364  80 85 09 88 */	lwz r4, 0x988(r5)
/* 80BEB368  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BEB36C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BEB370  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BEB374  38 00 00 00 */	li r0, 0
/* 80BEB378  90 05 09 88 */	stw r0, 0x988(r5)
lbl_80BEB37C:
/* 80BEB37C  38 63 00 04 */	addi r3, r3, 4
/* 80BEB380  42 00 FF 88 */	bdnz lbl_80BEB308
/* 80BEB384  38 7F 09 BC */	addi r3, r31, 0x9bc
/* 80BEB388  4B 6D 2C 71 */	bl deleteObject__14Z2SoundObjBaseFv
/* 80BEB38C  A0 1F 09 7A */	lhz r0, 0x97a(r31)
/* 80BEB390  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80BEB394  28 00 00 01 */	cmplwi r0, 1
/* 80BEB398  40 82 00 18 */	bne lbl_80BEB3B0
/* 80BEB39C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80BEB3A0  3C 80 80 BF */	lis r4, l_arcName@ha /* 0x80BEB548@ha */
/* 80BEB3A4  38 84 B5 48 */	addi r4, r4, l_arcName@l /* 0x80BEB548@l */
/* 80BEB3A8  80 84 00 00 */	lwz r4, 0(r4)
/* 80BEB3AC  4B 44 1C 5D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80BEB3B0:
/* 80BEB3B0  38 60 00 01 */	li r3, 1
/* 80BEB3B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEB3B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEB3BC  7C 08 03 A6 */	mtlr r0
/* 80BEB3C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEB3C4  4E 80 00 20 */	blr 
