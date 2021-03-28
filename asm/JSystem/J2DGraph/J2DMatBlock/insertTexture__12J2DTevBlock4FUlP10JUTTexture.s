lbl_802EE1D4:
/* 802EE1D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EE1D8  7C 08 02 A6 */	mflr r0
/* 802EE1DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EE1E0  39 61 00 20 */	addi r11, r1, 0x20
/* 802EE1E4  48 07 3F F9 */	bl _savegpr_29
/* 802EE1E8  7C 7D 1B 78 */	mr r29, r3
/* 802EE1EC  7C 9E 23 78 */	mr r30, r4
/* 802EE1F0  7C BF 2B 78 */	mr r31, r5
/* 802EE1F4  28 1E 00 04 */	cmplwi r30, 4
/* 802EE1F8  40 80 00 0C */	bge lbl_802EE204
/* 802EE1FC  28 1F 00 00 */	cmplwi r31, 0
/* 802EE200  40 82 00 0C */	bne lbl_802EE20C
lbl_802EE204:
/* 802EE204  38 60 00 00 */	li r3, 0
/* 802EE208  48 00 01 44 */	b lbl_802EE34C
lbl_802EE20C:
/* 802EE20C  38 80 00 00 */	li r4, 0
/* 802EE210  48 00 00 28 */	b lbl_802EE238
lbl_802EE214:
/* 802EE214  54 83 15 BA */	rlwinm r3, r4, 2, 0x16, 0x1d
/* 802EE218  38 03 00 8C */	addi r0, r3, 0x8c
/* 802EE21C  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802EE220  28 03 00 00 */	cmplwi r3, 0
/* 802EE224  41 82 00 20 */	beq lbl_802EE244
/* 802EE228  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802EE22C  28 00 00 00 */	cmplwi r0, 0
/* 802EE230  41 82 00 14 */	beq lbl_802EE244
/* 802EE234  38 84 00 01 */	addi r4, r4, 1
lbl_802EE238:
/* 802EE238  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802EE23C  28 00 00 04 */	cmplwi r0, 4
/* 802EE240  41 80 FF D4 */	blt lbl_802EE214
lbl_802EE244:
/* 802EE244  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802EE248  7C 00 F0 40 */	cmplw r0, r30
/* 802EE24C  40 80 00 0C */	bge lbl_802EE258
/* 802EE250  38 60 00 00 */	li r3, 0
/* 802EE254  48 00 00 F8 */	b lbl_802EE34C
lbl_802EE258:
/* 802EE258  28 00 00 04 */	cmplwi r0, 4
/* 802EE25C  40 82 00 0C */	bne lbl_802EE268
/* 802EE260  38 60 00 00 */	li r3, 0
/* 802EE264  48 00 00 E8 */	b lbl_802EE34C
lbl_802EE268:
/* 802EE268  80 7D 00 98 */	lwz r3, 0x98(r29)
/* 802EE26C  28 03 00 00 */	cmplwi r3, 0
/* 802EE270  41 82 00 30 */	beq lbl_802EE2A0
/* 802EE274  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802EE278  28 00 00 00 */	cmplwi r0, 0
/* 802EE27C  40 82 00 24 */	bne lbl_802EE2A0
/* 802EE280  88 1D 00 B0 */	lbz r0, 0xb0(r29)
/* 802EE284  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 802EE288  41 82 00 0C */	beq lbl_802EE294
/* 802EE28C  38 80 00 01 */	li r4, 1
/* 802EE290  4B FE FF A5 */	bl __dt__10JUTTextureFv
lbl_802EE294:
/* 802EE294  88 1D 00 B0 */	lbz r0, 0xb0(r29)
/* 802EE298  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 802EE29C  98 1D 00 B0 */	stb r0, 0xb0(r29)
lbl_802EE2A0:
/* 802EE2A0  38 E0 00 03 */	li r7, 3
/* 802EE2A4  48 00 00 40 */	b lbl_802EE2E4
lbl_802EE2A8:
/* 802EE2A8  54 80 10 3A */	slwi r0, r4, 2
/* 802EE2AC  7C BD 02 14 */	add r5, r29, r0
/* 802EE2B0  80 65 00 88 */	lwz r3, 0x88(r5)
/* 802EE2B4  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 802EE2B8  7C DD 02 14 */	add r6, r29, r0
/* 802EE2BC  90 66 00 8C */	stw r3, 0x8c(r6)
/* 802EE2C0  80 05 00 98 */	lwz r0, 0x98(r5)
/* 802EE2C4  90 06 00 9C */	stw r0, 0x9c(r6)
/* 802EE2C8  54 83 08 3C */	slwi r3, r4, 1
/* 802EE2CC  38 03 00 02 */	addi r0, r3, 2
/* 802EE2D0  7C 9D 02 2E */	lhzx r4, r29, r0
/* 802EE2D4  54 E3 0D FC */	rlwinm r3, r7, 1, 0x17, 0x1e
/* 802EE2D8  38 03 00 04 */	addi r0, r3, 4
/* 802EE2DC  7C 9D 03 2E */	sthx r4, r29, r0
/* 802EE2E0  38 E7 FF FF */	addi r7, r7, -1
lbl_802EE2E4:
/* 802EE2E4  54 E4 06 3E */	clrlwi r4, r7, 0x18
/* 802EE2E8  7C 04 F0 40 */	cmplw r4, r30
/* 802EE2EC  41 81 FF BC */	bgt lbl_802EE2A8
/* 802EE2F0  57 C0 10 3A */	slwi r0, r30, 2
/* 802EE2F4  7C 7D 02 14 */	add r3, r29, r0
/* 802EE2F8  93 E3 00 8C */	stw r31, 0x8c(r3)
/* 802EE2FC  38 00 00 00 */	li r0, 0
/* 802EE300  90 03 00 9C */	stw r0, 0x9c(r3)
/* 802EE304  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EE308  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EE30C  57 C0 08 3C */	slwi r0, r30, 1
/* 802EE310  7C 7D 02 14 */	add r3, r29, r0
/* 802EE314  B0 83 00 04 */	sth r4, 4(r3)
/* 802EE318  7F A3 EB 78 */	mr r3, r29
/* 802EE31C  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 802EE320  38 A0 00 01 */	li r5, 1
/* 802EE324  81 9D 00 00 */	lwz r12, 0(r29)
/* 802EE328  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802EE32C  7D 89 03 A6 */	mtctr r12
/* 802EE330  4E 80 04 21 */	bctrl 
/* 802EE334  88 7D 00 B0 */	lbz r3, 0xb0(r29)
/* 802EE338  38 00 00 01 */	li r0, 1
/* 802EE33C  7C 00 F0 30 */	slw r0, r0, r30
/* 802EE340  7C 60 00 78 */	andc r0, r3, r0
/* 802EE344  98 1D 00 B0 */	stb r0, 0xb0(r29)
/* 802EE348  38 60 00 01 */	li r3, 1
lbl_802EE34C:
/* 802EE34C  39 61 00 20 */	addi r11, r1, 0x20
/* 802EE350  48 07 3E D9 */	bl _restgpr_29
/* 802EE354  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EE358  7C 08 03 A6 */	mtlr r0
/* 802EE35C  38 21 00 20 */	addi r1, r1, 0x20
/* 802EE360  4E 80 00 20 */	blr 
