lbl_809C5F90:
/* 809C5F90  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809C5F94  7C 08 02 A6 */	mflr r0
/* 809C5F98  90 01 00 64 */	stw r0, 0x64(r1)
/* 809C5F9C  39 61 00 60 */	addi r11, r1, 0x60
/* 809C5FA0  4B 99 C2 2D */	bl _savegpr_25
/* 809C5FA4  7C 7C 1B 78 */	mr r28, r3
/* 809C5FA8  7C 99 23 78 */	mr r25, r4
/* 809C5FAC  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C5FB0  3B E3 9D 98 */	addi r31, r3, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C5FB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C5FB8  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C5FBC  3B 5B 4F F8 */	addi r26, r27, 0x4ff8
/* 809C5FC0  3B C0 00 00 */	li r30, 0
/* 809C5FC4  3B A0 FF FF */	li r29, -1
/* 809C5FC8  7F 43 D3 78 */	mr r3, r26
/* 809C5FCC  3C A0 80 9D */	lis r5, d_a_npc_gra__stringBase0@ha /* 0x809CA4B8@ha */
/* 809C5FD0  38 A5 A4 B8 */	addi r5, r5, d_a_npc_gra__stringBase0@l /* 0x809CA4B8@l */
/* 809C5FD4  38 A5 01 46 */	addi r5, r5, 0x146
/* 809C5FD8  38 C0 00 03 */	li r6, 3
/* 809C5FDC  4B 68 21 11 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809C5FE0  28 03 00 00 */	cmplwi r3, 0
/* 809C5FE4  41 82 00 08 */	beq lbl_809C5FEC
/* 809C5FE8  83 A3 00 00 */	lwz r29, 0(r3)
lbl_809C5FEC:
/* 809C5FEC  7F 43 D3 78 */	mr r3, r26
/* 809C5FF0  7F 24 CB 78 */	mr r4, r25
/* 809C5FF4  4B 68 1D 59 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809C5FF8  2C 03 00 00 */	cmpwi r3, 0
/* 809C5FFC  41 82 02 24 */	beq lbl_809C6220
/* 809C6000  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 809C6004  41 82 01 94 */	beq lbl_809C6198
/* 809C6008  40 80 00 28 */	bge lbl_809C6030
/* 809C600C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 809C6010  41 82 00 98 */	beq lbl_809C60A8
/* 809C6014  40 80 00 10 */	bge lbl_809C6024
/* 809C6018  2C 1D 00 00 */	cmpwi r29, 0
/* 809C601C  41 82 00 38 */	beq lbl_809C6054
/* 809C6020  48 00 02 00 */	b lbl_809C6220
lbl_809C6024:
/* 809C6024  2C 1D 00 14 */	cmpwi r29, 0x14
/* 809C6028  41 82 00 CC */	beq lbl_809C60F4
/* 809C602C  48 00 01 F4 */	b lbl_809C6220
lbl_809C6030:
/* 809C6030  2C 1D 00 32 */	cmpwi r29, 0x32
/* 809C6034  41 82 01 EC */	beq lbl_809C6220
/* 809C6038  40 80 00 10 */	bge lbl_809C6048
/* 809C603C  2C 1D 00 28 */	cmpwi r29, 0x28
/* 809C6040  41 82 01 68 */	beq lbl_809C61A8
/* 809C6044  48 00 01 DC */	b lbl_809C6220
lbl_809C6048:
/* 809C6048  2C 1D 00 3C */	cmpwi r29, 0x3c
/* 809C604C  41 82 01 9C */	beq lbl_809C61E8
/* 809C6050  48 00 01 D0 */	b lbl_809C6220
lbl_809C6054:
/* 809C6054  7F 83 E3 78 */	mr r3, r28
/* 809C6058  38 80 00 17 */	li r4, 0x17
/* 809C605C  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C6060  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C6064  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C6068  7D 89 03 A6 */	mtctr r12
/* 809C606C  4E 80 04 21 */	bctrl 
/* 809C6070  7F 83 E3 78 */	mr r3, r28
/* 809C6074  38 80 00 00 */	li r4, 0
/* 809C6078  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C607C  38 A0 00 00 */	li r5, 0
/* 809C6080  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C6084  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C6088  7D 89 03 A6 */	mtctr r12
/* 809C608C  4E 80 04 21 */	bctrl 
/* 809C6090  7F 83 E3 78 */	mr r3, r28
/* 809C6094  38 80 00 02 */	li r4, 2
/* 809C6098  4B FF CF D9 */	bl setLookMode__11daNpc_grA_cFi
/* 809C609C  38 00 00 02 */	li r0, 2
/* 809C60A0  98 1C 14 86 */	stb r0, 0x1486(r28)
/* 809C60A4  48 00 01 7C */	b lbl_809C6220
lbl_809C60A8:
/* 809C60A8  7F 83 E3 78 */	mr r3, r28
/* 809C60AC  38 80 00 15 */	li r4, 0x15
/* 809C60B0  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C60B4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C60B8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C60BC  7D 89 03 A6 */	mtctr r12
/* 809C60C0  4E 80 04 21 */	bctrl 
/* 809C60C4  7F 83 E3 78 */	mr r3, r28
/* 809C60C8  38 80 00 1B */	li r4, 0x1b
/* 809C60CC  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C60D0  38 A0 00 00 */	li r5, 0
/* 809C60D4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C60D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C60DC  7D 89 03 A6 */	mtctr r12
/* 809C60E0  4E 80 04 21 */	bctrl 
/* 809C60E4  7F 83 E3 78 */	mr r3, r28
/* 809C60E8  38 80 00 00 */	li r4, 0
/* 809C60EC  4B FF CF 85 */	bl setLookMode__11daNpc_grA_cFi
/* 809C60F0  48 00 01 30 */	b lbl_809C6220
lbl_809C60F4:
/* 809C60F4  7F 83 E3 78 */	mr r3, r28
/* 809C60F8  38 80 00 00 */	li r4, 0
/* 809C60FC  4B FF CF 75 */	bl setLookMode__11daNpc_grA_cFi
/* 809C6100  7F 83 E3 78 */	mr r3, r28
/* 809C6104  80 9C 14 6C */	lwz r4, 0x146c(r28)
/* 809C6108  38 A0 00 00 */	li r5, 0
/* 809C610C  4B 78 DC 11 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809C6110  C0 1F 06 EC */	lfs f0, 0x6ec(r31)
/* 809C6114  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809C6118  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 809C611C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809C6120  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C6124  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809C6128  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C612C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C6130  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 809C6134  4B 64 62 A9 */	bl mDoMtx_YrotS__FPA4_fs
/* 809C6138  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C613C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C6140  38 81 00 28 */	addi r4, r1, 0x28
/* 809C6144  7C 85 23 78 */	mr r5, r4
/* 809C6148  4B 98 0C 25 */	bl PSMTXMultVec
/* 809C614C  38 61 00 28 */	addi r3, r1, 0x28
/* 809C6150  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 809C6154  7C 65 1B 78 */	mr r5, r3
/* 809C6158  4B 98 0F 39 */	bl PSVECAdd
/* 809C615C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C6160  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C6164  83 63 5D AC */	lwz r27, 0x5dac(r3)
/* 809C6168  38 61 00 28 */	addi r3, r1, 0x28
/* 809C616C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 809C6170  4B 8A AA 95 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809C6174  7C 65 1B 78 */	mr r5, r3
/* 809C6178  7F 63 DB 78 */	mr r3, r27
/* 809C617C  38 81 00 28 */	addi r4, r1, 0x28
/* 809C6180  38 C0 00 00 */	li r6, 0
/* 809C6184  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 809C6188  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 809C618C  7D 89 03 A6 */	mtctr r12
/* 809C6190  4E 80 04 21 */	bctrl 
/* 809C6194  48 00 00 8C */	b lbl_809C6220
lbl_809C6198:
/* 809C6198  7F 83 E3 78 */	mr r3, r28
/* 809C619C  38 80 00 00 */	li r4, 0
/* 809C61A0  4B FF CE D1 */	bl setLookMode__11daNpc_grA_cFi
/* 809C61A4  48 00 00 7C */	b lbl_809C6220
lbl_809C61A8:
/* 809C61A8  7F 83 E3 78 */	mr r3, r28
/* 809C61AC  38 80 00 17 */	li r4, 0x17
/* 809C61B0  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C61B4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C61B8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C61BC  7D 89 03 A6 */	mtctr r12
/* 809C61C0  4E 80 04 21 */	bctrl 
/* 809C61C4  7F 83 E3 78 */	mr r3, r28
/* 809C61C8  38 80 00 12 */	li r4, 0x12
/* 809C61CC  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C61D0  38 A0 00 00 */	li r5, 0
/* 809C61D4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C61D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C61DC  7D 89 03 A6 */	mtctr r12
/* 809C61E0  4E 80 04 21 */	bctrl 
/* 809C61E4  48 00 00 3C */	b lbl_809C6220
lbl_809C61E8:
/* 809C61E8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 809C61EC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 809C61F0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 809C61F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809C61F8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 809C61FC  38 7B 5B D4 */	addi r3, r27, 0x5bd4
/* 809C6200  38 80 00 08 */	li r4, 8
/* 809C6204  38 A0 00 0F */	li r5, 0xf
/* 809C6208  38 C1 00 10 */	addi r6, r1, 0x10
/* 809C620C  4B 6A 98 19 */	bl StartShock__12dVibration_cFii4cXyz
/* 809C6210  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C6214  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 809C6218  38 00 00 2D */	li r0, 0x2d
/* 809C621C  90 1C 09 60 */	stw r0, 0x960(r28)
lbl_809C6220:
/* 809C6220  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 809C6224  41 82 01 28 */	beq lbl_809C634C
/* 809C6228  40 80 00 28 */	bge lbl_809C6250
/* 809C622C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 809C6230  41 82 00 4C */	beq lbl_809C627C
/* 809C6234  40 80 00 10 */	bge lbl_809C6244
/* 809C6238  2C 1D 00 00 */	cmpwi r29, 0
/* 809C623C  41 82 00 38 */	beq lbl_809C6274
/* 809C6240  48 00 03 00 */	b lbl_809C6540
lbl_809C6244:
/* 809C6244  2C 1D 00 14 */	cmpwi r29, 0x14
/* 809C6248  41 82 00 E0 */	beq lbl_809C6328
/* 809C624C  48 00 02 F4 */	b lbl_809C6540
lbl_809C6250:
/* 809C6250  2C 1D 00 32 */	cmpwi r29, 0x32
/* 809C6254  41 82 02 70 */	beq lbl_809C64C4
/* 809C6258  40 80 00 10 */	bge lbl_809C6268
/* 809C625C  2C 1D 00 28 */	cmpwi r29, 0x28
/* 809C6260  41 82 01 60 */	beq lbl_809C63C0
/* 809C6264  48 00 02 DC */	b lbl_809C6540
lbl_809C6268:
/* 809C6268  2C 1D 00 3C */	cmpwi r29, 0x3c
/* 809C626C  41 82 02 9C */	beq lbl_809C6508
/* 809C6270  48 00 02 D0 */	b lbl_809C6540
lbl_809C6274:
/* 809C6274  3B C0 00 01 */	li r30, 1
/* 809C6278  48 00 02 CC */	b lbl_809C6544
lbl_809C627C:
/* 809C627C  80 1C 14 D8 */	lwz r0, 0x14d8(r28)
/* 809C6280  2C 00 00 29 */	cmpwi r0, 0x29
/* 809C6284  40 82 00 0C */	bne lbl_809C6290
/* 809C6288  3B C0 00 01 */	li r30, 1
/* 809C628C  48 00 02 B8 */	b lbl_809C6544
lbl_809C6290:
/* 809C6290  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809C6294  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809C6298  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 809C629C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C62A0  4C 41 13 82 */	cror 2, 1, 2
/* 809C62A4  40 82 00 10 */	bne lbl_809C62B4
/* 809C62A8  38 00 00 00 */	li r0, 0
/* 809C62AC  98 1C 15 0C */	stb r0, 0x150c(r28)
/* 809C62B0  48 00 00 28 */	b lbl_809C62D8
lbl_809C62B4:
/* 809C62B4  C0 1F 06 FC */	lfs f0, 0x6fc(r31)
/* 809C62B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C62BC  4C 41 13 82 */	cror 2, 1, 2
/* 809C62C0  40 82 00 10 */	bne lbl_809C62D0
/* 809C62C4  38 00 00 01 */	li r0, 1
/* 809C62C8  98 1C 15 0C */	stb r0, 0x150c(r28)
/* 809C62CC  48 00 00 0C */	b lbl_809C62D8
lbl_809C62D0:
/* 809C62D0  38 00 00 00 */	li r0, 0
/* 809C62D4  98 1C 15 0C */	stb r0, 0x150c(r28)
lbl_809C62D8:
/* 809C62D8  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809C62DC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809C62E0  C0 1F 07 00 */	lfs f0, 0x700(r31)
/* 809C62E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C62E8  4C 41 13 82 */	cror 2, 1, 2
/* 809C62EC  40 82 02 58 */	bne lbl_809C6544
/* 809C62F0  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 809C62F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C62F8  40 80 02 4C */	bge lbl_809C6544
/* 809C62FC  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050041@ha */
/* 809C6300  38 03 00 41 */	addi r0, r3, 0x0041 /* 0x00050041@l */
/* 809C6304  90 01 00 0C */	stw r0, 0xc(r1)
/* 809C6308  38 7C 0B 48 */	addi r3, r28, 0xb48
/* 809C630C  38 81 00 0C */	addi r4, r1, 0xc
/* 809C6310  38 A0 FF FF */	li r5, -1
/* 809C6314  81 9C 0B 48 */	lwz r12, 0xb48(r28)
/* 809C6318  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809C631C  7D 89 03 A6 */	mtctr r12
/* 809C6320  4E 80 04 21 */	bctrl 
/* 809C6324  48 00 02 20 */	b lbl_809C6544
lbl_809C6328:
/* 809C6328  7F 83 E3 78 */	mr r3, r28
/* 809C632C  38 80 00 00 */	li r4, 0
/* 809C6330  38 A0 00 01 */	li r5, 1
/* 809C6334  38 C0 00 00 */	li r6, 0
/* 809C6338  4B 78 DA 4D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809C633C  2C 03 00 00 */	cmpwi r3, 0
/* 809C6340  41 82 02 04 */	beq lbl_809C6544
/* 809C6344  3B C0 00 01 */	li r30, 1
/* 809C6348  48 00 01 FC */	b lbl_809C6544
lbl_809C634C:
/* 809C634C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 809C6350  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 809C6354  7C 04 00 00 */	cmpw r4, r0
/* 809C6358  41 82 00 60 */	beq lbl_809C63B8
/* 809C635C  7F 83 E3 78 */	mr r3, r28
/* 809C6360  38 A0 00 17 */	li r5, 0x17
/* 809C6364  38 C0 00 16 */	li r6, 0x16
/* 809C6368  38 E0 00 0F */	li r7, 0xf
/* 809C636C  4B 78 DD 39 */	bl step__8daNpcF_cFsiii
/* 809C6370  2C 03 00 00 */	cmpwi r3, 0
/* 809C6374  41 82 01 D0 */	beq lbl_809C6544
/* 809C6378  7F 83 E3 78 */	mr r3, r28
/* 809C637C  38 80 00 17 */	li r4, 0x17
/* 809C6380  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C6384  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C6388  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C638C  7D 89 03 A6 */	mtctr r12
/* 809C6390  4E 80 04 21 */	bctrl 
/* 809C6394  7F 83 E3 78 */	mr r3, r28
/* 809C6398  38 80 00 00 */	li r4, 0
/* 809C639C  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C63A0  38 A0 00 00 */	li r5, 0
/* 809C63A4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C63A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C63AC  7D 89 03 A6 */	mtctr r12
/* 809C63B0  4E 80 04 21 */	bctrl 
/* 809C63B4  48 00 01 90 */	b lbl_809C6544
lbl_809C63B8:
/* 809C63B8  3B C0 00 01 */	li r30, 1
/* 809C63BC  48 00 01 88 */	b lbl_809C6544
lbl_809C63C0:
/* 809C63C0  80 1C 14 D8 */	lwz r0, 0x14d8(r28)
/* 809C63C4  2C 00 00 1B */	cmpwi r0, 0x1b
/* 809C63C8  40 82 00 D0 */	bne lbl_809C6498
/* 809C63CC  80 9C 05 68 */	lwz r4, 0x568(r28)
/* 809C63D0  38 60 00 01 */	li r3, 1
/* 809C63D4  88 04 00 11 */	lbz r0, 0x11(r4)
/* 809C63D8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809C63DC  40 82 00 18 */	bne lbl_809C63F4
/* 809C63E0  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 809C63E4  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 809C63E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809C63EC  41 82 00 08 */	beq lbl_809C63F4
/* 809C63F0  38 60 00 00 */	li r3, 0
lbl_809C63F4:
/* 809C63F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809C63F8  41 82 00 28 */	beq lbl_809C6420
/* 809C63FC  7F 83 E3 78 */	mr r3, r28
/* 809C6400  38 80 00 13 */	li r4, 0x13
/* 809C6404  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C6408  38 A0 00 00 */	li r5, 0
/* 809C640C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C6410  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C6414  7D 89 03 A6 */	mtctr r12
/* 809C6418  4E 80 04 21 */	bctrl 
/* 809C641C  48 00 01 28 */	b lbl_809C6544
lbl_809C6420:
/* 809C6420  38 64 00 0C */	addi r3, r4, 0xc
/* 809C6424  C0 3F 06 B0 */	lfs f1, 0x6b0(r31)
/* 809C6428  4B 96 20 05 */	bl checkPass__12J3DFrameCtrlFf
/* 809C642C  2C 03 00 00 */	cmpwi r3, 0
/* 809C6430  41 82 01 14 */	beq lbl_809C6544
/* 809C6434  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C6438  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809C643C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809C6440  C0 1F 06 B4 */	lfs f0, 0x6b4(r31)
/* 809C6444  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809C6448  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 809C644C  4B 64 69 19 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 809C6450  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C6454  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C6458  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 809C645C  4B 64 5F D9 */	bl mDoMtx_YrotM__FPA4_fs
/* 809C6460  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C6464  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C6468  38 81 00 1C */	addi r4, r1, 0x1c
/* 809C646C  38 BC 15 24 */	addi r5, r28, 0x1524
/* 809C6470  4B 98 08 FD */	bl PSMTXMultVec
/* 809C6474  A8 1C 08 F0 */	lha r0, 0x8f0(r28)
/* 809C6478  B0 1C 15 30 */	sth r0, 0x1530(r28)
/* 809C647C  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 809C6480  B0 1C 15 32 */	sth r0, 0x1532(r28)
/* 809C6484  A8 1C 08 F4 */	lha r0, 0x8f4(r28)
/* 809C6488  B0 1C 15 34 */	sth r0, 0x1534(r28)
/* 809C648C  38 00 00 01 */	li r0, 1
/* 809C6490  98 1C 15 20 */	stb r0, 0x1520(r28)
/* 809C6494  48 00 00 B0 */	b lbl_809C6544
lbl_809C6498:
/* 809C6498  2C 00 00 1A */	cmpwi r0, 0x1a
/* 809C649C  40 82 00 A8 */	bne lbl_809C6544
/* 809C64A0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C64A4  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809C64A8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809C64AC  38 00 00 1D */	li r0, 0x1d
/* 809C64B0  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809C64B4  B0 03 00 14 */	sth r0, 0x14(r3)
/* 809C64B8  3B C0 00 01 */	li r30, 1
/* 809C64BC  D0 1C 14 D4 */	stfs f0, 0x14d4(r28)
/* 809C64C0  48 00 00 84 */	b lbl_809C6544
lbl_809C64C4:
/* 809C64C4  38 7C 14 D4 */	addi r3, r28, 0x14d4
/* 809C64C8  C0 3F 06 C0 */	lfs f1, 0x6c0(r31)
/* 809C64CC  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 809C64D0  FC 60 10 90 */	fmr f3, f2
/* 809C64D4  4B 8A 95 69 */	bl cLib_addCalc2__FPffff
/* 809C64D8  C0 1C 14 D4 */	lfs f0, 0x14d4(r28)
/* 809C64DC  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809C64E0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809C64E4  C0 3F 06 C8 */	lfs f1, 0x6c8(r31)
/* 809C64E8  C0 1C 14 D4 */	lfs f0, 0x14d4(r28)
/* 809C64EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 809C64F0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 809C64F4  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 809C64F8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 809C64FC  41 82 00 48 */	beq lbl_809C6544
/* 809C6500  3B C0 00 01 */	li r30, 1
/* 809C6504  48 00 00 40 */	b lbl_809C6544
lbl_809C6508:
/* 809C6508  38 7C 14 D4 */	addi r3, r28, 0x14d4
/* 809C650C  C0 3F 06 C0 */	lfs f1, 0x6c0(r31)
/* 809C6510  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 809C6514  FC 60 10 90 */	fmr f3, f2
/* 809C6518  4B 8A 95 25 */	bl cLib_addCalc2__FPffff
/* 809C651C  C0 1C 14 D4 */	lfs f0, 0x14d4(r28)
/* 809C6520  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809C6524  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809C6528  38 7C 09 60 */	addi r3, r28, 0x960
/* 809C652C  48 00 35 B9 */	bl func_809C9AE4
/* 809C6530  2C 03 00 00 */	cmpwi r3, 0
/* 809C6534  40 82 00 10 */	bne lbl_809C6544
/* 809C6538  3B C0 00 01 */	li r30, 1
/* 809C653C  48 00 00 08 */	b lbl_809C6544
lbl_809C6540:
/* 809C6540  3B C0 00 01 */	li r30, 1
lbl_809C6544:
/* 809C6544  80 1C 14 D8 */	lwz r0, 0x14d8(r28)
/* 809C6548  2C 00 00 1A */	cmpwi r0, 0x1a
/* 809C654C  40 82 00 A0 */	bne lbl_809C65EC
/* 809C6550  C0 3C 14 D4 */	lfs f1, 0x14d4(r28)
/* 809C6554  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 809C6558  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C655C  4C 41 13 82 */	cror 2, 1, 2
/* 809C6560  40 82 00 24 */	bne lbl_809C6584
/* 809C6564  FC 20 00 90 */	fmr f1, f0
/* 809C6568  2C 1D 00 3C */	cmpwi r29, 0x3c
/* 809C656C  41 80 00 0C */	blt lbl_809C6578
/* 809C6570  38 7F 00 00 */	addi r3, r31, 0
/* 809C6574  C0 23 00 80 */	lfs f1, 0x80(r3)
lbl_809C6578:
/* 809C6578  7F 83 E3 78 */	mr r3, r28
/* 809C657C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 809C6580  4B FF D3 1D */	bl setRollPrtcl__11daNpc_grA_cFRC4cXyzf
lbl_809C6584:
/* 809C6584  C0 1C 14 D4 */	lfs f0, 0x14d4(r28)
/* 809C6588  FC 00 02 10 */	fabs f0, f0
/* 809C658C  FC 20 00 18 */	frsp f1, f0
/* 809C6590  C0 1F 06 B4 */	lfs f0, 0x6b4(r31)
/* 809C6594  EC 00 00 72 */	fmuls f0, f0, f1
/* 809C6598  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 809C659C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809C65A0  40 80 00 08 */	bge lbl_809C65A8
/* 809C65A4  48 00 00 18 */	b lbl_809C65BC
lbl_809C65A8:
/* 809C65A8  C0 3F 06 D0 */	lfs f1, 0x6d0(r31)
/* 809C65AC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809C65B0  40 81 00 08 */	ble lbl_809C65B8
/* 809C65B4  48 00 00 08 */	b lbl_809C65BC
lbl_809C65B8:
/* 809C65B8  FC 20 00 90 */	fmr f1, f0
lbl_809C65BC:
/* 809C65BC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006004A@ha */
/* 809C65C0  38 03 00 4A */	addi r0, r3, 0x004A /* 0x0006004A@l */
/* 809C65C4  90 01 00 08 */	stw r0, 8(r1)
/* 809C65C8  4B 99 BA E5 */	bl __cvt_fp2unsigned
/* 809C65CC  7C 65 1B 78 */	mr r5, r3
/* 809C65D0  38 7C 0B 48 */	addi r3, r28, 0xb48
/* 809C65D4  38 81 00 08 */	addi r4, r1, 8
/* 809C65D8  38 C0 FF FF */	li r6, -1
/* 809C65DC  81 9C 0B 48 */	lwz r12, 0xb48(r28)
/* 809C65E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 809C65E4  7D 89 03 A6 */	mtctr r12
/* 809C65E8  4E 80 04 21 */	bctrl 
lbl_809C65EC:
/* 809C65EC  7F C3 F3 78 */	mr r3, r30
/* 809C65F0  39 61 00 60 */	addi r11, r1, 0x60
/* 809C65F4  4B 99 BC 25 */	bl _restgpr_25
/* 809C65F8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809C65FC  7C 08 03 A6 */	mtlr r0
/* 809C6600  38 21 00 60 */	addi r1, r1, 0x60
/* 809C6604  4E 80 00 20 */	blr 
