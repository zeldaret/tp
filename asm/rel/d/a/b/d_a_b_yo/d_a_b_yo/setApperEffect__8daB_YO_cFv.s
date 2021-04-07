lbl_80630BF0:
/* 80630BF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80630BF4  7C 08 02 A6 */	mflr r0
/* 80630BF8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80630BFC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80630C00  7C 7F 1B 78 */	mr r31, r3
/* 80630C04  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80630C08  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80630C0C  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80630C10  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80630C14  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80630C18  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80630C1C  3C 60 80 64 */	lis r3, lit_4432@ha /* 0x80639850@ha */
/* 80630C20  C0 03 98 50 */	lfs f0, lit_4432@l(r3)  /* 0x80639850@l */
/* 80630C24  EC 01 00 28 */	fsubs f0, f1, f0
/* 80630C28  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80630C2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80630C30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80630C34  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80630C38  38 00 00 FF */	li r0, 0xff
/* 80630C3C  90 01 00 08 */	stw r0, 8(r1)
/* 80630C40  38 80 00 00 */	li r4, 0
/* 80630C44  90 81 00 0C */	stw r4, 0xc(r1)
/* 80630C48  38 00 FF FF */	li r0, -1
/* 80630C4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80630C50  90 81 00 14 */	stw r4, 0x14(r1)
/* 80630C54  90 81 00 18 */	stw r4, 0x18(r1)
/* 80630C58  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80630C5C  80 9F 1B 80 */	lwz r4, 0x1b80(r31)
/* 80630C60  38 A0 00 00 */	li r5, 0
/* 80630C64  3C C0 00 01 */	lis r6, 0x0001 /* 0x000087AD@ha */
/* 80630C68  38 C6 87 AD */	addi r6, r6, 0x87AD /* 0x000087AD@l */
/* 80630C6C  38 E1 00 20 */	addi r7, r1, 0x20
/* 80630C70  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80630C74  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80630C78  39 40 00 00 */	li r10, 0
/* 80630C7C  3D 60 80 64 */	lis r11, lit_3795@ha /* 0x80639810@ha */
/* 80630C80  C0 2B 98 10 */	lfs f1, lit_3795@l(r11)  /* 0x80639810@l */
/* 80630C84  4B A1 C8 49 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80630C88  90 7F 1B 80 */	stw r3, 0x1b80(r31)
/* 80630C8C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80630C90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80630C94  7C 08 03 A6 */	mtlr r0
/* 80630C98  38 21 00 40 */	addi r1, r1, 0x40
/* 80630C9C  4E 80 00 20 */	blr 
