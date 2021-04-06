lbl_80CC8BF4:
/* 80CC8BF4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CC8BF8  7C 08 02 A6 */	mflr r0
/* 80CC8BFC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CC8C00  39 61 00 50 */	addi r11, r1, 0x50
/* 80CC8C04  4B 69 95 D9 */	bl _savegpr_29
/* 80CC8C08  7C 7D 1B 78 */	mr r29, r3
/* 80CC8C0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC8C10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC8C14  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80CC8C18  7C 00 07 74 */	extsb r0, r0
/* 80CC8C1C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80CC8C20  7C 63 02 14 */	add r3, r3, r0
/* 80CC8C24  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 80CC8C28  28 1E 00 00 */	cmplwi r30, 0
/* 80CC8C2C  41 82 00 40 */	beq lbl_80CC8C6C
/* 80CC8C30  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80CC8C34  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CC8C38  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80CC8C3C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CC8C40  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80CC8C44  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CC8C48  7F C3 F3 78 */	mr r3, r30
/* 80CC8C4C  4B 4B 89 81 */	bl dCam_getAngleY__FP12camera_class
/* 80CC8C50  7C 7F 1B 78 */	mr r31, r3
/* 80CC8C54  7F C3 F3 78 */	mr r3, r30
/* 80CC8C58  4B 4B 89 99 */	bl dCam_getAngleX__FP12camera_class
/* 80CC8C5C  B0 61 00 20 */	sth r3, 0x20(r1)
/* 80CC8C60  B3 E1 00 22 */	sth r31, 0x22(r1)
/* 80CC8C64  38 00 00 00 */	li r0, 0
/* 80CC8C68  B0 01 00 24 */	sth r0, 0x24(r1)
lbl_80CC8C6C:
/* 80CC8C6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC8C70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC8C74  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80CC8C78  38 80 00 00 */	li r4, 0
/* 80CC8C7C  90 81 00 08 */	stw r4, 8(r1)
/* 80CC8C80  38 00 FF FF */	li r0, -1
/* 80CC8C84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CC8C88  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CC8C8C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CC8C90  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CC8C94  38 80 00 00 */	li r4, 0
/* 80CC8C98  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000874E@ha */
/* 80CC8C9C  38 A5 87 4E */	addi r5, r5, 0x874E /* 0x0000874E@l */
/* 80CC8CA0  38 C1 00 28 */	addi r6, r1, 0x28
/* 80CC8CA4  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80CC8CA8  39 01 00 20 */	addi r8, r1, 0x20
/* 80CC8CAC  39 20 00 00 */	li r9, 0
/* 80CC8CB0  39 40 00 FF */	li r10, 0xff
/* 80CC8CB4  3D 60 80 CD */	lis r11, lit_4114@ha /* 0x80CC91B8@ha */
/* 80CC8CB8  C0 2B 91 B8 */	lfs f1, lit_4114@l(r11)  /* 0x80CC91B8@l */
/* 80CC8CBC  4B 38 3D D5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CC8CC0  90 7D 06 34 */	stw r3, 0x634(r29)
/* 80CC8CC4  39 61 00 50 */	addi r11, r1, 0x50
/* 80CC8CC8  4B 69 95 61 */	bl _restgpr_29
/* 80CC8CCC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CC8CD0  7C 08 03 A6 */	mtlr r0
/* 80CC8CD4  38 21 00 50 */	addi r1, r1, 0x50
/* 80CC8CD8  4E 80 00 20 */	blr 
