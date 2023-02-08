lbl_80BF8C08:
/* 80BF8C08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BF8C0C  7C 08 02 A6 */	mflr r0
/* 80BF8C10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BF8C14  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BF8C18  7C 7F 1B 78 */	mr r31, r3
/* 80BF8C1C  C0 43 04 F4 */	lfs f2, 0x4f4(r3)
/* 80BF8C20  C0 23 04 F0 */	lfs f1, 0x4f0(r3)
/* 80BF8C24  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80BF8C28  D0 03 07 88 */	stfs f0, 0x788(r3)
/* 80BF8C2C  D0 23 07 8C */	stfs f1, 0x78c(r3)
/* 80BF8C30  D0 43 07 90 */	stfs f2, 0x790(r3)
/* 80BF8C34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF8C38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF8C3C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80BF8C40  38 80 00 00 */	li r4, 0
/* 80BF8C44  90 81 00 08 */	stw r4, 8(r1)
/* 80BF8C48  38 00 FF FF */	li r0, -1
/* 80BF8C4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BF8C50  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BF8C54  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BF8C58  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BF8C5C  38 80 00 00 */	li r4, 0
/* 80BF8C60  3C A0 00 01 */	lis r5, 0x0001 /* 0x000083E7@ha */
/* 80BF8C64  38 A5 83 E7 */	addi r5, r5, 0x83E7 /* 0x000083E7@l */
/* 80BF8C68  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80BF8C6C  38 E0 00 00 */	li r7, 0
/* 80BF8C70  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 80BF8C74  39 3F 07 88 */	addi r9, r31, 0x788
/* 80BF8C78  39 40 00 FF */	li r10, 0xff
/* 80BF8C7C  3D 60 80 C0 */	lis r11, lit_3760@ha /* 0x80BF9010@ha */
/* 80BF8C80  C0 2B 90 10 */	lfs f1, lit_3760@l(r11)  /* 0x80BF9010@l */
/* 80BF8C84  4B 45 3E 0D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BF8C88  90 7F 07 74 */	stw r3, 0x774(r31)
/* 80BF8C8C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BF8C90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BF8C94  7C 08 03 A6 */	mtlr r0
/* 80BF8C98  38 21 00 30 */	addi r1, r1, 0x30
/* 80BF8C9C  4E 80 00 20 */	blr 
