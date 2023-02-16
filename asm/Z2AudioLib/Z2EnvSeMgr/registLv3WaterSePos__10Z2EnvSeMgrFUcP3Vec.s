lbl_802C9F58:
/* 802C9F58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C9F5C  7C 08 02 A6 */	mflr r0
/* 802C9F60  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C9F64  39 61 00 20 */	addi r11, r1, 0x20
/* 802C9F68  48 09 82 71 */	bl _savegpr_28
/* 802C9F6C  7C 7D 1B 78 */	mr r29, r3
/* 802C9F70  7C 9E 23 78 */	mr r30, r4
/* 802C9F74  7C BF 2B 78 */	mr r31, r5
/* 802C9F78  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 802C9F7C  38 03 FF 92 */	addi r0, r3, -110
/* 802C9F80  28 00 00 09 */	cmplwi r0, 9
/* 802C9F84  41 81 00 4C */	bgt lbl_802C9FD0
/* 802C9F88  3C 60 80 3D */	lis r3, lit_5258@ha /* 0x803CBC28@ha */
/* 802C9F8C  38 63 BC 28 */	addi r3, r3, lit_5258@l /* 0x803CBC28@l */
/* 802C9F90  54 00 10 3A */	slwi r0, r0, 2
/* 802C9F94  7C 03 00 2E */	lwzx r0, r3, r0
/* 802C9F98  7C 09 03 A6 */	mtctr r0
/* 802C9F9C  4E 80 04 20 */	bctr 
/* 802C9FA0  38 7D 02 24 */	addi r3, r29, 0x224
/* 802C9FA4  7F E4 FB 78 */	mr r4, r31
/* 802C9FA8  4B FE 4B C9 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802C9FAC  48 00 07 D0 */	b lbl_802CA77C
/* 802C9FB0  38 7D 02 58 */	addi r3, r29, 0x258
/* 802C9FB4  7F E4 FB 78 */	mr r4, r31
/* 802C9FB8  4B FE 4B B9 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802C9FBC  48 00 07 C0 */	b lbl_802CA77C
/* 802C9FC0  38 7D 02 8C */	addi r3, r29, 0x28c
/* 802C9FC4  7F E4 FB 78 */	mr r4, r31
/* 802C9FC8  4B FE 4B A9 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802C9FCC  48 00 07 B0 */	b lbl_802CA77C
lbl_802C9FD0:
/* 802C9FD0  80 6D 86 00 */	lwz r3, __OSReport_disable-0x18(r13)
/* 802C9FD4  88 03 00 0C */	lbz r0, 0xc(r3)
/* 802C9FD8  7C 00 07 74 */	extsb r0, r0
/* 802C9FDC  28 00 00 0D */	cmplwi r0, 0xd
/* 802C9FE0  41 81 07 9C */	bgt lbl_802CA77C
/* 802C9FE4  3C 60 80 3D */	lis r3, lit_5259@ha /* 0x803CBBF0@ha */
/* 802C9FE8  38 63 BB F0 */	addi r3, r3, lit_5259@l /* 0x803CBBF0@l */
/* 802C9FEC  54 00 10 3A */	slwi r0, r0, 2
/* 802C9FF0  7C 03 00 2E */	lwzx r0, r3, r0
/* 802C9FF4  7C 09 03 A6 */	mtctr r0
/* 802C9FF8  4E 80 04 20 */	bctr 
/* 802C9FFC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA000  28 00 00 6B */	cmplwi r0, 0x6b
/* 802CA004  40 82 00 10 */	bne lbl_802CA014
/* 802CA008  38 7D 01 BC */	addi r3, r29, 0x1bc
/* 802CA00C  7F E4 FB 78 */	mr r4, r31
/* 802CA010  4B FE 4B 61 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
lbl_802CA014:
/* 802CA014  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA018  28 00 00 64 */	cmplwi r0, 0x64
/* 802CA01C  40 82 07 60 */	bne lbl_802CA77C
/* 802CA020  38 7D 01 F0 */	addi r3, r29, 0x1f0
/* 802CA024  7F E4 FB 78 */	mr r4, r31
/* 802CA028  4B FE 4B 49 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA02C  48 00 07 50 */	b lbl_802CA77C
/* 802CA030  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA034  28 00 00 64 */	cmplwi r0, 0x64
/* 802CA038  40 82 00 14 */	bne lbl_802CA04C
/* 802CA03C  38 7D 01 F0 */	addi r3, r29, 0x1f0
/* 802CA040  7F E4 FB 78 */	mr r4, r31
/* 802CA044  4B FE 4B 2D */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA048  48 00 07 34 */	b lbl_802CA77C
lbl_802CA04C:
/* 802CA04C  28 00 00 67 */	cmplwi r0, 0x67
/* 802CA050  40 82 00 30 */	bne lbl_802CA080
/* 802CA054  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA058  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA05C  38 63 09 58 */	addi r3, r3, 0x958
/* 802CA060  38 80 00 08 */	li r4, 8
/* 802CA064  4B D6 A7 FD */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA068  2C 03 00 00 */	cmpwi r3, 0
/* 802CA06C  41 82 00 14 */	beq lbl_802CA080
/* 802CA070  38 7D 02 24 */	addi r3, r29, 0x224
/* 802CA074  7F E4 FB 78 */	mr r4, r31
/* 802CA078  4B FE 4A F9 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA07C  48 00 07 00 */	b lbl_802CA77C
lbl_802CA080:
/* 802CA080  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA084  28 00 00 68 */	cmplwi r0, 0x68
/* 802CA088  40 82 00 30 */	bne lbl_802CA0B8
/* 802CA08C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA090  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA094  38 63 09 58 */	addi r3, r3, 0x958
/* 802CA098  38 80 00 09 */	li r4, 9
/* 802CA09C  4B D6 A7 C5 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA0A0  2C 03 00 00 */	cmpwi r3, 0
/* 802CA0A4  41 82 00 14 */	beq lbl_802CA0B8
/* 802CA0A8  38 7D 02 24 */	addi r3, r29, 0x224
/* 802CA0AC  7F E4 FB 78 */	mr r4, r31
/* 802CA0B0  4B FE 4A C1 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA0B4  48 00 06 C8 */	b lbl_802CA77C
lbl_802CA0B8:
/* 802CA0B8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA0BC  28 00 00 69 */	cmplwi r0, 0x69
/* 802CA0C0  40 82 00 48 */	bne lbl_802CA108
/* 802CA0C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA0C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA0CC  3B 83 09 58 */	addi r28, r3, 0x958
/* 802CA0D0  7F 83 E3 78 */	mr r3, r28
/* 802CA0D4  38 80 00 08 */	li r4, 8
/* 802CA0D8  4B D6 A7 89 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA0DC  2C 03 00 00 */	cmpwi r3, 0
/* 802CA0E0  41 82 00 28 */	beq lbl_802CA108
/* 802CA0E4  7F 83 E3 78 */	mr r3, r28
/* 802CA0E8  38 80 00 03 */	li r4, 3
/* 802CA0EC  4B D6 A7 75 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA0F0  2C 03 00 00 */	cmpwi r3, 0
/* 802CA0F4  41 82 00 14 */	beq lbl_802CA108
/* 802CA0F8  38 7D 02 24 */	addi r3, r29, 0x224
/* 802CA0FC  7F E4 FB 78 */	mr r4, r31
/* 802CA100  4B FE 4A 71 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA104  48 00 06 78 */	b lbl_802CA77C
lbl_802CA108:
/* 802CA108  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA10C  28 00 00 6A */	cmplwi r0, 0x6a
/* 802CA110  40 82 06 6C */	bne lbl_802CA77C
/* 802CA114  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA118  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA11C  3B 83 09 58 */	addi r28, r3, 0x958
/* 802CA120  7F 83 E3 78 */	mr r3, r28
/* 802CA124  38 80 00 09 */	li r4, 9
/* 802CA128  4B D6 A7 39 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA12C  2C 03 00 00 */	cmpwi r3, 0
/* 802CA130  41 82 06 4C */	beq lbl_802CA77C
/* 802CA134  7F 83 E3 78 */	mr r3, r28
/* 802CA138  38 80 00 01 */	li r4, 1
/* 802CA13C  4B D6 A7 25 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA140  2C 03 00 00 */	cmpwi r3, 0
/* 802CA144  41 82 06 38 */	beq lbl_802CA77C
/* 802CA148  38 7D 02 24 */	addi r3, r29, 0x224
/* 802CA14C  7F E4 FB 78 */	mr r4, r31
/* 802CA150  4B FE 4A 21 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA154  48 00 06 28 */	b lbl_802CA77C
/* 802CA158  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA15C  28 00 00 64 */	cmplwi r0, 0x64
/* 802CA160  40 82 00 48 */	bne lbl_802CA1A8
/* 802CA164  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA168  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA16C  3B 83 09 58 */	addi r28, r3, 0x958
/* 802CA170  7F 83 E3 78 */	mr r3, r28
/* 802CA174  38 80 00 08 */	li r4, 8
/* 802CA178  4B D6 A6 E9 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA17C  2C 03 00 00 */	cmpwi r3, 0
/* 802CA180  40 82 00 28 */	bne lbl_802CA1A8
/* 802CA184  7F 83 E3 78 */	mr r3, r28
/* 802CA188  38 80 00 09 */	li r4, 9
/* 802CA18C  4B D6 A6 D5 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA190  2C 03 00 00 */	cmpwi r3, 0
/* 802CA194  40 82 00 14 */	bne lbl_802CA1A8
/* 802CA198  38 7D 01 F0 */	addi r3, r29, 0x1f0
/* 802CA19C  7F E4 FB 78 */	mr r4, r31
/* 802CA1A0  4B FE 49 D1 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA1A4  48 00 00 C8 */	b lbl_802CA26C
lbl_802CA1A8:
/* 802CA1A8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA1AC  28 00 00 65 */	cmplwi r0, 0x65
/* 802CA1B0  40 82 00 38 */	bne lbl_802CA1E8
/* 802CA1B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA1B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA1BC  3B 83 09 58 */	addi r28, r3, 0x958
/* 802CA1C0  7F 83 E3 78 */	mr r3, r28
/* 802CA1C4  38 80 00 08 */	li r4, 8
/* 802CA1C8  4B D6 A6 99 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA1CC  2C 03 00 00 */	cmpwi r3, 0
/* 802CA1D0  41 82 00 18 */	beq lbl_802CA1E8
/* 802CA1D4  7F 83 E3 78 */	mr r3, r28
/* 802CA1D8  38 80 00 09 */	li r4, 9
/* 802CA1DC  4B D6 A6 85 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA1E0  2C 03 00 00 */	cmpwi r3, 0
/* 802CA1E4  41 82 00 38 */	beq lbl_802CA21C
lbl_802CA1E8:
/* 802CA1E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA1EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA1F0  3B 83 09 58 */	addi r28, r3, 0x958
/* 802CA1F4  7F 83 E3 78 */	mr r3, r28
/* 802CA1F8  38 80 00 08 */	li r4, 8
/* 802CA1FC  4B D6 A6 65 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA200  2C 03 00 00 */	cmpwi r3, 0
/* 802CA204  40 82 00 28 */	bne lbl_802CA22C
/* 802CA208  7F 83 E3 78 */	mr r3, r28
/* 802CA20C  38 80 00 09 */	li r4, 9
/* 802CA210  4B D6 A6 51 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA214  2C 03 00 00 */	cmpwi r3, 0
/* 802CA218  41 82 00 14 */	beq lbl_802CA22C
lbl_802CA21C:
/* 802CA21C  38 7D 01 F0 */	addi r3, r29, 0x1f0
/* 802CA220  7F E4 FB 78 */	mr r4, r31
/* 802CA224  4B FE 49 4D */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA228  48 00 00 44 */	b lbl_802CA26C
lbl_802CA22C:
/* 802CA22C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA230  28 00 00 66 */	cmplwi r0, 0x66
/* 802CA234  40 82 00 38 */	bne lbl_802CA26C
/* 802CA238  7F 83 E3 78 */	mr r3, r28
/* 802CA23C  38 80 00 08 */	li r4, 8
/* 802CA240  4B D6 A6 21 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA244  2C 03 00 00 */	cmpwi r3, 0
/* 802CA248  41 82 00 24 */	beq lbl_802CA26C
/* 802CA24C  7F 83 E3 78 */	mr r3, r28
/* 802CA250  38 80 00 09 */	li r4, 9
/* 802CA254  4B D6 A6 0D */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA258  2C 03 00 00 */	cmpwi r3, 0
/* 802CA25C  41 82 00 10 */	beq lbl_802CA26C
/* 802CA260  38 7D 01 F0 */	addi r3, r29, 0x1f0
/* 802CA264  7F E4 FB 78 */	mr r4, r31
/* 802CA268  4B FE 49 09 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
lbl_802CA26C:
/* 802CA26C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA270  28 00 00 67 */	cmplwi r0, 0x67
/* 802CA274  40 82 00 2C */	bne lbl_802CA2A0
/* 802CA278  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA27C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA280  38 63 09 58 */	addi r3, r3, 0x958
/* 802CA284  38 80 00 08 */	li r4, 8
/* 802CA288  4B D6 A5 D9 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA28C  2C 03 00 00 */	cmpwi r3, 0
/* 802CA290  41 82 00 10 */	beq lbl_802CA2A0
/* 802CA294  38 7D 02 24 */	addi r3, r29, 0x224
/* 802CA298  7F E4 FB 78 */	mr r4, r31
/* 802CA29C  4B FE 48 D5 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
lbl_802CA2A0:
/* 802CA2A0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA2A4  28 00 00 68 */	cmplwi r0, 0x68
/* 802CA2A8  40 82 00 2C */	bne lbl_802CA2D4
/* 802CA2AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA2B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA2B4  38 63 09 58 */	addi r3, r3, 0x958
/* 802CA2B8  38 80 00 09 */	li r4, 9
/* 802CA2BC  4B D6 A5 A5 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA2C0  2C 03 00 00 */	cmpwi r3, 0
/* 802CA2C4  41 82 00 10 */	beq lbl_802CA2D4
/* 802CA2C8  38 7D 02 24 */	addi r3, r29, 0x224
/* 802CA2CC  7F E4 FB 78 */	mr r4, r31
/* 802CA2D0  4B FE 48 A1 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
lbl_802CA2D4:
/* 802CA2D4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA2D8  28 00 00 69 */	cmplwi r0, 0x69
/* 802CA2DC  40 82 00 48 */	bne lbl_802CA324
/* 802CA2E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA2E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA2E8  3B 83 09 58 */	addi r28, r3, 0x958
/* 802CA2EC  7F 83 E3 78 */	mr r3, r28
/* 802CA2F0  38 80 00 08 */	li r4, 8
/* 802CA2F4  4B D6 A5 6D */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA2F8  2C 03 00 00 */	cmpwi r3, 0
/* 802CA2FC  41 82 00 28 */	beq lbl_802CA324
/* 802CA300  7F 83 E3 78 */	mr r3, r28
/* 802CA304  38 80 00 03 */	li r4, 3
/* 802CA308  4B D6 A5 59 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA30C  2C 03 00 00 */	cmpwi r3, 0
/* 802CA310  41 82 00 14 */	beq lbl_802CA324
/* 802CA314  38 7D 02 8C */	addi r3, r29, 0x28c
/* 802CA318  7F E4 FB 78 */	mr r4, r31
/* 802CA31C  4B FE 48 55 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA320  48 00 00 50 */	b lbl_802CA370
lbl_802CA324:
/* 802CA324  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA328  28 00 00 6B */	cmplwi r0, 0x6b
/* 802CA32C  40 82 00 44 */	bne lbl_802CA370
/* 802CA330  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA334  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA338  3B 83 09 58 */	addi r28, r3, 0x958
/* 802CA33C  7F 83 E3 78 */	mr r3, r28
/* 802CA340  38 80 00 08 */	li r4, 8
/* 802CA344  4B D6 A5 1D */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA348  2C 03 00 00 */	cmpwi r3, 0
/* 802CA34C  41 82 00 24 */	beq lbl_802CA370
/* 802CA350  7F 83 E3 78 */	mr r3, r28
/* 802CA354  38 80 00 03 */	li r4, 3
/* 802CA358  4B D6 A5 09 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA35C  2C 03 00 00 */	cmpwi r3, 0
/* 802CA360  40 82 00 10 */	bne lbl_802CA370
/* 802CA364  38 7D 02 58 */	addi r3, r29, 0x258
/* 802CA368  7F E4 FB 78 */	mr r4, r31
/* 802CA36C  4B FE 48 05 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
lbl_802CA370:
/* 802CA370  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA374  28 00 00 6A */	cmplwi r0, 0x6a
/* 802CA378  40 82 00 48 */	bne lbl_802CA3C0
/* 802CA37C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA380  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA384  3B 83 09 58 */	addi r28, r3, 0x958
/* 802CA388  7F 83 E3 78 */	mr r3, r28
/* 802CA38C  38 80 00 09 */	li r4, 9
/* 802CA390  4B D6 A4 D1 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA394  2C 03 00 00 */	cmpwi r3, 0
/* 802CA398  41 82 00 28 */	beq lbl_802CA3C0
/* 802CA39C  7F 83 E3 78 */	mr r3, r28
/* 802CA3A0  38 80 00 01 */	li r4, 1
/* 802CA3A4  4B D6 A4 BD */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA3A8  2C 03 00 00 */	cmpwi r3, 0
/* 802CA3AC  41 82 00 14 */	beq lbl_802CA3C0
/* 802CA3B0  38 7D 02 8C */	addi r3, r29, 0x28c
/* 802CA3B4  7F E4 FB 78 */	mr r4, r31
/* 802CA3B8  4B FE 47 B9 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA3BC  48 00 03 C0 */	b lbl_802CA77C
lbl_802CA3C0:
/* 802CA3C0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA3C4  28 00 00 6C */	cmplwi r0, 0x6c
/* 802CA3C8  40 82 03 B4 */	bne lbl_802CA77C
/* 802CA3CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA3D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA3D4  3B 83 09 58 */	addi r28, r3, 0x958
/* 802CA3D8  7F 83 E3 78 */	mr r3, r28
/* 802CA3DC  38 80 00 09 */	li r4, 9
/* 802CA3E0  4B D6 A4 81 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA3E4  2C 03 00 00 */	cmpwi r3, 0
/* 802CA3E8  41 82 03 94 */	beq lbl_802CA77C
/* 802CA3EC  7F 83 E3 78 */	mr r3, r28
/* 802CA3F0  38 80 00 01 */	li r4, 1
/* 802CA3F4  4B D6 A4 6D */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA3F8  2C 03 00 00 */	cmpwi r3, 0
/* 802CA3FC  40 82 03 80 */	bne lbl_802CA77C
/* 802CA400  38 7D 02 58 */	addi r3, r29, 0x258
/* 802CA404  7F E4 FB 78 */	mr r4, r31
/* 802CA408  4B FE 47 69 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA40C  48 00 03 70 */	b lbl_802CA77C
/* 802CA410  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA414  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA418  38 63 09 58 */	addi r3, r3, 0x958
/* 802CA41C  38 80 00 08 */	li r4, 8
/* 802CA420  4B D6 A4 41 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA424  2C 03 00 00 */	cmpwi r3, 0
/* 802CA428  41 82 03 54 */	beq lbl_802CA77C
/* 802CA42C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA430  28 00 00 67 */	cmplwi r0, 0x67
/* 802CA434  40 82 00 14 */	bne lbl_802CA448
/* 802CA438  38 7D 02 24 */	addi r3, r29, 0x224
/* 802CA43C  7F E4 FB 78 */	mr r4, r31
/* 802CA440  4B FE 47 31 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA444  48 00 03 38 */	b lbl_802CA77C
lbl_802CA448:
/* 802CA448  28 00 00 6B */	cmplwi r0, 0x6b
/* 802CA44C  40 82 03 30 */	bne lbl_802CA77C
/* 802CA450  38 7D 01 BC */	addi r3, r29, 0x1bc
/* 802CA454  7F E4 FB 78 */	mr r4, r31
/* 802CA458  4B FE 47 19 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA45C  48 00 03 20 */	b lbl_802CA77C
/* 802CA460  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA464  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA468  3B 83 09 58 */	addi r28, r3, 0x958
/* 802CA46C  7F 83 E3 78 */	mr r3, r28
/* 802CA470  38 80 00 09 */	li r4, 9
/* 802CA474  4B D6 A3 ED */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA478  2C 03 00 00 */	cmpwi r3, 0
/* 802CA47C  41 82 00 64 */	beq lbl_802CA4E0
/* 802CA480  7F 83 E3 78 */	mr r3, r28
/* 802CA484  38 80 00 01 */	li r4, 1
/* 802CA488  4B D6 A3 D9 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA48C  2C 03 00 00 */	cmpwi r3, 0
/* 802CA490  41 82 00 50 */	beq lbl_802CA4E0
/* 802CA494  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA498  28 00 00 65 */	cmplwi r0, 0x65
/* 802CA49C  40 82 00 14 */	bne lbl_802CA4B0
/* 802CA4A0  38 7D 01 F0 */	addi r3, r29, 0x1f0
/* 802CA4A4  7F E4 FB 78 */	mr r4, r31
/* 802CA4A8  4B FE 46 C9 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA4AC  48 00 02 D0 */	b lbl_802CA77C
lbl_802CA4B0:
/* 802CA4B0  28 00 00 67 */	cmplwi r0, 0x67
/* 802CA4B4  40 82 00 14 */	bne lbl_802CA4C8
/* 802CA4B8  38 7D 02 24 */	addi r3, r29, 0x224
/* 802CA4BC  7F E4 FB 78 */	mr r4, r31
/* 802CA4C0  4B FE 46 B1 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA4C4  48 00 02 B8 */	b lbl_802CA77C
lbl_802CA4C8:
/* 802CA4C8  28 00 00 6B */	cmplwi r0, 0x6b
/* 802CA4CC  40 82 02 B0 */	bne lbl_802CA77C
/* 802CA4D0  38 7D 02 58 */	addi r3, r29, 0x258
/* 802CA4D4  7F E4 FB 78 */	mr r4, r31
/* 802CA4D8  4B FE 46 99 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA4DC  48 00 02 A0 */	b lbl_802CA77C
lbl_802CA4E0:
/* 802CA4E0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA4E4  28 00 00 64 */	cmplwi r0, 0x64
/* 802CA4E8  40 82 02 94 */	bne lbl_802CA77C
/* 802CA4EC  38 7D 01 F0 */	addi r3, r29, 0x1f0
/* 802CA4F0  7F E4 FB 78 */	mr r4, r31
/* 802CA4F4  4B FE 46 7D */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA4F8  48 00 02 84 */	b lbl_802CA77C
/* 802CA4FC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA500  28 00 00 64 */	cmplwi r0, 0x64
/* 802CA504  40 82 00 30 */	bne lbl_802CA534
/* 802CA508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA50C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA510  38 63 09 58 */	addi r3, r3, 0x958
/* 802CA514  38 80 00 31 */	li r4, 0x31
/* 802CA518  4B D6 A3 49 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA51C  2C 03 00 00 */	cmpwi r3, 0
/* 802CA520  41 82 00 14 */	beq lbl_802CA534
/* 802CA524  38 7D 01 F0 */	addi r3, r29, 0x1f0
/* 802CA528  7F E4 FB 78 */	mr r4, r31
/* 802CA52C  4B FE 46 45 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA530  48 00 02 4C */	b lbl_802CA77C
lbl_802CA534:
/* 802CA534  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA538  28 00 00 67 */	cmplwi r0, 0x67
/* 802CA53C  40 82 00 30 */	bne lbl_802CA56C
/* 802CA540  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA544  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA548  38 63 09 58 */	addi r3, r3, 0x958
/* 802CA54C  38 80 00 31 */	li r4, 0x31
/* 802CA550  4B D6 A3 11 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA554  2C 03 00 00 */	cmpwi r3, 0
/* 802CA558  41 82 00 14 */	beq lbl_802CA56C
/* 802CA55C  38 7D 02 8C */	addi r3, r29, 0x28c
/* 802CA560  7F E4 FB 78 */	mr r4, r31
/* 802CA564  4B FE 46 0D */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA568  48 00 02 14 */	b lbl_802CA77C
lbl_802CA56C:
/* 802CA56C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA570  28 00 00 68 */	cmplwi r0, 0x68
/* 802CA574  40 82 00 30 */	bne lbl_802CA5A4
/* 802CA578  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA57C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA580  38 63 09 58 */	addi r3, r3, 0x958
/* 802CA584  38 80 00 08 */	li r4, 8
/* 802CA588  4B D6 A2 D9 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA58C  2C 03 00 00 */	cmpwi r3, 0
/* 802CA590  41 82 00 14 */	beq lbl_802CA5A4
/* 802CA594  38 7D 02 58 */	addi r3, r29, 0x258
/* 802CA598  7F E4 FB 78 */	mr r4, r31
/* 802CA59C  4B FE 45 D5 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA5A0  48 00 01 DC */	b lbl_802CA77C
lbl_802CA5A4:
/* 802CA5A4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA5A8  28 00 00 6B */	cmplwi r0, 0x6b
/* 802CA5AC  40 82 01 D0 */	bne lbl_802CA77C
/* 802CA5B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA5B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA5B8  38 63 09 58 */	addi r3, r3, 0x958
/* 802CA5BC  38 80 00 31 */	li r4, 0x31
/* 802CA5C0  4B D6 A2 A1 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA5C4  2C 03 00 00 */	cmpwi r3, 0
/* 802CA5C8  41 82 01 B4 */	beq lbl_802CA77C
/* 802CA5CC  38 7D 01 BC */	addi r3, r29, 0x1bc
/* 802CA5D0  7F E4 FB 78 */	mr r4, r31
/* 802CA5D4  4B FE 45 9D */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA5D8  48 00 01 A4 */	b lbl_802CA77C
/* 802CA5DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA5E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA5E4  38 63 09 58 */	addi r3, r3, 0x958
/* 802CA5E8  38 80 00 09 */	li r4, 9
/* 802CA5EC  4B D6 A2 75 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA5F0  2C 03 00 00 */	cmpwi r3, 0
/* 802CA5F4  41 82 00 50 */	beq lbl_802CA644
/* 802CA5F8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA5FC  28 00 00 65 */	cmplwi r0, 0x65
/* 802CA600  40 82 00 14 */	bne lbl_802CA614
/* 802CA604  38 7D 01 F0 */	addi r3, r29, 0x1f0
/* 802CA608  7F E4 FB 78 */	mr r4, r31
/* 802CA60C  4B FE 45 65 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA610  48 00 01 6C */	b lbl_802CA77C
lbl_802CA614:
/* 802CA614  28 00 00 67 */	cmplwi r0, 0x67
/* 802CA618  40 82 00 14 */	bne lbl_802CA62C
/* 802CA61C  38 7D 02 24 */	addi r3, r29, 0x224
/* 802CA620  7F E4 FB 78 */	mr r4, r31
/* 802CA624  4B FE 45 4D */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA628  48 00 01 54 */	b lbl_802CA77C
lbl_802CA62C:
/* 802CA62C  28 00 00 6B */	cmplwi r0, 0x6b
/* 802CA630  40 82 01 4C */	bne lbl_802CA77C
/* 802CA634  38 7D 01 BC */	addi r3, r29, 0x1bc
/* 802CA638  7F E4 FB 78 */	mr r4, r31
/* 802CA63C  4B FE 45 35 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA640  48 00 01 3C */	b lbl_802CA77C
lbl_802CA644:
/* 802CA644  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA648  28 00 00 64 */	cmplwi r0, 0x64
/* 802CA64C  40 82 01 30 */	bne lbl_802CA77C
/* 802CA650  38 7D 01 F0 */	addi r3, r29, 0x1f0
/* 802CA654  7F E4 FB 78 */	mr r4, r31
/* 802CA658  4B FE 45 19 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA65C  48 00 01 20 */	b lbl_802CA77C
/* 802CA660  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA664  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA668  3B 83 09 58 */	addi r28, r3, 0x958
/* 802CA66C  7F 83 E3 78 */	mr r3, r28
/* 802CA670  38 80 00 08 */	li r4, 8
/* 802CA674  4B D6 A1 ED */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA678  2C 03 00 00 */	cmpwi r3, 0
/* 802CA67C  41 82 01 00 */	beq lbl_802CA77C
/* 802CA680  7F 83 E3 78 */	mr r3, r28
/* 802CA684  38 80 00 03 */	li r4, 3
/* 802CA688  4B D6 A1 D9 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA68C  2C 03 00 00 */	cmpwi r3, 0
/* 802CA690  41 82 00 EC */	beq lbl_802CA77C
/* 802CA694  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA698  28 00 00 67 */	cmplwi r0, 0x67
/* 802CA69C  40 82 00 14 */	bne lbl_802CA6B0
/* 802CA6A0  38 7D 02 24 */	addi r3, r29, 0x224
/* 802CA6A4  7F E4 FB 78 */	mr r4, r31
/* 802CA6A8  4B FE 44 C9 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA6AC  48 00 00 D0 */	b lbl_802CA77C
lbl_802CA6B0:
/* 802CA6B0  28 00 00 6B */	cmplwi r0, 0x6b
/* 802CA6B4  40 82 00 C8 */	bne lbl_802CA77C
/* 802CA6B8  38 7D 02 58 */	addi r3, r29, 0x258
/* 802CA6BC  7F E4 FB 78 */	mr r4, r31
/* 802CA6C0  4B FE 44 B1 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA6C4  48 00 00 B8 */	b lbl_802CA77C
/* 802CA6C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802CA6CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802CA6D0  3B 83 09 58 */	addi r28, r3, 0x958
/* 802CA6D4  7F 83 E3 78 */	mr r3, r28
/* 802CA6D8  38 80 00 30 */	li r4, 0x30
/* 802CA6DC  4B D6 A1 85 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA6E0  2C 03 00 00 */	cmpwi r3, 0
/* 802CA6E4  41 82 00 80 */	beq lbl_802CA764
/* 802CA6E8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA6EC  28 00 00 65 */	cmplwi r0, 0x65
/* 802CA6F0  40 82 00 14 */	bne lbl_802CA704
/* 802CA6F4  38 7D 01 F0 */	addi r3, r29, 0x1f0
/* 802CA6F8  7F E4 FB 78 */	mr r4, r31
/* 802CA6FC  4B FE 44 75 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA700  48 00 00 7C */	b lbl_802CA77C
lbl_802CA704:
/* 802CA704  28 00 00 67 */	cmplwi r0, 0x67
/* 802CA708  40 82 00 14 */	bne lbl_802CA71C
/* 802CA70C  38 7D 02 8C */	addi r3, r29, 0x28c
/* 802CA710  7F E4 FB 78 */	mr r4, r31
/* 802CA714  4B FE 44 5D */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA718  48 00 00 64 */	b lbl_802CA77C
lbl_802CA71C:
/* 802CA71C  28 00 00 68 */	cmplwi r0, 0x68
/* 802CA720  40 82 00 28 */	bne lbl_802CA748
/* 802CA724  7F 83 E3 78 */	mr r3, r28
/* 802CA728  38 80 00 09 */	li r4, 9
/* 802CA72C  4B D6 A1 35 */	bl isSwitch__12dSv_memBit_cCFi
/* 802CA730  2C 03 00 00 */	cmpwi r3, 0
/* 802CA734  41 82 00 14 */	beq lbl_802CA748
/* 802CA738  38 7D 02 58 */	addi r3, r29, 0x258
/* 802CA73C  7F E4 FB 78 */	mr r4, r31
/* 802CA740  4B FE 44 31 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA744  48 00 00 38 */	b lbl_802CA77C
lbl_802CA748:
/* 802CA748  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA74C  28 00 00 6B */	cmplwi r0, 0x6b
/* 802CA750  40 82 00 2C */	bne lbl_802CA77C
/* 802CA754  38 7D 01 BC */	addi r3, r29, 0x1bc
/* 802CA758  7F E4 FB 78 */	mr r4, r31
/* 802CA75C  4B FE 44 15 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
/* 802CA760  48 00 00 1C */	b lbl_802CA77C
lbl_802CA764:
/* 802CA764  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CA768  28 00 00 64 */	cmplwi r0, 0x64
/* 802CA76C  40 82 00 10 */	bne lbl_802CA77C
/* 802CA770  38 7D 01 F0 */	addi r3, r29, 0x1f0
/* 802CA774  7F E4 FB 78 */	mr r4, r31
/* 802CA778  4B FE 43 F9 */	bl registMultiSePos__12Z2MultiSeMgrFP3Vec
lbl_802CA77C:
/* 802CA77C  39 61 00 20 */	addi r11, r1, 0x20
/* 802CA780  48 09 7A A5 */	bl _restgpr_28
/* 802CA784  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CA788  7C 08 03 A6 */	mtlr r0
/* 802CA78C  38 21 00 20 */	addi r1, r1, 0x20
/* 802CA790  4E 80 00 20 */	blr 
