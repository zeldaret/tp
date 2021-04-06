lbl_807C4FCC:
/* 807C4FCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807C4FD0  7C 08 02 A6 */	mflr r0
/* 807C4FD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807C4FD8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807C4FDC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807C4FE0  7C 7E 1B 78 */	mr r30, r3
/* 807C4FE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C4FE8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C4FEC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807C4FF0  38 00 00 FF */	li r0, 0xff
/* 807C4FF4  90 01 00 08 */	stw r0, 8(r1)
/* 807C4FF8  38 80 00 00 */	li r4, 0
/* 807C4FFC  90 81 00 0C */	stw r4, 0xc(r1)
/* 807C5000  38 00 FF FF */	li r0, -1
/* 807C5004  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C5008  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C500C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C5010  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807C5014  3C 9E 00 01 */	addis r4, r30, 1
/* 807C5018  80 84 0F 68 */	lwz r4, 0xf68(r4)
/* 807C501C  38 A0 00 00 */	li r5, 0
/* 807C5020  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008600@ha */
/* 807C5024  38 C6 86 00 */	addi r6, r6, 0x8600 /* 0x00008600@l */
/* 807C5028  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 807C502C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807C5030  39 20 00 00 */	li r9, 0
/* 807C5034  39 40 00 00 */	li r10, 0
/* 807C5038  3D 60 80 7D */	lis r11, lit_3909@ha /* 0x807CECB0@ha */
/* 807C503C  C0 2B EC B0 */	lfs f1, lit_3909@l(r11)  /* 0x807CECB0@l */
/* 807C5040  4B 88 84 8D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C5044  3C 9E 00 01 */	addis r4, r30, 1
/* 807C5048  90 64 0F 68 */	stw r3, 0xf68(r4)
/* 807C504C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807C5050  38 63 02 10 */	addi r3, r3, 0x210
/* 807C5054  80 84 0F 68 */	lwz r4, 0xf68(r4)
/* 807C5058  4B 88 68 C1 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 807C505C  7C 7F 1B 79 */	or. r31, r3, r3
/* 807C5060  41 82 00 2C */	beq lbl_807C508C
/* 807C5064  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807C5068  38 63 00 24 */	addi r3, r3, 0x24
/* 807C506C  38 9F 00 68 */	addi r4, r31, 0x68
/* 807C5070  38 BF 00 98 */	addi r5, r31, 0x98
/* 807C5074  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 807C5078  4B AB B7 91 */	bl func_80280808
/* 807C507C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 807C5080  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807C5084  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 807C5088  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_807C508C:
/* 807C508C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807C5090  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807C5094  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807C5098  7C 08 03 A6 */	mtlr r0
/* 807C509C  38 21 00 30 */	addi r1, r1, 0x30
/* 807C50A0  4E 80 00 20 */	blr 
