lbl_80D1417C:
/* 80D1417C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D14180  7C 08 02 A6 */	mflr r0
/* 80D14184  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D14188  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D1418C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D14190  7C 9E 23 78 */	mr r30, r4
/* 80D14194  3C 60 80 D1 */	lis r3, lit_3806@ha /* 0x80D155E8@ha */
/* 80D14198  3B E3 55 E8 */	addi r31, r3, lit_3806@l /* 0x80D155E8@l */
/* 80D1419C  38 7E 00 20 */	addi r3, r30, 0x20
/* 80D141A0  38 9E 00 26 */	addi r4, r30, 0x26
/* 80D141A4  4B 55 32 B9 */	bl __apl__5csXyzFR5csXyz
/* 80D141A8  38 7E 00 08 */	addi r3, r30, 8
/* 80D141AC  38 9E 00 14 */	addi r4, r30, 0x14
/* 80D141B0  7C 65 1B 78 */	mr r5, r3
/* 80D141B4  4B 63 2E DD */	bl PSVECAdd
/* 80D141B8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80D141BC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80D141C0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D141C4  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80D141C8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80D141CC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80D141D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D141D4  40 81 00 08 */	ble lbl_80D141DC
/* 80D141D8  D0 1E 00 18 */	stfs f0, 0x18(r30)
lbl_80D141DC:
/* 80D141DC  88 1E 00 38 */	lbz r0, 0x38(r30)
/* 80D141E0  28 00 00 00 */	cmplwi r0, 0
/* 80D141E4  40 82 00 0C */	bne lbl_80D141F0
/* 80D141E8  38 00 00 00 */	li r0, 0
/* 80D141EC  98 1E 00 34 */	stb r0, 0x34(r30)
lbl_80D141F0:
/* 80D141F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D141F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D141F8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D141FC  38 00 00 FF */	li r0, 0xff
/* 80D14200  90 01 00 08 */	stw r0, 8(r1)
/* 80D14204  38 80 00 00 */	li r4, 0
/* 80D14208  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D1420C  38 00 FF FF */	li r0, -1
/* 80D14210  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D14214  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D14218  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D1421C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D14220  80 9E 00 74 */	lwz r4, 0x74(r30)
/* 80D14224  38 A0 00 00 */	li r5, 0
/* 80D14228  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008343@ha */
/* 80D1422C  38 C6 83 43 */	addi r6, r6, 0x8343 /* 0x00008343@l */
/* 80D14230  38 FE 00 08 */	addi r7, r30, 8
/* 80D14234  39 00 00 00 */	li r8, 0
/* 80D14238  39 20 00 00 */	li r9, 0
/* 80D1423C  39 40 00 00 */	li r10, 0
/* 80D14240  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D14244  4B 33 92 89 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D14248  90 7E 00 74 */	stw r3, 0x74(r30)
/* 80D1424C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D14250  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D14254  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D14258  7C 08 03 A6 */	mtlr r0
/* 80D1425C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D14260  4E 80 00 20 */	blr 
