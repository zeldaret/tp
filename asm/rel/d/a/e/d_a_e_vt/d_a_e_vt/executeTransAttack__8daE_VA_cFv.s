lbl_807C7ED4:
/* 807C7ED4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807C7ED8  7C 08 02 A6 */	mflr r0
/* 807C7EDC  90 01 00 64 */	stw r0, 0x64(r1)
/* 807C7EE0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807C7EE4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807C7EE8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 807C7EEC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 807C7EF0  7C 7E 1B 78 */	mr r30, r3
/* 807C7EF4  3C 80 80 7D */	lis r4, lit_3907@ha /* 0x807CECA8@ha */
/* 807C7EF8  3B E4 EC A8 */	addi r31, r4, lit_3907@l /* 0x807CECA8@l */
/* 807C7EFC  80 83 05 B4 */	lwz r4, 0x5b4(r3)
/* 807C7F00  C3 E4 00 1C */	lfs f31, 0x1c(r4)
/* 807C7F04  80 03 13 20 */	lwz r0, 0x1320(r3)
/* 807C7F08  2C 00 00 02 */	cmpwi r0, 2
/* 807C7F0C  41 82 00 C0 */	beq lbl_807C7FCC
/* 807C7F10  40 80 00 10 */	bge lbl_807C7F20
/* 807C7F14  2C 00 00 00 */	cmpwi r0, 0
/* 807C7F18  41 82 00 14 */	beq lbl_807C7F2C
/* 807C7F1C  48 00 03 B4 */	b lbl_807C82D0
lbl_807C7F20:
/* 807C7F20  2C 00 00 04 */	cmpwi r0, 4
/* 807C7F24  41 82 02 68 */	beq lbl_807C818C
/* 807C7F28  48 00 03 A8 */	b lbl_807C82D0
lbl_807C7F2C:
/* 807C7F2C  38 80 00 25 */	li r4, 0x25
/* 807C7F30  38 A0 00 00 */	li r5, 0
/* 807C7F34  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C7F38  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C7F3C  4B FF B8 DD */	bl setBck__8daE_VA_cFiUcff
/* 807C7F40  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033F@ha */
/* 807C7F44  38 03 03 3F */	addi r0, r3, 0x033F /* 0x0007033F@l */
/* 807C7F48  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807C7F4C  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C7F50  38 81 00 2C */	addi r4, r1, 0x2c
/* 807C7F54  38 A0 00 00 */	li r5, 0
/* 807C7F58  38 C0 FF FF */	li r6, -1
/* 807C7F5C  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C7F60  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C7F64  7D 89 03 A6 */	mtctr r12
/* 807C7F68  4E 80 04 21 */	bctrl 
/* 807C7F6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032B@ha */
/* 807C7F70  38 03 03 2B */	addi r0, r3, 0x032B /* 0x0007032B@l */
/* 807C7F74  90 01 00 28 */	stw r0, 0x28(r1)
/* 807C7F78  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C7F7C  38 81 00 28 */	addi r4, r1, 0x28
/* 807C7F80  38 A0 FF FF */	li r5, -1
/* 807C7F84  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C7F88  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C7F8C  7D 89 03 A6 */	mtctr r12
/* 807C7F90  4E 80 04 21 */	bctrl 
/* 807C7F94  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033B@ha */
/* 807C7F98  38 03 03 3B */	addi r0, r3, 0x033B /* 0x0007033B@l */
/* 807C7F9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 807C7FA0  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C7FA4  38 81 00 24 */	addi r4, r1, 0x24
/* 807C7FA8  38 A0 00 00 */	li r5, 0
/* 807C7FAC  38 C0 FF FF */	li r6, -1
/* 807C7FB0  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C7FB4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C7FB8  7D 89 03 A6 */	mtctr r12
/* 807C7FBC  4E 80 04 21 */	bctrl 
/* 807C7FC0  38 00 00 02 */	li r0, 2
/* 807C7FC4  90 1E 13 20 */	stw r0, 0x1320(r30)
/* 807C7FC8  48 00 03 08 */	b lbl_807C82D0
lbl_807C7FCC:
/* 807C7FCC  38 64 00 0C */	addi r3, r4, 0xc
/* 807C7FD0  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 807C7FD4  4B B6 04 59 */	bl checkPass__12J3DFrameCtrlFf
/* 807C7FD8  2C 03 00 00 */	cmpwi r3, 0
/* 807C7FDC  41 82 00 30 */	beq lbl_807C800C
/* 807C7FE0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033B@ha */
/* 807C7FE4  38 03 03 3B */	addi r0, r3, 0x033B /* 0x0007033B@l */
/* 807C7FE8  90 01 00 20 */	stw r0, 0x20(r1)
/* 807C7FEC  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C7FF0  38 81 00 20 */	addi r4, r1, 0x20
/* 807C7FF4  38 A0 00 00 */	li r5, 0
/* 807C7FF8  38 C0 FF FF */	li r6, -1
/* 807C7FFC  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C8000  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C8004  7D 89 03 A6 */	mtctr r12
/* 807C8008  4E 80 04 21 */	bctrl 
lbl_807C800C:
/* 807C800C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807C8010  38 63 00 0C */	addi r3, r3, 0xc
/* 807C8014  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 807C8018  4B B6 04 15 */	bl checkPass__12J3DFrameCtrlFf
/* 807C801C  2C 03 00 00 */	cmpwi r3, 0
/* 807C8020  41 82 00 68 */	beq lbl_807C8088
/* 807C8024  7F C3 F3 78 */	mr r3, r30
/* 807C8028  4B FF CE E9 */	bl setWeponLandEffect__8daE_VA_cFv
/* 807C802C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033A@ha */
/* 807C8030  38 03 03 3A */	addi r0, r3, 0x033A /* 0x0007033A@l */
/* 807C8034  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807C8038  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C803C  38 81 00 1C */	addi r4, r1, 0x1c
/* 807C8040  38 A0 00 00 */	li r5, 0
/* 807C8044  38 C0 FF FF */	li r6, -1
/* 807C8048  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C804C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C8050  7D 89 03 A6 */	mtctr r12
/* 807C8054  4E 80 04 21 */	bctrl 
/* 807C8058  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C805C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 807C8060  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807C8064  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807C8068  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807C806C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C8070  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C8074  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807C8078  38 80 00 05 */	li r4, 5
/* 807C807C  38 A0 00 1F */	li r5, 0x1f
/* 807C8080  38 C1 00 30 */	addi r6, r1, 0x30
/* 807C8084  4B 8A 79 A1 */	bl StartShock__12dVibration_cFii4cXyz
lbl_807C8088:
/* 807C8088  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 807C808C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 807C8090  4C 40 13 82 */	cror 2, 0, 2
/* 807C8094  40 82 00 20 */	bne lbl_807C80B4
/* 807C8098  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 807C809C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807C80A0  4C 40 13 82 */	cror 2, 0, 2
/* 807C80A4  40 82 00 10 */	bne lbl_807C80B4
/* 807C80A8  7F C3 F3 78 */	mr r3, r30
/* 807C80AC  4B FF B9 71 */	bl onSwordAtBit__8daE_VA_cFv
/* 807C80B0  48 00 00 18 */	b lbl_807C80C8
lbl_807C80B4:
/* 807C80B4  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 807C80B8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807C80BC  40 81 00 0C */	ble lbl_807C80C8
/* 807C80C0  7F C3 F3 78 */	mr r3, r30
/* 807C80C4  4B FF B9 8D */	bl offSwordShield__8daE_VA_cFv
lbl_807C80C8:
/* 807C80C8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807C80CC  38 63 00 0C */	addi r3, r3, 0xc
/* 807C80D0  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 807C80D4  4B B6 03 59 */	bl checkPass__12J3DFrameCtrlFf
/* 807C80D8  2C 03 00 00 */	cmpwi r3, 0
/* 807C80DC  41 82 00 34 */	beq lbl_807C8110
/* 807C80E0  38 00 00 01 */	li r0, 1
/* 807C80E4  98 1E 13 7F */	stb r0, 0x137f(r30)
/* 807C80E8  80 1E 1C C8 */	lwz r0, 0x1cc8(r30)
/* 807C80EC  60 00 00 01 */	ori r0, r0, 1
/* 807C80F0  90 1E 1C C8 */	stw r0, 0x1cc8(r30)
/* 807C80F4  80 1E 1E 04 */	lwz r0, 0x1e04(r30)
/* 807C80F8  60 00 00 01 */	ori r0, r0, 1
/* 807C80FC  90 1E 1E 04 */	stw r0, 0x1e04(r30)
/* 807C8100  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 807C8104  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 807C8108  90 1E 1C D8 */	stw r0, 0x1cd8(r30)
/* 807C810C  90 1E 1E 14 */	stw r0, 0x1e14(r30)
lbl_807C8110:
/* 807C8110  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807C8114  38 80 00 01 */	li r4, 1
/* 807C8118  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C811C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C8120  40 82 00 18 */	bne lbl_807C8138
/* 807C8124  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C8128  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C812C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C8130  41 82 00 08 */	beq lbl_807C8138
/* 807C8134  38 80 00 00 */	li r4, 0
lbl_807C8138:
/* 807C8138  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C813C  41 82 01 94 */	beq lbl_807C82D0
/* 807C8140  7F C3 F3 78 */	mr r3, r30
/* 807C8144  38 80 00 27 */	li r4, 0x27
/* 807C8148  38 A0 00 00 */	li r5, 0
/* 807C814C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C8150  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C8154  4B FF B6 C5 */	bl setBck__8daE_VA_cFiUcff
/* 807C8158  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032D@ha */
/* 807C815C  38 03 03 2D */	addi r0, r3, 0x032D /* 0x0007032D@l */
/* 807C8160  90 01 00 18 */	stw r0, 0x18(r1)
/* 807C8164  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C8168  38 81 00 18 */	addi r4, r1, 0x18
/* 807C816C  38 A0 FF FF */	li r5, -1
/* 807C8170  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C8174  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C8178  7D 89 03 A6 */	mtctr r12
/* 807C817C  4E 80 04 21 */	bctrl 
/* 807C8180  38 00 00 04 */	li r0, 4
/* 807C8184  90 1E 13 20 */	stw r0, 0x1320(r30)
/* 807C8188  48 00 01 48 */	b lbl_807C82D0
lbl_807C818C:
/* 807C818C  38 64 00 0C */	addi r3, r4, 0xc
/* 807C8190  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 807C8194  4B B6 02 99 */	bl checkPass__12J3DFrameCtrlFf
/* 807C8198  2C 03 00 00 */	cmpwi r3, 0
/* 807C819C  41 82 00 30 */	beq lbl_807C81CC
/* 807C81A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033C@ha */
/* 807C81A4  38 03 03 3C */	addi r0, r3, 0x033C /* 0x0007033C@l */
/* 807C81A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C81AC  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C81B0  38 81 00 14 */	addi r4, r1, 0x14
/* 807C81B4  38 A0 00 00 */	li r5, 0
/* 807C81B8  38 C0 FF FF */	li r6, -1
/* 807C81BC  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C81C0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C81C4  7D 89 03 A6 */	mtctr r12
/* 807C81C8  4E 80 04 21 */	bctrl 
lbl_807C81CC:
/* 807C81CC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807C81D0  38 63 00 0C */	addi r3, r3, 0xc
/* 807C81D4  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 807C81D8  4B B6 02 55 */	bl checkPass__12J3DFrameCtrlFf
/* 807C81DC  2C 03 00 00 */	cmpwi r3, 0
/* 807C81E0  41 82 00 58 */	beq lbl_807C8238
/* 807C81E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033D@ha */
/* 807C81E8  38 03 03 3D */	addi r0, r3, 0x033D /* 0x0007033D@l */
/* 807C81EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C81F0  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C81F4  38 81 00 10 */	addi r4, r1, 0x10
/* 807C81F8  38 A0 00 00 */	li r5, 0
/* 807C81FC  38 C0 FF FF */	li r6, -1
/* 807C8200  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C8204  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C8208  7D 89 03 A6 */	mtctr r12
/* 807C820C  4E 80 04 21 */	bctrl 
/* 807C8210  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032D@ha */
/* 807C8214  38 03 03 2D */	addi r0, r3, 0x032D /* 0x0007032D@l */
/* 807C8218  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C821C  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C8220  38 81 00 0C */	addi r4, r1, 0xc
/* 807C8224  38 A0 FF FF */	li r5, -1
/* 807C8228  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C822C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C8230  7D 89 03 A6 */	mtctr r12
/* 807C8234  4E 80 04 21 */	bctrl 
lbl_807C8238:
/* 807C8238  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 807C823C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807C8240  4C 40 13 82 */	cror 2, 0, 2
/* 807C8244  40 82 00 0C */	bne lbl_807C8250
/* 807C8248  7F C3 F3 78 */	mr r3, r30
/* 807C824C  4B FF B8 05 */	bl offSwordShield__8daE_VA_cFv
lbl_807C8250:
/* 807C8250  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807C8254  38 63 00 0C */	addi r3, r3, 0xc
/* 807C8258  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 807C825C  4B B6 01 D1 */	bl checkPass__12J3DFrameCtrlFf
/* 807C8260  2C 03 00 00 */	cmpwi r3, 0
/* 807C8264  41 82 00 24 */	beq lbl_807C8288
/* 807C8268  38 00 00 00 */	li r0, 0
/* 807C826C  98 1E 13 7F */	stb r0, 0x137f(r30)
/* 807C8270  80 1E 1C C8 */	lwz r0, 0x1cc8(r30)
/* 807C8274  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C8278  90 1E 1C C8 */	stw r0, 0x1cc8(r30)
/* 807C827C  80 1E 1E 04 */	lwz r0, 0x1e04(r30)
/* 807C8280  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C8284  90 1E 1E 04 */	stw r0, 0x1e04(r30)
lbl_807C8288:
/* 807C8288  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807C828C  38 80 00 01 */	li r4, 1
/* 807C8290  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C8294  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C8298  40 82 00 18 */	bne lbl_807C82B0
/* 807C829C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C82A0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C82A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C82A8  41 82 00 08 */	beq lbl_807C82B0
/* 807C82AC  38 80 00 00 */	li r4, 0
lbl_807C82B0:
/* 807C82B0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C82B4  41 82 00 1C */	beq lbl_807C82D0
/* 807C82B8  7F C3 F3 78 */	mr r3, r30
/* 807C82BC  38 80 00 07 */	li r4, 7
/* 807C82C0  38 A0 00 00 */	li r5, 0
/* 807C82C4  4B FF B6 55 */	bl setActionMode__8daE_VA_cFii
/* 807C82C8  38 00 00 5A */	li r0, 0x5a
/* 807C82CC  90 1E 13 40 */	stw r0, 0x1340(r30)
lbl_807C82D0:
/* 807C82D0  4B 99 71 55 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 807C82D4  2C 03 00 00 */	cmpwi r3, 0
/* 807C82D8  40 82 00 A4 */	bne lbl_807C837C
/* 807C82DC  80 1E 13 58 */	lwz r0, 0x1358(r30)
/* 807C82E0  2C 00 00 00 */	cmpwi r0, 0
/* 807C82E4  40 82 00 98 */	bne lbl_807C837C
/* 807C82E8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807C82EC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807C82F0  80 63 00 00 */	lwz r3, 0(r3)
/* 807C82F4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807C82F8  38 80 00 01 */	li r4, 1
/* 807C82FC  4B AE 9A F9 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 807C8300  7F C3 F3 78 */	mr r3, r30
/* 807C8304  38 80 00 27 */	li r4, 0x27
/* 807C8308  4B FF B5 B5 */	bl checkBck__8daE_VA_cFi
/* 807C830C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C8310  40 82 00 44 */	bne lbl_807C8354
/* 807C8314  7F C3 F3 78 */	mr r3, r30
/* 807C8318  38 80 00 27 */	li r4, 0x27
/* 807C831C  38 A0 00 00 */	li r5, 0
/* 807C8320  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C8324  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C8328  4B FF B4 F1 */	bl setBck__8daE_VA_cFiUcff
/* 807C832C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032D@ha */
/* 807C8330  38 03 03 2D */	addi r0, r3, 0x032D /* 0x0007032D@l */
/* 807C8334  90 01 00 08 */	stw r0, 8(r1)
/* 807C8338  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C833C  38 81 00 08 */	addi r4, r1, 8
/* 807C8340  38 A0 FF FF */	li r5, -1
/* 807C8344  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C8348  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C834C  7D 89 03 A6 */	mtctr r12
/* 807C8350  4E 80 04 21 */	bctrl 
lbl_807C8354:
/* 807C8354  7F C3 F3 78 */	mr r3, r30
/* 807C8358  38 80 00 13 */	li r4, 0x13
/* 807C835C  38 A0 00 0A */	li r5, 0xa
/* 807C8360  4B FF B5 B9 */	bl setActionMode__8daE_VA_cFii
/* 807C8364  80 1E 1C C8 */	lwz r0, 0x1cc8(r30)
/* 807C8368  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C836C  90 1E 1C C8 */	stw r0, 0x1cc8(r30)
/* 807C8370  80 1E 1E 04 */	lwz r0, 0x1e04(r30)
/* 807C8374  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C8378  90 1E 1E 04 */	stw r0, 0x1e04(r30)
lbl_807C837C:
/* 807C837C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 807C8380  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 807C8384  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 807C8388  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 807C838C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807C8390  7C 08 03 A6 */	mtlr r0
/* 807C8394  38 21 00 60 */	addi r1, r1, 0x60
/* 807C8398  4E 80 00 20 */	blr 
