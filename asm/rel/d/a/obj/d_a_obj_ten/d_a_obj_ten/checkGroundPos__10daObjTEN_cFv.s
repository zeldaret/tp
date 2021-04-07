lbl_80D0A0D8:
/* 80D0A0D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D0A0DC  7C 08 02 A6 */	mflr r0
/* 80D0A0E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D0A0E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D0A0E8  7C 7F 1B 78 */	mr r31, r3
/* 80D0A0EC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D0A0F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D0A0F4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D0A0F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D0A0FC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D0A100  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D0A104  38 7F 05 90 */	addi r3, r31, 0x590
/* 80D0A108  38 81 00 08 */	addi r4, r1, 8
/* 80D0A10C  4B 55 DC 1D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80D0A110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0A114  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0A118  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D0A11C  38 9F 05 90 */	addi r4, r31, 0x590
/* 80D0A120  4B 36 A3 81 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80D0A124  D0 3F 05 E4 */	stfs f1, 0x5e4(r31)
/* 80D0A128  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D0A12C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D0A130  7C 08 03 A6 */	mtlr r0
/* 80D0A134  38 21 00 20 */	addi r1, r1, 0x20
/* 80D0A138  4E 80 00 20 */	blr 
