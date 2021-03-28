lbl_800C3224:
/* 800C3224  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800C3228  7C 08 02 A6 */	mflr r0
/* 800C322C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800C3230  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800C3234  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800C3238  39 61 00 20 */	addi r11, r1, 0x20
/* 800C323C  48 29 EF A1 */	bl _savegpr_29
/* 800C3240  7C 7D 1B 78 */	mr r29, r3
/* 800C3244  A0 A3 1F BC */	lhz r5, 0x1fbc(r3)
/* 800C3248  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 800C324C  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 800C3250  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800C3254  7C 05 00 50 */	subf r0, r5, r0
/* 800C3258  7C 00 00 34 */	cntlzw r0, r0
/* 800C325C  54 1E DE 3E */	rlwinm r30, r0, 0x1b, 0x18, 0x1f
/* 800C3260  38 80 00 02 */	li r4, 2
/* 800C3264  4B FF FB 41 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C3268  2C 03 00 00 */	cmpwi r3, 0
/* 800C326C  40 82 00 0C */	bne lbl_800C3278
/* 800C3270  38 60 00 00 */	li r3, 0
/* 800C3274  48 00 00 A4 */	b lbl_800C3318
lbl_800C3278:
/* 800C3278  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C327C  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 800C3280  7F A3 EB 78 */	mr r3, r29
/* 800C3284  38 80 00 B6 */	li r4, 0xb6
/* 800C3288  4B FE 92 D1 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800C328C  7C 7F 1B 78 */	mr r31, r3
/* 800C3290  2C 1E 00 00 */	cmpwi r30, 0
/* 800C3294  41 82 00 74 */	beq lbl_800C3308
/* 800C3298  2C 1F 00 00 */	cmpwi r31, 0
/* 800C329C  41 82 00 14 */	beq lbl_800C32B0
/* 800C32A0  C0 3D 1F 28 */	lfs f1, 0x1f28(r29)
/* 800C32A4  C0 02 94 AC */	lfs f0, lit_16641(r2)
/* 800C32A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C32AC  41 80 00 2C */	blt lbl_800C32D8
lbl_800C32B0:
/* 800C32B0  7F A3 EB 78 */	mr r3, r29
/* 800C32B4  38 80 00 15 */	li r4, 0x15
/* 800C32B8  4B FE 92 FD */	bl checkUnderMove1BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800C32BC  2C 03 00 00 */	cmpwi r3, 0
/* 800C32C0  40 82 00 18 */	bne lbl_800C32D8
/* 800C32C4  7F A3 EB 78 */	mr r3, r29
/* 800C32C8  38 80 00 16 */	li r4, 0x16
/* 800C32CC  4B FE 92 E9 */	bl checkUnderMove1BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800C32D0  2C 03 00 00 */	cmpwi r3, 0
/* 800C32D4  41 82 00 34 */	beq lbl_800C3308
lbl_800C32D8:
/* 800C32D8  2C 1F 00 00 */	cmpwi r31, 0
/* 800C32DC  41 82 00 0C */	beq lbl_800C32E8
/* 800C32E0  C3 FD 1F E0 */	lfs f31, 0x1fe0(r29)
/* 800C32E4  48 00 00 08 */	b lbl_800C32EC
lbl_800C32E8:
/* 800C32E8  C3 FD 20 40 */	lfs f31, 0x2040(r29)
lbl_800C32EC:
/* 800C32EC  7F A3 EB 78 */	mr r3, r29
/* 800C32F0  38 80 00 B6 */	li r4, 0xb6
/* 800C32F4  4B FE 9C 8D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800C32F8  D3 FD 1F E0 */	stfs f31, 0x1fe0(r29)
/* 800C32FC  80 7D 1F 2C */	lwz r3, 0x1f2c(r29)
/* 800C3300  D3 E3 00 08 */	stfs f31, 8(r3)
/* 800C3304  48 00 00 10 */	b lbl_800C3314
lbl_800C3308:
/* 800C3308  7F A3 EB 78 */	mr r3, r29
/* 800C330C  38 80 00 B7 */	li r4, 0xb7
/* 800C3310  4B FE 9C 71 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800C3314:
/* 800C3314  38 60 00 01 */	li r3, 1
lbl_800C3318:
/* 800C3318  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800C331C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800C3320  39 61 00 20 */	addi r11, r1, 0x20
/* 800C3324  48 29 EF 05 */	bl _restgpr_29
/* 800C3328  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800C332C  7C 08 03 A6 */	mtlr r0
/* 800C3330  38 21 00 30 */	addi r1, r1, 0x30
/* 800C3334  4E 80 00 20 */	blr 
