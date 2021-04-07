lbl_80BA60D4:
/* 80BA60D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BA60D8  7C 08 02 A6 */	mflr r0
/* 80BA60DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BA60E0  39 61 00 30 */	addi r11, r1, 0x30
/* 80BA60E4  4B 7B C0 F9 */	bl _savegpr_29
/* 80BA60E8  7C 7E 1B 78 */	mr r30, r3
/* 80BA60EC  3C 60 80 BA */	lis r3, m__22daObj_AutoMata_Param_c@ha /* 0x80BA6C10@ha */
/* 80BA60F0  3B E3 6C 10 */	addi r31, r3, m__22daObj_AutoMata_Param_c@l /* 0x80BA6C10@l */
/* 80BA60F4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BA60F8  7C 04 07 74 */	extsb r4, r0
/* 80BA60FC  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80BA6100  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80BA6104  7C 00 07 74 */	extsb r0, r0
/* 80BA6108  7C 04 00 00 */	cmpw r4, r0
/* 80BA610C  40 82 02 74 */	bne lbl_80BA6380
/* 80BA6110  80 1E 06 4C */	lwz r0, 0x64c(r30)
/* 80BA6114  60 00 00 04 */	ori r0, r0, 4
/* 80BA6118  90 1E 06 4C */	stw r0, 0x64c(r30)
/* 80BA611C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BA6120  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BA6124  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA6128  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA612C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80BA6130  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80BA6134  28 00 00 00 */	cmplwi r0, 0
/* 80BA6138  41 82 00 0C */	beq lbl_80BA6144
/* 80BA613C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80BA6140  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_80BA6144:
/* 80BA6144  7F C3 F3 78 */	mr r3, r30
/* 80BA6148  38 9E 07 F8 */	addi r4, r30, 0x7f8
/* 80BA614C  4B 47 45 81 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80BA6150  38 7E 06 20 */	addi r3, r30, 0x620
/* 80BA6154  7F A4 EB 78 */	mr r4, r29
/* 80BA6158  4B 4D 09 55 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80BA615C  80 1E 06 FC */	lwz r0, 0x6fc(r30)
/* 80BA6160  90 1E 08 74 */	stw r0, 0x874(r30)
/* 80BA6164  80 1E 07 00 */	lwz r0, 0x700(r30)
/* 80BA6168  90 1E 08 78 */	stw r0, 0x878(r30)
/* 80BA616C  80 1E 07 04 */	lwz r0, 0x704(r30)
/* 80BA6170  90 1E 08 7C */	stw r0, 0x87c(r30)
/* 80BA6174  88 1E 07 08 */	lbz r0, 0x708(r30)
/* 80BA6178  98 1E 08 80 */	stb r0, 0x880(r30)
/* 80BA617C  A0 1E 07 10 */	lhz r0, 0x710(r30)
/* 80BA6180  B0 1E 08 88 */	sth r0, 0x888(r30)
/* 80BA6184  A0 1E 07 12 */	lhz r0, 0x712(r30)
/* 80BA6188  B0 1E 08 8A */	sth r0, 0x88a(r30)
/* 80BA618C  80 1E 07 14 */	lwz r0, 0x714(r30)
/* 80BA6190  90 1E 08 8C */	stw r0, 0x88c(r30)
/* 80BA6194  80 1E 07 18 */	lwz r0, 0x718(r30)
/* 80BA6198  90 1E 08 90 */	stw r0, 0x890(r30)
/* 80BA619C  C0 1E 07 20 */	lfs f0, 0x720(r30)
/* 80BA61A0  D0 1E 08 98 */	stfs f0, 0x898(r30)
/* 80BA61A4  C0 1E 07 24 */	lfs f0, 0x724(r30)
/* 80BA61A8  D0 1E 08 9C */	stfs f0, 0x89c(r30)
/* 80BA61AC  C0 1E 07 28 */	lfs f0, 0x728(r30)
/* 80BA61B0  D0 1E 08 A0 */	stfs f0, 0x8a0(r30)
/* 80BA61B4  80 1E 07 2C */	lwz r0, 0x72c(r30)
/* 80BA61B8  90 1E 08 A4 */	stw r0, 0x8a4(r30)
/* 80BA61BC  C0 1E 07 30 */	lfs f0, 0x730(r30)
/* 80BA61C0  D0 1E 08 A8 */	stfs f0, 0x8a8(r30)
/* 80BA61C4  80 1E 07 34 */	lwz r0, 0x734(r30)
/* 80BA61C8  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80BA61CC  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 80BA61D0  D0 1E 0B 28 */	stfs f0, 0xb28(r30)
/* 80BA61D4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80BA61D8  C0 1E 0B 28 */	lfs f0, 0xb28(r30)
/* 80BA61DC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BA61E0  41 82 00 34 */	beq lbl_80BA6214
/* 80BA61E4  3C 60 80 BA */	lis r3, srchTHouse__16daObj_AutoMata_cFP10fopAc_ac_cPv@ha /* 0x80BA64A0@ha */
/* 80BA61E8  38 63 64 A0 */	addi r3, r3, srchTHouse__16daObj_AutoMata_cFP10fopAc_ac_cPv@l /* 0x80BA64A0@l */
/* 80BA61EC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BA61F0  4B 47 36 09 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80BA61F4  28 03 00 00 */	cmplwi r3, 0
/* 80BA61F8  41 82 00 0C */	beq lbl_80BA6204
/* 80BA61FC  C0 1E 0B 28 */	lfs f0, 0xb28(r30)
/* 80BA6200  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80BA6204:
/* 80BA6204  7F C3 F3 78 */	mr r3, r30
/* 80BA6208  48 00 04 2D */	bl setEnvTevColor__16daObj_AutoMata_cFv
/* 80BA620C  7F C3 F3 78 */	mr r3, r30
/* 80BA6210  48 00 04 81 */	bl setRoomNo__16daObj_AutoMata_cFv
lbl_80BA6214:
/* 80BA6214  C0 1E 0B 2C */	lfs f0, 0xb2c(r30)
/* 80BA6218  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80BA621C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BA6220  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80BA6224  38 80 00 00 */	li r4, 0
/* 80BA6228  38 A0 00 00 */	li r5, 0
/* 80BA622C  4B 46 AE 85 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80BA6230  C0 1E 0B 2C */	lfs f0, 0xb2c(r30)
/* 80BA6234  D0 1E 06 0C */	stfs f0, 0x60c(r30)
/* 80BA6238  38 7E 06 00 */	addi r3, r30, 0x600
/* 80BA623C  4B 46 71 ED */	bl play__14mDoExt_baseAnmFv
/* 80BA6240  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BA6244  D0 1E 0B 2C */	stfs f0, 0xb2c(r30)
/* 80BA6248  7F C3 F3 78 */	mr r3, r30
/* 80BA624C  48 00 05 01 */	bl setSe__16daObj_AutoMata_cFv
/* 80BA6250  7F C3 F3 78 */	mr r3, r30
/* 80BA6254  48 00 04 81 */	bl setMtx__16daObj_AutoMata_cFv
/* 80BA6258  88 1E 0B 31 */	lbz r0, 0xb31(r30)
/* 80BA625C  28 00 00 00 */	cmplwi r0, 0
/* 80BA6260  40 82 00 B4 */	bne lbl_80BA6314
/* 80BA6264  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BA6268  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BA626C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80BA6270  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BA6274  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BA6278  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80BA627C  80 63 00 04 */	lwz r3, 4(r3)
/* 80BA6280  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80BA6284  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80BA6288  38 63 00 90 */	addi r3, r3, 0x90
/* 80BA628C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BA6290  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BA6294  4B 7A 02 1D */	bl PSMTXCopy
/* 80BA6298  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BA629C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BA62A0  38 81 00 08 */	addi r4, r1, 8
/* 80BA62A4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80BA62A8  4B 7A 0A C5 */	bl PSMTXMultVec
/* 80BA62AC  38 7E 0B 10 */	addi r3, r30, 0xb10
/* 80BA62B0  38 81 00 14 */	addi r4, r1, 0x14
/* 80BA62B4  4B 6C 93 95 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BA62B8  38 7E 0B 10 */	addi r3, r30, 0xb10
/* 80BA62BC  38 9F 00 00 */	addi r4, r31, 0
/* 80BA62C0  C0 24 00 08 */	lfs f1, 8(r4)
/* 80BA62C4  4B 6C 94 45 */	bl SetR__8cM3dGSphFf
/* 80BA62C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA62CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA62D0  3B A3 23 3C */	addi r29, r3, 0x233c
/* 80BA62D4  7F A3 EB 78 */	mr r3, r29
/* 80BA62D8  38 9E 09 EC */	addi r4, r30, 0x9ec
/* 80BA62DC  4B 6B E8 CD */	bl Set__4cCcSFP8cCcD_Obj
/* 80BA62E0  38 7E 09 D4 */	addi r3, r30, 0x9d4
/* 80BA62E4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BA62E8  4B 6C 8F 11 */	bl SetH__8cM3dGCylFf
/* 80BA62EC  38 7E 09 D4 */	addi r3, r30, 0x9d4
/* 80BA62F0  38 9F 00 00 */	addi r4, r31, 0
/* 80BA62F4  C0 24 00 04 */	lfs f1, 4(r4)
/* 80BA62F8  4B 6C 8F 09 */	bl SetR__8cM3dGCylFf
/* 80BA62FC  38 7E 09 D4 */	addi r3, r30, 0x9d4
/* 80BA6300  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BA6304  4B 6C 8E D9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BA6308  7F A3 EB 78 */	mr r3, r29
/* 80BA630C  38 9E 08 B0 */	addi r4, r30, 0x8b0
/* 80BA6310  4B 6B E8 99 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80BA6314:
/* 80BA6314  38 7E 09 EC */	addi r3, r30, 0x9ec
/* 80BA6318  81 9E 0A 28 */	lwz r12, 0xa28(r30)
/* 80BA631C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80BA6320  7D 89 03 A6 */	mtctr r12
/* 80BA6324  4E 80 04 21 */	bctrl 
/* 80BA6328  38 7E 08 B0 */	addi r3, r30, 0x8b0
/* 80BA632C  81 9E 08 EC */	lwz r12, 0x8ec(r30)
/* 80BA6330  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80BA6334  7D 89 03 A6 */	mtctr r12
/* 80BA6338  4E 80 04 21 */	bctrl 
/* 80BA633C  38 00 00 00 */	li r0, 0
/* 80BA6340  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80BA6344  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BA6348  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80BA634C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BA6350  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80BA6354  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BA6358  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80BA635C  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80BA6360  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80BA6364  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80BA6368  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80BA636C  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80BA6370  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80BA6374  98 1E 0B 31 */	stb r0, 0xb31(r30)
/* 80BA6378  38 60 00 01 */	li r3, 1
/* 80BA637C  48 00 00 08 */	b lbl_80BA6384
lbl_80BA6380:
/* 80BA6380  38 60 00 00 */	li r3, 0
lbl_80BA6384:
/* 80BA6384  39 61 00 30 */	addi r11, r1, 0x30
/* 80BA6388  4B 7B BE A1 */	bl _restgpr_29
/* 80BA638C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BA6390  7C 08 03 A6 */	mtlr r0
/* 80BA6394  38 21 00 30 */	addi r1, r1, 0x30
/* 80BA6398  4E 80 00 20 */	blr 
