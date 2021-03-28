lbl_806FE0B8:
/* 806FE0B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806FE0BC  7C 08 02 A6 */	mflr r0
/* 806FE0C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806FE0C4  39 61 00 30 */	addi r11, r1, 0x30
/* 806FE0C8  4B C6 41 00 */	b _savegpr_24
/* 806FE0CC  7C 7E 1B 78 */	mr r30, r3
/* 806FE0D0  3C 60 80 70 */	lis r3, lit_3792@ha
/* 806FE0D4  3B E3 F5 E8 */	addi r31, r3, lit_3792@l
/* 806FE0D8  88 1E 06 79 */	lbz r0, 0x679(r30)
/* 806FE0DC  28 00 00 01 */	cmplwi r0, 1
/* 806FE0E0  41 82 00 BC */	beq lbl_806FE19C
/* 806FE0E4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FE0E8  80 63 00 04 */	lwz r3, 4(r3)
/* 806FE0EC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806FE0F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806FE0F4  38 63 00 C0 */	addi r3, r3, 0xc0
/* 806FE0F8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806FE0FC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806FE100  4B C4 83 B0 */	b PSMTXCopy
/* 806FE104  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806FE108  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806FE10C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806FE110  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 806FE114  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FE118  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 806FE11C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806FE120  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 806FE124  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 806FE128  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 806FE12C  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 806FE130  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 806FE134  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 806FE138  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 806FE13C  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 806FE140  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806FE144  EC 01 00 28 */	fsubs f0, f1, f0
/* 806FE148  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 806FE14C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 806FE150  D0 1E 05 74 */	stfs f0, 0x574(r30)
/* 806FE154  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 806FE158  D0 1E 05 78 */	stfs f0, 0x578(r30)
/* 806FE15C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 806FE160  D0 1E 05 7C */	stfs f0, 0x57c(r30)
/* 806FE164  38 7E 0A E8 */	addi r3, r30, 0xae8
/* 806FE168  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806FE16C  4B B7 10 70 */	b SetC__8cM3dGCylFRC4cXyz
/* 806FE170  38 7E 0A E8 */	addi r3, r30, 0xae8
/* 806FE174  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 806FE178  4B B7 10 80 */	b SetH__8cM3dGCylFf
/* 806FE17C  38 7E 0A E8 */	addi r3, r30, 0xae8
/* 806FE180  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 806FE184  4B B7 10 7C */	b SetR__8cM3dGCylFf
/* 806FE188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FE18C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FE190  38 63 23 3C */	addi r3, r3, 0x233c
/* 806FE194  38 9E 09 C4 */	addi r4, r30, 0x9c4
/* 806FE198  4B B6 6A 10 */	b Set__4cCcSFP8cCcD_Obj
lbl_806FE19C:
/* 806FE19C  88 1E 06 7D */	lbz r0, 0x67d(r30)
/* 806FE1A0  28 00 00 00 */	cmplwi r0, 0
/* 806FE1A4  40 82 00 3C */	bne lbl_806FE1E0
/* 806FE1A8  88 1E 06 7E */	lbz r0, 0x67e(r30)
/* 806FE1AC  28 00 00 00 */	cmplwi r0, 0
/* 806FE1B0  40 82 00 30 */	bne lbl_806FE1E0
/* 806FE1B4  38 7E 0C 24 */	addi r3, r30, 0xc24
/* 806FE1B8  38 9E 06 8C */	addi r4, r30, 0x68c
/* 806FE1BC  4B B7 14 8C */	b SetC__8cM3dGSphFRC4cXyz
/* 806FE1C0  38 7E 0C 24 */	addi r3, r30, 0xc24
/* 806FE1C4  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 806FE1C8  4B B7 15 40 */	b SetR__8cM3dGSphFf
/* 806FE1CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FE1D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FE1D4  38 63 23 3C */	addi r3, r3, 0x233c
/* 806FE1D8  38 9E 0B 00 */	addi r4, r30, 0xb00
/* 806FE1DC  4B B6 69 CC */	b Set__4cCcSFP8cCcD_Obj
lbl_806FE1E0:
/* 806FE1E0  88 1E 06 79 */	lbz r0, 0x679(r30)
/* 806FE1E4  28 00 00 01 */	cmplwi r0, 1
/* 806FE1E8  41 82 00 10 */	beq lbl_806FE1F8
/* 806FE1EC  88 1E 06 7D */	lbz r0, 0x67d(r30)
/* 806FE1F0  28 00 00 00 */	cmplwi r0, 0
/* 806FE1F4  40 82 00 9C */	bne lbl_806FE290
lbl_806FE1F8:
/* 806FE1F8  3B 00 00 00 */	li r24, 0
/* 806FE1FC  3B A0 00 00 */	li r29, 0
/* 806FE200  3B 80 00 00 */	li r28, 0
/* 806FE204  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FE208  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FE20C  3B 63 23 3C */	addi r27, r3, 0x233c
lbl_806FE210:
/* 806FE210  88 1E 06 79 */	lbz r0, 0x679(r30)
/* 806FE214  28 00 00 01 */	cmplwi r0, 1
/* 806FE218  41 82 00 34 */	beq lbl_806FE24C
/* 806FE21C  88 1E 06 7E */	lbz r0, 0x67e(r30)
/* 806FE220  28 00 00 00 */	cmplwi r0, 0
/* 806FE224  41 82 00 18 */	beq lbl_806FE23C
/* 806FE228  38 7C 0C 5C */	addi r3, r28, 0xc5c
/* 806FE22C  7C 1E 18 2E */	lwzx r0, r30, r3
/* 806FE230  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806FE234  7C 1E 19 2E */	stwx r0, r30, r3
/* 806FE238  48 00 00 14 */	b lbl_806FE24C
lbl_806FE23C:
/* 806FE23C  38 7C 0C 5C */	addi r3, r28, 0xc5c
/* 806FE240  7C 1E 18 2E */	lwzx r0, r30, r3
/* 806FE244  60 00 00 01 */	ori r0, r0, 1
/* 806FE248  7C 1E 19 2E */	stwx r0, r30, r3
lbl_806FE24C:
/* 806FE24C  7F 3E E2 14 */	add r25, r30, r28
/* 806FE250  3B 59 0D 80 */	addi r26, r25, 0xd80
/* 806FE254  7F 43 D3 78 */	mr r3, r26
/* 806FE258  38 9D 06 F8 */	addi r4, r29, 0x6f8
/* 806FE25C  7C 9E 22 14 */	add r4, r30, r4
/* 806FE260  4B B7 13 E8 */	b SetC__8cM3dGSphFRC4cXyz
/* 806FE264  7F 43 D3 78 */	mr r3, r26
/* 806FE268  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 806FE26C  4B B7 14 9C */	b SetR__8cM3dGSphFf
/* 806FE270  7F 63 DB 78 */	mr r3, r27
/* 806FE274  38 99 0C 5C */	addi r4, r25, 0xc5c
/* 806FE278  4B B6 69 30 */	b Set__4cCcSFP8cCcD_Obj
/* 806FE27C  3B 18 00 01 */	addi r24, r24, 1
/* 806FE280  2C 18 00 06 */	cmpwi r24, 6
/* 806FE284  3B BD 00 0C */	addi r29, r29, 0xc
/* 806FE288  3B 9C 01 38 */	addi r28, r28, 0x138
/* 806FE28C  41 80 FF 84 */	blt lbl_806FE210
lbl_806FE290:
/* 806FE290  39 61 00 30 */	addi r11, r1, 0x30
/* 806FE294  4B C6 3F 80 */	b _restgpr_24
/* 806FE298  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806FE29C  7C 08 03 A6 */	mtlr r0
/* 806FE2A0  38 21 00 30 */	addi r1, r1, 0x30
/* 806FE2A4  4E 80 00 20 */	blr 
