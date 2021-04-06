lbl_8045AE98:
/* 8045AE98  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8045AE9C  7C 08 02 A6 */	mflr r0
/* 8045AEA0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8045AEA4  39 61 00 60 */	addi r11, r1, 0x60
/* 8045AEA8  4B F0 73 25 */	bl _savegpr_25
/* 8045AEAC  7C 7F 1B 78 */	mr r31, r3
/* 8045AEB0  38 00 00 02 */	li r0, 2
/* 8045AEB4  98 03 0C C4 */	stb r0, 0xcc4(r3)
/* 8045AEB8  3B 40 00 00 */	li r26, 0
/* 8045AEBC  3B C0 00 00 */	li r30, 0
/* 8045AEC0  3C 60 80 46 */	lis r3, l_tri_src@ha /* 0x8045CAE4@ha */
/* 8045AEC4  3B 83 CA E4 */	addi r28, r3, l_tri_src@l /* 0x8045CAE4@l */
/* 8045AEC8  3B BF 05 DC */	addi r29, r31, 0x5dc
/* 8045AECC  48 00 00 20 */	b lbl_8045AEEC
lbl_8045AED0:
/* 8045AED0  7F 7F F2 14 */	add r27, r31, r30
/* 8045AED4  38 7B 06 18 */	addi r3, r27, 0x618
/* 8045AED8  7F 84 E3 78 */	mr r4, r28
/* 8045AEDC  4B C2 99 A9 */	bl Set__8dCcD_TriFRC11dCcD_SrcTri
/* 8045AEE0  93 BB 06 5C */	stw r29, 0x65c(r27)
/* 8045AEE4  3B 5A 00 01 */	addi r26, r26, 1
/* 8045AEE8  3B DE 01 5C */	addi r30, r30, 0x15c
lbl_8045AEEC:
/* 8045AEEC  88 1F 0C C4 */	lbz r0, 0xcc4(r31)
/* 8045AEF0  7C 1A 00 00 */	cmpw r26, r0
/* 8045AEF4  41 80 FF DC */	blt lbl_8045AED0
/* 8045AEF8  C0 7F 05 1C */	lfs f3, 0x51c(r31)
/* 8045AEFC  C0 5F 05 0C */	lfs f2, 0x50c(r31)
/* 8045AF00  C0 3F 05 14 */	lfs f1, 0x514(r31)
/* 8045AF04  D0 21 00 08 */	stfs f1, 8(r1)
/* 8045AF08  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8045AF0C  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8045AF10  C0 1F 05 08 */	lfs f0, 0x508(r31)
/* 8045AF14  3B 81 00 14 */	addi r28, r1, 0x14
/* 8045AF18  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8045AF1C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8045AF20  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8045AF24  C0 5F 05 18 */	lfs f2, 0x518(r31)
/* 8045AF28  3B 61 00 20 */	addi r27, r1, 0x20
/* 8045AF2C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8045AF30  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8045AF34  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8045AF38  3B 41 00 2C */	addi r26, r1, 0x2c
/* 8045AF3C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8045AF40  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8045AF44  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8045AF48  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8045AF4C  4B BB 1E 19 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8045AF50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045AF54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045AF58  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8045AF5C  4B BB 14 D9 */	bl mDoMtx_YrotM__FPA4_fs
/* 8045AF60  3B 20 00 00 */	li r25, 0
/* 8045AF64  3B C0 00 00 */	li r30, 0
/* 8045AF68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045AF6C  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_8045AF70:
/* 8045AF70  38 81 00 08 */	addi r4, r1, 8
/* 8045AF74  7C 84 F2 14 */	add r4, r4, r30
/* 8045AF78  7F A3 EB 78 */	mr r3, r29
/* 8045AF7C  7C 85 23 78 */	mr r5, r4
/* 8045AF80  4B EE BD ED */	bl PSMTXMultVec
/* 8045AF84  3B 39 00 01 */	addi r25, r25, 1
/* 8045AF88  2C 19 00 04 */	cmpwi r25, 4
/* 8045AF8C  3B DE 00 0C */	addi r30, r30, 0xc
/* 8045AF90  41 80 FF E0 */	blt lbl_8045AF70
/* 8045AF94  38 7F 07 3C */	addi r3, r31, 0x73c
/* 8045AF98  38 81 00 08 */	addi r4, r1, 8
/* 8045AF9C  7F 85 E3 78 */	mr r5, r28
/* 8045AFA0  7F 66 DB 78 */	mr r6, r27
/* 8045AFA4  4B E1 48 39 */	bl setPos__8cM3dGTriFPC3VecPC3VecPC3Vec
/* 8045AFA8  38 7F 08 98 */	addi r3, r31, 0x898
/* 8045AFAC  38 81 00 08 */	addi r4, r1, 8
/* 8045AFB0  7F 65 DB 78 */	mr r5, r27
/* 8045AFB4  7F 46 D3 78 */	mr r6, r26
/* 8045AFB8  4B E1 48 25 */	bl setPos__8cM3dGTriFPC3VecPC3VecPC3Vec
/* 8045AFBC  39 61 00 60 */	addi r11, r1, 0x60
/* 8045AFC0  4B F0 72 59 */	bl _restgpr_25
/* 8045AFC4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8045AFC8  7C 08 03 A6 */	mtlr r0
/* 8045AFCC  38 21 00 60 */	addi r1, r1, 0x60
/* 8045AFD0  4E 80 00 20 */	blr 
