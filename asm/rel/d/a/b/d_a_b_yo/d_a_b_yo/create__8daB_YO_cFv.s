lbl_806389C0:
/* 806389C0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806389C4  7C 08 02 A6 */	mflr r0
/* 806389C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 806389CC  39 61 00 60 */	addi r11, r1, 0x60
/* 806389D0  4B D2 97 F5 */	bl _savegpr_23
/* 806389D4  7C 7F 1B 78 */	mr r31, r3
/* 806389D8  3C 80 80 64 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80639A60@ha */
/* 806389DC  3B A4 9A 60 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x80639A60@l */
/* 806389E0  3C 80 80 64 */	lis r4, lit_3788@ha /* 0x806397F4@ha */
/* 806389E4  3B C4 97 F4 */	addi r30, r4, lit_3788@l /* 0x806397F4@l */
/* 806389E8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806389EC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806389F0  40 82 01 6C */	bne lbl_80638B5C
/* 806389F4  7F E0 FB 79 */	or. r0, r31, r31
/* 806389F8  41 82 01 58 */	beq lbl_80638B50
/* 806389FC  7C 1C 03 78 */	mr r28, r0
/* 80638A00  4B 9E 01 65 */	bl __ct__10fopAc_ac_cFv
/* 80638A04  38 7C 06 34 */	addi r3, r28, 0x634
/* 80638A08  4B C8 85 5D */	bl __ct__15Z2CreatureEnemyFv
/* 80638A0C  38 7C 06 D8 */	addi r3, r28, 0x6d8
/* 80638A10  3C 80 80 64 */	lis r4, __ct__4cXyzFv@ha /* 0x80639578@ha */
/* 80638A14  38 84 95 78 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80639578@l */
/* 80638A18  3C A0 80 63 */	lis r5, __dt__4cXyzFv@ha /* 0x8062FB90@ha */
/* 80638A1C  38 A5 FB 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x8062FB90@l */
/* 80638A20  38 C0 00 0C */	li r6, 0xc
/* 80638A24  38 E0 00 05 */	li r7, 5
/* 80638A28  4B D2 93 39 */	bl __construct_array
/* 80638A2C  38 7C 10 1C */	addi r3, r28, 0x101c
/* 80638A30  4B A3 D4 7D */	bl __ct__12dBgS_AcchCirFv
/* 80638A34  3A FC 10 5C */	addi r23, r28, 0x105c
/* 80638A38  7E E3 BB 78 */	mr r3, r23
/* 80638A3C  4B A3 D6 65 */	bl __ct__9dBgS_AcchFv
/* 80638A40  3C 60 80 64 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80639EF0@ha */
/* 80638A44  38 63 9E F0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80639EF0@l */
/* 80638A48  90 77 00 10 */	stw r3, 0x10(r23)
/* 80638A4C  38 03 00 0C */	addi r0, r3, 0xc
/* 80638A50  90 17 00 14 */	stw r0, 0x14(r23)
/* 80638A54  38 03 00 18 */	addi r0, r3, 0x18
/* 80638A58  90 17 00 24 */	stw r0, 0x24(r23)
/* 80638A5C  38 77 00 14 */	addi r3, r23, 0x14
/* 80638A60  4B A4 04 09 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80638A64  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80638A68  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80638A6C  90 1C 12 4C */	stw r0, 0x124c(r28)
/* 80638A70  38 7C 12 50 */	addi r3, r28, 0x1250
/* 80638A74  4B A4 AC ED */	bl __ct__10dCcD_GSttsFv
/* 80638A78  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80638A7C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80638A80  90 7C 12 4C */	stw r3, 0x124c(r28)
/* 80638A84  3B 23 00 20 */	addi r25, r3, 0x20
/* 80638A88  93 3C 12 50 */	stw r25, 0x1250(r28)
/* 80638A8C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80638A90  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80638A94  90 1C 12 88 */	stw r0, 0x1288(r28)
/* 80638A98  38 7C 12 8C */	addi r3, r28, 0x128c
/* 80638A9C  4B A4 AC C5 */	bl __ct__10dCcD_GSttsFv
/* 80638AA0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80638AA4  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80638AA8  90 1C 12 88 */	stw r0, 0x1288(r28)
/* 80638AAC  93 3C 12 8C */	stw r25, 0x128c(r28)
/* 80638AB0  3B 7C 12 AC */	addi r27, r28, 0x12ac
/* 80638AB4  7F 63 DB 78 */	mr r3, r27
/* 80638AB8  4B A4 AF 71 */	bl __ct__12dCcD_GObjInfFv
/* 80638ABC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80638AC0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80638AC4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80638AC8  3C 60 80 64 */	lis r3, __vt__8cM3dGAab@ha /* 0x80639EE4@ha */
/* 80638ACC  38 03 9E E4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80639EE4@l */
/* 80638AD0  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80638AD4  3C 60 80 64 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80639ED8@ha */
/* 80638AD8  38 03 9E D8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80639ED8@l */
/* 80638ADC  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80638AE0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80638AE4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80638AE8  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80638AEC  38 03 00 58 */	addi r0, r3, 0x58
/* 80638AF0  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80638AF4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80638AF8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80638AFC  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80638B00  38 03 00 2C */	addi r0, r3, 0x2c
/* 80638B04  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80638B08  38 03 00 84 */	addi r0, r3, 0x84
/* 80638B0C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80638B10  38 7C 13 E8 */	addi r3, r28, 0x13e8
/* 80638B14  3C 80 80 64 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x806392E0@ha */
/* 80638B18  38 84 92 E0 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x806392E0@l */
/* 80638B1C  3C A0 80 64 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80639214@ha */
/* 80638B20  38 A5 92 14 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80639214@l */
/* 80638B24  38 C0 01 38 */	li r6, 0x138
/* 80638B28  38 E0 00 03 */	li r7, 3
/* 80638B2C  4B D2 92 35 */	bl __construct_array
/* 80638B30  38 7C 17 90 */	addi r3, r28, 0x1790
/* 80638B34  3C 80 80 64 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x806392E0@ha */
/* 80638B38  38 84 92 E0 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x806392E0@l */
/* 80638B3C  3C A0 80 64 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80639214@ha */
/* 80638B40  38 A5 92 14 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80639214@l */
/* 80638B44  38 C0 01 38 */	li r6, 0x138
/* 80638B48  38 E0 00 03 */	li r7, 3
/* 80638B4C  4B D2 92 15 */	bl __construct_array
lbl_80638B50:
/* 80638B50  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80638B54  60 00 00 08 */	ori r0, r0, 8
/* 80638B58  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80638B5C:
/* 80638B5C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80638B60  98 1F 0F A9 */	stb r0, 0xfa9(r31)
/* 80638B64  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80638B68  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80638B6C  98 1F 0F AA */	stb r0, 0xfaa(r31)
/* 80638B70  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80638B74  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80638B78  98 1F 0F CE */	stb r0, 0xfce(r31)
/* 80638B7C  88 1F 0F CE */	lbz r0, 0xfce(r31)
/* 80638B80  28 00 00 01 */	cmplwi r0, 1
/* 80638B84  41 82 00 0C */	beq lbl_80638B90
/* 80638B88  38 00 00 00 */	li r0, 0
/* 80638B8C  98 1F 0F CE */	stb r0, 0xfce(r31)
lbl_80638B90:
/* 80638B90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80638B94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80638B98  38 63 09 58 */	addi r3, r3, 0x958
/* 80638B9C  38 80 00 03 */	li r4, 3
/* 80638BA0  4B 9F BD 95 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80638BA4  2C 03 00 00 */	cmpwi r3, 0
/* 80638BA8  41 82 00 0C */	beq lbl_80638BB4
/* 80638BAC  38 00 00 01 */	li r0, 1
/* 80638BB0  98 1F 0F CE */	stb r0, 0xfce(r31)
lbl_80638BB4:
/* 80638BB4  88 1F 0F CE */	lbz r0, 0xfce(r31)
/* 80638BB8  98 1F 0F CF */	stb r0, 0xfcf(r31)
/* 80638BBC  88 1F 0F CE */	lbz r0, 0xfce(r31)
/* 80638BC0  28 00 00 01 */	cmplwi r0, 1
/* 80638BC4  40 82 01 30 */	bne lbl_80638CF4
/* 80638BC8  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80638BCC  3C 80 80 64 */	lis r4, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 80638BD0  38 84 9A 34 */	addi r4, r4, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 80638BD4  38 84 00 11 */	addi r4, r4, 0x11
/* 80638BD8  4B 9F 42 E5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80638BDC  7C 7C 1B 78 */	mr r28, r3
/* 80638BE0  2C 1C 00 04 */	cmpwi r28, 4
/* 80638BE4  40 82 01 08 */	bne lbl_80638CEC
/* 80638BE8  4B 9F 8D A9 */	bl remove__10daMirror_cFv
/* 80638BEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80638BF0  40 82 00 0C */	bne lbl_80638BFC
/* 80638BF4  38 60 00 00 */	li r3, 0
/* 80638BF8  48 00 06 04 */	b lbl_806391FC
lbl_80638BFC:
/* 80638BFC  7F E3 FB 78 */	mr r3, r31
/* 80638C00  3C 80 80 64 */	lis r4, useHeapInit2__FP10fopAc_ac_c@ha /* 0x806389A0@ha */
/* 80638C04  38 84 89 A0 */	addi r4, r4, useHeapInit2__FP10fopAc_ac_c@l /* 0x806389A0@l */
/* 80638C08  38 A0 22 00 */	li r5, 0x2200
/* 80638C0C  4B 9E 18 A5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80638C10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80638C14  40 82 00 0C */	bne lbl_80638C20
/* 80638C18  38 60 00 05 */	li r3, 5
/* 80638C1C  48 00 05 E0 */	b lbl_806391FC
lbl_80638C20:
/* 80638C20  80 9F 10 14 */	lwz r4, 0x1014(r31)
/* 80638C24  28 04 00 00 */	cmplwi r4, 0
/* 80638C28  41 82 00 28 */	beq lbl_80638C50
/* 80638C2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80638C30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80638C34  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80638C38  7F E5 FB 78 */	mr r5, r31
/* 80638C3C  4B A3 BD CD */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80638C40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80638C44  41 82 00 0C */	beq lbl_80638C50
/* 80638C48  38 60 00 05 */	li r3, 5
/* 80638C4C  48 00 05 B0 */	b lbl_806391FC
lbl_80638C50:
/* 80638C50  C0 1E 02 10 */	lfs f0, 0x210(r30)
/* 80638C54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80638C58  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80638C5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80638C60  C0 1E 02 14 */	lfs f0, 0x214(r30)
/* 80638C64  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80638C68  38 61 00 10 */	addi r3, r1, 0x10
/* 80638C6C  38 80 00 00 */	li r4, 0
/* 80638C70  38 A0 00 00 */	li r5, 0
/* 80638C74  38 C0 00 00 */	li r6, 0
/* 80638C78  4B C2 E7 7D */	bl __ct__5csXyzFsss
/* 80638C7C  38 61 00 24 */	addi r3, r1, 0x24
/* 80638C80  38 81 00 10 */	addi r4, r1, 0x10
/* 80638C84  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80638C88  7C 05 07 74 */	extsb r5, r0
/* 80638C8C  38 C0 00 01 */	li r6, 1
/* 80638C90  38 E0 00 00 */	li r7, 0
/* 80638C94  39 00 00 FF */	li r8, 0xff
/* 80638C98  4B 9E 3C C5 */	bl fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc
/* 80638C9C  38 00 00 00 */	li r0, 0
/* 80638CA0  98 1F 0F B7 */	stb r0, 0xfb7(r31)
/* 80638CA4  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80638CA8  D0 1F 0F B8 */	stfs f0, 0xfb8(r31)
/* 80638CAC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80638CB0  D0 3F 0F BC */	stfs f1, 0xfbc(r31)
/* 80638CB4  98 1F 0F C0 */	stb r0, 0xfc0(r31)
/* 80638CB8  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80638CBC  D0 1F 0F C4 */	stfs f0, 0xfc4(r31)
/* 80638CC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80638CC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80638CC8  FC 40 08 90 */	fmr f2, f1
/* 80638CCC  FC 60 08 90 */	fmr f3, f1
/* 80638CD0  4B D0 DC 19 */	bl PSMTXTrans
/* 80638CD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80638CD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80638CDC  38 9F 0F E4 */	addi r4, r31, 0xfe4
/* 80638CE0  4B D0 D7 D1 */	bl PSMTXCopy
/* 80638CE4  7F E3 FB 78 */	mr r3, r31
/* 80638CE8  4B FF F2 B9 */	bl daB_YO_Execute__FP8daB_YO_c
lbl_80638CEC:
/* 80638CEC  7F 83 E3 78 */	mr r3, r28
/* 80638CF0  48 00 05 0C */	b lbl_806391FC
lbl_80638CF4:
/* 80638CF4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80638CF8  3C 80 80 64 */	lis r4, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 80638CFC  38 84 9A 34 */	addi r4, r4, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 80638D00  4B 9F 41 BD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80638D04  7C 7C 1B 78 */	mr r28, r3
/* 80638D08  2C 1C 00 04 */	cmpwi r28, 4
/* 80638D0C  40 82 04 EC */	bne lbl_806391F8
/* 80638D10  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80638D14  3C 80 80 64 */	lis r4, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 80638D18  38 84 9A 34 */	addi r4, r4, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 80638D1C  38 84 00 11 */	addi r4, r4, 0x11
/* 80638D20  4B 9F 41 9D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80638D24  7C 7C 1B 78 */	mr r28, r3
/* 80638D28  2C 1C 00 04 */	cmpwi r28, 4
/* 80638D2C  40 82 04 CC */	bne lbl_806391F8
/* 80638D30  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80638D34  3C 80 80 64 */	lis r4, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 80638D38  38 84 9A 34 */	addi r4, r4, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 80638D3C  38 84 00 18 */	addi r4, r4, 0x18
/* 80638D40  4B 9F 41 7D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80638D44  7C 7C 1B 78 */	mr r28, r3
/* 80638D48  2C 1C 00 04 */	cmpwi r28, 4
/* 80638D4C  40 82 04 AC */	bne lbl_806391F8
/* 80638D50  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80638D54  3C 80 80 64 */	lis r4, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 80638D58  38 84 9A 34 */	addi r4, r4, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 80638D5C  38 84 00 1C */	addi r4, r4, 0x1c
/* 80638D60  4B 9F 41 5D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80638D64  7C 7C 1B 78 */	mr r28, r3
/* 80638D68  2C 1C 00 04 */	cmpwi r28, 4
/* 80638D6C  40 82 04 8C */	bne lbl_806391F8
/* 80638D70  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80638D74  3C 80 80 64 */	lis r4, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 80638D78  38 84 9A 34 */	addi r4, r4, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 80638D7C  38 84 00 21 */	addi r4, r4, 0x21
/* 80638D80  4B 9F 41 3D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80638D84  7C 7C 1B 78 */	mr r28, r3
/* 80638D88  2C 1C 00 04 */	cmpwi r28, 4
/* 80638D8C  40 82 04 6C */	bne lbl_806391F8
/* 80638D90  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 80638D94  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 80638D98  28 00 00 00 */	cmplwi r0, 0
/* 80638D9C  41 82 00 18 */	beq lbl_80638DB4
/* 80638DA0  4B 9F 8B F1 */	bl remove__10daMirror_cFv
/* 80638DA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80638DA8  40 82 00 0C */	bne lbl_80638DB4
/* 80638DAC  38 60 00 00 */	li r3, 0
/* 80638DB0  48 00 04 4C */	b lbl_806391FC
lbl_80638DB4:
/* 80638DB4  7F E3 FB 78 */	mr r3, r31
/* 80638DB8  3C 80 80 64 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80638880@ha */
/* 80638DBC  38 84 88 80 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80638880@l */
/* 80638DC0  3C A0 00 02 */	lis r5, 0x0002 /* 0x0001BEE0@ha */
/* 80638DC4  38 A5 BE E0 */	addi r5, r5, 0xBEE0 /* 0x0001BEE0@l */
/* 80638DC8  4B 9E 16 E9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80638DCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80638DD0  40 82 00 0C */	bne lbl_80638DDC
/* 80638DD4  38 60 00 05 */	li r3, 5
/* 80638DD8  48 00 04 24 */	b lbl_806391FC
lbl_80638DDC:
/* 80638DDC  3C 60 80 64 */	lis r3, struct_80639F74+0x1@ha /* 0x80639F75@ha */
/* 80638DE0  8C 03 9F 75 */	lbzu r0, struct_80639F74+0x1@l(r3)  /* 0x80639F75@l */
/* 80638DE4  28 00 00 00 */	cmplwi r0, 0
/* 80638DE8  40 82 00 20 */	bne lbl_80638E08
/* 80638DEC  38 00 00 01 */	li r0, 1
/* 80638DF0  98 03 00 00 */	stb r0, 0(r3)
/* 80638DF4  98 1F 1B 84 */	stb r0, 0x1b84(r31)
/* 80638DF8  38 00 FF FF */	li r0, -1
/* 80638DFC  3C 60 80 64 */	lis r3, l_HIO@ha /* 0x80639F84@ha */
/* 80638E00  38 63 9F 84 */	addi r3, r3, l_HIO@l /* 0x80639F84@l */
/* 80638E04  98 03 00 04 */	stb r0, 4(r3)
lbl_80638E08:
/* 80638E08  38 00 00 00 */	li r0, 0
/* 80638E0C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80638E10  38 00 00 3C */	li r0, 0x3c
/* 80638E14  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80638E18  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80638E1C  38 03 00 24 */	addi r0, r3, 0x24
/* 80638E20  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80638E24  7F E3 FB 78 */	mr r3, r31
/* 80638E28  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80638E2C  FC 40 08 90 */	fmr f2, f1
/* 80638E30  FC 60 08 90 */	fmr f3, f1
/* 80638E34  4B 9E 16 F5 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80638E38  7F E3 FB 78 */	mr r3, r31
/* 80638E3C  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80638E40  FC 40 08 90 */	fmr f2, f1
/* 80638E44  FC 60 08 90 */	fmr f3, f1
/* 80638E48  4B 9E 16 F1 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80638E4C  38 00 00 00 */	li r0, 0
/* 80638E50  90 01 00 08 */	stw r0, 8(r1)
/* 80638E54  38 7F 10 5C */	addi r3, r31, 0x105c
/* 80638E58  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80638E5C  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80638E60  7F E6 FB 78 */	mr r6, r31
/* 80638E64  38 E0 00 01 */	li r7, 1
/* 80638E68  39 1F 10 1C */	addi r8, r31, 0x101c
/* 80638E6C  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80638E70  39 40 00 00 */	li r10, 0
/* 80638E74  4B A3 D3 D5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80638E78  38 7F 10 1C */	addi r3, r31, 0x101c
/* 80638E7C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80638E80  C0 5E 01 64 */	lfs f2, 0x164(r30)
/* 80638E84  3C 80 80 64 */	lis r4, l_HIO@ha /* 0x80639F84@ha */
/* 80638E88  38 84 9F 84 */	addi r4, r4, l_HIO@l /* 0x80639F84@l */
/* 80638E8C  88 1F 0F A8 */	lbz r0, 0xfa8(r31)
/* 80638E90  54 00 10 3A */	slwi r0, r0, 2
/* 80638E94  7C 84 02 14 */	add r4, r4, r0
/* 80638E98  C0 04 00 08 */	lfs f0, 8(r4)
/* 80638E9C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80638EA0  4B A3 D0 B9 */	bl SetWall__12dBgS_AcchCirFff
/* 80638EA4  80 9F 10 14 */	lwz r4, 0x1014(r31)
/* 80638EA8  28 04 00 00 */	cmplwi r4, 0
/* 80638EAC  41 82 00 28 */	beq lbl_80638ED4
/* 80638EB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80638EB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80638EB8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80638EBC  7F E5 FB 78 */	mr r5, r31
/* 80638EC0  4B A3 BB 49 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80638EC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80638EC8  41 82 00 0C */	beq lbl_80638ED4
/* 80638ECC  38 60 00 05 */	li r3, 5
/* 80638ED0  48 00 03 2C */	b lbl_806391FC
lbl_80638ED4:
/* 80638ED4  80 9F 10 18 */	lwz r4, 0x1018(r31)
/* 80638ED8  28 04 00 00 */	cmplwi r4, 0
/* 80638EDC  41 82 00 28 */	beq lbl_80638F04
/* 80638EE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80638EE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80638EE8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80638EEC  7F E5 FB 78 */	mr r5, r31
/* 80638EF0  4B A3 BB 19 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80638EF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80638EF8  41 82 00 0C */	beq lbl_80638F04
/* 80638EFC  38 60 00 05 */	li r3, 5
/* 80638F00  48 00 02 FC */	b lbl_806391FC
lbl_80638F04:
/* 80638F04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80638F08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80638F0C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80638F10  FC 40 08 90 */	fmr f2, f1
/* 80638F14  FC 60 08 90 */	fmr f3, f1
/* 80638F18  4B D0 D9 D1 */	bl PSMTXTrans
/* 80638F1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80638F20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80638F24  38 9F 0F E4 */	addi r4, r31, 0xfe4
/* 80638F28  4B D0 D5 89 */	bl PSMTXCopy
/* 80638F2C  38 00 00 50 */	li r0, 0x50
/* 80638F30  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80638F34  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 80638F38  38 7F 12 34 */	addi r3, r31, 0x1234
/* 80638F3C  38 80 00 FF */	li r4, 0xff
/* 80638F40  38 A0 00 00 */	li r5, 0
/* 80638F44  7F E6 FB 78 */	mr r6, r31
/* 80638F48  4B A4 A9 19 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80638F4C  38 7F 12 70 */	addi r3, r31, 0x1270
/* 80638F50  38 80 00 FF */	li r4, 0xff
/* 80638F54  38 A0 00 00 */	li r5, 0
/* 80638F58  7F E6 FB 78 */	mr r6, r31
/* 80638F5C  4B A4 A9 05 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80638F60  38 7F 12 AC */	addi r3, r31, 0x12ac
/* 80638F64  38 9D 00 20 */	addi r4, r29, 0x20
/* 80638F68  4B A4 B9 4D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80638F6C  3B 3F 12 34 */	addi r25, r31, 0x1234
/* 80638F70  93 3F 12 F0 */	stw r25, 0x12f0(r31)
/* 80638F74  3A E0 00 00 */	li r23, 0
/* 80638F78  3B 60 00 00 */	li r27, 0
/* 80638F7C  3B 5F 12 70 */	addi r26, r31, 0x1270
lbl_80638F80:
/* 80638F80  7F 1F DA 14 */	add r24, r31, r27
/* 80638F84  38 78 13 E8 */	addi r3, r24, 0x13e8
/* 80638F88  38 9D 00 64 */	addi r4, r29, 0x64
/* 80638F8C  4B A4 BA A9 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80638F90  93 38 14 2C */	stw r25, 0x142c(r24)
/* 80638F94  38 78 17 90 */	addi r3, r24, 0x1790
/* 80638F98  38 9D 00 A4 */	addi r4, r29, 0xa4
/* 80638F9C  4B A4 BA 99 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80638FA0  93 58 17 D4 */	stw r26, 0x17d4(r24)
/* 80638FA4  3A F7 00 01 */	addi r23, r23, 1
/* 80638FA8  2C 17 00 03 */	cmpwi r23, 3
/* 80638FAC  3B 7B 01 38 */	addi r27, r27, 0x138
/* 80638FB0  41 80 FF D0 */	blt lbl_80638F80
/* 80638FB4  38 7F 06 34 */	addi r3, r31, 0x634
/* 80638FB8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80638FBC  38 BF 05 38 */	addi r5, r31, 0x538
/* 80638FC0  38 C0 00 03 */	li r6, 3
/* 80638FC4  38 E0 00 01 */	li r7, 1
/* 80638FC8  4B C8 80 CD */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80638FCC  38 7F 06 34 */	addi r3, r31, 0x634
/* 80638FD0  3C 80 80 64 */	lis r4, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 80638FD4  38 84 9A 34 */	addi r4, r4, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 80638FD8  38 84 00 26 */	addi r4, r4, 0x26
/* 80638FDC  4B C8 8B B5 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80638FE0  38 1F 06 34 */	addi r0, r31, 0x634
/* 80638FE4  90 1F 1B 40 */	stw r0, 0x1b40(r31)
/* 80638FE8  38 00 00 01 */	li r0, 1
/* 80638FEC  98 1F 1B 56 */	stb r0, 0x1b56(r31)
/* 80638FF0  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80638FF4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80638FF8  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80638FFC  D0 1F 0F 4C */	stfs f0, 0xf4c(r31)
/* 80639000  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80639004  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80639008  3B 03 09 78 */	addi r24, r3, 0x978
/* 8063900C  7F 03 C3 78 */	mr r3, r24
/* 80639010  38 80 00 14 */	li r4, 0x14
/* 80639014  4B 9F BB AD */	bl offSwitch__12dSv_danBit_cFi
/* 80639018  7F 03 C3 78 */	mr r3, r24
/* 8063901C  38 80 00 16 */	li r4, 0x16
/* 80639020  4B 9F BB A1 */	bl offSwitch__12dSv_danBit_cFi
/* 80639024  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80639028  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8063902C  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 80639030  38 80 00 00 */	li r4, 0
/* 80639034  98 9F 10 68 */	stb r4, 0x1068(r31)
/* 80639038  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 8063903C  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 80639040  28 00 00 00 */	cmplwi r0, 0
/* 80639044  41 82 01 48 */	beq lbl_8063918C
/* 80639048  D0 5F 07 44 */	stfs f2, 0x744(r31)
/* 8063904C  7F E3 FB 78 */	mr r3, r31
/* 80639050  38 80 00 00 */	li r4, 0
/* 80639054  38 A0 00 00 */	li r5, 0
/* 80639058  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8063905C  4B FF 6B AD */	bl setBck__8daB_YO_cFiUcff
/* 80639060  38 00 00 00 */	li r0, 0
/* 80639064  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 80639068  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 8063906C  98 1F 0F B5 */	stb r0, 0xfb5(r31)
/* 80639070  7F E3 FB 78 */	mr r3, r31
/* 80639074  38 80 00 01 */	li r4, 1
/* 80639078  38 A0 00 00 */	li r5, 0
/* 8063907C  4B FF 6D 91 */	bl setActionMode__8daB_YO_cFii
/* 80639080  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80639084  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80639088  80 63 00 00 */	lwz r3, 0(r3)
/* 8063908C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80639090  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100004C@ha */
/* 80639094  38 84 00 4C */	addi r4, r4, 0x004C /* 0x0100004C@l */
/* 80639098  38 A0 00 00 */	li r5, 0
/* 8063909C  38 C0 00 00 */	li r6, 0
/* 806390A0  4B C7 5F 71 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 806390A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806390A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806390AC  88 9F 0F A9 */	lbz r4, 0xfa9(r31)
/* 806390B0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806390B4  7C 05 07 74 */	extsb r5, r0
/* 806390B8  4B 9F C2 A9 */	bl isSwitch__10dSv_info_cCFii
/* 806390BC  2C 03 00 00 */	cmpwi r3, 0
/* 806390C0  40 82 00 1C */	bne lbl_806390DC
/* 806390C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806390C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806390CC  88 9F 0F A9 */	lbz r4, 0xfa9(r31)
/* 806390D0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806390D4  7C 05 07 74 */	extsb r5, r0
/* 806390D8  4B 9F C1 29 */	bl onSwitch__10dSv_info_cFii
lbl_806390DC:
/* 806390DC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 806390E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806390E4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806390E8  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 806390EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806390F0  38 60 02 F2 */	li r3, 0x2f2
/* 806390F4  38 80 00 05 */	li r4, 5
/* 806390F8  38 A1 00 18 */	addi r5, r1, 0x18
/* 806390FC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80639100  7C 06 07 74 */	extsb r6, r0
/* 80639104  38 E0 00 00 */	li r7, 0
/* 80639108  39 00 00 00 */	li r8, 0
/* 8063910C  39 20 FF FF */	li r9, -1
/* 80639110  4B 9E 0C 89 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80639114  90 7F 06 30 */	stw r3, 0x630(r31)
/* 80639118  38 00 00 01 */	li r0, 1
/* 8063911C  98 1F 0F B7 */	stb r0, 0xfb7(r31)
/* 80639120  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80639124  D0 1F 0F B8 */	stfs f0, 0xfb8(r31)
/* 80639128  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8063912C  D0 1F 0F BC */	stfs f0, 0xfbc(r31)
/* 80639130  80 9F 10 14 */	lwz r4, 0x1014(r31)
/* 80639134  28 04 00 00 */	cmplwi r4, 0
/* 80639138  41 82 00 14 */	beq lbl_8063914C
/* 8063913C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80639140  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80639144  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80639148  4B A3 B1 09 */	bl Release__4cBgSFP9dBgW_Base
lbl_8063914C:
/* 8063914C  38 00 00 00 */	li r0, 0
/* 80639150  90 1F 06 04 */	stw r0, 0x604(r31)
/* 80639154  38 00 00 04 */	li r0, 4
/* 80639158  98 1F 0F C0 */	stb r0, 0xfc0(r31)
/* 8063915C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80639160  D0 1F 0F C4 */	stfs f0, 0xfc4(r31)
/* 80639164  38 00 00 02 */	li r0, 2
/* 80639168  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8063916C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80639170  98 03 12 C8 */	stb r0, 0x12c8(r3)
/* 80639174  98 03 12 C2 */	stb r0, 0x12c2(r3)
/* 80639178  98 03 12 C3 */	stb r0, 0x12c3(r3)
/* 8063917C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80639180  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80639184  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80639188  48 00 00 5C */	b lbl_806391E4
lbl_8063918C:
/* 8063918C  98 9F 0F B7 */	stb r4, 0xfb7(r31)
/* 80639190  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80639194  D0 1F 0F B8 */	stfs f0, 0xfb8(r31)
/* 80639198  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8063919C  D0 1F 0F BC */	stfs f0, 0xfbc(r31)
/* 806391A0  80 9F 10 18 */	lwz r4, 0x1018(r31)
/* 806391A4  28 04 00 00 */	cmplwi r4, 0
/* 806391A8  41 82 00 14 */	beq lbl_806391BC
/* 806391AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806391B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806391B4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806391B8  4B A3 B0 99 */	bl Release__4cBgSFP9dBgW_Base
lbl_806391BC:
/* 806391BC  38 00 00 00 */	li r0, 0
/* 806391C0  98 1F 0F C0 */	stb r0, 0xfc0(r31)
/* 806391C4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 806391C8  D0 1F 0F C4 */	stfs f0, 0xfc4(r31)
/* 806391CC  38 00 00 03 */	li r0, 3
/* 806391D0  98 1F 0F B5 */	stb r0, 0xfb5(r31)
/* 806391D4  7F E3 FB 78 */	mr r3, r31
/* 806391D8  38 80 00 00 */	li r4, 0
/* 806391DC  38 A0 00 00 */	li r5, 0
/* 806391E0  4B FF 6C 2D */	bl setActionMode__8daB_YO_cFii
lbl_806391E4:
/* 806391E4  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 806391E8  60 00 02 00 */	ori r0, r0, 0x200
/* 806391EC  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 806391F0  7F E3 FB 78 */	mr r3, r31
/* 806391F4  4B FF ED AD */	bl daB_YO_Execute__FP8daB_YO_c
lbl_806391F8:
/* 806391F8  7F 83 E3 78 */	mr r3, r28
lbl_806391FC:
/* 806391FC  39 61 00 60 */	addi r11, r1, 0x60
/* 80639200  4B D2 90 11 */	bl _restgpr_23
/* 80639204  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80639208  7C 08 03 A6 */	mtlr r0
/* 8063920C  38 21 00 60 */	addi r1, r1, 0x60
/* 80639210  4E 80 00 20 */	blr 
