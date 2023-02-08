lbl_807C50A4:
/* 807C50A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807C50A8  7C 08 02 A6 */	mflr r0
/* 807C50AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 807C50B0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807C50B4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807C50B8  7C 7E 1B 78 */	mr r30, r3
/* 807C50BC  3C 60 80 7D */	lis r3, lit_3908@ha /* 0x807CECAC@ha */
/* 807C50C0  C0 03 EC AC */	lfs f0, lit_3908@l(r3)  /* 0x807CECAC@l */
/* 807C50C4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807C50C8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807C50CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807C50D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C50D4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C50D8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807C50DC  38 80 00 00 */	li r4, 0
/* 807C50E0  90 81 00 08 */	stw r4, 8(r1)
/* 807C50E4  38 00 FF FF */	li r0, -1
/* 807C50E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C50EC  90 81 00 10 */	stw r4, 0x10(r1)
/* 807C50F0  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C50F4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C50F8  38 80 00 00 */	li r4, 0
/* 807C50FC  3C A0 00 01 */	lis r5, 0x0001 /* 0x000085FE@ha */
/* 807C5100  38 A5 85 FE */	addi r5, r5, 0x85FE /* 0x000085FE@l */
/* 807C5104  38 C1 00 20 */	addi r6, r1, 0x20
/* 807C5108  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807C510C  39 00 00 00 */	li r8, 0
/* 807C5110  39 20 00 00 */	li r9, 0
/* 807C5114  39 40 00 FF */	li r10, 0xff
/* 807C5118  3D 60 80 7D */	lis r11, lit_3909@ha /* 0x807CECB0@ha */
/* 807C511C  C0 2B EC B0 */	lfs f1, lit_3909@l(r11)  /* 0x807CECB0@l */
/* 807C5120  4B 88 79 71 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C5124  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807C5128  38 80 00 00 */	li r4, 0
/* 807C512C  90 81 00 08 */	stw r4, 8(r1)
/* 807C5130  38 00 FF FF */	li r0, -1
/* 807C5134  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C5138  90 81 00 10 */	stw r4, 0x10(r1)
/* 807C513C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C5140  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C5144  38 80 00 00 */	li r4, 0
/* 807C5148  3C A0 00 01 */	lis r5, 0x0001 /* 0x000085FF@ha */
/* 807C514C  38 A5 85 FF */	addi r5, r5, 0x85FF /* 0x000085FF@l */
/* 807C5150  38 C1 00 20 */	addi r6, r1, 0x20
/* 807C5154  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807C5158  39 00 00 00 */	li r8, 0
/* 807C515C  39 20 00 00 */	li r9, 0
/* 807C5160  39 40 00 FF */	li r10, 0xff
/* 807C5164  3D 60 80 7D */	lis r11, lit_3909@ha /* 0x807CECB0@ha */
/* 807C5168  C0 2B EC B0 */	lfs f1, lit_3909@l(r11)  /* 0x807CECB0@l */
/* 807C516C  4B 88 79 25 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C5170  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 807C5174  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 807C5178  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807C517C  7C 08 03 A6 */	mtlr r0
/* 807C5180  38 21 00 40 */	addi r1, r1, 0x40
/* 807C5184  4E 80 00 20 */	blr 
