lbl_80B3EF10:
/* 80B3EF10  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B3EF14  7C 08 02 A6 */	mflr r0
/* 80B3EF18  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B3EF1C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B3EF20  4B 82 32 BD */	bl _savegpr_29
/* 80B3EF24  7C 7D 1B 78 */	mr r29, r3
/* 80B3EF28  3C 80 80 B4 */	lis r4, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B3EF2C  3B E4 16 DC */	addi r31, r4, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B3EF30  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80B3EF34  83 C4 00 08 */	lwz r30, 8(r4)
/* 80B3EF38  88 03 0E 9B */	lbz r0, 0xe9b(r3)
/* 80B3EF3C  28 00 00 00 */	cmplwi r0, 0
/* 80B3EF40  40 82 06 B4 */	bne lbl_80B3F5F4
/* 80B3EF44  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80B3EF48  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3EF4C  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3EF50  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3EF54  38 A0 00 27 */	li r5, 0x27
/* 80B3EF58  4B 61 3B D5 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3EF5C  7C 1E 18 40 */	cmplw r30, r3
/* 80B3EF60  40 82 00 44 */	bne lbl_80B3EFA4
/* 80B3EF64  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3EF68  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3EF6C  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 80B3EF70  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3EF74  40 82 0D 5C */	bne lbl_80B3FCD0
/* 80B3EF78  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050093@ha */
/* 80B3EF7C  38 03 00 93 */	addi r0, r3, 0x0093 /* 0x00050093@l */
/* 80B3EF80  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80B3EF84  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3EF88  38 81 00 8C */	addi r4, r1, 0x8c
/* 80B3EF8C  38 A0 FF FF */	li r5, -1
/* 80B3EF90  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3EF94  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3EF98  7D 89 03 A6 */	mtctr r12
/* 80B3EF9C  4E 80 04 21 */	bctrl 
/* 80B3EFA0  48 00 0D 30 */	b lbl_80B3FCD0
lbl_80B3EFA4:
/* 80B3EFA4  7F A3 EB 78 */	mr r3, r29
/* 80B3EFA8  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3EFAC  54 00 10 3A */	slwi r0, r0, 2
/* 80B3EFB0  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3EFB4  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3EFB8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3EFBC  38 A0 00 29 */	li r5, 0x29
/* 80B3EFC0  4B 61 3B 6D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3EFC4  7C 1E 18 40 */	cmplw r30, r3
/* 80B3EFC8  40 82 00 7C */	bne lbl_80B3F044
/* 80B3EFCC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3EFD0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3EFD4  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 80B3EFD8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3EFDC  40 82 00 30 */	bne lbl_80B3F00C
/* 80B3EFE0  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050093@ha */
/* 80B3EFE4  38 03 00 93 */	addi r0, r3, 0x0093 /* 0x00050093@l */
/* 80B3EFE8  90 01 00 88 */	stw r0, 0x88(r1)
/* 80B3EFEC  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3EFF0  38 81 00 88 */	addi r4, r1, 0x88
/* 80B3EFF4  38 A0 FF FF */	li r5, -1
/* 80B3EFF8  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3EFFC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F000  7D 89 03 A6 */	mtctr r12
/* 80B3F004  4E 80 04 21 */	bctrl 
/* 80B3F008  48 00 0C C8 */	b lbl_80B3FCD0
lbl_80B3F00C:
/* 80B3F00C  C0 1F 05 D4 */	lfs f0, 0x5d4(r31)
/* 80B3F010  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F014  40 82 0C BC */	bne lbl_80B3FCD0
/* 80B3F018  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050096@ha */
/* 80B3F01C  38 03 00 96 */	addi r0, r3, 0x0096 /* 0x00050096@l */
/* 80B3F020  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B3F024  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F028  38 81 00 84 */	addi r4, r1, 0x84
/* 80B3F02C  38 A0 FF FF */	li r5, -1
/* 80B3F030  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F034  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F038  7D 89 03 A6 */	mtctr r12
/* 80B3F03C  4E 80 04 21 */	bctrl 
/* 80B3F040  48 00 0C 90 */	b lbl_80B3FCD0
lbl_80B3F044:
/* 80B3F044  7F A3 EB 78 */	mr r3, r29
/* 80B3F048  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F04C  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F050  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F054  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F058  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F05C  38 A0 00 28 */	li r5, 0x28
/* 80B3F060  4B 61 3A CD */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F064  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F068  40 82 00 44 */	bne lbl_80B3F0AC
/* 80B3F06C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F070  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F074  C0 1F 05 90 */	lfs f0, 0x590(r31)
/* 80B3F078  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F07C  40 82 0C 54 */	bne lbl_80B3FCD0
/* 80B3F080  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050094@ha */
/* 80B3F084  38 03 00 94 */	addi r0, r3, 0x0094 /* 0x00050094@l */
/* 80B3F088  90 01 00 80 */	stw r0, 0x80(r1)
/* 80B3F08C  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F090  38 81 00 80 */	addi r4, r1, 0x80
/* 80B3F094  38 A0 FF FF */	li r5, -1
/* 80B3F098  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F09C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F0A0  7D 89 03 A6 */	mtctr r12
/* 80B3F0A4  4E 80 04 21 */	bctrl 
/* 80B3F0A8  48 00 0C 28 */	b lbl_80B3FCD0
lbl_80B3F0AC:
/* 80B3F0AC  7F A3 EB 78 */	mr r3, r29
/* 80B3F0B0  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F0B4  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F0B8  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F0BC  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F0C0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F0C4  38 A0 00 2A */	li r5, 0x2a
/* 80B3F0C8  4B 61 3A 65 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F0CC  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F0D0  40 82 00 44 */	bne lbl_80B3F114
/* 80B3F0D4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F0D8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F0DC  C0 1F 05 90 */	lfs f0, 0x590(r31)
/* 80B3F0E0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F0E4  40 82 0B EC */	bne lbl_80B3FCD0
/* 80B3F0E8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050094@ha */
/* 80B3F0EC  38 03 00 94 */	addi r0, r3, 0x0094 /* 0x00050094@l */
/* 80B3F0F0  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80B3F0F4  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F0F8  38 81 00 7C */	addi r4, r1, 0x7c
/* 80B3F0FC  38 A0 FF FF */	li r5, -1
/* 80B3F100  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F104  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F108  7D 89 03 A6 */	mtctr r12
/* 80B3F10C  4E 80 04 21 */	bctrl 
/* 80B3F110  48 00 0B C0 */	b lbl_80B3FCD0
lbl_80B3F114:
/* 80B3F114  7F A3 EB 78 */	mr r3, r29
/* 80B3F118  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F11C  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F120  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F124  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F128  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F12C  38 A0 00 30 */	li r5, 0x30
/* 80B3F130  4B 61 39 FD */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F134  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F138  40 82 00 44 */	bne lbl_80B3F17C
/* 80B3F13C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F140  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F144  C0 1F 06 80 */	lfs f0, 0x680(r31)
/* 80B3F148  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F14C  40 82 0B 84 */	bne lbl_80B3FCD0
/* 80B3F150  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050095@ha */
/* 80B3F154  38 03 00 95 */	addi r0, r3, 0x0095 /* 0x00050095@l */
/* 80B3F158  90 01 00 78 */	stw r0, 0x78(r1)
/* 80B3F15C  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F160  38 81 00 78 */	addi r4, r1, 0x78
/* 80B3F164  38 A0 FF FF */	li r5, -1
/* 80B3F168  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F16C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F170  7D 89 03 A6 */	mtctr r12
/* 80B3F174  4E 80 04 21 */	bctrl 
/* 80B3F178  48 00 0B 58 */	b lbl_80B3FCD0
lbl_80B3F17C:
/* 80B3F17C  7F A3 EB 78 */	mr r3, r29
/* 80B3F180  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F184  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F188  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F18C  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F190  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F194  38 A0 00 31 */	li r5, 0x31
/* 80B3F198  4B 61 39 95 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F19C  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F1A0  40 82 00 44 */	bne lbl_80B3F1E4
/* 80B3F1A4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F1A8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F1AC  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 80B3F1B0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F1B4  40 82 0B 1C */	bne lbl_80B3FCD0
/* 80B3F1B8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050095@ha */
/* 80B3F1BC  38 03 00 95 */	addi r0, r3, 0x0095 /* 0x00050095@l */
/* 80B3F1C0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B3F1C4  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F1C8  38 81 00 74 */	addi r4, r1, 0x74
/* 80B3F1CC  38 A0 FF FF */	li r5, -1
/* 80B3F1D0  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F1D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F1D8  7D 89 03 A6 */	mtctr r12
/* 80B3F1DC  4E 80 04 21 */	bctrl 
/* 80B3F1E0  48 00 0A F0 */	b lbl_80B3FCD0
lbl_80B3F1E4:
/* 80B3F1E4  7F A3 EB 78 */	mr r3, r29
/* 80B3F1E8  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F1EC  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F1F0  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F1F4  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F1F8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F1FC  38 A0 00 32 */	li r5, 0x32
/* 80B3F200  4B 61 39 2D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F204  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F208  40 82 00 44 */	bne lbl_80B3F24C
/* 80B3F20C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F210  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F214  C0 1F 06 80 */	lfs f0, 0x680(r31)
/* 80B3F218  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F21C  40 82 0A B4 */	bne lbl_80B3FCD0
/* 80B3F220  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050095@ha */
/* 80B3F224  38 03 00 95 */	addi r0, r3, 0x0095 /* 0x00050095@l */
/* 80B3F228  90 01 00 70 */	stw r0, 0x70(r1)
/* 80B3F22C  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F230  38 81 00 70 */	addi r4, r1, 0x70
/* 80B3F234  38 A0 FF FF */	li r5, -1
/* 80B3F238  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F23C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F240  7D 89 03 A6 */	mtctr r12
/* 80B3F244  4E 80 04 21 */	bctrl 
/* 80B3F248  48 00 0A 88 */	b lbl_80B3FCD0
lbl_80B3F24C:
/* 80B3F24C  7F A3 EB 78 */	mr r3, r29
/* 80B3F250  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F254  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F258  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F25C  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F260  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F264  38 A0 00 33 */	li r5, 0x33
/* 80B3F268  4B 61 38 C5 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F26C  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F270  40 82 00 44 */	bne lbl_80B3F2B4
/* 80B3F274  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F278  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F27C  C0 1F 06 84 */	lfs f0, 0x684(r31)
/* 80B3F280  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F284  40 82 0A 4C */	bne lbl_80B3FCD0
/* 80B3F288  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050096@ha */
/* 80B3F28C  38 03 00 96 */	addi r0, r3, 0x0096 /* 0x00050096@l */
/* 80B3F290  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80B3F294  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F298  38 81 00 6C */	addi r4, r1, 0x6c
/* 80B3F29C  38 A0 FF FF */	li r5, -1
/* 80B3F2A0  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F2A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F2A8  7D 89 03 A6 */	mtctr r12
/* 80B3F2AC  4E 80 04 21 */	bctrl 
/* 80B3F2B0  48 00 0A 20 */	b lbl_80B3FCD0
lbl_80B3F2B4:
/* 80B3F2B4  7F A3 EB 78 */	mr r3, r29
/* 80B3F2B8  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F2BC  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F2C0  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F2C4  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F2C8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F2CC  38 A0 00 36 */	li r5, 0x36
/* 80B3F2D0  4B 61 38 5D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F2D4  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F2D8  40 82 00 44 */	bne lbl_80B3F31C
/* 80B3F2DC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F2E0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F2E4  C0 1F 06 84 */	lfs f0, 0x684(r31)
/* 80B3F2E8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F2EC  40 82 09 E4 */	bne lbl_80B3FCD0
/* 80B3F2F0  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050096@ha */
/* 80B3F2F4  38 03 00 96 */	addi r0, r3, 0x0096 /* 0x00050096@l */
/* 80B3F2F8  90 01 00 68 */	stw r0, 0x68(r1)
/* 80B3F2FC  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F300  38 81 00 68 */	addi r4, r1, 0x68
/* 80B3F304  38 A0 FF FF */	li r5, -1
/* 80B3F308  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F30C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F310  7D 89 03 A6 */	mtctr r12
/* 80B3F314  4E 80 04 21 */	bctrl 
/* 80B3F318  48 00 09 B8 */	b lbl_80B3FCD0
lbl_80B3F31C:
/* 80B3F31C  7F A3 EB 78 */	mr r3, r29
/* 80B3F320  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F324  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F328  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F32C  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F330  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F334  38 A0 00 2B */	li r5, 0x2b
/* 80B3F338  4B 61 37 F5 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F33C  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F340  40 82 00 44 */	bne lbl_80B3F384
/* 80B3F344  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F348  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F34C  C0 1F 05 F4 */	lfs f0, 0x5f4(r31)
/* 80B3F350  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F354  40 82 09 7C */	bne lbl_80B3FCD0
/* 80B3F358  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050097@ha */
/* 80B3F35C  38 03 00 97 */	addi r0, r3, 0x0097 /* 0x00050097@l */
/* 80B3F360  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B3F364  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F368  38 81 00 64 */	addi r4, r1, 0x64
/* 80B3F36C  38 A0 FF FF */	li r5, -1
/* 80B3F370  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F374  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F378  7D 89 03 A6 */	mtctr r12
/* 80B3F37C  4E 80 04 21 */	bctrl 
/* 80B3F380  48 00 09 50 */	b lbl_80B3FCD0
lbl_80B3F384:
/* 80B3F384  7F A3 EB 78 */	mr r3, r29
/* 80B3F388  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F38C  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F390  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F394  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F398  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F39C  38 A0 00 35 */	li r5, 0x35
/* 80B3F3A0  4B 61 37 8D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F3A4  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F3A8  40 82 00 44 */	bne lbl_80B3F3EC
/* 80B3F3AC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F3B0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F3B4  C0 1F 05 F4 */	lfs f0, 0x5f4(r31)
/* 80B3F3B8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F3BC  40 82 09 14 */	bne lbl_80B3FCD0
/* 80B3F3C0  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050098@ha */
/* 80B3F3C4  38 03 00 98 */	addi r0, r3, 0x0098 /* 0x00050098@l */
/* 80B3F3C8  90 01 00 60 */	stw r0, 0x60(r1)
/* 80B3F3CC  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F3D0  38 81 00 60 */	addi r4, r1, 0x60
/* 80B3F3D4  38 A0 FF FF */	li r5, -1
/* 80B3F3D8  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F3DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F3E0  7D 89 03 A6 */	mtctr r12
/* 80B3F3E4  4E 80 04 21 */	bctrl 
/* 80B3F3E8  48 00 08 E8 */	b lbl_80B3FCD0
lbl_80B3F3EC:
/* 80B3F3EC  7F A3 EB 78 */	mr r3, r29
/* 80B3F3F0  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F3F4  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F3F8  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F3FC  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F400  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F404  38 A0 00 39 */	li r5, 0x39
/* 80B3F408  4B 61 37 25 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F40C  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F410  40 82 00 44 */	bne lbl_80B3F454
/* 80B3F414  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F418  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F41C  C0 1F 06 48 */	lfs f0, 0x648(r31)
/* 80B3F420  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F424  40 82 08 AC */	bne lbl_80B3FCD0
/* 80B3F428  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050099@ha */
/* 80B3F42C  38 03 00 99 */	addi r0, r3, 0x0099 /* 0x00050099@l */
/* 80B3F430  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80B3F434  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F438  38 81 00 5C */	addi r4, r1, 0x5c
/* 80B3F43C  38 A0 FF FF */	li r5, -1
/* 80B3F440  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F444  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F448  7D 89 03 A6 */	mtctr r12
/* 80B3F44C  4E 80 04 21 */	bctrl 
/* 80B3F450  48 00 08 80 */	b lbl_80B3FCD0
lbl_80B3F454:
/* 80B3F454  7F A3 EB 78 */	mr r3, r29
/* 80B3F458  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F45C  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F460  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F464  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F468  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F46C  38 A0 00 23 */	li r5, 0x23
/* 80B3F470  4B 61 36 BD */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F474  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F478  40 82 00 44 */	bne lbl_80B3F4BC
/* 80B3F47C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F480  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F484  C0 1F 06 18 */	lfs f0, 0x618(r31)
/* 80B3F488  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F48C  40 82 08 44 */	bne lbl_80B3FCD0
/* 80B3F490  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005009A@ha */
/* 80B3F494  38 03 00 9A */	addi r0, r3, 0x009A /* 0x0005009A@l */
/* 80B3F498  90 01 00 58 */	stw r0, 0x58(r1)
/* 80B3F49C  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F4A0  38 81 00 58 */	addi r4, r1, 0x58
/* 80B3F4A4  38 A0 FF FF */	li r5, -1
/* 80B3F4A8  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F4AC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F4B0  7D 89 03 A6 */	mtctr r12
/* 80B3F4B4  4E 80 04 21 */	bctrl 
/* 80B3F4B8  48 00 08 18 */	b lbl_80B3FCD0
lbl_80B3F4BC:
/* 80B3F4BC  7F A3 EB 78 */	mr r3, r29
/* 80B3F4C0  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F4C4  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F4C8  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F4CC  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F4D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F4D4  38 A0 00 24 */	li r5, 0x24
/* 80B3F4D8  4B 61 36 55 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F4DC  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F4E0  40 82 00 44 */	bne lbl_80B3F524
/* 80B3F4E4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F4E8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F4EC  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 80B3F4F0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F4F4  40 82 07 DC */	bne lbl_80B3FCD0
/* 80B3F4F8  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005009A@ha */
/* 80B3F4FC  38 03 00 9A */	addi r0, r3, 0x009A /* 0x0005009A@l */
/* 80B3F500  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B3F504  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F508  38 81 00 54 */	addi r4, r1, 0x54
/* 80B3F50C  38 A0 FF FF */	li r5, -1
/* 80B3F510  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F514  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F518  7D 89 03 A6 */	mtctr r12
/* 80B3F51C  4E 80 04 21 */	bctrl 
/* 80B3F520  48 00 07 B0 */	b lbl_80B3FCD0
lbl_80B3F524:
/* 80B3F524  7F A3 EB 78 */	mr r3, r29
/* 80B3F528  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F52C  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F530  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F534  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F538  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F53C  38 A0 00 2D */	li r5, 0x2d
/* 80B3F540  4B 61 35 ED */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F544  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F548  40 82 00 44 */	bne lbl_80B3F58C
/* 80B3F54C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F550  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F554  C0 1F 06 88 */	lfs f0, 0x688(r31)
/* 80B3F558  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F55C  40 82 07 74 */	bne lbl_80B3FCD0
/* 80B3F560  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C1@ha */
/* 80B3F564  38 03 00 C1 */	addi r0, r3, 0x00C1 /* 0x000500C1@l */
/* 80B3F568  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B3F56C  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F570  38 81 00 50 */	addi r4, r1, 0x50
/* 80B3F574  38 A0 FF FF */	li r5, -1
/* 80B3F578  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F57C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F580  7D 89 03 A6 */	mtctr r12
/* 80B3F584  4E 80 04 21 */	bctrl 
/* 80B3F588  48 00 07 48 */	b lbl_80B3FCD0
lbl_80B3F58C:
/* 80B3F58C  7F A3 EB 78 */	mr r3, r29
/* 80B3F590  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F594  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F598  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F59C  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F5A0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F5A4  38 A0 00 26 */	li r5, 0x26
/* 80B3F5A8  4B 61 35 85 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F5AC  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F5B0  40 82 07 20 */	bne lbl_80B3FCD0
/* 80B3F5B4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F5B8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F5BC  C0 1F 05 C8 */	lfs f0, 0x5c8(r31)
/* 80B3F5C0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F5C4  40 82 07 0C */	bne lbl_80B3FCD0
/* 80B3F5C8  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C2@ha */
/* 80B3F5CC  38 03 00 C2 */	addi r0, r3, 0x00C2 /* 0x000500C2@l */
/* 80B3F5D0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80B3F5D4  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F5D8  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B3F5DC  38 A0 FF FF */	li r5, -1
/* 80B3F5E0  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F5E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F5E8  7D 89 03 A6 */	mtctr r12
/* 80B3F5EC  4E 80 04 21 */	bctrl 
/* 80B3F5F0  48 00 06 E0 */	b lbl_80B3FCD0
lbl_80B3F5F4:
/* 80B3F5F4  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80B3F5F8  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F5FC  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F600  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F604  38 A0 00 31 */	li r5, 0x31
/* 80B3F608  4B 61 35 25 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F60C  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F610  40 82 00 44 */	bne lbl_80B3F654
/* 80B3F614  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F618  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F61C  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 80B3F620  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F624  40 82 06 AC */	bne lbl_80B3FCD0
/* 80B3F628  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C3@ha */
/* 80B3F62C  38 03 00 C3 */	addi r0, r3, 0x00C3 /* 0x000500C3@l */
/* 80B3F630  90 01 00 48 */	stw r0, 0x48(r1)
/* 80B3F634  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F638  38 81 00 48 */	addi r4, r1, 0x48
/* 80B3F63C  38 A0 FF FF */	li r5, -1
/* 80B3F640  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F644  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F648  7D 89 03 A6 */	mtctr r12
/* 80B3F64C  4E 80 04 21 */	bctrl 
/* 80B3F650  48 00 06 80 */	b lbl_80B3FCD0
lbl_80B3F654:
/* 80B3F654  7F A3 EB 78 */	mr r3, r29
/* 80B3F658  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F65C  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F660  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F664  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F668  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F66C  38 A0 00 2C */	li r5, 0x2c
/* 80B3F670  4B 61 34 BD */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F674  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F678  40 82 00 44 */	bne lbl_80B3F6BC
/* 80B3F67C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F680  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F684  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 80B3F688  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F68C  40 82 06 44 */	bne lbl_80B3FCD0
/* 80B3F690  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C4@ha */
/* 80B3F694  38 03 00 C4 */	addi r0, r3, 0x00C4 /* 0x000500C4@l */
/* 80B3F698  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B3F69C  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F6A0  38 81 00 44 */	addi r4, r1, 0x44
/* 80B3F6A4  38 A0 FF FF */	li r5, -1
/* 80B3F6A8  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F6AC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F6B0  7D 89 03 A6 */	mtctr r12
/* 80B3F6B4  4E 80 04 21 */	bctrl 
/* 80B3F6B8  48 00 06 18 */	b lbl_80B3FCD0
lbl_80B3F6BC:
/* 80B3F6BC  7F A3 EB 78 */	mr r3, r29
/* 80B3F6C0  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F6C4  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F6C8  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F6CC  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F6D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F6D4  38 A0 00 2E */	li r5, 0x2e
/* 80B3F6D8  4B 61 34 55 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F6DC  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F6E0  40 82 00 44 */	bne lbl_80B3F724
/* 80B3F6E4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F6E8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F6EC  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 80B3F6F0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F6F4  40 82 05 DC */	bne lbl_80B3FCD0
/* 80B3F6F8  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C4@ha */
/* 80B3F6FC  38 03 00 C4 */	addi r0, r3, 0x00C4 /* 0x000500C4@l */
/* 80B3F700  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B3F704  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F708  38 81 00 40 */	addi r4, r1, 0x40
/* 80B3F70C  38 A0 FF FF */	li r5, -1
/* 80B3F710  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F714  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F718  7D 89 03 A6 */	mtctr r12
/* 80B3F71C  4E 80 04 21 */	bctrl 
/* 80B3F720  48 00 05 B0 */	b lbl_80B3FCD0
lbl_80B3F724:
/* 80B3F724  7F A3 EB 78 */	mr r3, r29
/* 80B3F728  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F72C  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F730  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F734  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F738  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F73C  38 A0 00 2D */	li r5, 0x2d
/* 80B3F740  4B 61 33 ED */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F744  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F748  40 82 00 44 */	bne lbl_80B3F78C
/* 80B3F74C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F750  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F754  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 80B3F758  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F75C  40 82 05 74 */	bne lbl_80B3FCD0
/* 80B3F760  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C5@ha */
/* 80B3F764  38 03 00 C5 */	addi r0, r3, 0x00C5 /* 0x000500C5@l */
/* 80B3F768  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B3F76C  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F770  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B3F774  38 A0 FF FF */	li r5, -1
/* 80B3F778  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F77C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F780  7D 89 03 A6 */	mtctr r12
/* 80B3F784  4E 80 04 21 */	bctrl 
/* 80B3F788  48 00 05 48 */	b lbl_80B3FCD0
lbl_80B3F78C:
/* 80B3F78C  7F A3 EB 78 */	mr r3, r29
/* 80B3F790  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F794  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F798  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F79C  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F7A0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F7A4  38 A0 00 2F */	li r5, 0x2f
/* 80B3F7A8  4B 61 33 85 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F7AC  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F7B0  40 82 00 44 */	bne lbl_80B3F7F4
/* 80B3F7B4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F7B8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F7BC  C0 1F 05 90 */	lfs f0, 0x590(r31)
/* 80B3F7C0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F7C4  40 82 05 0C */	bne lbl_80B3FCD0
/* 80B3F7C8  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C5@ha */
/* 80B3F7CC  38 03 00 C5 */	addi r0, r3, 0x00C5 /* 0x000500C5@l */
/* 80B3F7D0  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B3F7D4  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F7D8  38 81 00 38 */	addi r4, r1, 0x38
/* 80B3F7DC  38 A0 FF FF */	li r5, -1
/* 80B3F7E0  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F7E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F7E8  7D 89 03 A6 */	mtctr r12
/* 80B3F7EC  4E 80 04 21 */	bctrl 
/* 80B3F7F0  48 00 04 E0 */	b lbl_80B3FCD0
lbl_80B3F7F4:
/* 80B3F7F4  7F A3 EB 78 */	mr r3, r29
/* 80B3F7F8  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F7FC  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F800  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F804  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F808  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F80C  38 A0 00 35 */	li r5, 0x35
/* 80B3F810  4B 61 33 1D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F814  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F818  40 82 00 44 */	bne lbl_80B3F85C
/* 80B3F81C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F820  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F824  C0 1F 06 80 */	lfs f0, 0x680(r31)
/* 80B3F828  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F82C  40 82 04 A4 */	bne lbl_80B3FCD0
/* 80B3F830  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C6@ha */
/* 80B3F834  38 03 00 C6 */	addi r0, r3, 0x00C6 /* 0x000500C6@l */
/* 80B3F838  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B3F83C  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F840  38 81 00 34 */	addi r4, r1, 0x34
/* 80B3F844  38 A0 FF FF */	li r5, -1
/* 80B3F848  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F84C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F850  7D 89 03 A6 */	mtctr r12
/* 80B3F854  4E 80 04 21 */	bctrl 
/* 80B3F858  48 00 04 78 */	b lbl_80B3FCD0
lbl_80B3F85C:
/* 80B3F85C  7F A3 EB 78 */	mr r3, r29
/* 80B3F860  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F864  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F868  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F86C  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F870  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F874  38 A0 00 36 */	li r5, 0x36
/* 80B3F878  4B 61 32 B5 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F87C  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F880  40 82 00 44 */	bne lbl_80B3F8C4
/* 80B3F884  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F888  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F88C  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 80B3F890  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F894  40 82 04 3C */	bne lbl_80B3FCD0
/* 80B3F898  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C6@ha */
/* 80B3F89C  38 03 00 C6 */	addi r0, r3, 0x00C6 /* 0x000500C6@l */
/* 80B3F8A0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B3F8A4  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F8A8  38 81 00 30 */	addi r4, r1, 0x30
/* 80B3F8AC  38 A0 FF FF */	li r5, -1
/* 80B3F8B0  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F8B4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F8B8  7D 89 03 A6 */	mtctr r12
/* 80B3F8BC  4E 80 04 21 */	bctrl 
/* 80B3F8C0  48 00 04 10 */	b lbl_80B3FCD0
lbl_80B3F8C4:
/* 80B3F8C4  7F A3 EB 78 */	mr r3, r29
/* 80B3F8C8  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F8CC  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F8D0  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F8D4  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F8D8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F8DC  38 A0 00 37 */	li r5, 0x37
/* 80B3F8E0  4B 61 32 4D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F8E4  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F8E8  40 82 00 44 */	bne lbl_80B3F92C
/* 80B3F8EC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F8F0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F8F4  C0 1F 06 80 */	lfs f0, 0x680(r31)
/* 80B3F8F8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F8FC  40 82 03 D4 */	bne lbl_80B3FCD0
/* 80B3F900  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C6@ha */
/* 80B3F904  38 03 00 C6 */	addi r0, r3, 0x00C6 /* 0x000500C6@l */
/* 80B3F908  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B3F90C  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F910  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B3F914  38 A0 FF FF */	li r5, -1
/* 80B3F918  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F91C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F920  7D 89 03 A6 */	mtctr r12
/* 80B3F924  4E 80 04 21 */	bctrl 
/* 80B3F928  48 00 03 A8 */	b lbl_80B3FCD0
lbl_80B3F92C:
/* 80B3F92C  7F A3 EB 78 */	mr r3, r29
/* 80B3F930  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F934  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F938  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F93C  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F940  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F944  38 A0 00 2E */	li r5, 0x2e
/* 80B3F948  4B 61 31 E5 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F94C  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F950  40 82 00 44 */	bne lbl_80B3F994
/* 80B3F954  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F958  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F95C  C0 1F 05 D4 */	lfs f0, 0x5d4(r31)
/* 80B3F960  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F964  40 82 03 6C */	bne lbl_80B3FCD0
/* 80B3F968  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C7@ha */
/* 80B3F96C  38 03 00 C7 */	addi r0, r3, 0x00C7 /* 0x000500C7@l */
/* 80B3F970  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B3F974  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F978  38 81 00 28 */	addi r4, r1, 0x28
/* 80B3F97C  38 A0 FF FF */	li r5, -1
/* 80B3F980  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F984  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F988  7D 89 03 A6 */	mtctr r12
/* 80B3F98C  4E 80 04 21 */	bctrl 
/* 80B3F990  48 00 03 40 */	b lbl_80B3FCD0
lbl_80B3F994:
/* 80B3F994  7F A3 EB 78 */	mr r3, r29
/* 80B3F998  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3F99C  54 00 10 3A */	slwi r0, r0, 2
/* 80B3F9A0  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3F9A4  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3F9A8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3F9AC  38 A0 00 38 */	li r5, 0x38
/* 80B3F9B0  4B 61 31 7D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3F9B4  7C 1E 18 40 */	cmplw r30, r3
/* 80B3F9B8  40 82 00 44 */	bne lbl_80B3F9FC
/* 80B3F9BC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3F9C0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3F9C4  C0 1F 06 84 */	lfs f0, 0x684(r31)
/* 80B3F9C8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3F9CC  40 82 03 04 */	bne lbl_80B3FCD0
/* 80B3F9D0  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C7@ha */
/* 80B3F9D4  38 03 00 C7 */	addi r0, r3, 0x00C7 /* 0x000500C7@l */
/* 80B3F9D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B3F9DC  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3F9E0  38 81 00 24 */	addi r4, r1, 0x24
/* 80B3F9E4  38 A0 FF FF */	li r5, -1
/* 80B3F9E8  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3F9EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3F9F0  7D 89 03 A6 */	mtctr r12
/* 80B3F9F4  4E 80 04 21 */	bctrl 
/* 80B3F9F8  48 00 02 D8 */	b lbl_80B3FCD0
lbl_80B3F9FC:
/* 80B3F9FC  7F A3 EB 78 */	mr r3, r29
/* 80B3FA00  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3FA04  54 00 10 3A */	slwi r0, r0, 2
/* 80B3FA08  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3FA0C  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3FA10  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3FA14  38 A0 00 3B */	li r5, 0x3b
/* 80B3FA18  4B 61 31 15 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3FA1C  7C 1E 18 40 */	cmplw r30, r3
/* 80B3FA20  40 82 00 44 */	bne lbl_80B3FA64
/* 80B3FA24  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3FA28  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3FA2C  C0 1F 06 84 */	lfs f0, 0x684(r31)
/* 80B3FA30  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3FA34  40 82 02 9C */	bne lbl_80B3FCD0
/* 80B3FA38  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C7@ha */
/* 80B3FA3C  38 03 00 C7 */	addi r0, r3, 0x00C7 /* 0x000500C7@l */
/* 80B3FA40  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B3FA44  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3FA48  38 81 00 20 */	addi r4, r1, 0x20
/* 80B3FA4C  38 A0 FF FF */	li r5, -1
/* 80B3FA50  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3FA54  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3FA58  7D 89 03 A6 */	mtctr r12
/* 80B3FA5C  4E 80 04 21 */	bctrl 
/* 80B3FA60  48 00 02 70 */	b lbl_80B3FCD0
lbl_80B3FA64:
/* 80B3FA64  7F A3 EB 78 */	mr r3, r29
/* 80B3FA68  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3FA6C  54 00 10 3A */	slwi r0, r0, 2
/* 80B3FA70  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3FA74  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3FA78  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3FA7C  38 A0 00 30 */	li r5, 0x30
/* 80B3FA80  4B 61 30 AD */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3FA84  7C 1E 18 40 */	cmplw r30, r3
/* 80B3FA88  40 82 00 44 */	bne lbl_80B3FACC
/* 80B3FA8C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3FA90  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3FA94  C0 1F 05 F4 */	lfs f0, 0x5f4(r31)
/* 80B3FA98  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3FA9C  40 82 02 34 */	bne lbl_80B3FCD0
/* 80B3FAA0  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C8@ha */
/* 80B3FAA4  38 03 00 C8 */	addi r0, r3, 0x00C8 /* 0x000500C8@l */
/* 80B3FAA8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B3FAAC  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3FAB0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B3FAB4  38 A0 FF FF */	li r5, -1
/* 80B3FAB8  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3FABC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3FAC0  7D 89 03 A6 */	mtctr r12
/* 80B3FAC4  4E 80 04 21 */	bctrl 
/* 80B3FAC8  48 00 02 08 */	b lbl_80B3FCD0
lbl_80B3FACC:
/* 80B3FACC  7F A3 EB 78 */	mr r3, r29
/* 80B3FAD0  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3FAD4  54 00 10 3A */	slwi r0, r0, 2
/* 80B3FAD8  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3FADC  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3FAE0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3FAE4  38 A0 00 2B */	li r5, 0x2b
/* 80B3FAE8  4B 61 30 45 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3FAEC  7C 1E 18 40 */	cmplw r30, r3
/* 80B3FAF0  40 82 00 44 */	bne lbl_80B3FB34
/* 80B3FAF4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3FAF8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3FAFC  C0 1F 05 C8 */	lfs f0, 0x5c8(r31)
/* 80B3FB00  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3FB04  40 82 01 CC */	bne lbl_80B3FCD0
/* 80B3FB08  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500CA@ha */
/* 80B3FB0C  38 03 00 CA */	addi r0, r3, 0x00CA /* 0x000500CA@l */
/* 80B3FB10  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B3FB14  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3FB18  38 81 00 18 */	addi r4, r1, 0x18
/* 80B3FB1C  38 A0 FF FF */	li r5, -1
/* 80B3FB20  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3FB24  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3FB28  7D 89 03 A6 */	mtctr r12
/* 80B3FB2C  4E 80 04 21 */	bctrl 
/* 80B3FB30  48 00 01 A0 */	b lbl_80B3FCD0
lbl_80B3FB34:
/* 80B3FB34  7F A3 EB 78 */	mr r3, r29
/* 80B3FB38  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3FB3C  54 00 10 3A */	slwi r0, r0, 2
/* 80B3FB40  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3FB44  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3FB48  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3FB4C  38 A0 00 3A */	li r5, 0x3a
/* 80B3FB50  4B 61 2F DD */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3FB54  7C 1E 18 40 */	cmplw r30, r3
/* 80B3FB58  40 82 00 44 */	bne lbl_80B3FB9C
/* 80B3FB5C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3FB60  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3FB64  C0 1F 05 F4 */	lfs f0, 0x5f4(r31)
/* 80B3FB68  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3FB6C  40 82 01 64 */	bne lbl_80B3FCD0
/* 80B3FB70  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C9@ha */
/* 80B3FB74  38 03 00 C9 */	addi r0, r3, 0x00C9 /* 0x000500C9@l */
/* 80B3FB78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B3FB7C  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3FB80  38 81 00 14 */	addi r4, r1, 0x14
/* 80B3FB84  38 A0 FF FF */	li r5, -1
/* 80B3FB88  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3FB8C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3FB90  7D 89 03 A6 */	mtctr r12
/* 80B3FB94  4E 80 04 21 */	bctrl 
/* 80B3FB98  48 00 01 38 */	b lbl_80B3FCD0
lbl_80B3FB9C:
/* 80B3FB9C  7F A3 EB 78 */	mr r3, r29
/* 80B3FBA0  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3FBA4  54 00 10 3A */	slwi r0, r0, 2
/* 80B3FBA8  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3FBAC  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3FBB0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3FBB4  38 A0 00 43 */	li r5, 0x43
/* 80B3FBB8  4B 61 2F 75 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3FBBC  7C 1E 18 40 */	cmplw r30, r3
/* 80B3FBC0  40 82 00 44 */	bne lbl_80B3FC04
/* 80B3FBC4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3FBC8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3FBCC  C0 1F 06 48 */	lfs f0, 0x648(r31)
/* 80B3FBD0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3FBD4  40 82 00 FC */	bne lbl_80B3FCD0
/* 80B3FBD8  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500CB@ha */
/* 80B3FBDC  38 03 00 CB */	addi r0, r3, 0x00CB /* 0x000500CB@l */
/* 80B3FBE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B3FBE4  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3FBE8  38 81 00 10 */	addi r4, r1, 0x10
/* 80B3FBEC  38 A0 FF FF */	li r5, -1
/* 80B3FBF0  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3FBF4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3FBF8  7D 89 03 A6 */	mtctr r12
/* 80B3FBFC  4E 80 04 21 */	bctrl 
/* 80B3FC00  48 00 00 D0 */	b lbl_80B3FCD0
lbl_80B3FC04:
/* 80B3FC04  7F A3 EB 78 */	mr r3, r29
/* 80B3FC08  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3FC0C  54 00 10 3A */	slwi r0, r0, 2
/* 80B3FC10  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3FC14  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3FC18  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3FC1C  38 A0 00 28 */	li r5, 0x28
/* 80B3FC20  4B 61 2F 0D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3FC24  7C 1E 18 40 */	cmplw r30, r3
/* 80B3FC28  40 82 00 44 */	bne lbl_80B3FC6C
/* 80B3FC2C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3FC30  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3FC34  C0 1F 06 18 */	lfs f0, 0x618(r31)
/* 80B3FC38  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3FC3C  40 82 00 94 */	bne lbl_80B3FCD0
/* 80B3FC40  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500CC@ha */
/* 80B3FC44  38 03 00 CC */	addi r0, r3, 0x00CC /* 0x000500CC@l */
/* 80B3FC48  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B3FC4C  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3FC50  38 81 00 0C */	addi r4, r1, 0xc
/* 80B3FC54  38 A0 FF FF */	li r5, -1
/* 80B3FC58  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3FC5C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3FC60  7D 89 03 A6 */	mtctr r12
/* 80B3FC64  4E 80 04 21 */	bctrl 
/* 80B3FC68  48 00 00 68 */	b lbl_80B3FCD0
lbl_80B3FC6C:
/* 80B3FC6C  7F A3 EB 78 */	mr r3, r29
/* 80B3FC70  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3FC74  54 00 10 3A */	slwi r0, r0, 2
/* 80B3FC78  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B3FC7C  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B3FC80  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3FC84  38 A0 00 29 */	li r5, 0x29
/* 80B3FC88  4B 61 2E A5 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B3FC8C  7C 1E 18 40 */	cmplw r30, r3
/* 80B3FC90  40 82 00 40 */	bne lbl_80B3FCD0
/* 80B3FC94  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B3FC98  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3FC9C  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 80B3FCA0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3FCA4  40 82 00 2C */	bne lbl_80B3FCD0
/* 80B3FCA8  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500CC@ha */
/* 80B3FCAC  38 03 00 CC */	addi r0, r3, 0x00CC /* 0x000500CC@l */
/* 80B3FCB0  90 01 00 08 */	stw r0, 8(r1)
/* 80B3FCB4  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B3FCB8  38 81 00 08 */	addi r4, r1, 8
/* 80B3FCBC  38 A0 FF FF */	li r5, -1
/* 80B3FCC0  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B3FCC4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B3FCC8  7D 89 03 A6 */	mtctr r12
/* 80B3FCCC  4E 80 04 21 */	bctrl 
lbl_80B3FCD0:
/* 80B3FCD0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B3FCD4  4B 82 25 55 */	bl _restgpr_29
/* 80B3FCD8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B3FCDC  7C 08 03 A6 */	mtlr r0
/* 80B3FCE0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B3FCE4  4E 80 00 20 */	blr 
