lbl_80BBB230:
/* 80BBB230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BBB234  7C 08 02 A6 */	mflr r0
/* 80BBB238  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BBB23C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BBB240  4B 7A 6F 99 */	bl _savegpr_28
/* 80BBB244  7C 7D 1B 78 */	mr r29, r3
/* 80BBB248  3C 80 80 BC */	lis r4, m__21daObj_BouMato_Param_c@ha /* 0x80BBC470@ha */
/* 80BBB24C  3B E4 C4 70 */	addi r31, r4, m__21daObj_BouMato_Param_c@l /* 0x80BBC470@l */
/* 80BBB250  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BBB254  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BBB258  40 82 01 34 */	bne lbl_80BBB38C
/* 80BBB25C  7F A0 EB 79 */	or. r0, r29, r29
/* 80BBB260  41 82 01 20 */	beq lbl_80BBB380
/* 80BBB264  7C 1E 03 78 */	mr r30, r0
/* 80BBB268  4B 45 D8 FD */	bl __ct__10fopAc_ac_cFv
/* 80BBB26C  3C 60 80 BC */	lis r3, __vt__15daObj_BouMato_c@ha /* 0x80BBC654@ha */
/* 80BBB270  38 03 C6 54 */	addi r0, r3, __vt__15daObj_BouMato_c@l /* 0x80BBC654@l */
/* 80BBB274  90 1E 0A 3C */	stw r0, 0xa3c(r30)
/* 80BBB278  3B 9E 05 78 */	addi r28, r30, 0x578
/* 80BBB27C  7F 83 E3 78 */	mr r3, r28
/* 80BBB280  4B 4B AE 21 */	bl __ct__9dBgS_AcchFv
/* 80BBB284  3C 60 80 BC */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80BBC5E8@ha */
/* 80BBB288  38 63 C5 E8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80BBC5E8@l */
/* 80BBB28C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80BBB290  38 03 00 0C */	addi r0, r3, 0xc
/* 80BBB294  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80BBB298  38 03 00 18 */	addi r0, r3, 0x18
/* 80BBB29C  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80BBB2A0  38 7C 00 14 */	addi r3, r28, 0x14
/* 80BBB2A4  4B 4B DB C5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BBB2A8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BBB2AC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BBB2B0  90 1E 07 68 */	stw r0, 0x768(r30)
/* 80BBB2B4  38 7E 07 6C */	addi r3, r30, 0x76c
/* 80BBB2B8  4B 4C 84 A9 */	bl __ct__10dCcD_GSttsFv
/* 80BBB2BC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BBB2C0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BBB2C4  90 7E 07 68 */	stw r3, 0x768(r30)
/* 80BBB2C8  38 03 00 20 */	addi r0, r3, 0x20
/* 80BBB2CC  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80BBB2D0  38 7E 07 8C */	addi r3, r30, 0x78c
/* 80BBB2D4  4B 4B AB D9 */	bl __ct__12dBgS_AcchCirFv
/* 80BBB2D8  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 80BBB2DC  4B 6A C9 41 */	bl __ct__11cBgS_GndChkFv
/* 80BBB2E0  3B 9E 08 08 */	addi r28, r30, 0x808
/* 80BBB2E4  7F 83 E3 78 */	mr r3, r28
/* 80BBB2E8  4B 4C 87 41 */	bl __ct__12dCcD_GObjInfFv
/* 80BBB2EC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BBB2F0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BBB2F4  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80BBB2F8  3C 60 80 BC */	lis r3, __vt__8cM3dGAab@ha /* 0x80BBC630@ha */
/* 80BBB2FC  38 03 C6 30 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BBC630@l */
/* 80BBB300  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80BBB304  3C 60 80 BC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BBC63C@ha */
/* 80BBB308  38 83 C6 3C */	addi r4, r3, __vt__8cM3dGCyl@l /* 0x80BBC63C@l */
/* 80BBB30C  90 9C 01 38 */	stw r4, 0x138(r28)
/* 80BBB310  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BBB314  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BBB318  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80BBB31C  38 03 00 58 */	addi r0, r3, 0x58
/* 80BBB320  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80BBB324  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BBB328  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BBB32C  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80BBB330  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BBB334  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80BBB338  38 03 00 84 */	addi r0, r3, 0x84
/* 80BBB33C  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80BBB340  90 9E 09 58 */	stw r4, 0x958(r30)
/* 80BBB344  3C 60 80 BC */	lis r3, __vt__8cM3dGLin@ha /* 0x80BBC648@ha */
/* 80BBB348  38 03 C6 48 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x80BBC648@l */
/* 80BBB34C  90 1E 09 74 */	stw r0, 0x974(r30)
/* 80BBB350  38 7E 09 78 */	addi r3, r30, 0x978
/* 80BBB354  4B 4B C9 15 */	bl __ct__11dBgS_LinChkFv
/* 80BBB358  38 7E 09 E8 */	addi r3, r30, 0x9e8
/* 80BBB35C  4B 47 A9 31 */	bl __ct__9dJntCol_cFv
/* 80BBB360  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80BBB364  3C 80 80 BC */	lis r4, __ct__5csXyzFv@ha /* 0x80BBB558@ha */
/* 80BBB368  38 84 B5 58 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80BBB558@l */
/* 80BBB36C  3C A0 80 BC */	lis r5, __dt__5csXyzFv@ha /* 0x80BBB1F4@ha */
/* 80BBB370  38 A5 B1 F4 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80BBB1F4@l */
/* 80BBB374  38 C0 00 06 */	li r6, 6
/* 80BBB378  38 E0 00 03 */	li r7, 3
/* 80BBB37C  4B 7A 69 E5 */	bl __construct_array
lbl_80BBB380:
/* 80BBB380  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80BBB384  60 00 00 08 */	ori r0, r0, 8
/* 80BBB388  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80BBB38C:
/* 80BBB38C  38 00 00 00 */	li r0, 0
/* 80BBB390  98 1D 0A 32 */	stb r0, 0xa32(r29)
/* 80BBB394  7F A3 EB 78 */	mr r3, r29
/* 80BBB398  48 00 0C 61 */	bl getResName__15daObj_BouMato_cFv
/* 80BBB39C  7C 64 1B 78 */	mr r4, r3
/* 80BBB3A0  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80BBB3A4  4B 47 1B 19 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BBB3A8  7C 7E 1B 78 */	mr r30, r3
/* 80BBB3AC  2C 1E 00 04 */	cmpwi r30, 4
/* 80BBB3B0  40 82 01 8C */	bne lbl_80BBB53C
/* 80BBB3B4  7F A3 EB 78 */	mr r3, r29
/* 80BBB3B8  3C 80 80 BC */	lis r4, createHeapCallBack__15daObj_BouMato_cFP10fopAc_ac_c@ha /* 0x80BBBE50@ha */
/* 80BBB3BC  38 84 BE 50 */	addi r4, r4, createHeapCallBack__15daObj_BouMato_cFP10fopAc_ac_c@l /* 0x80BBBE50@l */
/* 80BBB3C0  38 A0 08 10 */	li r5, 0x810
/* 80BBB3C4  4B 45 F0 ED */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BBB3C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BBB3CC  40 82 00 0C */	bne lbl_80BBB3D8
/* 80BBB3D0  38 60 00 05 */	li r3, 5
/* 80BBB3D4  48 00 01 6C */	b lbl_80BBB540
lbl_80BBB3D8:
/* 80BBB3D8  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80BBB3DC  38 03 00 24 */	addi r0, r3, 0x24
/* 80BBB3E0  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80BBB3E4  7F A3 EB 78 */	mr r3, r29
/* 80BBB3E8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80BBB3EC  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80BBB3F0  FC 60 08 90 */	fmr f3, f1
/* 80BBB3F4  C0 9F 00 54 */	lfs f4, 0x54(r31)
/* 80BBB3F8  C0 BF 00 58 */	lfs f5, 0x58(r31)
/* 80BBB3FC  FC C0 20 90 */	fmr f6, f4
/* 80BBB400  4B 45 F1 49 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BBB404  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80BBB408  90 01 00 08 */	stw r0, 8(r1)
/* 80BBB40C  38 7D 05 78 */	addi r3, r29, 0x578
/* 80BBB410  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BBB414  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80BBB418  7F A6 EB 78 */	mr r6, r29
/* 80BBB41C  38 E0 00 01 */	li r7, 1
/* 80BBB420  39 1D 07 8C */	addi r8, r29, 0x78c
/* 80BBB424  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80BBB428  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80BBB42C  4B 4B AE 1D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BBB430  38 7D 05 78 */	addi r3, r29, 0x578
/* 80BBB434  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBB438  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBB43C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BBB440  4B 4B B6 6D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80BBB444  80 1D 06 54 */	lwz r0, 0x654(r29)
/* 80BBB448  90 1D 07 CC */	stw r0, 0x7cc(r29)
/* 80BBB44C  80 1D 06 58 */	lwz r0, 0x658(r29)
/* 80BBB450  90 1D 07 D0 */	stw r0, 0x7d0(r29)
/* 80BBB454  80 1D 06 5C */	lwz r0, 0x65c(r29)
/* 80BBB458  90 1D 07 D4 */	stw r0, 0x7d4(r29)
/* 80BBB45C  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 80BBB460  98 1D 07 D8 */	stb r0, 0x7d8(r29)
/* 80BBB464  A0 1D 06 68 */	lhz r0, 0x668(r29)
/* 80BBB468  B0 1D 07 E0 */	sth r0, 0x7e0(r29)
/* 80BBB46C  A0 1D 06 6A */	lhz r0, 0x66a(r29)
/* 80BBB470  B0 1D 07 E2 */	sth r0, 0x7e2(r29)
/* 80BBB474  80 1D 06 6C */	lwz r0, 0x66c(r29)
/* 80BBB478  90 1D 07 E4 */	stw r0, 0x7e4(r29)
/* 80BBB47C  80 1D 06 70 */	lwz r0, 0x670(r29)
/* 80BBB480  90 1D 07 E8 */	stw r0, 0x7e8(r29)
/* 80BBB484  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 80BBB488  D0 1D 07 F0 */	stfs f0, 0x7f0(r29)
/* 80BBB48C  C0 1D 06 7C */	lfs f0, 0x67c(r29)
/* 80BBB490  D0 1D 07 F4 */	stfs f0, 0x7f4(r29)
/* 80BBB494  C0 1D 06 80 */	lfs f0, 0x680(r29)
/* 80BBB498  D0 1D 07 F8 */	stfs f0, 0x7f8(r29)
/* 80BBB49C  80 1D 06 84 */	lwz r0, 0x684(r29)
/* 80BBB4A0  90 1D 07 FC */	stw r0, 0x7fc(r29)
/* 80BBB4A4  C0 1D 06 88 */	lfs f0, 0x688(r29)
/* 80BBB4A8  D0 1D 08 00 */	stfs f0, 0x800(r29)
/* 80BBB4AC  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 80BBB4B0  90 1D 08 04 */	stw r0, 0x804(r29)
/* 80BBB4B4  C0 1D 06 10 */	lfs f0, 0x610(r29)
/* 80BBB4B8  D0 1D 0A 14 */	stfs f0, 0xa14(r29)
/* 80BBB4BC  7F A3 EB 78 */	mr r3, r29
/* 80BBB4C0  48 00 0C DD */	bl setEnvTevColor__15daObj_BouMato_cFv
/* 80BBB4C4  7F A3 EB 78 */	mr r3, r29
/* 80BBB4C8  48 00 0D 31 */	bl setRoomNo__15daObj_BouMato_cFv
/* 80BBB4CC  38 7D 07 50 */	addi r3, r29, 0x750
/* 80BBB4D0  38 80 00 FF */	li r4, 0xff
/* 80BBB4D4  38 A0 00 00 */	li r5, 0
/* 80BBB4D8  7F A6 EB 78 */	mr r6, r29
/* 80BBB4DC  4B 4C 83 85 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BBB4E0  38 7D 08 08 */	addi r3, r29, 0x808
/* 80BBB4E4  3C 80 80 BC */	lis r4, l_ccDCyl@ha /* 0x80BBC52C@ha */
/* 80BBB4E8  38 84 C5 2C */	addi r4, r4, l_ccDCyl@l /* 0x80BBC52C@l */
/* 80BBB4EC  4B 4C 93 C9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BBB4F0  38 1D 07 50 */	addi r0, r29, 0x750
/* 80BBB4F4  90 1D 08 4C */	stw r0, 0x84c(r29)
/* 80BBB4F8  3C 60 80 BC */	lis r3, tgHitCallBack__15daObj_BouMato_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80BBBE70@ha */
/* 80BBB4FC  38 03 BE 70 */	addi r0, r3, tgHitCallBack__15daObj_BouMato_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80BBBE70@l */
/* 80BBB500  90 1D 08 AC */	stw r0, 0x8ac(r29)
/* 80BBB504  38 60 00 3C */	li r3, 0x3c
/* 80BBB508  4B 59 16 25 */	bl daNpcT_offTmpBit__FUl
/* 80BBB50C  38 60 00 3F */	li r3, 0x3f
/* 80BBB510  4B 59 16 1D */	bl daNpcT_offTmpBit__FUl
/* 80BBB514  38 60 00 40 */	li r3, 0x40
/* 80BBB518  4B 59 16 15 */	bl daNpcT_offTmpBit__FUl
/* 80BBB51C  38 60 00 41 */	li r3, 0x41
/* 80BBB520  4B 59 16 0D */	bl daNpcT_offTmpBit__FUl
/* 80BBB524  38 60 00 42 */	li r3, 0x42
/* 80BBB528  4B 59 16 05 */	bl daNpcT_offTmpBit__FUl
/* 80BBB52C  38 00 FF FF */	li r0, -1
/* 80BBB530  90 1D 0A 34 */	stw r0, 0xa34(r29)
/* 80BBB534  7F A3 EB 78 */	mr r3, r29
/* 80BBB538  48 00 02 FD */	bl Execute__15daObj_BouMato_cFv
lbl_80BBB53C:
/* 80BBB53C  7F C3 F3 78 */	mr r3, r30
lbl_80BBB540:
/* 80BBB540  39 61 00 20 */	addi r11, r1, 0x20
/* 80BBB544  4B 7A 6C E1 */	bl _restgpr_28
/* 80BBB548  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BBB54C  7C 08 03 A6 */	mtlr r0
/* 80BBB550  38 21 00 20 */	addi r1, r1, 0x20
/* 80BBB554  4E 80 00 20 */	blr 
