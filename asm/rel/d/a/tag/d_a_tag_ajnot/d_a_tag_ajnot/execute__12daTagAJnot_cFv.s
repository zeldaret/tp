lbl_805A2744:
/* 805A2744  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A2748  7C 08 02 A6 */	mflr r0
/* 805A274C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A2750  39 61 00 30 */	addi r11, r1, 0x30
/* 805A2754  4B DB FA 89 */	bl _savegpr_29
/* 805A2758  7C 7D 1B 78 */	mr r29, r3
/* 805A275C  3C 60 80 5A */	lis r3, lit_3713@ha /* 0x805A2880@ha */
/* 805A2760  3B E3 28 80 */	addi r31, r3, lit_3713@l /* 0x805A2880@l */
/* 805A2764  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A2768  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A276C  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 805A2770  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 805A2774  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805A2778  EC 61 00 28 */	fsubs f3, f1, f0
/* 805A277C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805A2780  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 805A2784  4C 41 13 82 */	cror 2, 1, 2
/* 805A2788  40 82 00 AC */	bne lbl_805A2834
/* 805A278C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805A2790  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 805A2794  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A2798  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805A279C  4C 40 13 82 */	cror 2, 0, 2
/* 805A27A0  40 82 00 94 */	bne lbl_805A2834
/* 805A27A4  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 805A27A8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805A27AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 805A27B0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 805A27B4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805A27B8  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 805A27BC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805A27C0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805A27C4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 805A27C8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805A27CC  38 61 00 08 */	addi r3, r1, 8
/* 805A27D0  38 81 00 14 */	addi r4, r1, 0x14
/* 805A27D4  4B DA 4B C9 */	bl PSVECSquareDistance
/* 805A27D8  C0 5D 04 EC */	lfs f2, 0x4ec(r29)
/* 805A27DC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805A27E0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805A27E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805A27E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A27EC  4C 40 13 82 */	cror 2, 0, 2
/* 805A27F0  40 82 00 44 */	bne lbl_805A2834
/* 805A27F4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 805A27F8  54 03 07 3E */	clrlwi r3, r0, 0x1c
/* 805A27FC  2C 03 00 01 */	cmpwi r3, 1
/* 805A2800  40 82 00 14 */	bne lbl_805A2814
/* 805A2804  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 805A2808  60 00 02 00 */	ori r0, r0, 0x200
/* 805A280C  90 1E 05 88 */	stw r0, 0x588(r30)
/* 805A2810  48 00 00 24 */	b lbl_805A2834
lbl_805A2814:
/* 805A2814  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 805A2818  60 00 00 20 */	ori r0, r0, 0x20
/* 805A281C  90 1E 05 88 */	stw r0, 0x588(r30)
/* 805A2820  2C 03 00 0F */	cmpwi r3, 0xf
/* 805A2824  40 82 00 10 */	bne lbl_805A2834
/* 805A2828  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 805A282C  60 00 00 10 */	ori r0, r0, 0x10
/* 805A2830  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_805A2834:
/* 805A2834  38 60 00 01 */	li r3, 1
/* 805A2838  39 61 00 30 */	addi r11, r1, 0x30
/* 805A283C  4B DB F9 ED */	bl _restgpr_29
/* 805A2840  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A2844  7C 08 03 A6 */	mtlr r0
/* 805A2848  38 21 00 30 */	addi r1, r1, 0x30
/* 805A284C  4E 80 00 20 */	blr 
