lbl_806CDED8:
/* 806CDED8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806CDEDC  7C 08 02 A6 */	mflr r0
/* 806CDEE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806CDEE4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 806CDEE8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 806CDEEC  7C 7E 1B 78 */	mr r30, r3
/* 806CDEF0  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806D1138@ha */
/* 806CDEF4  38 63 11 38 */	addi r3, r3, l_HIO@l /* 0x806D1138@l */
/* 806CDEF8  C0 03 00 08 */	lfs f0, 8(r3)
/* 806CDEFC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806CDF00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806CDF04  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806CDF08  38 60 00 00 */	li r3, 0
/* 806CDF0C  90 61 00 08 */	stw r3, 8(r1)
/* 806CDF10  38 00 FF FF */	li r0, -1
/* 806CDF14  90 01 00 0C */	stw r0, 0xc(r1)
/* 806CDF18  90 61 00 10 */	stw r3, 0x10(r1)
/* 806CDF1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CDF20  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CDF24  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806CDF28  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008684@ha */
/* 806CDF2C  38 84 86 84 */	addi r4, r4, 0x8684 /* 0x00008684@l */
/* 806CDF30  38 BE 07 DC */	addi r5, r30, 0x7dc
/* 806CDF34  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806CDF38  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806CDF3C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806CDF40  39 21 00 20 */	addi r9, r1, 0x20
/* 806CDF44  39 40 00 00 */	li r10, 0
/* 806CDF48  4B 97 F1 21 */	bl setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 806CDF4C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806CDF50  38 80 00 00 */	li r4, 0
/* 806CDF54  90 81 00 08 */	stw r4, 8(r1)
/* 806CDF58  38 00 FF FF */	li r0, -1
/* 806CDF5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806CDF60  90 81 00 10 */	stw r4, 0x10(r1)
/* 806CDF64  90 81 00 14 */	stw r4, 0x14(r1)
/* 806CDF68  90 81 00 18 */	stw r4, 0x18(r1)
/* 806CDF6C  38 80 00 00 */	li r4, 0
/* 806CDF70  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008685@ha */
/* 806CDF74  38 A5 86 85 */	addi r5, r5, 0x8685 /* 0x00008685@l */
/* 806CDF78  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806CDF7C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806CDF80  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806CDF84  39 21 00 20 */	addi r9, r1, 0x20
/* 806CDF88  39 40 00 FF */	li r10, 0xff
/* 806CDF8C  3D 60 80 6D */	lis r11, lit_3909@ha /* 0x806D0E68@ha */
/* 806CDF90  C0 2B 0E 68 */	lfs f1, lit_3909@l(r11)  /* 0x806D0E68@l */
/* 806CDF94  4B 97 EA FD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806CDF98  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 806CDF9C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 806CDFA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806CDFA4  7C 08 03 A6 */	mtlr r0
/* 806CDFA8  38 21 00 40 */	addi r1, r1, 0x40
/* 806CDFAC  4E 80 00 20 */	blr 
