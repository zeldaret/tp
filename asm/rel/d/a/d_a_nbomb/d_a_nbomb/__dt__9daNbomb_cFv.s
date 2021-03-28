lbl_804C7EB4:
/* 804C7EB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C7EB8  7C 08 02 A6 */	mflr r0
/* 804C7EBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C7EC0  39 61 00 20 */	addi r11, r1, 0x20
/* 804C7EC4  4B E9 A3 10 */	b _savegpr_27
/* 804C7EC8  7C 7E 1B 79 */	or. r30, r3, r3
/* 804C7ECC  7C 9F 23 78 */	mr r31, r4
/* 804C7ED0  41 82 03 80 */	beq lbl_804C8250
/* 804C7ED4  3C 60 80 4D */	lis r3, __vt__9daNbomb_c@ha
/* 804C7ED8  38 03 C6 4C */	addi r0, r3, __vt__9daNbomb_c@l
/* 804C7EDC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 804C7EE0  88 1E 0B 50 */	lbz r0, 0xb50(r30)
/* 804C7EE4  28 00 00 02 */	cmplwi r0, 2
/* 804C7EE8  40 80 00 1C */	bge lbl_804C7F04
/* 804C7EEC  38 60 00 00 */	li r3, 0
/* 804C7EF0  38 80 00 00 */	li r4, 0
/* 804C7EF4  38 A0 00 00 */	li r5, 0
/* 804C7EF8  3C C0 80 4D */	lis r6, lit_4255@ha
/* 804C7EFC  C0 26 C3 80 */	lfs f1, lit_4255@l(r6)
/* 804C7F00  4B CD FF 88 */	b dKy_actor_addcol_set__Fsssf
lbl_804C7F04:
/* 804C7F04  38 7E 0B 60 */	addi r3, r30, 0xb60
/* 804C7F08  4B CD FA 24 */	b dKy_plight_cut__FP15LIGHT_INFLUENCE
/* 804C7F0C  38 7E 0B 80 */	addi r3, r30, 0xb80
/* 804C7F10  4B B9 2F 48 */	b dKyw_pntwind_cut__FP14WIND_INFLUENCE
/* 804C7F14  38 7E 0B 20 */	addi r3, r30, 0xb20
/* 804C7F18  4B DF 60 E0 */	b deleteObject__14Z2SoundObjBaseFv
/* 804C7F1C  80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 804C7F20  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 804C7F24  41 82 00 4C */	beq lbl_804C7F70
/* 804C7F28  3B 60 00 00 */	li r27, 0
/* 804C7F2C  3B A0 00 00 */	li r29, 0
/* 804C7F30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C7F34  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
lbl_804C7F38:
/* 804C7F38  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 804C7F3C  38 63 02 10 */	addi r3, r3, 0x210
/* 804C7F40  38 1D 0B B8 */	addi r0, r29, 0xbb8
/* 804C7F44  7C 9E 00 2E */	lwzx r4, r30, r0
/* 804C7F48  4B B8 39 D0 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 804C7F4C  28 03 00 00 */	cmplwi r3, 0
/* 804C7F50  41 82 00 10 */	beq lbl_804C7F60
/* 804C7F54  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 804C7F58  60 00 00 04 */	ori r0, r0, 4
/* 804C7F5C  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_804C7F60:
/* 804C7F60  3B 7B 00 01 */	addi r27, r27, 1
/* 804C7F64  2C 1B 00 05 */	cmpwi r27, 5
/* 804C7F68  3B BD 00 04 */	addi r29, r29, 4
/* 804C7F6C  41 80 FF CC */	blt lbl_804C7F38
lbl_804C7F70:
/* 804C7F70  88 1E 0B 54 */	lbz r0, 0xb54(r30)
/* 804C7F74  28 00 00 03 */	cmplwi r0, 3
/* 804C7F78  41 80 00 1C */	blt lbl_804C7F94
/* 804C7F7C  38 7E 05 6C */	addi r3, r30, 0x56c
/* 804C7F80  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 804C7F84  3C 80 80 4D */	lis r4, m_arcNameList__9daNbomb_c@ha
/* 804C7F88  38 84 C5 18 */	addi r4, r4, m_arcNameList__9daNbomb_c@l
/* 804C7F8C  7C 84 00 2E */	lwzx r4, r4, r0
/* 804C7F90  4B B6 50 78 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_804C7F94:
/* 804C7F94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C7F98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C7F9C  80 83 5D B4 */	lwz r4, 0x5db4(r3)
/* 804C7FA0  28 04 00 00 */	cmplwi r4, 0
/* 804C7FA4  41 82 00 44 */	beq lbl_804C7FE8
/* 804C7FA8  80 7E 0B 4C */	lwz r3, 0xb4c(r30)
/* 804C7FAC  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 804C7FB0  41 82 00 1C */	beq lbl_804C7FCC
/* 804C7FB4  88 64 2F CF */	lbz r3, 0x2fcf(r4)
/* 804C7FB8  28 03 00 00 */	cmplwi r3, 0
/* 804C7FBC  41 82 00 2C */	beq lbl_804C7FE8
/* 804C7FC0  38 03 FF FF */	addi r0, r3, -1
/* 804C7FC4  98 04 2F CF */	stb r0, 0x2fcf(r4)
/* 804C7FC8  48 00 00 20 */	b lbl_804C7FE8
lbl_804C7FCC:
/* 804C7FCC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 804C7FD0  41 82 00 18 */	beq lbl_804C7FE8
/* 804C7FD4  88 64 2F A2 */	lbz r3, 0x2fa2(r4)
/* 804C7FD8  28 03 00 00 */	cmplwi r3, 0
/* 804C7FDC  41 82 00 0C */	beq lbl_804C7FE8
/* 804C7FE0  38 03 FF FF */	addi r0, r3, -1
/* 804C7FE4  98 04 2F A2 */	stb r0, 0x2fa2(r4)
lbl_804C7FE8:
/* 804C7FE8  7F C3 F3 78 */	mr r3, r30
/* 804C7FEC  4B B5 4B B4 */	b fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 804C7FF0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 804C7FF4  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 804C7FF8  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 804C7FFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C8000  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C8004  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804C8008  38 63 02 10 */	addi r3, r3, 0x210
/* 804C800C  80 9E 0B B8 */	lwz r4, 0xbb8(r30)
/* 804C8010  4B B8 39 08 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 804C8014  28 03 00 00 */	cmplwi r3, 0
/* 804C8018  41 82 00 0C */	beq lbl_804C8024
/* 804C801C  38 00 00 00 */	li r0, 0
/* 804C8020  90 03 00 F0 */	stw r0, 0xf0(r3)
lbl_804C8024:
/* 804C8024  34 1E 0B 20 */	addic. r0, r30, 0xb20
/* 804C8028  41 82 00 1C */	beq lbl_804C8044
/* 804C802C  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha
/* 804C8030  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l
/* 804C8034  90 1E 0B 30 */	stw r0, 0xb30(r30)
/* 804C8038  38 7E 0B 20 */	addi r3, r30, 0xb20
/* 804C803C  38 80 00 00 */	li r4, 0
/* 804C8040  4B DF 5F 08 */	b __dt__14Z2SoundObjBaseFv
lbl_804C8044:
/* 804C8044  38 7E 0B 10 */	addi r3, r30, 0xb10
/* 804C8048  38 80 FF FF */	li r4, -1
/* 804C804C  4B DA 00 64 */	b __dt__13cBgS_PolyInfoFv
/* 804C8050  38 7E 0A A0 */	addi r3, r30, 0xaa0
/* 804C8054  38 80 FF FF */	li r4, -1
/* 804C8058  4B BB 01 08 */	b __dt__15dBgS_BombLinChkFv
/* 804C805C  34 1E 09 04 */	addic. r0, r30, 0x904
/* 804C8060  41 82 00 84 */	beq lbl_804C80E4
/* 804C8064  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 804C8068  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 804C806C  90 7E 09 40 */	stw r3, 0x940(r30)
/* 804C8070  38 03 00 2C */	addi r0, r3, 0x2c
/* 804C8074  90 1E 0A 24 */	stw r0, 0xa24(r30)
/* 804C8078  38 03 00 84 */	addi r0, r3, 0x84
/* 804C807C  90 1E 0A 38 */	stw r0, 0xa38(r30)
/* 804C8080  34 1E 0A 08 */	addic. r0, r30, 0xa08
/* 804C8084  41 82 00 54 */	beq lbl_804C80D8
/* 804C8088  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 804C808C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 804C8090  90 7E 0A 24 */	stw r3, 0xa24(r30)
/* 804C8094  38 03 00 58 */	addi r0, r3, 0x58
/* 804C8098  90 1E 0A 38 */	stw r0, 0xa38(r30)
/* 804C809C  34 1E 0A 28 */	addic. r0, r30, 0xa28
/* 804C80A0  41 82 00 10 */	beq lbl_804C80B0
/* 804C80A4  3C 60 80 4D */	lis r3, __vt__8cM3dGSph@ha
/* 804C80A8  38 03 C6 10 */	addi r0, r3, __vt__8cM3dGSph@l
/* 804C80AC  90 1E 0A 38 */	stw r0, 0xa38(r30)
lbl_804C80B0:
/* 804C80B0  34 1E 0A 08 */	addic. r0, r30, 0xa08
/* 804C80B4  41 82 00 24 */	beq lbl_804C80D8
/* 804C80B8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 804C80BC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 804C80C0  90 1E 0A 24 */	stw r0, 0xa24(r30)
/* 804C80C4  34 1E 0A 08 */	addic. r0, r30, 0xa08
/* 804C80C8  41 82 00 10 */	beq lbl_804C80D8
/* 804C80CC  3C 60 80 4D */	lis r3, __vt__8cM3dGAab@ha
/* 804C80D0  38 03 C6 1C */	addi r0, r3, __vt__8cM3dGAab@l
/* 804C80D4  90 1E 0A 20 */	stw r0, 0xa20(r30)
lbl_804C80D8:
/* 804C80D8  38 7E 09 04 */	addi r3, r30, 0x904
/* 804C80DC  38 80 00 00 */	li r4, 0
/* 804C80E0  4B BB C0 04 */	b __dt__12dCcD_GObjInfFv
lbl_804C80E4:
/* 804C80E4  34 1E 07 CC */	addic. r0, r30, 0x7cc
/* 804C80E8  41 82 00 84 */	beq lbl_804C816C
/* 804C80EC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 804C80F0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 804C80F4  90 7E 08 08 */	stw r3, 0x808(r30)
/* 804C80F8  38 03 00 2C */	addi r0, r3, 0x2c
/* 804C80FC  90 1E 08 EC */	stw r0, 0x8ec(r30)
/* 804C8100  38 03 00 84 */	addi r0, r3, 0x84
/* 804C8104  90 1E 09 00 */	stw r0, 0x900(r30)
/* 804C8108  34 1E 08 D0 */	addic. r0, r30, 0x8d0
/* 804C810C  41 82 00 54 */	beq lbl_804C8160
/* 804C8110  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 804C8114  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 804C8118  90 7E 08 EC */	stw r3, 0x8ec(r30)
/* 804C811C  38 03 00 58 */	addi r0, r3, 0x58
/* 804C8120  90 1E 09 00 */	stw r0, 0x900(r30)
/* 804C8124  34 1E 08 F0 */	addic. r0, r30, 0x8f0
/* 804C8128  41 82 00 10 */	beq lbl_804C8138
/* 804C812C  3C 60 80 4D */	lis r3, __vt__8cM3dGSph@ha
/* 804C8130  38 03 C6 10 */	addi r0, r3, __vt__8cM3dGSph@l
/* 804C8134  90 1E 09 00 */	stw r0, 0x900(r30)
lbl_804C8138:
/* 804C8138  34 1E 08 D0 */	addic. r0, r30, 0x8d0
/* 804C813C  41 82 00 24 */	beq lbl_804C8160
/* 804C8140  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 804C8144  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 804C8148  90 1E 08 EC */	stw r0, 0x8ec(r30)
/* 804C814C  34 1E 08 D0 */	addic. r0, r30, 0x8d0
/* 804C8150  41 82 00 10 */	beq lbl_804C8160
/* 804C8154  3C 60 80 4D */	lis r3, __vt__8cM3dGAab@ha
/* 804C8158  38 03 C6 1C */	addi r0, r3, __vt__8cM3dGAab@l
/* 804C815C  90 1E 08 E8 */	stw r0, 0x8e8(r30)
lbl_804C8160:
/* 804C8160  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 804C8164  38 80 00 00 */	li r4, 0
/* 804C8168  4B BB BF 7C */	b __dt__12dCcD_GObjInfFv
lbl_804C816C:
/* 804C816C  34 1E 07 90 */	addic. r0, r30, 0x790
/* 804C8170  41 82 00 54 */	beq lbl_804C81C4
/* 804C8174  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 804C8178  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 804C817C  90 7E 07 A8 */	stw r3, 0x7a8(r30)
/* 804C8180  38 03 00 20 */	addi r0, r3, 0x20
/* 804C8184  90 1E 07 AC */	stw r0, 0x7ac(r30)
/* 804C8188  34 1E 07 AC */	addic. r0, r30, 0x7ac
/* 804C818C  41 82 00 24 */	beq lbl_804C81B0
/* 804C8190  3C 60 80 4D */	lis r3, __vt__10dCcD_GStts@ha
/* 804C8194  38 03 C6 04 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 804C8198  90 1E 07 AC */	stw r0, 0x7ac(r30)
/* 804C819C  34 1E 07 AC */	addic. r0, r30, 0x7ac
/* 804C81A0  41 82 00 10 */	beq lbl_804C81B0
/* 804C81A4  3C 60 80 4D */	lis r3, __vt__10cCcD_GStts@ha
/* 804C81A8  38 03 C5 F8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 804C81AC  90 1E 07 AC */	stw r0, 0x7ac(r30)
lbl_804C81B0:
/* 804C81B0  34 1E 07 90 */	addic. r0, r30, 0x790
/* 804C81B4  41 82 00 10 */	beq lbl_804C81C4
/* 804C81B8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 804C81BC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 804C81C0  90 1E 07 A8 */	stw r0, 0x7a8(r30)
lbl_804C81C4:
/* 804C81C4  34 1E 07 50 */	addic. r0, r30, 0x750
/* 804C81C8  41 82 00 28 */	beq lbl_804C81F0
/* 804C81CC  3C 60 80 4D */	lis r3, __vt__12dBgS_AcchCir@ha
/* 804C81D0  38 03 C5 EC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 804C81D4  90 1E 07 5C */	stw r0, 0x75c(r30)
/* 804C81D8  38 7E 07 64 */	addi r3, r30, 0x764
/* 804C81DC  38 80 FF FF */	li r4, -1
/* 804C81E0  4B DA 6D 38 */	b __dt__8cM3dGCirFv
/* 804C81E4  38 7E 07 50 */	addi r3, r30, 0x750
/* 804C81E8  38 80 00 00 */	li r4, 0
/* 804C81EC  4B D9 FE C4 */	b __dt__13cBgS_PolyInfoFv
lbl_804C81F0:
/* 804C81F0  34 1E 05 78 */	addic. r0, r30, 0x578
/* 804C81F4  41 82 00 2C */	beq lbl_804C8220
/* 804C81F8  3C 60 80 4D */	lis r3, __vt__13dBgS_BombAcch@ha
/* 804C81FC  38 63 C6 28 */	addi r3, r3, __vt__13dBgS_BombAcch@l
/* 804C8200  90 7E 05 88 */	stw r3, 0x588(r30)
/* 804C8204  38 03 00 0C */	addi r0, r3, 0xc
/* 804C8208  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 804C820C  38 03 00 18 */	addi r0, r3, 0x18
/* 804C8210  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 804C8214  38 7E 05 78 */	addi r3, r30, 0x578
/* 804C8218  38 80 00 00 */	li r4, 0
/* 804C821C  4B BA DD 78 */	b __dt__9dBgS_AcchFv
lbl_804C8220:
/* 804C8220  28 1E 00 00 */	cmplwi r30, 0
/* 804C8224  41 82 00 1C */	beq lbl_804C8240
/* 804C8228  3C 60 80 4D */	lis r3, __vt__7dBomb_c@ha
/* 804C822C  38 03 C6 60 */	addi r0, r3, __vt__7dBomb_c@l
/* 804C8230  90 1E 05 68 */	stw r0, 0x568(r30)
/* 804C8234  7F C3 F3 78 */	mr r3, r30
/* 804C8238  38 80 00 00 */	li r4, 0
/* 804C823C  4B B5 0A 50 */	b __dt__10fopAc_ac_cFv
lbl_804C8240:
/* 804C8240  7F E0 07 35 */	extsh. r0, r31
/* 804C8244  40 81 00 0C */	ble lbl_804C8250
/* 804C8248  7F C3 F3 78 */	mr r3, r30
/* 804C824C  4B E0 6A F0 */	b __dl__FPv
lbl_804C8250:
/* 804C8250  7F C3 F3 78 */	mr r3, r30
/* 804C8254  39 61 00 20 */	addi r11, r1, 0x20
/* 804C8258  4B E9 9F C8 */	b _restgpr_27
/* 804C825C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C8260  7C 08 03 A6 */	mtlr r0
/* 804C8264  38 21 00 20 */	addi r1, r1, 0x20
/* 804C8268  4E 80 00 20 */	blr 
