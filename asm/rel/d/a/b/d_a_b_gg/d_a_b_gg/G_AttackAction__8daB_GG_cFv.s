lbl_805E6E30:
/* 805E6E30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E6E34  7C 08 02 A6 */	mflr r0
/* 805E6E38  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E6E3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805E6E40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805E6E44  7C 7E 1B 78 */	mr r30, r3
/* 805E6E48  3C 80 80 5F */	lis r4, lit_3911@ha /* 0x805ED060@ha */
/* 805E6E4C  3B E4 D0 60 */	addi r31, r4, lit_3911@l /* 0x805ED060@l */
/* 805E6E50  88 03 05 C7 */	lbz r0, 0x5c7(r3)
/* 805E6E54  2C 00 00 01 */	cmpwi r0, 1
/* 805E6E58  41 82 01 34 */	beq lbl_805E6F8C
/* 805E6E5C  40 80 00 10 */	bge lbl_805E6E6C
/* 805E6E60  2C 00 00 00 */	cmpwi r0, 0
/* 805E6E64  40 80 00 14 */	bge lbl_805E6E78
/* 805E6E68  48 00 05 20 */	b lbl_805E7388
lbl_805E6E6C:
/* 805E6E6C  2C 00 00 0A */	cmpwi r0, 0xa
/* 805E6E70  41 82 04 9C */	beq lbl_805E730C
/* 805E6E74  48 00 05 14 */	b lbl_805E7388
lbl_805E6E78:
/* 805E6E78  4B FF 8B D1 */	bl SpeedClear__8daB_GG_cFv
/* 805E6E7C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805E6E80  4B C8 0A D5 */	bl cM_rndF__Ff
/* 805E6E84  FC 00 08 1E */	fctiwz f0, f1
/* 805E6E88  D8 01 00 08 */	stfd f0, 8(r1)
/* 805E6E8C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805E6E90  2C 00 00 46 */	cmpwi r0, 0x46
/* 805E6E94  40 81 00 40 */	ble lbl_805E6ED4
/* 805E6E98  7F C3 F3 78 */	mr r3, r30
/* 805E6E9C  38 80 00 0F */	li r4, 0xf
/* 805E6EA0  38 A0 00 00 */	li r5, 0
/* 805E6EA4  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E6EA8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E6EAC  4B FF 80 B9 */	bl SetAnm__8daB_GG_cFiiff
/* 805E6EB0  38 60 00 00 */	li r3, 0
/* 805E6EB4  38 80 00 02 */	li r4, 2
/* 805E6EB8  38 00 00 03 */	li r0, 3
/* 805E6EBC  7C 09 03 A6 */	mtctr r0
lbl_805E6EC0:
/* 805E6EC0  38 03 08 28 */	addi r0, r3, 0x828
/* 805E6EC4  7C 9E 01 AE */	stbx r4, r30, r0
/* 805E6EC8  38 63 01 38 */	addi r3, r3, 0x138
/* 805E6ECC  42 00 FF F4 */	bdnz lbl_805E6EC0
/* 805E6ED0  48 00 00 AC */	b lbl_805E6F7C
lbl_805E6ED4:
/* 805E6ED4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805E6ED8  40 81 00 40 */	ble lbl_805E6F18
/* 805E6EDC  7F C3 F3 78 */	mr r3, r30
/* 805E6EE0  38 80 00 10 */	li r4, 0x10
/* 805E6EE4  38 A0 00 00 */	li r5, 0
/* 805E6EE8  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E6EEC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E6EF0  4B FF 80 75 */	bl SetAnm__8daB_GG_cFiiff
/* 805E6EF4  38 60 00 00 */	li r3, 0
/* 805E6EF8  38 80 00 02 */	li r4, 2
/* 805E6EFC  38 00 00 03 */	li r0, 3
/* 805E6F00  7C 09 03 A6 */	mtctr r0
lbl_805E6F04:
/* 805E6F04  38 03 08 28 */	addi r0, r3, 0x828
/* 805E6F08  7C 9E 01 AE */	stbx r4, r30, r0
/* 805E6F0C  38 63 01 38 */	addi r3, r3, 0x138
/* 805E6F10  42 00 FF F4 */	bdnz lbl_805E6F04
/* 805E6F14  48 00 00 68 */	b lbl_805E6F7C
lbl_805E6F18:
/* 805E6F18  7F C3 F3 78 */	mr r3, r30
/* 805E6F1C  38 80 00 11 */	li r4, 0x11
/* 805E6F20  38 A0 00 00 */	li r5, 0
/* 805E6F24  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805E6F28  FC 40 08 90 */	fmr f2, f1
/* 805E6F2C  4B FF 80 39 */	bl SetAnm__8daB_GG_cFiiff
/* 805E6F30  38 60 00 00 */	li r3, 0
/* 805E6F34  38 C0 00 0A */	li r6, 0xa
/* 805E6F38  38 A0 00 02 */	li r5, 2
/* 805E6F3C  38 80 00 01 */	li r4, 1
/* 805E6F40  38 00 00 03 */	li r0, 3
/* 805E6F44  7C 09 03 A6 */	mtctr r0
lbl_805E6F48:
/* 805E6F48  7C FE 1A 14 */	add r7, r30, r3
/* 805E6F4C  80 07 08 14 */	lwz r0, 0x814(r7)
/* 805E6F50  60 00 00 01 */	ori r0, r0, 1
/* 805E6F54  90 07 08 14 */	stw r0, 0x814(r7)
/* 805E6F58  98 C7 08 8B */	stb r6, 0x88b(r7)
/* 805E6F5C  88 1E 06 90 */	lbz r0, 0x690(r30)
/* 805E6F60  28 00 00 00 */	cmplwi r0, 0
/* 805E6F64  40 82 00 0C */	bne lbl_805E6F70
/* 805E6F68  98 A7 08 28 */	stb r5, 0x828(r7)
/* 805E6F6C  48 00 00 08 */	b lbl_805E6F74
lbl_805E6F70:
/* 805E6F70  98 87 08 28 */	stb r4, 0x828(r7)
lbl_805E6F74:
/* 805E6F74  38 63 01 38 */	addi r3, r3, 0x138
/* 805E6F78  42 00 FF D0 */	bdnz lbl_805E6F48
lbl_805E6F7C:
/* 805E6F7C  88 7E 05 C7 */	lbz r3, 0x5c7(r30)
/* 805E6F80  38 03 00 01 */	addi r0, r3, 1
/* 805E6F84  98 1E 05 C7 */	stb r0, 0x5c7(r30)
/* 805E6F88  48 00 04 00 */	b lbl_805E7388
lbl_805E6F8C:
/* 805E6F8C  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E6F90  38 63 00 0C */	addi r3, r3, 0xc
/* 805E6F94  C0 3F 01 74 */	lfs f1, 0x174(r31)
/* 805E6F98  4B D4 14 95 */	bl checkPass__12J3DFrameCtrlFf
/* 805E6F9C  2C 03 00 00 */	cmpwi r3, 0
/* 805E6FA0  41 82 00 3C */	beq lbl_805E6FDC
/* 805E6FA4  80 1E 05 D4 */	lwz r0, 0x5d4(r30)
/* 805E6FA8  2C 00 00 11 */	cmpwi r0, 0x11
/* 805E6FAC  40 82 00 30 */	bne lbl_805E6FDC
/* 805E6FB0  38 60 00 00 */	li r3, 0
/* 805E6FB4  38 80 00 0A */	li r4, 0xa
/* 805E6FB8  38 00 00 03 */	li r0, 3
/* 805E6FBC  7C 09 03 A6 */	mtctr r0
lbl_805E6FC0:
/* 805E6FC0  7C BE 1A 14 */	add r5, r30, r3
/* 805E6FC4  80 05 08 14 */	lwz r0, 0x814(r5)
/* 805E6FC8  60 00 00 01 */	ori r0, r0, 1
/* 805E6FCC  90 05 08 14 */	stw r0, 0x814(r5)
/* 805E6FD0  98 85 08 8B */	stb r4, 0x88b(r5)
/* 805E6FD4  38 63 01 38 */	addi r3, r3, 0x138
/* 805E6FD8  42 00 FF E8 */	bdnz lbl_805E6FC0
lbl_805E6FDC:
/* 805E6FDC  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E6FE0  38 63 00 0C */	addi r3, r3, 0xc
/* 805E6FE4  C0 3F 02 94 */	lfs f1, 0x294(r31)
/* 805E6FE8  4B D4 14 45 */	bl checkPass__12J3DFrameCtrlFf
/* 805E6FEC  2C 03 00 00 */	cmpwi r3, 0
/* 805E6FF0  41 82 00 3C */	beq lbl_805E702C
/* 805E6FF4  80 1E 05 D4 */	lwz r0, 0x5d4(r30)
/* 805E6FF8  2C 00 00 11 */	cmpwi r0, 0x11
/* 805E6FFC  41 82 00 30 */	beq lbl_805E702C
/* 805E7000  38 60 00 00 */	li r3, 0
/* 805E7004  38 80 00 00 */	li r4, 0
/* 805E7008  38 00 00 03 */	li r0, 3
/* 805E700C  7C 09 03 A6 */	mtctr r0
lbl_805E7010:
/* 805E7010  7C BE 1A 14 */	add r5, r30, r3
/* 805E7014  80 05 08 14 */	lwz r0, 0x814(r5)
/* 805E7018  60 00 00 01 */	ori r0, r0, 1
/* 805E701C  90 05 08 14 */	stw r0, 0x814(r5)
/* 805E7020  98 85 08 8B */	stb r4, 0x88b(r5)
/* 805E7024  38 63 01 38 */	addi r3, r3, 0x138
/* 805E7028  42 00 FF E8 */	bdnz lbl_805E7010
lbl_805E702C:
/* 805E702C  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E7030  38 63 00 0C */	addi r3, r3, 0xc
/* 805E7034  C0 3F 02 DC */	lfs f1, 0x2dc(r31)
/* 805E7038  4B D4 13 F5 */	bl checkPass__12J3DFrameCtrlFf
/* 805E703C  2C 03 00 00 */	cmpwi r3, 0
/* 805E7040  41 82 00 38 */	beq lbl_805E7078
/* 805E7044  80 1E 05 D4 */	lwz r0, 0x5d4(r30)
/* 805E7048  2C 00 00 0F */	cmpwi r0, 0xf
/* 805E704C  40 82 00 2C */	bne lbl_805E7078
/* 805E7050  38 60 00 00 */	li r3, 0
/* 805E7054  38 00 00 03 */	li r0, 3
/* 805E7058  7C 09 03 A6 */	mtctr r0
lbl_805E705C:
/* 805E705C  38 83 08 14 */	addi r4, r3, 0x814
/* 805E7060  7C 1E 20 2E */	lwzx r0, r30, r4
/* 805E7064  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E7068  7C 1E 21 2E */	stwx r0, r30, r4
/* 805E706C  38 63 01 38 */	addi r3, r3, 0x138
/* 805E7070  42 00 FF EC */	bdnz lbl_805E705C
/* 805E7074  48 00 00 D8 */	b lbl_805E714C
lbl_805E7078:
/* 805E7078  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E707C  38 63 00 0C */	addi r3, r3, 0xc
/* 805E7080  C0 3F 02 DC */	lfs f1, 0x2dc(r31)
/* 805E7084  4B D4 13 A9 */	bl checkPass__12J3DFrameCtrlFf
/* 805E7088  2C 03 00 00 */	cmpwi r3, 0
/* 805E708C  41 82 00 24 */	beq lbl_805E70B0
/* 805E7090  80 1E 05 D4 */	lwz r0, 0x5d4(r30)
/* 805E7094  2C 00 00 10 */	cmpwi r0, 0x10
/* 805E7098  40 82 00 18 */	bne lbl_805E70B0
/* 805E709C  C0 1F 02 A8 */	lfs f0, 0x2a8(r31)
/* 805E70A0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 805E70A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E70A8  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 805E70AC  48 00 00 A0 */	b lbl_805E714C
lbl_805E70B0:
/* 805E70B0  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E70B4  38 63 00 0C */	addi r3, r3, 0xc
/* 805E70B8  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 805E70BC  4B D4 13 71 */	bl checkPass__12J3DFrameCtrlFf
/* 805E70C0  2C 03 00 00 */	cmpwi r3, 0
/* 805E70C4  41 82 00 38 */	beq lbl_805E70FC
/* 805E70C8  80 1E 05 D4 */	lwz r0, 0x5d4(r30)
/* 805E70CC  2C 00 00 10 */	cmpwi r0, 0x10
/* 805E70D0  40 82 00 2C */	bne lbl_805E70FC
/* 805E70D4  38 60 00 00 */	li r3, 0
/* 805E70D8  38 00 00 03 */	li r0, 3
/* 805E70DC  7C 09 03 A6 */	mtctr r0
lbl_805E70E0:
/* 805E70E0  38 83 08 14 */	addi r4, r3, 0x814
/* 805E70E4  7C 1E 20 2E */	lwzx r0, r30, r4
/* 805E70E8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E70EC  7C 1E 21 2E */	stwx r0, r30, r4
/* 805E70F0  38 63 01 38 */	addi r3, r3, 0x138
/* 805E70F4  42 00 FF EC */	bdnz lbl_805E70E0
/* 805E70F8  48 00 00 54 */	b lbl_805E714C
lbl_805E70FC:
/* 805E70FC  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E7100  38 63 00 0C */	addi r3, r3, 0xc
/* 805E7104  C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 805E7108  4B D4 13 25 */	bl checkPass__12J3DFrameCtrlFf
/* 805E710C  2C 03 00 00 */	cmpwi r3, 0
/* 805E7110  41 82 00 3C */	beq lbl_805E714C
/* 805E7114  80 1E 05 D4 */	lwz r0, 0x5d4(r30)
/* 805E7118  2C 00 00 11 */	cmpwi r0, 0x11
/* 805E711C  40 82 00 30 */	bne lbl_805E714C
/* 805E7120  38 60 00 00 */	li r3, 0
/* 805E7124  38 80 00 02 */	li r4, 2
/* 805E7128  38 00 00 03 */	li r0, 3
/* 805E712C  7C 09 03 A6 */	mtctr r0
lbl_805E7130:
/* 805E7130  7C BE 1A 14 */	add r5, r30, r3
/* 805E7134  80 05 08 14 */	lwz r0, 0x814(r5)
/* 805E7138  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E713C  90 05 08 14 */	stw r0, 0x814(r5)
/* 805E7140  98 85 08 28 */	stb r4, 0x828(r5)
/* 805E7144  38 63 01 38 */	addi r3, r3, 0x138
/* 805E7148  42 00 FF E8 */	bdnz lbl_805E7130
lbl_805E714C:
/* 805E714C  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E7150  38 80 00 01 */	li r4, 1
/* 805E7154  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E7158  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E715C  40 82 00 18 */	bne lbl_805E7174
/* 805E7160  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E7164  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E7168  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E716C  41 82 00 08 */	beq lbl_805E7174
/* 805E7170  38 80 00 00 */	li r4, 0
lbl_805E7174:
/* 805E7174  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E7178  41 82 01 1C */	beq lbl_805E7294
/* 805E717C  80 1E 07 74 */	lwz r0, 0x774(r30)
/* 805E7180  60 00 00 01 */	ori r0, r0, 1
/* 805E7184  90 1E 07 74 */	stw r0, 0x774(r30)
/* 805E7188  80 1E 0D 94 */	lwz r0, 0xd94(r30)
/* 805E718C  60 00 00 01 */	ori r0, r0, 1
/* 805E7190  90 1E 0D 94 */	stw r0, 0xd94(r30)
/* 805E7194  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805E7198  4B C8 07 BD */	bl cM_rndF__Ff
/* 805E719C  FC 00 08 1E */	fctiwz f0, f1
/* 805E71A0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805E71A4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805E71A8  2C 03 00 1E */	cmpwi r3, 0x1e
/* 805E71AC  41 80 00 10 */	blt lbl_805E71BC
/* 805E71B0  80 1E 05 D4 */	lwz r0, 0x5d4(r30)
/* 805E71B4  2C 00 00 11 */	cmpwi r0, 0x11
/* 805E71B8  40 82 00 1C */	bne lbl_805E71D4
lbl_805E71BC:
/* 805E71BC  7F C3 F3 78 */	mr r3, r30
/* 805E71C0  38 80 00 01 */	li r4, 1
/* 805E71C4  38 A0 00 01 */	li r5, 1
/* 805E71C8  38 C0 00 00 */	li r6, 0
/* 805E71CC  4B FF 88 99 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E71D0  48 00 00 C4 */	b lbl_805E7294
lbl_805E71D4:
/* 805E71D4  41 82 00 7C */	beq lbl_805E7250
/* 805E71D8  2C 03 00 32 */	cmpwi r3, 0x32
/* 805E71DC  40 81 00 74 */	ble lbl_805E7250
/* 805E71E0  7F C3 F3 78 */	mr r3, r30
/* 805E71E4  38 80 00 11 */	li r4, 0x11
/* 805E71E8  38 A0 00 00 */	li r5, 0
/* 805E71EC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805E71F0  FC 40 08 90 */	fmr f2, f1
/* 805E71F4  4B FF 7D 71 */	bl SetAnm__8daB_GG_cFiiff
/* 805E71F8  38 60 00 00 */	li r3, 0
/* 805E71FC  38 C0 00 02 */	li r6, 2
/* 805E7200  38 A0 00 01 */	li r5, 1
/* 805E7204  38 80 00 0A */	li r4, 0xa
/* 805E7208  38 00 00 03 */	li r0, 3
/* 805E720C  7C 09 03 A6 */	mtctr r0
lbl_805E7210:
/* 805E7210  88 1E 06 90 */	lbz r0, 0x690(r30)
/* 805E7214  28 00 00 00 */	cmplwi r0, 0
/* 805E7218  40 82 00 10 */	bne lbl_805E7228
/* 805E721C  38 03 08 28 */	addi r0, r3, 0x828
/* 805E7220  7C DE 01 AE */	stbx r6, r30, r0
/* 805E7224  48 00 00 0C */	b lbl_805E7230
lbl_805E7228:
/* 805E7228  38 03 08 28 */	addi r0, r3, 0x828
/* 805E722C  7C BE 01 AE */	stbx r5, r30, r0
lbl_805E7230:
/* 805E7230  7C FE 1A 14 */	add r7, r30, r3
/* 805E7234  80 07 08 14 */	lwz r0, 0x814(r7)
/* 805E7238  60 00 00 01 */	ori r0, r0, 1
/* 805E723C  90 07 08 14 */	stw r0, 0x814(r7)
/* 805E7240  98 87 08 8B */	stb r4, 0x88b(r7)
/* 805E7244  38 63 01 38 */	addi r3, r3, 0x138
/* 805E7248  42 00 FF C8 */	bdnz lbl_805E7210
/* 805E724C  48 00 00 48 */	b lbl_805E7294
lbl_805E7250:
/* 805E7250  2C 03 00 1E */	cmpwi r3, 0x1e
/* 805E7254  40 81 00 24 */	ble lbl_805E7278
/* 805E7258  7F C3 F3 78 */	mr r3, r30
/* 805E725C  38 80 00 01 */	li r4, 1
/* 805E7260  38 A0 00 01 */	li r5, 1
/* 805E7264  38 C0 00 01 */	li r6, 1
/* 805E7268  4B FF 87 FD */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E726C  38 00 00 32 */	li r0, 0x32
/* 805E7270  B0 1E 05 DA */	sth r0, 0x5da(r30)
/* 805E7274  48 00 00 20 */	b lbl_805E7294
lbl_805E7278:
/* 805E7278  7F C3 F3 78 */	mr r3, r30
/* 805E727C  38 80 00 01 */	li r4, 1
/* 805E7280  38 A0 00 01 */	li r5, 1
/* 805E7284  38 C0 00 02 */	li r6, 2
/* 805E7288  4B FF 87 DD */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E728C  38 00 00 32 */	li r0, 0x32
/* 805E7290  B0 1E 05 DA */	sth r0, 0x5da(r30)
lbl_805E7294:
/* 805E7294  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E7298  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805E729C  C0 1F 02 DC */	lfs f0, 0x2dc(r31)
/* 805E72A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E72A4  40 81 00 E4 */	ble lbl_805E7388
/* 805E72A8  80 1E 05 D4 */	lwz r0, 0x5d4(r30)
/* 805E72AC  2C 00 00 10 */	cmpwi r0, 0x10
/* 805E72B0  40 82 00 D8 */	bne lbl_805E7388
/* 805E72B4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 805E72B8  A8 9E 05 BA */	lha r4, 0x5ba(r30)
/* 805E72BC  38 A0 00 0A */	li r5, 0xa
/* 805E72C0  38 C0 10 00 */	li r6, 0x1000
/* 805E72C4  4B C8 93 45 */	bl cLib_addCalcAngleS2__FPssss
/* 805E72C8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 805E72CC  3C 80 80 5F */	lis r4, data_805ED730@ha /* 0x805ED730@ha */
/* 805E72D0  38 84 D7 30 */	addi r4, r4, data_805ED730@l /* 0x805ED730@l */
/* 805E72D4  A8 84 00 00 */	lha r4, 0(r4)
/* 805E72D8  38 A0 00 0A */	li r5, 0xa
/* 805E72DC  38 C0 10 00 */	li r6, 0x1000
/* 805E72E0  4B C8 93 29 */	bl cLib_addCalcAngleS2__FPssss
/* 805E72E4  38 7E 06 BE */	addi r3, r30, 0x6be
/* 805E72E8  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 805E72EC  3C 80 80 5F */	lis r4, data_805ED730@ha /* 0x805ED730@ha */
/* 805E72F0  A8 04 D7 30 */	lha r0, data_805ED730@l(r4)  /* 0x805ED730@l */
/* 805E72F4  7C 05 00 50 */	subf r0, r5, r0
/* 805E72F8  7C 04 07 34 */	extsh r4, r0
/* 805E72FC  38 A0 00 0A */	li r5, 0xa
/* 805E7300  38 C0 01 00 */	li r6, 0x100
/* 805E7304  4B C8 93 05 */	bl cLib_addCalcAngleS2__FPssss
/* 805E7308  48 00 00 80 */	b lbl_805E7388
lbl_805E730C:
/* 805E730C  4B FF 87 3D */	bl SpeedClear__8daB_GG_cFv
/* 805E7310  7F C3 F3 78 */	mr r3, r30
/* 805E7314  38 80 00 11 */	li r4, 0x11
/* 805E7318  38 A0 00 00 */	li r5, 0
/* 805E731C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805E7320  FC 40 08 90 */	fmr f2, f1
/* 805E7324  4B FF 7C 41 */	bl SetAnm__8daB_GG_cFiiff
/* 805E7328  38 00 00 00 */	li r0, 0
/* 805E732C  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 805E7330  38 C0 00 01 */	li r6, 1
/* 805E7334  98 DE 05 C7 */	stb r6, 0x5c7(r30)
/* 805E7338  38 60 00 00 */	li r3, 0
/* 805E733C  38 A0 00 02 */	li r5, 2
/* 805E7340  38 80 00 0A */	li r4, 0xa
/* 805E7344  38 00 00 03 */	li r0, 3
/* 805E7348  7C 09 03 A6 */	mtctr r0
lbl_805E734C:
/* 805E734C  88 1E 06 90 */	lbz r0, 0x690(r30)
/* 805E7350  28 00 00 00 */	cmplwi r0, 0
/* 805E7354  40 82 00 10 */	bne lbl_805E7364
/* 805E7358  38 03 08 28 */	addi r0, r3, 0x828
/* 805E735C  7C BE 01 AE */	stbx r5, r30, r0
/* 805E7360  48 00 00 0C */	b lbl_805E736C
lbl_805E7364:
/* 805E7364  38 03 08 28 */	addi r0, r3, 0x828
/* 805E7368  7C DE 01 AE */	stbx r6, r30, r0
lbl_805E736C:
/* 805E736C  7C FE 1A 14 */	add r7, r30, r3
/* 805E7370  80 07 08 14 */	lwz r0, 0x814(r7)
/* 805E7374  60 00 00 01 */	ori r0, r0, 1
/* 805E7378  90 07 08 14 */	stw r0, 0x814(r7)
/* 805E737C  98 87 08 8B */	stb r4, 0x88b(r7)
/* 805E7380  38 63 01 38 */	addi r3, r3, 0x138
/* 805E7384  42 00 FF C8 */	bdnz lbl_805E734C
lbl_805E7388:
/* 805E7388  7F C3 F3 78 */	mr r3, r30
/* 805E738C  48 00 36 21 */	bl F_AtHit__8daB_GG_cFv
/* 805E7390  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805E7394  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805E7398  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E739C  7C 08 03 A6 */	mtlr r0
/* 805E73A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805E73A4  4E 80 00 20 */	blr 
