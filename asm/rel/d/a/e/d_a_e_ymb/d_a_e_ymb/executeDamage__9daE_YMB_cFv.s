lbl_8081BEE8:
/* 8081BEE8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8081BEEC  7C 08 02 A6 */	mflr r0
/* 8081BEF0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8081BEF4  39 61 00 50 */	addi r11, r1, 0x50
/* 8081BEF8  4B B4 62 E5 */	bl _savegpr_29
/* 8081BEFC  7C 7D 1B 78 */	mr r29, r3
/* 8081BF00  3C 80 80 82 */	lis r4, lit_3791@ha /* 0x808218AC@ha */
/* 8081BF04  3B E4 18 AC */	addi r31, r4, lit_3791@l /* 0x808218AC@l */
/* 8081BF08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081BF0C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081BF10  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 8081BF14  4B FF B2 ED */	bl setFlyWaitVoice__9daE_YMB_cFv
/* 8081BF18  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 8081BF1C  2C 00 00 05 */	cmpwi r0, 5
/* 8081BF20  41 82 04 70 */	beq lbl_8081C390
/* 8081BF24  40 80 00 1C */	bge lbl_8081BF40
/* 8081BF28  2C 00 00 01 */	cmpwi r0, 1
/* 8081BF2C  41 82 01 0C */	beq lbl_8081C038
/* 8081BF30  40 80 05 A4 */	bge lbl_8081C4D4
/* 8081BF34  2C 00 00 00 */	cmpwi r0, 0
/* 8081BF38  40 80 00 18 */	bge lbl_8081BF50
/* 8081BF3C  48 00 05 98 */	b lbl_8081C4D4
lbl_8081BF40:
/* 8081BF40  2C 00 00 07 */	cmpwi r0, 7
/* 8081BF44  41 82 04 F4 */	beq lbl_8081C438
/* 8081BF48  40 80 05 8C */	bge lbl_8081C4D4
/* 8081BF4C  48 00 04 54 */	b lbl_8081C3A0
lbl_8081BF50:
/* 8081BF50  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081BF54  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 8081BF58  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 8081BF5C  38 A0 00 1F */	li r5, 0x1f
/* 8081BF60  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081BF64  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8081BF68  7D 89 03 A6 */	mtctr r12
/* 8081BF6C  4E 80 04 21 */	bctrl 
/* 8081BF70  7F A3 EB 78 */	mr r3, r29
/* 8081BF74  38 80 00 0A */	li r4, 0xa
/* 8081BF78  38 A0 00 00 */	li r5, 0
/* 8081BF7C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8081BF80  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081BF84  4B FF A9 F9 */	bl setBck__9daE_YMB_cFiUcff
/* 8081BF88  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702B7@ha */
/* 8081BF8C  38 03 02 B7 */	addi r0, r3, 0x02B7 /* 0x000702B7@l */
/* 8081BF90  90 01 00 20 */	stw r0, 0x20(r1)
/* 8081BF94  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081BF98  38 81 00 20 */	addi r4, r1, 0x20
/* 8081BF9C  38 A0 FF FF */	li r5, -1
/* 8081BFA0  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081BFA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8081BFA8  7D 89 03 A6 */	mtctr r12
/* 8081BFAC  4E 80 04 21 */	bctrl 
/* 8081BFB0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702B8@ha */
/* 8081BFB4  38 03 02 B8 */	addi r0, r3, 0x02B8 /* 0x000702B8@l */
/* 8081BFB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8081BFBC  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081BFC0  38 81 00 1C */	addi r4, r1, 0x1c
/* 8081BFC4  38 A0 00 00 */	li r5, 0
/* 8081BFC8  38 C0 FF FF */	li r6, -1
/* 8081BFCC  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081BFD0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8081BFD4  7D 89 03 A6 */	mtctr r12
/* 8081BFD8  4E 80 04 21 */	bctrl 
/* 8081BFDC  38 00 00 01 */	li r0, 1
/* 8081BFE0  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081BFE4  38 00 00 00 */	li r0, 0
/* 8081BFE8  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 8081BFEC  38 00 00 14 */	li r0, 0x14
/* 8081BFF0  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 8081BFF4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081BFF8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8081BFFC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8081C000  7F A3 EB 78 */	mr r3, r29
/* 8081C004  4B FF FC 0D */	bl getNearDownPos__9daE_YMB_cFv
/* 8081C008  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081C00C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8081C010  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8081C014  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8081C018  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8081C01C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081C020  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081C024  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8081C028  38 80 00 03 */	li r4, 3
/* 8081C02C  38 A0 00 1F */	li r5, 0x1f
/* 8081C030  38 C1 00 30 */	addi r6, r1, 0x30
/* 8081C034  4B 85 39 F1 */	bl StartShock__12dVibration_cFii4cXyz
lbl_8081C038:
/* 8081C038  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081C03C  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081C040  90 01 00 18 */	stw r0, 0x18(r1)
/* 8081C044  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081C048  38 81 00 18 */	addi r4, r1, 0x18
/* 8081C04C  38 A0 00 00 */	li r5, 0
/* 8081C050  38 C0 FF FF */	li r6, -1
/* 8081C054  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081C058  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081C05C  7D 89 03 A6 */	mtctr r12
/* 8081C060  4E 80 04 21 */	bctrl 
/* 8081C064  80 1D 08 58 */	lwz r0, 0x858(r29)
/* 8081C068  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081C06C  90 1D 08 58 */	stw r0, 0x858(r29)
/* 8081C070  80 1D 09 90 */	lwz r0, 0x990(r29)
/* 8081C074  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081C078  90 1D 09 90 */	stw r0, 0x990(r29)
/* 8081C07C  80 1D 08 C8 */	lwz r0, 0x8c8(r29)
/* 8081C080  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081C084  90 1D 08 C8 */	stw r0, 0x8c8(r29)
/* 8081C088  80 1D 0A 00 */	lwz r0, 0xa00(r29)
/* 8081C08C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081C090  90 1D 0A 00 */	stw r0, 0xa00(r29)
/* 8081C094  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8081C098  38 80 00 01 */	li r4, 1
/* 8081C09C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8081C0A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8081C0A4  40 82 00 18 */	bne lbl_8081C0BC
/* 8081C0A8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081C0AC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8081C0B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8081C0B4  41 82 00 08 */	beq lbl_8081C0BC
/* 8081C0B8  38 80 00 00 */	li r4, 0
lbl_8081C0BC:
/* 8081C0BC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8081C0C0  41 82 00 1C */	beq lbl_8081C0DC
/* 8081C0C4  7F A3 EB 78 */	mr r3, r29
/* 8081C0C8  38 80 00 11 */	li r4, 0x11
/* 8081C0CC  38 A0 00 02 */	li r5, 2
/* 8081C0D0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8081C0D4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081C0D8  4B FF A8 A5 */	bl setBck__9daE_YMB_cFiUcff
lbl_8081C0DC:
/* 8081C0DC  7F A3 EB 78 */	mr r3, r29
/* 8081C0E0  38 80 00 11 */	li r4, 0x11
/* 8081C0E4  4B FF A9 3D */	bl checkBck__9daE_YMB_cFi
/* 8081C0E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8081C0EC  40 82 00 40 */	bne lbl_8081C12C
/* 8081C0F0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8081C0F4  88 1D 07 11 */	lbz r0, 0x711(r29)
/* 8081C0F8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8081C0FC  3C 80 80 82 */	lis r4, data_80821F38@ha /* 0x80821F38@ha */
/* 8081C100  38 04 1F 38 */	addi r0, r4, data_80821F38@l /* 0x80821F38@l */
/* 8081C104  7C 80 2A 14 */	add r4, r0, r5
/* 8081C108  4B A5 4A FD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8081C10C  3C 63 00 01 */	addis r3, r3, 1
/* 8081C110  38 03 80 00 */	addi r0, r3, -32768
/* 8081C114  7C 04 07 34 */	extsh r4, r0
/* 8081C118  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8081C11C  38 A0 00 08 */	li r5, 8
/* 8081C120  38 C0 02 00 */	li r6, 0x200
/* 8081C124  38 E0 00 80 */	li r7, 0x80
/* 8081C128  4B A5 44 19 */	bl cLib_addCalcAngleS__FPsssss
lbl_8081C12C:
/* 8081C12C  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 8081C130  2C 00 00 00 */	cmpwi r0, 0
/* 8081C134  40 82 00 14 */	bne lbl_8081C148
/* 8081C138  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8081C13C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081C140  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 8081C144  4B A5 45 FD */	bl cLib_chaseF__FPfff
lbl_8081C148:
/* 8081C148  38 7D 06 EA */	addi r3, r29, 0x6ea
/* 8081C14C  38 80 00 00 */	li r4, 0
/* 8081C150  38 A0 00 08 */	li r5, 8
/* 8081C154  38 C0 10 00 */	li r6, 0x1000
/* 8081C158  38 E0 00 10 */	li r7, 0x10
/* 8081C15C  4B A5 43 E5 */	bl cLib_addCalcAngleS__FPsssss
/* 8081C160  C0 3D 06 D8 */	lfs f1, 0x6d8(r29)
/* 8081C164  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081C168  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8081C16C  40 82 00 24 */	bne lbl_8081C190
/* 8081C170  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 8081C174  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8081C178  90 1E 05 78 */	stw r0, 0x578(r30)
/* 8081C17C  7F A3 EB 78 */	mr r3, r29
/* 8081C180  38 80 00 01 */	li r4, 1
/* 8081C184  38 A0 00 01 */	li r5, 1
/* 8081C188  4B FF A8 F5 */	bl setActionMode__9daE_YMB_cFii
/* 8081C18C  48 00 03 48 */	b lbl_8081C4D4
lbl_8081C190:
/* 8081C190  7F C3 F3 78 */	mr r3, r30
/* 8081C194  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8081C198  38 04 80 00 */	addi r0, r4, -32768
/* 8081C19C  7C 04 07 34 */	extsh r4, r0
/* 8081C1A0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8081C1A4  81 8C 01 E4 */	lwz r12, 0x1e4(r12)
/* 8081C1A8  7D 89 03 A6 */	mtctr r12
/* 8081C1AC  4E 80 04 21 */	bctrl 
/* 8081C1B0  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8081C1B4  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8081C1B8  41 82 01 7C */	beq lbl_8081C334
/* 8081C1BC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081C1C0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8081C1C4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8081C1C8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8081C1CC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8081C1D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081C1D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081C1D8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8081C1DC  38 80 00 03 */	li r4, 3
/* 8081C1E0  38 A0 00 1F */	li r5, 0x1f
/* 8081C1E4  38 C1 00 24 */	addi r6, r1, 0x24
/* 8081C1E8  4B 85 38 3D */	bl StartShock__12dVibration_cFii4cXyz
/* 8081C1EC  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8081C1F0  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8081C1F4  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8081C1F8  80 7D 06 F0 */	lwz r3, 0x6f0(r29)
/* 8081C1FC  38 03 00 01 */	addi r0, r3, 1
/* 8081C200  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 8081C204  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 8081C208  2C 00 00 05 */	cmpwi r0, 5
/* 8081C20C  41 80 00 90 */	blt lbl_8081C29C
/* 8081C210  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 8081C214  38 03 00 01 */	addi r0, r3, 1
/* 8081C218  90 1D 06 EC */	stw r0, 0x6ec(r29)
/* 8081C21C  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 8081C220  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8081C224  90 1E 05 78 */	stw r0, 0x578(r30)
/* 8081C228  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081C22C  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 8081C230  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 8081C234  38 A0 00 20 */	li r5, 0x20
/* 8081C238  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081C23C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8081C240  7D 89 03 A6 */	mtctr r12
/* 8081C244  4E 80 04 21 */	bctrl 
/* 8081C248  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702B7@ha */
/* 8081C24C  38 03 02 B7 */	addi r0, r3, 0x02B7 /* 0x000702B7@l */
/* 8081C250  90 01 00 14 */	stw r0, 0x14(r1)
/* 8081C254  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081C258  38 81 00 14 */	addi r4, r1, 0x14
/* 8081C25C  38 A0 FF FF */	li r5, -1
/* 8081C260  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081C264  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8081C268  7D 89 03 A6 */	mtctr r12
/* 8081C26C  4E 80 04 21 */	bctrl 
/* 8081C270  80 1D 06 EC */	lwz r0, 0x6ec(r29)
/* 8081C274  2C 00 00 03 */	cmpwi r0, 3
/* 8081C278  41 80 00 18 */	blt lbl_8081C290
/* 8081C27C  7F A3 EB 78 */	mr r3, r29
/* 8081C280  38 80 00 08 */	li r4, 8
/* 8081C284  38 A0 00 00 */	li r5, 0
/* 8081C288  4B FF A7 F5 */	bl setActionMode__9daE_YMB_cFii
/* 8081C28C  48 00 02 48 */	b lbl_8081C4D4
lbl_8081C290:
/* 8081C290  38 00 00 05 */	li r0, 5
/* 8081C294  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081C298  48 00 02 3C */	b lbl_8081C4D4
lbl_8081C29C:
/* 8081C29C  7F A3 EB 78 */	mr r3, r29
/* 8081C2A0  38 80 00 0A */	li r4, 0xa
/* 8081C2A4  38 A0 00 00 */	li r5, 0
/* 8081C2A8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8081C2AC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081C2B0  4B FF A6 CD */	bl setBck__9daE_YMB_cFiUcff
/* 8081C2B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702B7@ha */
/* 8081C2B8  38 03 02 B7 */	addi r0, r3, 0x02B7 /* 0x000702B7@l */
/* 8081C2BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8081C2C0  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081C2C4  38 81 00 10 */	addi r4, r1, 0x10
/* 8081C2C8  38 A0 FF FF */	li r5, -1
/* 8081C2CC  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081C2D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8081C2D4  7D 89 03 A6 */	mtctr r12
/* 8081C2D8  4E 80 04 21 */	bctrl 
/* 8081C2DC  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8081C2E0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8081C2E4  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081C2E8  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 8081C2EC  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 8081C2F0  38 A0 00 1E */	li r5, 0x1e
/* 8081C2F4  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081C2F8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8081C2FC  7D 89 03 A6 */	mtctr r12
/* 8081C300  4E 80 04 21 */	bctrl 
/* 8081C304  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702B8@ha */
/* 8081C308  38 03 02 B8 */	addi r0, r3, 0x02B8 /* 0x000702B8@l */
/* 8081C30C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8081C310  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081C314  38 81 00 0C */	addi r4, r1, 0xc
/* 8081C318  38 A0 00 00 */	li r5, 0
/* 8081C31C  38 C0 FF FF */	li r6, -1
/* 8081C320  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081C324  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8081C328  7D 89 03 A6 */	mtctr r12
/* 8081C32C  4E 80 04 21 */	bctrl 
/* 8081C330  48 00 00 2C */	b lbl_8081C35C
lbl_8081C334:
/* 8081C334  88 1D 07 20 */	lbz r0, 0x720(r29)
/* 8081C338  28 00 00 16 */	cmplwi r0, 0x16
/* 8081C33C  40 82 00 14 */	bne lbl_8081C350
/* 8081C340  7F A3 EB 78 */	mr r3, r29
/* 8081C344  38 80 00 01 */	li r4, 1
/* 8081C348  4B FF B7 A5 */	bl setDamageEffect__9daE_YMB_cFi
/* 8081C34C  48 00 00 10 */	b lbl_8081C35C
lbl_8081C350:
/* 8081C350  7F A3 EB 78 */	mr r3, r29
/* 8081C354  38 80 00 00 */	li r4, 0
/* 8081C358  4B FF B7 95 */	bl setDamageEffect__9daE_YMB_cFi
lbl_8081C35C:
/* 8081C35C  7F C3 F3 78 */	mr r3, r30
/* 8081C360  7F A4 EB 78 */	mr r4, r29
/* 8081C364  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8081C368  81 8C 01 E0 */	lwz r12, 0x1e0(r12)
/* 8081C36C  7D 89 03 A6 */	mtctr r12
/* 8081C370  4E 80 04 21 */	bctrl 
/* 8081C374  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8081C378  40 82 01 5C */	bne lbl_8081C4D4
/* 8081C37C  7F A3 EB 78 */	mr r3, r29
/* 8081C380  38 80 00 01 */	li r4, 1
/* 8081C384  38 A0 00 01 */	li r5, 1
/* 8081C388  4B FF A6 F5 */	bl setActionMode__9daE_YMB_cFii
/* 8081C38C  48 00 01 48 */	b lbl_8081C4D4
lbl_8081C390:
/* 8081C390  38 00 00 06 */	li r0, 6
/* 8081C394  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081C398  7F A3 EB 78 */	mr r3, r29
/* 8081C39C  48 00 08 79 */	bl initDownToWater__9daE_YMB_cFv
lbl_8081C3A0:
/* 8081C3A0  7F A3 EB 78 */	mr r3, r29
/* 8081C3A4  48 00 09 5D */	bl calcDownToWater__9daE_YMB_cFv
/* 8081C3A8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8081C3AC  C0 1D 06 CC */	lfs f0, 0x6cc(r29)
/* 8081C3B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081C3B4  40 80 00 44 */	bge lbl_8081C3F8
/* 8081C3B8  88 1D 07 14 */	lbz r0, 0x714(r29)
/* 8081C3BC  28 00 00 00 */	cmplwi r0, 0
/* 8081C3C0  40 82 00 38 */	bne lbl_8081C3F8
/* 8081C3C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029D@ha */
/* 8081C3C8  38 03 02 9D */	addi r0, r3, 0x029D /* 0x0007029D@l */
/* 8081C3CC  90 01 00 08 */	stw r0, 8(r1)
/* 8081C3D0  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081C3D4  38 81 00 08 */	addi r4, r1, 8
/* 8081C3D8  38 A0 00 00 */	li r5, 0
/* 8081C3DC  38 C0 FF FF */	li r6, -1
/* 8081C3E0  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081C3E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8081C3E8  7D 89 03 A6 */	mtctr r12
/* 8081C3EC  4E 80 04 21 */	bctrl 
/* 8081C3F0  38 00 00 01 */	li r0, 1
/* 8081C3F4  98 1D 07 14 */	stb r0, 0x714(r29)
lbl_8081C3F8:
/* 8081C3F8  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8081C3FC  C0 3D 06 CC */	lfs f1, 0x6cc(r29)
/* 8081C400  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8081C404  EC 01 00 28 */	fsubs f0, f1, f0
/* 8081C408  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8081C40C  40 80 00 C8 */	bge lbl_8081C4D4
/* 8081C410  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8081C414  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8081C418  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081C41C  40 80 00 08 */	bge lbl_8081C424
/* 8081C420  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8081C424:
/* 8081C424  38 00 00 07 */	li r0, 7
/* 8081C428  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081C42C  38 00 00 0A */	li r0, 0xa
/* 8081C430  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 8081C434  48 00 00 A0 */	b lbl_8081C4D4
lbl_8081C438:
/* 8081C438  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8081C43C  38 80 00 01 */	li r4, 1
/* 8081C440  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8081C444  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8081C448  40 82 00 18 */	bne lbl_8081C460
/* 8081C44C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081C450  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8081C454  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8081C458  41 82 00 08 */	beq lbl_8081C460
/* 8081C45C  38 80 00 00 */	li r4, 0
lbl_8081C460:
/* 8081C460  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8081C464  41 82 00 1C */	beq lbl_8081C480
/* 8081C468  7F A3 EB 78 */	mr r3, r29
/* 8081C46C  38 80 00 10 */	li r4, 0x10
/* 8081C470  38 A0 00 02 */	li r5, 2
/* 8081C474  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8081C478  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081C47C  4B FF A5 01 */	bl setBck__9daE_YMB_cFiUcff
lbl_8081C480:
/* 8081C480  38 7D 06 EA */	addi r3, r29, 0x6ea
/* 8081C484  38 80 80 00 */	li r4, -32768
/* 8081C488  38 A0 00 08 */	li r5, 8
/* 8081C48C  38 C0 10 00 */	li r6, 0x1000
/* 8081C490  38 E0 00 10 */	li r7, 0x10
/* 8081C494  4B A5 40 AD */	bl cLib_addCalcAngleS__FPsssss
/* 8081C498  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8081C49C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081C4A0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081C4A4  4B A5 42 9D */	bl cLib_chaseF__FPfff
/* 8081C4A8  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8081C4AC  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8081C4B0  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 8081C4B4  4B A5 42 8D */	bl cLib_chaseF__FPfff
/* 8081C4B8  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 8081C4BC  2C 00 00 00 */	cmpwi r0, 0
/* 8081C4C0  40 82 00 14 */	bne lbl_8081C4D4
/* 8081C4C4  7F A3 EB 78 */	mr r3, r29
/* 8081C4C8  38 80 00 05 */	li r4, 5
/* 8081C4CC  38 A0 00 00 */	li r5, 0
/* 8081C4D0  4B FF A5 AD */	bl setActionMode__9daE_YMB_cFii
lbl_8081C4D4:
/* 8081C4D4  39 61 00 50 */	addi r11, r1, 0x50
/* 8081C4D8  4B B4 5D 51 */	bl _restgpr_29
/* 8081C4DC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8081C4E0  7C 08 03 A6 */	mtlr r0
/* 8081C4E4  38 21 00 50 */	addi r1, r1, 0x50
/* 8081C4E8  4E 80 00 20 */	blr 
