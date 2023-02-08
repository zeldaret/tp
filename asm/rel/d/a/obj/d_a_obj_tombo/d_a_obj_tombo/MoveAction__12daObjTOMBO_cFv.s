lbl_80D1A138:
/* 80D1A138  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D1A13C  7C 08 02 A6 */	mflr r0
/* 80D1A140  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D1A144  39 61 00 30 */	addi r11, r1, 0x30
/* 80D1A148  4B 64 80 95 */	bl _savegpr_29
/* 80D1A14C  7C 7D 1B 78 */	mr r29, r3
/* 80D1A150  3C 80 80 D2 */	lis r4, lit_3775@ha /* 0x80D1B6D8@ha */
/* 80D1A154  3B E4 B6 D8 */	addi r31, r4, lit_3775@l /* 0x80D1B6D8@l */
/* 80D1A158  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1A15C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1A160  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80D1A164  88 03 07 12 */	lbz r0, 0x712(r3)
/* 80D1A168  2C 00 00 01 */	cmpwi r0, 1
/* 80D1A16C  41 82 00 B0 */	beq lbl_80D1A21C
/* 80D1A170  40 80 00 F8 */	bge lbl_80D1A268
/* 80D1A174  2C 00 00 00 */	cmpwi r0, 0
/* 80D1A178  40 80 00 08 */	bge lbl_80D1A180
/* 80D1A17C  48 00 00 EC */	b lbl_80D1A268
lbl_80D1A180:
/* 80D1A180  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80D1A184  4B 54 D7 D1 */	bl cM_rndF__Ff
/* 80D1A188  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80D1A18C  EC 00 08 2A */	fadds f0, f0, f1
/* 80D1A190  D0 1D 07 1C */	stfs f0, 0x71c(r29)
/* 80D1A194  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80D1A198  4B 54 D7 F5 */	bl cM_rndFX__Ff
/* 80D1A19C  D0 3D 07 20 */	stfs f1, 0x720(r29)
/* 80D1A1A0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80D1A1A4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80D1A1A8  38 61 00 08 */	addi r3, r1, 8
/* 80D1A1AC  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 80D1A1B0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80D1A1B4  4B 54 C9 81 */	bl __mi__4cXyzCFRC3Vec
/* 80D1A1B8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D1A1BC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D1A1C0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D1A1C4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D1A1C8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D1A1CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D1A1D0  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80D1A1D4  4B 54 D7 B9 */	bl cM_rndFX__Ff
/* 80D1A1D8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D1A1DC  EC 00 08 2A */	fadds f0, f0, f1
/* 80D1A1E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D1A1E4  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80D1A1E8  4B 54 D7 A5 */	bl cM_rndFX__Ff
/* 80D1A1EC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D1A1F0  EC 40 08 2A */	fadds f2, f0, f1
/* 80D1A1F4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80D1A1F8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80D1A1FC  4B 54 D4 79 */	bl cM_atan2s__Fff
/* 80D1A200  B0 7D 07 24 */	sth r3, 0x724(r29)
/* 80D1A204  7F A3 EB 78 */	mr r3, r29
/* 80D1A208  4B FF F7 ED */	bl CheckGround__12daObjTOMBO_cFv
/* 80D1A20C  88 7D 07 12 */	lbz r3, 0x712(r29)
/* 80D1A210  38 03 00 01 */	addi r0, r3, 1
/* 80D1A214  98 1D 07 12 */	stb r0, 0x712(r29)
/* 80D1A218  48 00 00 50 */	b lbl_80D1A268
lbl_80D1A21C:
/* 80D1A21C  4B FF F5 29 */	bl SpeedSet__12daObjTOMBO_cFv
/* 80D1A220  7F C3 F3 78 */	mr r3, r30
/* 80D1A224  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D1A228  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80D1A22C  7D 89 03 A6 */	mtctr r12
/* 80D1A230  4E 80 04 21 */	bctrl 
/* 80D1A234  7C 64 1B 79 */	or. r4, r3, r3
/* 80D1A238  41 82 00 10 */	beq lbl_80D1A248
/* 80D1A23C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80D1A240  4B 55 69 C5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80D1A244  B0 7D 07 24 */	sth r3, 0x724(r29)
lbl_80D1A248:
/* 80D1A248  A8 1D 07 14 */	lha r0, 0x714(r29)
/* 80D1A24C  2C 00 00 00 */	cmpwi r0, 0
/* 80D1A250  40 82 00 18 */	bne lbl_80D1A268
/* 80D1A254  38 00 00 00 */	li r0, 0
/* 80D1A258  98 1D 07 11 */	stb r0, 0x711(r29)
/* 80D1A25C  98 1D 07 12 */	stb r0, 0x712(r29)
/* 80D1A260  7F A3 EB 78 */	mr r3, r29
/* 80D1A264  4B FF F8 E5 */	bl CheckWall__12daObjTOMBO_cFv
lbl_80D1A268:
/* 80D1A268  39 61 00 30 */	addi r11, r1, 0x30
/* 80D1A26C  4B 64 7F BD */	bl _restgpr_29
/* 80D1A270  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D1A274  7C 08 03 A6 */	mtlr r0
/* 80D1A278  38 21 00 30 */	addi r1, r1, 0x30
/* 80D1A27C  4E 80 00 20 */	blr 
