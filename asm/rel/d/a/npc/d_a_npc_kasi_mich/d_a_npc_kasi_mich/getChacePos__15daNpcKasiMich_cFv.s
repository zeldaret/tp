lbl_80A28910:
/* 80A28910  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A28914  7C 08 02 A6 */	mflr r0
/* 80A28918  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A2891C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A28920  7C 7F 1B 78 */	mr r31, r3
/* 80A28924  80 64 14 60 */	lwz r3, 0x1460(r4)
/* 80A28928  A0 04 0C 94 */	lhz r0, 0xc94(r4)
/* 80A2892C  7C 00 18 00 */	cmpw r0, r3
/* 80A28930  40 82 00 2C */	bne lbl_80A2895C
/* 80A28934  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A28938  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2893C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A28940  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A28944  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80A28948  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80A2894C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80A28950  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A28954  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80A28958  48 00 00 60 */	b lbl_80A289B8
lbl_80A2895C:
/* 80A2895C  40 80 00 10 */	bge lbl_80A2896C
/* 80A28960  38 00 00 00 */	li r0, 0
/* 80A28964  98 04 0C 96 */	stb r0, 0xc96(r4)
/* 80A28968  48 00 00 10 */	b lbl_80A28978
lbl_80A2896C:
/* 80A2896C  40 81 00 0C */	ble lbl_80A28978
/* 80A28970  38 00 00 01 */	li r0, 1
/* 80A28974  98 04 0C 96 */	stb r0, 0xc96(r4)
lbl_80A28978:
/* 80A28978  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80A2897C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A28980  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80A28984  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A28988  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80A2898C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A28990  38 64 0C 94 */	addi r3, r4, 0xc94
/* 80A28994  38 81 00 08 */	addi r4, r1, 8
/* 80A28998  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A2899C  4B 72 84 45 */	bl getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80A289A0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A289A4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80A289A8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A289AC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80A289B0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A289B4  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80A289B8:
/* 80A289B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A289BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A289C0  7C 08 03 A6 */	mtlr r0
/* 80A289C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A289C8  4E 80 00 20 */	blr 
