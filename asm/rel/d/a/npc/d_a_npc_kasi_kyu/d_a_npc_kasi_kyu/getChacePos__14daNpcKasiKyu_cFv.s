lbl_80A24110:
/* 80A24110  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A24114  7C 08 02 A6 */	mflr r0
/* 80A24118  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A2411C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A24120  7C 7F 1B 78 */	mr r31, r3
/* 80A24124  80 64 14 5C */	lwz r3, 0x145c(r4)
/* 80A24128  A0 04 0C 94 */	lhz r0, 0xc94(r4)
/* 80A2412C  7C 00 18 00 */	cmpw r0, r3
/* 80A24130  40 82 00 2C */	bne lbl_80A2415C
/* 80A24134  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A24138  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2413C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A24140  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A24144  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80A24148  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80A2414C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80A24150  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A24154  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80A24158  48 00 00 60 */	b lbl_80A241B8
lbl_80A2415C:
/* 80A2415C  40 80 00 10 */	bge lbl_80A2416C
/* 80A24160  38 00 00 00 */	li r0, 0
/* 80A24164  98 04 0C 96 */	stb r0, 0xc96(r4)
/* 80A24168  48 00 00 10 */	b lbl_80A24178
lbl_80A2416C:
/* 80A2416C  40 81 00 0C */	ble lbl_80A24178
/* 80A24170  38 00 00 01 */	li r0, 1
/* 80A24174  98 04 0C 96 */	stb r0, 0xc96(r4)
lbl_80A24178:
/* 80A24178  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80A2417C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A24180  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80A24184  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A24188  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80A2418C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A24190  38 64 0C 94 */	addi r3, r4, 0xc94
/* 80A24194  38 81 00 08 */	addi r4, r1, 8
/* 80A24198  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A2419C  4B 72 CC 45 */	bl getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80A241A0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A241A4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80A241A8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A241AC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80A241B0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A241B4  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80A241B8:
/* 80A241B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A241BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A241C0  7C 08 03 A6 */	mtlr r0
/* 80A241C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A241C8  4E 80 00 20 */	blr 
