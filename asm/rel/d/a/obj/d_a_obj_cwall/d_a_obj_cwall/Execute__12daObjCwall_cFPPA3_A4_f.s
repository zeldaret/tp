lbl_80BD6F80:
/* 80BD6F80  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BD6F84  7C 08 02 A6 */	mflr r0
/* 80BD6F88  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BD6F8C  39 61 00 60 */	addi r11, r1, 0x60
/* 80BD6F90  4B 78 B2 31 */	bl _savegpr_22
/* 80BD6F94  7C 7D 1B 78 */	mr r29, r3
/* 80BD6F98  7C 9E 23 78 */	mr r30, r4
/* 80BD6F9C  C0 03 0F 38 */	lfs f0, 0xf38(r3)
/* 80BD6FA0  D0 03 0F 44 */	stfs f0, 0xf44(r3)
/* 80BD6FA4  C0 03 0F 3C */	lfs f0, 0xf3c(r3)
/* 80BD6FA8  D0 03 0F 48 */	stfs f0, 0xf48(r3)
/* 80BD6FAC  C0 03 0F 40 */	lfs f0, 0xf40(r3)
/* 80BD6FB0  D0 03 0F 4C */	stfs f0, 0xf4c(r3)
/* 80BD6FB4  C0 03 0F 50 */	lfs f0, 0xf50(r3)
/* 80BD6FB8  D0 03 0F 54 */	stfs f0, 0xf54(r3)
/* 80BD6FBC  48 00 0B 19 */	bl chain_control__12daObjCwall_cFv
/* 80BD6FC0  83 FD 0E 8C */	lwz r31, 0xe8c(r29)
/* 80BD6FC4  7F A3 EB 78 */	mr r3, r29
/* 80BD6FC8  38 9F 00 54 */	addi r4, r31, 0x54
/* 80BD6FCC  88 BD 0F 0C */	lbz r5, 0xf0c(r29)
/* 80BD6FD0  4B 58 84 A9 */	bl setFmChainPos__9daPy_py_cFP10fopAc_ac_cP4cXyzi
/* 80BD6FD4  2C 03 00 00 */	cmpwi r3, 0
/* 80BD6FD8  41 82 00 28 */	beq lbl_80BD7000
/* 80BD6FDC  38 00 00 01 */	li r0, 1
/* 80BD6FE0  98 1D 0E 90 */	stb r0, 0xe90(r29)
/* 80BD6FE4  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80BD6FE8  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80BD6FEC  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80BD6FF0  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80BD6FF4  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80BD6FF8  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80BD6FFC  48 00 00 5C */	b lbl_80BD7058
lbl_80BD7000:
/* 80BD7000  38 80 00 00 */	li r4, 0
/* 80BD7004  98 9D 0E 90 */	stb r4, 0xe90(r29)
/* 80BD7008  80 7D 0E 8C */	lwz r3, 0xe8c(r29)
/* 80BD700C  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 80BD7010  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80BD7014  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 80BD7018  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80BD701C  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 80BD7020  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80BD7024  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80BD7028  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80BD702C  41 82 00 10 */	beq lbl_80BD703C
/* 80BD7030  38 00 00 01 */	li r0, 1
/* 80BD7034  98 1D 0F 58 */	stb r0, 0xf58(r29)
/* 80BD7038  48 00 00 20 */	b lbl_80BD7058
lbl_80BD703C:
/* 80BD703C  98 9D 0F 58 */	stb r4, 0xf58(r29)
/* 80BD7040  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80BD7044  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80BD7048  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80BD704C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80BD7050  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80BD7054  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_80BD7058:
/* 80BD7058  88 7D 0E 93 */	lbz r3, 0xe93(r29)
/* 80BD705C  28 03 00 00 */	cmplwi r3, 0
/* 80BD7060  40 82 00 10 */	bne lbl_80BD7070
/* 80BD7064  88 1D 0E 90 */	lbz r0, 0xe90(r29)
/* 80BD7068  28 00 00 00 */	cmplwi r0, 0
/* 80BD706C  40 82 00 18 */	bne lbl_80BD7084
lbl_80BD7070:
/* 80BD7070  28 03 00 00 */	cmplwi r3, 0
/* 80BD7074  41 82 00 1C */	beq lbl_80BD7090
/* 80BD7078  88 1D 0E 90 */	lbz r0, 0xe90(r29)
/* 80BD707C  28 00 00 00 */	cmplwi r0, 0
/* 80BD7080  40 82 00 10 */	bne lbl_80BD7090
lbl_80BD7084:
/* 80BD7084  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020013@ha */
/* 80BD7088  38 63 00 13 */	addi r3, r3, 0x0013 /* 0x00020013@l */
/* 80BD708C  4B 58 84 95 */	bl setPlayerSe__9daPy_py_cFUl
lbl_80BD7090:
/* 80BD7090  7F A3 EB 78 */	mr r3, r29
/* 80BD7094  48 00 0E 45 */	bl chain_control2__12daObjCwall_cFv
/* 80BD7098  88 1D 0E 91 */	lbz r0, 0xe91(r29)
/* 80BD709C  28 00 00 00 */	cmplwi r0, 0
/* 80BD70A0  41 82 00 10 */	beq lbl_80BD70B0
/* 80BD70A4  38 00 03 E8 */	li r0, 0x3e8
/* 80BD70A8  B0 1D 0F 1C */	sth r0, 0xf1c(r29)
/* 80BD70AC  48 00 00 0C */	b lbl_80BD70B8
lbl_80BD70B0:
/* 80BD70B0  38 00 1B 58 */	li r0, 0x1b58
/* 80BD70B4  B0 1D 0F 1C */	sth r0, 0xf1c(r29)
lbl_80BD70B8:
/* 80BD70B8  7F A3 EB 78 */	mr r3, r29
/* 80BD70BC  48 00 01 CD */	bl setTension__12daObjCwall_cFv
/* 80BD70C0  7F A3 EB 78 */	mr r3, r29
/* 80BD70C4  48 00 13 FD */	bl block_mode_proc_call__12daObjCwall_cFv
/* 80BD70C8  7F A3 EB 78 */	mr r3, r29
/* 80BD70CC  48 00 07 39 */	bl setChainMtx__12daObjCwall_cFv
/* 80BD70D0  88 1D 0E 90 */	lbz r0, 0xe90(r29)
/* 80BD70D4  28 00 00 00 */	cmplwi r0, 0
/* 80BD70D8  41 82 00 9C */	beq lbl_80BD7174
/* 80BD70DC  3A C0 00 00 */	li r22, 0
/* 80BD70E0  3B 80 00 00 */	li r28, 0
/* 80BD70E4  3B 60 00 00 */	li r27, 0
/* 80BD70E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD70EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD70F0  3B 03 23 3C */	addi r24, r3, 0x233c
/* 80BD70F4  3C 60 80 BE */	lis r3, l_side_co_offset@ha /* 0x80BDA100@ha */
/* 80BD70F8  3B 23 A1 00 */	addi r25, r3, l_side_co_offset@l /* 0x80BDA100@l */
/* 80BD70FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD7100  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80BD7104:
/* 80BD7104  7C 79 DA 14 */	add r3, r25, r27
/* 80BD7108  C0 03 00 00 */	lfs f0, 0(r3)
/* 80BD710C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BD7110  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BD7114  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BD7118  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BD711C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BD7120  38 7D 0F 38 */	addi r3, r29, 0xf38
/* 80BD7124  4B 43 5C 41 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD7128  7F 43 D3 78 */	mr r3, r26
/* 80BD712C  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80BD7130  4B 43 53 05 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BD7134  7F 43 D3 78 */	mr r3, r26
/* 80BD7138  38 81 00 2C */	addi r4, r1, 0x2c
/* 80BD713C  7C 85 23 78 */	mr r5, r4
/* 80BD7140  4B 76 FC 2D */	bl PSMTXMultVec
/* 80BD7144  7E FD E2 14 */	add r23, r29, r28
/* 80BD7148  38 77 09 80 */	addi r3, r23, 0x980
/* 80BD714C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80BD7150  4B 69 80 8D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BD7154  7F 03 C3 78 */	mr r3, r24
/* 80BD7158  38 97 08 5C */	addi r4, r23, 0x85c
/* 80BD715C  4B 68 DA 4D */	bl Set__4cCcSFP8cCcD_Obj
/* 80BD7160  3A D6 00 01 */	addi r22, r22, 1
/* 80BD7164  2C 16 00 04 */	cmpwi r22, 4
/* 80BD7168  3B 9C 01 3C */	addi r28, r28, 0x13c
/* 80BD716C  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80BD7170  41 80 FF 94 */	blt lbl_80BD7104
lbl_80BD7174:
/* 80BD7174  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80BD7178  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 80BD717C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BD7180  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BD7184  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BD7188  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BD718C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BD7190  38 7D 0F 38 */	addi r3, r29, 0xf38
/* 80BD7194  4B 43 5B D1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD7198  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD719C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD71A0  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80BD71A4  4B 43 52 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BD71A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD71AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD71B0  38 81 00 20 */	addi r4, r1, 0x20
/* 80BD71B4  7C 85 23 78 */	mr r5, r4
/* 80BD71B8  4B 76 FB B5 */	bl PSMTXMultVec
/* 80BD71BC  38 7D 0E 70 */	addi r3, r29, 0xe70
/* 80BD71C0  38 81 00 20 */	addi r4, r1, 0x20
/* 80BD71C4  4B 69 80 19 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BD71C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD71CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD71D0  3A E3 23 3C */	addi r23, r3, 0x233c
/* 80BD71D4  7E E3 BB 78 */	mr r3, r23
/* 80BD71D8  38 9D 0D 4C */	addi r4, r29, 0xd4c
/* 80BD71DC  4B 68 D9 CD */	bl Set__4cCcSFP8cCcD_Obj
/* 80BD71E0  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80BD71E4  90 1E 00 00 */	stw r0, 0(r30)
/* 80BD71E8  7F A3 EB 78 */	mr r3, r29
/* 80BD71EC  4B FF F8 9D */	bl setBaseMtx__12daObjCwall_cFv
/* 80BD71F0  7F A3 EB 78 */	mr r3, r29
/* 80BD71F4  48 00 05 25 */	bl calcSePos__12daObjCwall_cFv
/* 80BD71F8  88 1D 0E 90 */	lbz r0, 0xe90(r29)
/* 80BD71FC  98 1D 0E 93 */	stb r0, 0xe93(r29)
/* 80BD7200  38 61 00 08 */	addi r3, r1, 8
/* 80BD7204  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD7208  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD720C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80BD7210  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80BD7214  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80BD7218  4B 68 F9 1D */	bl __mi__4cXyzCFRC3Vec
/* 80BD721C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BD7220  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BD7224  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BD7228  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BD722C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BD7230  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BD7234  38 61 00 14 */	addi r3, r1, 0x14
/* 80BD7238  4B 68 FE F1 */	bl atan2sX_Z__4cXyzCFv
/* 80BD723C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80BD7240  7C 00 18 50 */	subf r0, r0, r3
/* 80BD7244  7C 03 07 34 */	extsh r3, r0
/* 80BD7248  4B 78 DE 89 */	bl abs
/* 80BD724C  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80BD7250  40 80 00 1C */	bge lbl_80BD726C
/* 80BD7254  38 7D 08 48 */	addi r3, r29, 0x848
/* 80BD7258  38 9F 00 54 */	addi r4, r31, 0x54
/* 80BD725C  4B 69 83 ED */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BD7260  7E E3 BB 78 */	mr r3, r23
/* 80BD7264  38 9D 07 24 */	addi r4, r29, 0x724
/* 80BD7268  4B 68 D9 41 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80BD726C:
/* 80BD726C  38 60 00 01 */	li r3, 1
/* 80BD7270  39 61 00 60 */	addi r11, r1, 0x60
/* 80BD7274  4B 78 AF 99 */	bl _restgpr_22
/* 80BD7278  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BD727C  7C 08 03 A6 */	mtlr r0
/* 80BD7280  38 21 00 60 */	addi r1, r1, 0x60
/* 80BD7284  4E 80 00 20 */	blr 
