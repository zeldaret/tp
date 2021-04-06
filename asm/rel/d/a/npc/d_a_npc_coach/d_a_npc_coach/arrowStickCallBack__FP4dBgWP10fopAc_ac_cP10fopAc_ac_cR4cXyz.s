lbl_8099D9AC:
/* 8099D9AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099D9B0  7C 08 02 A6 */	mflr r0
/* 8099D9B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099D9B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8099D9BC  7C BF 2B 78 */	mr r31, r5
/* 8099D9C0  A8 05 00 08 */	lha r0, 8(r5)
/* 8099D9C4  2C 00 02 E5 */	cmpwi r0, 0x2e5
/* 8099D9C8  40 82 00 48 */	bne lbl_8099DA10
/* 8099D9CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8099D9D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099D9D4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8099D9D8  80 03 05 78 */	lwz r0, 0x578(r3)
/* 8099D9DC  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 8099D9E0  40 82 00 30 */	bne lbl_8099DA10
/* 8099D9E4  C0 06 00 00 */	lfs f0, 0(r6)
/* 8099D9E8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8099D9EC  C0 06 00 04 */	lfs f0, 4(r6)
/* 8099D9F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8099D9F4  C0 06 00 08 */	lfs f0, 8(r6)
/* 8099D9F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8099D9FC  7C 83 23 78 */	mr r3, r4
/* 8099DA00  38 81 00 08 */	addi r4, r1, 8
/* 8099DA04  48 00 00 5D */	bl hitFireArrow__12daNpcCoach_cF4cXyz
/* 8099DA08  7F E3 FB 78 */	mr r3, r31
/* 8099DA0C  4B 67 C2 71 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8099DA10:
/* 8099DA10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8099DA14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099DA18  7C 08 03 A6 */	mtlr r0
/* 8099DA1C  38 21 00 20 */	addi r1, r1, 0x20
/* 8099DA20  4E 80 00 20 */	blr 
