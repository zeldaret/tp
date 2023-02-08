lbl_8019F264:
/* 8019F264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019F268  7C 08 02 A6 */	mflr r0
/* 8019F26C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019F270  38 60 00 00 */	li r3, 0
/* 8019F274  38 80 00 00 */	li r4, 0
/* 8019F278  38 A0 00 00 */	li r5, 0
/* 8019F27C  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 8019F280  48 00 8C 09 */	bl dKy_actor_addcol_set__Fsssf
/* 8019F284  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 8019F288  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019F28C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019F290  D0 03 10 88 */	stfs f0, 0x1088(r3)
/* 8019F294  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 8019F298  D0 23 10 8C */	stfs f1, 0x108c(r3)
/* 8019F29C  D0 23 10 90 */	stfs f1, 0x1090(r3)
/* 8019F2A0  C0 02 A2 50 */	lfs f0, lit_4507(r2)
/* 8019F2A4  D0 03 10 94 */	stfs f0, 0x1094(r3)
/* 8019F2A8  D0 23 10 98 */	stfs f1, 0x1098(r3)
/* 8019F2AC  D0 23 10 9C */	stfs f1, 0x109c(r3)
/* 8019F2B0  D0 03 12 48 */	stfs f0, 0x1248(r3)
/* 8019F2B4  D0 03 12 74 */	stfs f0, 0x1274(r3)
/* 8019F2B8  C0 02 A2 B8 */	lfs f0, lit_5365(r2)
/* 8019F2BC  D0 03 12 50 */	stfs f0, 0x1250(r3)
/* 8019F2C0  38 00 00 00 */	li r0, 0
/* 8019F2C4  98 03 12 FD */	stb r0, 0x12fd(r3)
/* 8019F2C8  98 03 12 FE */	stb r0, 0x12fe(r3)
/* 8019F2CC  98 03 13 0A */	stb r0, 0x130a(r3)
/* 8019F2D0  98 03 12 CC */	stb r0, 0x12cc(r3)
/* 8019F2D4  98 03 13 0C */	stb r0, 0x130c(r3)
/* 8019F2D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019F2DC  7C 08 03 A6 */	mtlr r0
/* 8019F2E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8019F2E4  4E 80 00 20 */	blr 
