lbl_80670F5C:
/* 80670F5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80670F60  7C 08 02 A6 */	mflr r0
/* 80670F64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80670F68  39 61 00 20 */	addi r11, r1, 0x20
/* 80670F6C  4B CF 12 70 */	b _savegpr_29
/* 80670F70  7C 7D 1B 78 */	mr r29, r3
/* 80670F74  3C 60 80 67 */	lis r3, l_door_open_demo@ha
/* 80670F78  3B E3 24 C8 */	addi r31, r3, l_door_open_demo@l
/* 80670F7C  38 00 00 00 */	li r0, 0
/* 80670F80  90 01 00 08 */	stw r0, 8(r1)
/* 80670F84  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 80670F88  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80670F8C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80670F90  7F A6 EB 78 */	mr r6, r29
/* 80670F94  38 E0 00 01 */	li r7, 1
/* 80670F98  39 1D 07 90 */	addi r8, r29, 0x790
/* 80670F9C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80670FA0  39 40 00 00 */	li r10, 0
/* 80670FA4  4B A0 52 A4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80670FA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80670FAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80670FB0  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80670FB4  7F C3 F3 78 */	mr r3, r30
/* 80670FB8  80 9D 05 88 */	lwz r4, 0x588(r29)
/* 80670FBC  7F A5 EB 78 */	mr r5, r29
/* 80670FC0  4B A0 3A 48 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80670FC4  38 00 00 01 */	li r0, 1
/* 80670FC8  98 1D 05 91 */	stb r0, 0x591(r29)
/* 80670FCC  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80670FD0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80670FD4  EC 00 08 2A */	fadds f0, f0, f1
/* 80670FD8  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80670FDC  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80670FE0  EC 00 08 2A */	fadds f0, f0, f1
/* 80670FE4  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80670FE8  38 00 00 20 */	li r0, 0x20
/* 80670FEC  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80670FF0  7F A3 EB 78 */	mr r3, r29
/* 80670FF4  4B FF FF 15 */	bl calcMtx__11daBdoorL5_cFv
/* 80670FF8  80 7D 05 88 */	lwz r3, 0x588(r29)
/* 80670FFC  4B A0 A9 C4 */	b Move__4dBgWFv
/* 80671000  7F A3 EB 78 */	mr r3, r29
/* 80671004  4B 9C 91 CC */	b getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80671008  38 00 00 FF */	li r0, 0xff
/* 8067100C  98 1D 05 93 */	stb r0, 0x593(r29)
/* 80671010  7F A3 EB 78 */	mr r3, r29
/* 80671014  4B FF FC 25 */	bl getArcName__11daBdoorL5_cFv
/* 80671018  90 7D 01 00 */	stw r3, 0x100(r29)
/* 8067101C  3B DE 40 C0 */	addi r30, r30, 0x40c0
/* 80671020  7F C3 F3 78 */	mr r3, r30
/* 80671024  7F A4 EB 78 */	mr r4, r29
/* 80671028  38 BF 00 18 */	addi r5, r31, 0x18
/* 8067102C  38 C0 00 FF */	li r6, 0xff
/* 80671030  4B 9D 67 28 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80671034  B0 7D 05 98 */	sth r3, 0x598(r29)
/* 80671038  7F C3 F3 78 */	mr r3, r30
/* 8067103C  7F A4 EB 78 */	mr r4, r29
/* 80671040  38 BF 00 00 */	addi r5, r31, 0
/* 80671044  38 C0 00 FF */	li r6, 0xff
/* 80671048  4B 9D 67 10 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8067104C  B0 7D 05 9A */	sth r3, 0x59a(r29)
/* 80671050  38 60 00 01 */	li r3, 1
/* 80671054  39 61 00 20 */	addi r11, r1, 0x20
/* 80671058  4B CF 11 D0 */	b _restgpr_29
/* 8067105C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80671060  7C 08 03 A6 */	mtlr r0
/* 80671064  38 21 00 20 */	addi r1, r1, 0x20
/* 80671068  4E 80 00 20 */	blr 
