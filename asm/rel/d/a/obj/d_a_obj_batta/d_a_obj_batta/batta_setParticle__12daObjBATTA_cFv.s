lbl_80BABA98:
/* 80BABA98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BABA9C  7C 08 02 A6 */	mflr r0
/* 80BABAA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BABAA4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BABAA8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BABAAC  7C 7F 1B 78 */	mr r31, r3
/* 80BABAB0  C0 23 05 7C */	lfs f1, 0x57c(r3)
/* 80BABAB4  4B 7B 65 F9 */	bl __cvt_fp2unsigned
/* 80BABAB8  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80BABABC  7C 03 00 40 */	cmplw r3, r0
/* 80BABAC0  40 81 00 20 */	ble lbl_80BABAE0
/* 80BABAC4  38 7F 09 CC */	addi r3, r31, 0x9cc
/* 80BABAC8  3C 80 80 BB */	lis r4, lit_3956@ha /* 0x80BAC98C@ha */
/* 80BABACC  C0 24 C9 8C */	lfs f1, lit_3956@l(r4)  /* 0x80BAC98C@l */
/* 80BABAD0  3C 80 80 BB */	lis r4, lit_3774@ha /* 0x80BAC970@ha */
/* 80BABAD4  C0 44 C9 70 */	lfs f2, lit_3774@l(r4)  /* 0x80BAC970@l */
/* 80BABAD8  4B 6C 4C 69 */	bl cLib_chaseF__FPfff
/* 80BABADC  48 00 00 18 */	b lbl_80BABAF4
lbl_80BABAE0:
/* 80BABAE0  38 7F 09 CC */	addi r3, r31, 0x9cc
/* 80BABAE4  3C 80 80 BB */	lis r4, lit_3774@ha /* 0x80BAC970@ha */
/* 80BABAE8  C0 24 C9 70 */	lfs f1, lit_3774@l(r4)  /* 0x80BAC970@l */
/* 80BABAEC  FC 40 08 90 */	fmr f2, f1
/* 80BABAF0  4B 6C 4C 51 */	bl cLib_chaseF__FPfff
lbl_80BABAF4:
/* 80BABAF4  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 80BABAF8  28 00 00 02 */	cmplwi r0, 2
/* 80BABAFC  41 82 01 90 */	beq lbl_80BABC8C
/* 80BABB00  3C 60 80 BB */	lis r3, d_a_obj_batta__stringBase0@ha /* 0x80BACA64@ha */
/* 80BABB04  38 63 CA 64 */	addi r3, r3, d_a_obj_batta__stringBase0@l /* 0x80BACA64@l */
/* 80BABB08  38 63 00 04 */	addi r3, r3, 4
/* 80BABB0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BABB10  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BABB14  3B C4 4E 00 */	addi r30, r4, 0x4e00
/* 80BABB18  7F C4 F3 78 */	mr r4, r30
/* 80BABB1C  4B 7B CE 79 */	bl strcmp
/* 80BABB20  2C 03 00 00 */	cmpwi r3, 0
/* 80BABB24  40 82 00 34 */	bne lbl_80BABB58
/* 80BABB28  3C 60 80 BB */	lis r3, d_a_obj_batta__stringBase0@ha /* 0x80BACA64@ha */
/* 80BABB2C  38 63 CA 64 */	addi r3, r3, d_a_obj_batta__stringBase0@l /* 0x80BACA64@l */
/* 80BABB30  38 63 00 04 */	addi r3, r3, 4
/* 80BABB34  7F C4 F3 78 */	mr r4, r30
/* 80BABB38  4B 7B CE 5D */	bl strcmp
/* 80BABB3C  2C 03 00 00 */	cmpwi r3, 0
/* 80BABB40  40 82 01 4C */	bne lbl_80BABC8C
/* 80BABB44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BABB48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BABB4C  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80BABB50  2C 00 00 03 */	cmpwi r0, 3
/* 80BABB54  41 82 01 38 */	beq lbl_80BABC8C
lbl_80BABB58:
/* 80BABB58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BABB5C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BABB60  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BABB64  38 00 00 FF */	li r0, 0xff
/* 80BABB68  90 01 00 08 */	stw r0, 8(r1)
/* 80BABB6C  38 80 00 00 */	li r4, 0
/* 80BABB70  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BABB74  38 00 FF FF */	li r0, -1
/* 80BABB78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BABB7C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BABB80  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BABB84  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BABB88  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BABB8C  38 A0 00 00 */	li r5, 0
/* 80BABB90  38 C0 0A 1B */	li r6, 0xa1b
/* 80BABB94  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80BABB98  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80BABB9C  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80BABBA0  39 40 00 00 */	li r10, 0
/* 80BABBA4  3D 60 80 BB */	lis r11, lit_3774@ha /* 0x80BAC970@ha */
/* 80BABBA8  C0 2B C9 70 */	lfs f1, lit_3774@l(r11)  /* 0x80BAC970@l */
/* 80BABBAC  4B 4A 19 21 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BABBB0  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80BABBB4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BABBB8  38 63 02 10 */	addi r3, r3, 0x210
/* 80BABBBC  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BABBC0  4B 49 FD 59 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80BABBC4  28 03 00 00 */	cmplwi r3, 0
/* 80BABBC8  41 82 00 18 */	beq lbl_80BABBE0
/* 80BABBCC  C0 3F 09 CC */	lfs f1, 0x9cc(r31)
/* 80BABBD0  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80BABBD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BABBD8  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80BABBDC  D0 03 00 B4 */	stfs f0, 0xb4(r3)
lbl_80BABBE0:
/* 80BABBE0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BABBE4  38 00 00 FF */	li r0, 0xff
/* 80BABBE8  90 01 00 08 */	stw r0, 8(r1)
/* 80BABBEC  38 80 00 00 */	li r4, 0
/* 80BABBF0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BABBF4  38 00 FF FF */	li r0, -1
/* 80BABBF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BABBFC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BABC00  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BABC04  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BABC08  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80BABC0C  38 A0 00 00 */	li r5, 0
/* 80BABC10  38 C0 0A 1C */	li r6, 0xa1c
/* 80BABC14  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80BABC18  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80BABC1C  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80BABC20  39 40 00 00 */	li r10, 0
/* 80BABC24  3D 60 80 BB */	lis r11, lit_3774@ha /* 0x80BAC970@ha */
/* 80BABC28  C0 2B C9 70 */	lfs f1, lit_3774@l(r11)  /* 0x80BAC970@l */
/* 80BABC2C  4B 4A 18 A1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BABC30  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80BABC34  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BABC38  38 63 02 10 */	addi r3, r3, 0x210
/* 80BABC3C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80BABC40  4B 49 FC D9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80BABC44  28 03 00 00 */	cmplwi r3, 0
/* 80BABC48  41 82 00 18 */	beq lbl_80BABC60
/* 80BABC4C  C0 3F 09 CC */	lfs f1, 0x9cc(r31)
/* 80BABC50  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80BABC54  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BABC58  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80BABC5C  D0 03 00 B4 */	stfs f0, 0xb4(r3)
lbl_80BABC60:
/* 80BABC60  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80BABC64  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80BABC68  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BABC6C  38 7F 05 90 */	addi r3, r31, 0x590
/* 80BABC70  38 81 00 20 */	addi r4, r1, 0x20
/* 80BABC74  38 A0 00 00 */	li r5, 0
/* 80BABC78  38 C0 FF FF */	li r6, -1
/* 80BABC7C  81 9F 05 90 */	lwz r12, 0x590(r31)
/* 80BABC80  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BABC84  7D 89 03 A6 */	mtctr r12
/* 80BABC88  4E 80 04 21 */	bctrl 
lbl_80BABC8C:
/* 80BABC8C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BABC90  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BABC94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BABC98  7C 08 03 A6 */	mtlr r0
/* 80BABC9C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BABCA0  4E 80 00 20 */	blr 
