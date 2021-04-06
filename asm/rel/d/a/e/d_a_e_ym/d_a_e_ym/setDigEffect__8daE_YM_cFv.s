lbl_80808768:
/* 80808768  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8080876C  7C 08 02 A6 */	mflr r0
/* 80808770  90 01 00 44 */	stw r0, 0x44(r1)
/* 80808774  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80808778  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8080877C  7C 7E 1B 78 */	mr r30, r3
/* 80808780  C0 03 06 8C */	lfs f0, 0x68c(r3)
/* 80808784  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80808788  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8080878C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80808790  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80808794  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80808798  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 8080879C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 808087A0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 808087A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 808087A8  C0 03 06 DC */	lfs f0, 0x6dc(r3)
/* 808087AC  EC 01 00 2A */	fadds f0, f1, f0
/* 808087B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 808087B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808087B8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808087BC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 808087C0  38 00 00 FF */	li r0, 0xff
/* 808087C4  90 01 00 08 */	stw r0, 8(r1)
/* 808087C8  38 80 00 00 */	li r4, 0
/* 808087CC  90 81 00 0C */	stw r4, 0xc(r1)
/* 808087D0  38 00 FF FF */	li r0, -1
/* 808087D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 808087D8  90 81 00 14 */	stw r4, 0x14(r1)
/* 808087DC  90 81 00 18 */	stw r4, 0x18(r1)
/* 808087E0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 808087E4  80 9E 0A D8 */	lwz r4, 0xad8(r30)
/* 808087E8  38 A0 00 00 */	li r5, 0
/* 808087EC  3C C0 00 01 */	lis r6, 0x0001 /* 0x000083A8@ha */
/* 808087F0  38 C6 83 A8 */	addi r6, r6, 0x83A8 /* 0x000083A8@l */
/* 808087F4  38 E1 00 20 */	addi r7, r1, 0x20
/* 808087F8  39 00 00 00 */	li r8, 0
/* 808087FC  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80808800  39 41 00 2C */	addi r10, r1, 0x2c
/* 80808804  3D 60 80 81 */	lis r11, lit_3927@ha /* 0x8081599C@ha */
/* 80808808  C0 2B 59 9C */	lfs f1, lit_3927@l(r11)  /* 0x8081599C@l */
/* 8080880C  4B 84 4C C1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80808810  90 7E 0A D8 */	stw r3, 0xad8(r30)
/* 80808814  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80808818  38 00 00 FF */	li r0, 0xff
/* 8080881C  90 01 00 08 */	stw r0, 8(r1)
/* 80808820  38 80 00 00 */	li r4, 0
/* 80808824  90 81 00 0C */	stw r4, 0xc(r1)
/* 80808828  38 00 FF FF */	li r0, -1
/* 8080882C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80808830  90 81 00 14 */	stw r4, 0x14(r1)
/* 80808834  90 81 00 18 */	stw r4, 0x18(r1)
/* 80808838  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8080883C  80 9E 0A DC */	lwz r4, 0xadc(r30)
/* 80808840  38 A0 00 00 */	li r5, 0
/* 80808844  3C C0 00 01 */	lis r6, 0x0001 /* 0x000083A9@ha */
/* 80808848  38 C6 83 A9 */	addi r6, r6, 0x83A9 /* 0x000083A9@l */
/* 8080884C  38 E1 00 20 */	addi r7, r1, 0x20
/* 80808850  39 00 00 00 */	li r8, 0
/* 80808854  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80808858  39 41 00 2C */	addi r10, r1, 0x2c
/* 8080885C  3D 60 80 81 */	lis r11, lit_3927@ha /* 0x8081599C@ha */
/* 80808860  C0 2B 59 9C */	lfs f1, lit_3927@l(r11)  /* 0x8081599C@l */
/* 80808864  4B 84 4C 69 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80808868  90 7E 0A DC */	stw r3, 0xadc(r30)
/* 8080886C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80808870  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80808874  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80808878  7C 08 03 A6 */	mtlr r0
/* 8080887C  38 21 00 40 */	addi r1, r1, 0x40
/* 80808880  4E 80 00 20 */	blr 
