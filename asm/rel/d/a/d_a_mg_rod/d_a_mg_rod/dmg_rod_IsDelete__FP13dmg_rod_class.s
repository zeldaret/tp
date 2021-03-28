lbl_804BA098:
/* 804BA098  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BA09C  7C 08 02 A6 */	mflr r0
/* 804BA0A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BA0A4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804BA0A8  7C 66 1B 78 */	mr r6, r3
/* 804BA0AC  A8 03 13 B4 */	lha r0, 0x13b4(r3)
/* 804BA0B0  2C 00 00 00 */	cmpwi r0, 0
/* 804BA0B4  41 82 00 80 */	beq lbl_804BA134
/* 804BA0B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BA0BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BA0C0  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 804BA0C4  7C 00 07 74 */	extsb r0, r0
/* 804BA0C8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 804BA0CC  7C 63 02 14 */	add r3, r3, r0
/* 804BA0D0  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 804BA0D4  C0 06 13 C4 */	lfs f0, 0x13c4(r6)
/* 804BA0D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804BA0DC  C0 06 13 C8 */	lfs f0, 0x13c8(r6)
/* 804BA0E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804BA0E4  C0 06 13 CC */	lfs f0, 0x13cc(r6)
/* 804BA0E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804BA0EC  C0 06 13 B8 */	lfs f0, 0x13b8(r6)
/* 804BA0F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 804BA0F4  C0 06 13 BC */	lfs f0, 0x13bc(r6)
/* 804BA0F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804BA0FC  C0 06 13 C0 */	lfs f0, 0x13c0(r6)
/* 804BA100  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804BA104  38 7F 02 48 */	addi r3, r31, 0x248
/* 804BA108  38 81 00 14 */	addi r4, r1, 0x14
/* 804BA10C  38 A1 00 08 */	addi r5, r1, 8
/* 804BA110  C0 26 14 08 */	lfs f1, 0x1408(r6)
/* 804BA114  38 C0 00 00 */	li r6, 0
/* 804BA118  4B CC 6A 88 */	b Reset__9dCamera_cF4cXyz4cXyzfs
/* 804BA11C  38 7F 02 48 */	addi r3, r31, 0x248
/* 804BA120  4B CA 73 8C */	b Start__9dCamera_cFv
/* 804BA124  38 7F 02 48 */	addi r3, r31, 0x248
/* 804BA128  38 80 00 00 */	li r4, 0
/* 804BA12C  4B CA 8E E0 */	b SetTrimSize__9dCamera_cFl
/* 804BA130  4B D3 FF 9C */	b dMw_onMenuRing__Fv
lbl_804BA134:
/* 804BA134  38 60 00 01 */	li r3, 1
/* 804BA138  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804BA13C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BA140  7C 08 03 A6 */	mtlr r0
/* 804BA144  38 21 00 30 */	addi r1, r1, 0x30
/* 804BA148  4E 80 00 20 */	blr 
