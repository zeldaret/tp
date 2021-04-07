lbl_807E5FB8:
/* 807E5FB8  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 807E5FBC  7C 08 02 A6 */	mflr r0
/* 807E5FC0  90 01 01 14 */	stw r0, 0x114(r1)
/* 807E5FC4  39 61 01 10 */	addi r11, r1, 0x110
/* 807E5FC8  4B B7 C2 11 */	bl _savegpr_28
/* 807E5FCC  7C 7F 1B 78 */	mr r31, r3
/* 807E5FD0  7C 9C 23 78 */	mr r28, r4
/* 807E5FD4  3C 60 80 7E */	lis r3, lit_3802@ha /* 0x807E7300@ha */
/* 807E5FD8  3B C3 73 00 */	addi r30, r3, lit_3802@l /* 0x807E7300@l */
/* 807E5FDC  38 61 00 88 */	addi r3, r1, 0x88
/* 807E5FE0  4B 89 1C 89 */	bl __ct__11dBgS_LinChkFv
/* 807E5FE4  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 807E5FE8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807E5FEC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807E5FF0  40 82 00 18 */	bne lbl_807E6008
/* 807E5FF4  38 61 00 88 */	addi r3, r1, 0x88
/* 807E5FF8  38 80 FF FF */	li r4, -1
/* 807E5FFC  4B 89 1C E1 */	bl __dt__11dBgS_LinChkFv
/* 807E6000  38 60 00 00 */	li r3, 0
/* 807E6004  48 00 03 DC */	b lbl_807E63E0
lbl_807E6008:
/* 807E6008  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E600C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E6010  A8 9F 06 6A */	lha r4, 0x66a(r31)
/* 807E6014  4B 82 63 C9 */	bl mDoMtx_YrotS__FPA4_fs
/* 807E6018  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E601C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E6020  A8 9F 06 68 */	lha r4, 0x668(r31)
/* 807E6024  4B 82 63 79 */	bl mDoMtx_XrotM__FPA4_fs
/* 807E6028  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E602C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E6030  7F 84 E3 78 */	mr r4, r28
/* 807E6034  4B 82 64 01 */	bl mDoMtx_YrotM__FPA4_fs
/* 807E6038  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807E603C  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 807E6040  EC 21 00 32 */	fmuls f1, f1, f0
/* 807E6044  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807E6048  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807E604C  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 807E6050  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807E6054  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E6058  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E605C  38 81 00 68 */	addi r4, r1, 0x68
/* 807E6060  38 A1 00 44 */	addi r5, r1, 0x44
/* 807E6064  4B B6 0D 09 */	bl PSMTXMultVec
/* 807E6068  38 61 00 44 */	addi r3, r1, 0x44
/* 807E606C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807E6070  7C 65 1B 78 */	mr r5, r3
/* 807E6074  4B B6 10 1D */	bl PSVECAdd
/* 807E6078  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E607C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E6080  A8 9F 06 6A */	lha r4, 0x66a(r31)
/* 807E6084  4B 82 63 59 */	bl mDoMtx_YrotS__FPA4_fs
/* 807E6088  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E608C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E6090  A8 9F 06 68 */	lha r4, 0x668(r31)
/* 807E6094  4B 82 63 09 */	bl mDoMtx_XrotM__FPA4_fs
/* 807E6098  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E609C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E60A0  7F 84 E3 78 */	mr r4, r28
/* 807E60A4  4B 82 63 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 807E60A8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807E60AC  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 807E60B0  EC 21 00 32 */	fmuls f1, f1, f0
/* 807E60B4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807E60B8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807E60BC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807E60C0  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 807E60C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E60C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E60CC  38 81 00 68 */	addi r4, r1, 0x68
/* 807E60D0  38 A1 00 5C */	addi r5, r1, 0x5c
/* 807E60D4  4B B6 0C 99 */	bl PSMTXMultVec
/* 807E60D8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807E60DC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807E60E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807E60E4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807E60E8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 807E60EC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807E60F0  38 61 00 2C */	addi r3, r1, 0x2c
/* 807E60F4  38 81 00 44 */	addi r4, r1, 0x44
/* 807E60F8  38 A1 00 68 */	addi r5, r1, 0x68
/* 807E60FC  4B A8 09 E9 */	bl __pl__4cXyzCFRC3Vec
/* 807E6100  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807E6104  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807E6108  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807E610C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807E6110  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807E6114  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807E6118  38 61 00 88 */	addi r3, r1, 0x88
/* 807E611C  38 81 00 44 */	addi r4, r1, 0x44
/* 807E6120  38 A1 00 50 */	addi r5, r1, 0x50
/* 807E6124  38 C0 00 00 */	li r6, 0
/* 807E6128  4B 89 1C 3D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807E612C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E6130  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E6134  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 807E6138  7F A3 EB 78 */	mr r3, r29
/* 807E613C  38 81 00 88 */	addi r4, r1, 0x88
/* 807E6140  4B 88 E2 75 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807E6144  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E6148  41 82 00 18 */	beq lbl_807E6160
/* 807E614C  38 61 00 88 */	addi r3, r1, 0x88
/* 807E6150  38 80 FF FF */	li r4, -1
/* 807E6154  4B 89 1B 89 */	bl __dt__11dBgS_LinChkFv
/* 807E6158  38 60 00 01 */	li r3, 1
/* 807E615C  48 00 02 84 */	b lbl_807E63E0
lbl_807E6160:
/* 807E6160  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807E6164  C0 5E 00 04 */	lfs f2, 4(r30)
/* 807E6168  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 807E616C  40 81 00 20 */	ble lbl_807E618C
/* 807E6170  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807E6174  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 807E6178  EC 01 00 32 */	fmuls f0, f1, f0
/* 807E617C  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 807E6180  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807E6184  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 807E6188  48 00 00 20 */	b lbl_807E61A8
lbl_807E618C:
/* 807E618C  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 807E6190  3C 60 80 7E */	lis r3, l_HIO@ha /* 0x807E75C8@ha */
/* 807E6194  38 63 75 C8 */	addi r3, r3, l_HIO@l /* 0x807E75C8@l */
/* 807E6198  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807E619C  FC 00 00 50 */	fneg f0, f0
/* 807E61A0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807E61A4  D0 41 00 70 */	stfs f2, 0x70(r1)
lbl_807E61A8:
/* 807E61A8  38 61 00 20 */	addi r3, r1, 0x20
/* 807E61AC  38 81 00 44 */	addi r4, r1, 0x44
/* 807E61B0  38 A1 00 68 */	addi r5, r1, 0x68
/* 807E61B4  4B A8 09 31 */	bl __pl__4cXyzCFRC3Vec
/* 807E61B8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807E61BC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807E61C0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807E61C4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807E61C8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 807E61CC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807E61D0  38 61 00 88 */	addi r3, r1, 0x88
/* 807E61D4  38 81 00 44 */	addi r4, r1, 0x44
/* 807E61D8  38 A1 00 50 */	addi r5, r1, 0x50
/* 807E61DC  38 C0 00 00 */	li r6, 0
/* 807E61E0  4B 89 1B 85 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807E61E4  7F A3 EB 78 */	mr r3, r29
/* 807E61E8  38 81 00 88 */	addi r4, r1, 0x88
/* 807E61EC  4B 88 E1 C9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807E61F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E61F4  41 82 00 18 */	beq lbl_807E620C
/* 807E61F8  38 61 00 88 */	addi r3, r1, 0x88
/* 807E61FC  38 80 FF FF */	li r4, -1
/* 807E6200  4B 89 1A DD */	bl __dt__11dBgS_LinChkFv
/* 807E6204  38 60 00 01 */	li r3, 1
/* 807E6208  48 00 01 D8 */	b lbl_807E63E0
lbl_807E620C:
/* 807E620C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E6210  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E6214  A8 9F 06 6A */	lha r4, 0x66a(r31)
/* 807E6218  4B 82 61 C5 */	bl mDoMtx_YrotS__FPA4_fs
/* 807E621C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E6220  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E6224  A8 9F 06 68 */	lha r4, 0x668(r31)
/* 807E6228  4B 82 61 75 */	bl mDoMtx_XrotM__FPA4_fs
/* 807E622C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E6230  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E6234  7F 84 E3 78 */	mr r4, r28
/* 807E6238  4B 82 61 FD */	bl mDoMtx_YrotM__FPA4_fs
/* 807E623C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807E6240  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 807E6244  EC 40 00 72 */	fmuls f2, f0, f1
/* 807E6248  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 807E624C  EC 20 00 72 */	fmuls f1, f0, f1
/* 807E6250  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807E6254  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807E6258  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 807E625C  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 807E6260  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E6264  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E6268  38 81 00 68 */	addi r4, r1, 0x68
/* 807E626C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 807E6270  4B B6 0A FD */	bl PSMTXMultVec
/* 807E6274  38 61 00 14 */	addi r3, r1, 0x14
/* 807E6278  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807E627C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 807E6280  4B A8 08 65 */	bl __pl__4cXyzCFRC3Vec
/* 807E6284  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807E6288  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807E628C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807E6290  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807E6294  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807E6298  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807E629C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807E62A0  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 807E62A4  EC 40 00 72 */	fmuls f2, f0, f1
/* 807E62A8  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 807E62AC  EC 20 00 72 */	fmuls f1, f0, f1
/* 807E62B0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807E62B4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807E62B8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 807E62BC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 807E62C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E62C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E62C8  38 81 00 38 */	addi r4, r1, 0x38
/* 807E62CC  38 A1 00 5C */	addi r5, r1, 0x5c
/* 807E62D0  4B B6 0A 9D */	bl PSMTXMultVec
/* 807E62D4  38 61 00 08 */	addi r3, r1, 8
/* 807E62D8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807E62DC  38 A1 00 5C */	addi r5, r1, 0x5c
/* 807E62E0  4B A8 08 05 */	bl __pl__4cXyzCFRC3Vec
/* 807E62E4  C0 01 00 08 */	lfs f0, 8(r1)
/* 807E62E8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807E62EC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807E62F0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807E62F4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807E62F8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807E62FC  38 61 00 88 */	addi r3, r1, 0x88
/* 807E6300  38 81 00 44 */	addi r4, r1, 0x44
/* 807E6304  38 A1 00 50 */	addi r5, r1, 0x50
/* 807E6308  38 C0 00 00 */	li r6, 0
/* 807E630C  4B 89 1A 59 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807E6310  7F A3 EB 78 */	mr r3, r29
/* 807E6314  38 81 00 88 */	addi r4, r1, 0x88
/* 807E6318  4B 88 E0 9D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807E631C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E6320  40 82 00 18 */	bne lbl_807E6338
/* 807E6324  38 61 00 88 */	addi r3, r1, 0x88
/* 807E6328  38 80 FF FF */	li r4, -1
/* 807E632C  4B 89 19 B1 */	bl __dt__11dBgS_LinChkFv
/* 807E6330  38 60 00 01 */	li r3, 1
/* 807E6334  48 00 00 AC */	b lbl_807E63E0
lbl_807E6338:
/* 807E6338  88 1F 06 91 */	lbz r0, 0x691(r31)
/* 807E633C  28 00 00 00 */	cmplwi r0, 0
/* 807E6340  40 82 00 44 */	bne lbl_807E6384
/* 807E6344  7F A3 EB 78 */	mr r3, r29
/* 807E6348  3B 81 00 9C */	addi r28, r1, 0x9c
/* 807E634C  7F 84 E3 78 */	mr r4, r28
/* 807E6350  4B 88 EA B1 */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 807E6354  2C 03 00 01 */	cmpwi r3, 1
/* 807E6358  41 82 00 2C */	beq lbl_807E6384
/* 807E635C  7F A3 EB 78 */	mr r3, r29
/* 807E6360  7F 84 E3 78 */	mr r4, r28
/* 807E6364  4B 88 EA 9D */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 807E6368  2C 03 00 04 */	cmpwi r3, 4
/* 807E636C  41 82 00 18 */	beq lbl_807E6384
/* 807E6370  38 61 00 88 */	addi r3, r1, 0x88
/* 807E6374  38 80 FF FF */	li r4, -1
/* 807E6378  4B 89 19 65 */	bl __dt__11dBgS_LinChkFv
/* 807E637C  38 60 00 01 */	li r3, 1
/* 807E6380  48 00 00 60 */	b lbl_807E63E0
lbl_807E6384:
/* 807E6384  3C 60 80 7E */	lis r3, __vt__8cM3dGPla@ha /* 0x807E7594@ha */
/* 807E6388  38 03 75 94 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x807E7594@l */
/* 807E638C  90 01 00 84 */	stw r0, 0x84(r1)
/* 807E6390  7F A3 EB 78 */	mr r3, r29
/* 807E6394  38 81 00 9C */	addi r4, r1, 0x9c
/* 807E6398  38 A1 00 74 */	addi r5, r1, 0x74
/* 807E639C  4B 88 E3 A9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 807E63A0  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 807E63A4  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 807E63A8  4B A8 12 CD */	bl cM_atan2s__Fff
/* 807E63AC  7C 64 1B 78 */	mr r4, r3
/* 807E63B0  38 7F 06 70 */	addi r3, r31, 0x670
/* 807E63B4  38 A0 01 00 */	li r5, 0x100
/* 807E63B8  4B A8 A7 D9 */	bl cLib_chaseAngleS__FPsss
/* 807E63BC  7F E3 FB 78 */	mr r3, r31
/* 807E63C0  48 00 00 39 */	bl checkWall__8daE_WS_cFv
/* 807E63C4  3C 60 80 7E */	lis r3, __vt__8cM3dGPla@ha /* 0x807E7594@ha */
/* 807E63C8  38 03 75 94 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x807E7594@l */
/* 807E63CC  90 01 00 84 */	stw r0, 0x84(r1)
/* 807E63D0  38 61 00 88 */	addi r3, r1, 0x88
/* 807E63D4  38 80 FF FF */	li r4, -1
/* 807E63D8  4B 89 19 05 */	bl __dt__11dBgS_LinChkFv
/* 807E63DC  38 60 00 00 */	li r3, 0
lbl_807E63E0:
/* 807E63E0  39 61 01 10 */	addi r11, r1, 0x110
/* 807E63E4  4B B7 BE 41 */	bl _restgpr_28
/* 807E63E8  80 01 01 14 */	lwz r0, 0x114(r1)
/* 807E63EC  7C 08 03 A6 */	mtlr r0
/* 807E63F0  38 21 01 10 */	addi r1, r1, 0x110
/* 807E63F4  4E 80 00 20 */	blr 
