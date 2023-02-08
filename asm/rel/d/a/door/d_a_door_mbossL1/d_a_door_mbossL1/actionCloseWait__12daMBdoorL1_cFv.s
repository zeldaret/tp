lbl_80676BE8:
/* 80676BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80676BEC  7C 08 02 A6 */	mflr r0
/* 80676BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80676BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80676BF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80676BFC  7C 7F 1B 78 */	mr r31, r3
/* 80676C00  A0 83 00 F8 */	lhz r4, 0xf8(r3)
/* 80676C04  28 04 00 03 */	cmplwi r4, 3
/* 80676C08  40 82 00 3C */	bne lbl_80676C44
/* 80676C0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676C10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676C14  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80676C18  3C 80 80 67 */	lis r4, l_staff_name@ha /* 0x80677558@ha */
/* 80676C1C  38 84 75 58 */	addi r4, r4, l_staff_name@l /* 0x80677558@l */
/* 80676C20  38 A0 00 00 */	li r5, 0
/* 80676C24  38 C0 00 00 */	li r6, 0
/* 80676C28  4B 9D 0E F5 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80676C2C  90 7F 05 E8 */	stw r3, 0x5e8(r31)
/* 80676C30  7F E3 FB 78 */	mr r3, r31
/* 80676C34  4B FF D2 8D */	bl demoProc__12daMBdoorL1_cFv
/* 80676C38  38 00 00 04 */	li r0, 4
/* 80676C3C  98 1F 05 CC */	stb r0, 0x5cc(r31)
/* 80676C40  48 00 01 90 */	b lbl_80676DD0
lbl_80676C44:
/* 80676C44  88 1F 06 00 */	lbz r0, 0x600(r31)
/* 80676C48  28 00 00 00 */	cmplwi r0, 0
/* 80676C4C  41 82 00 EC */	beq lbl_80676D38
/* 80676C50  28 04 00 02 */	cmplwi r4, 2
/* 80676C54  40 82 00 58 */	bne lbl_80676CAC
/* 80676C58  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80676C5C  28 00 00 01 */	cmplwi r0, 1
/* 80676C60  40 82 00 10 */	bne lbl_80676C70
/* 80676C64  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80676C68  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80676C6C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80676C70:
/* 80676C70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676C74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676C78  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80676C7C  3C 80 80 67 */	lis r4, l_staff_name@ha /* 0x80677558@ha */
/* 80676C80  38 84 75 58 */	addi r4, r4, l_staff_name@l /* 0x80677558@l */
/* 80676C84  38 A0 00 00 */	li r5, 0
/* 80676C88  38 C0 00 00 */	li r6, 0
/* 80676C8C  4B 9D 0E 91 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80676C90  90 7F 05 E8 */	stw r3, 0x5e8(r31)
/* 80676C94  7F E3 FB 78 */	mr r3, r31
/* 80676C98  4B FF D2 29 */	bl demoProc__12daMBdoorL1_cFv
/* 80676C9C  38 00 00 05 */	li r0, 5
/* 80676CA0  98 1F 05 CC */	stb r0, 0x5cc(r31)
/* 80676CA4  38 60 00 01 */	li r3, 1
/* 80676CA8  48 00 01 2C */	b lbl_80676DD4
lbl_80676CAC:
/* 80676CAC  4B FF FB 2D */	bl checkStopOpen__12daMBdoorL1_cFv
/* 80676CB0  2C 03 00 00 */	cmpwi r3, 0
/* 80676CB4  41 82 00 84 */	beq lbl_80676D38
/* 80676CB8  7F E3 FB 78 */	mr r3, r31
/* 80676CBC  4B 9C 35 45 */	bl getEventNo__13door_param2_cFP10fopAc_ac_c
/* 80676CC0  7C 7E 1B 78 */	mr r30, r3
/* 80676CC4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80676CC8  28 00 00 FF */	cmplwi r0, 0xff
/* 80676CCC  41 82 00 24 */	beq lbl_80676CF0
/* 80676CD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676CD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676CD8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80676CDC  7F E4 FB 78 */	mr r4, r31
/* 80676CE0  7F C5 F3 78 */	mr r5, r30
/* 80676CE4  4B 9D 09 B5 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80676CE8  B0 7F 05 D2 */	sth r3, 0x5d2(r31)
/* 80676CEC  48 00 00 2C */	b lbl_80676D18
lbl_80676CF0:
/* 80676CF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676CF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676CF8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80676CFC  3C 80 80 67 */	lis r4, d_a_door_mbossL1__stringBase0@ha /* 0x80677660@ha */
/* 80676D00  38 84 76 60 */	addi r4, r4, d_a_door_mbossL1__stringBase0@l /* 0x80677660@l */
/* 80676D04  38 84 02 FE */	addi r4, r4, 0x2fe
/* 80676D08  38 A0 00 FF */	li r5, 0xff
/* 80676D0C  38 C0 FF FF */	li r6, -1
/* 80676D10  4B 9D 08 05 */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 80676D14  B0 7F 05 D2 */	sth r3, 0x5d2(r31)
lbl_80676D18:
/* 80676D18  7F E3 FB 78 */	mr r3, r31
/* 80676D1C  A8 9F 05 D2 */	lha r4, 0x5d2(r31)
/* 80676D20  7F C5 F3 78 */	mr r5, r30
/* 80676D24  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80676D28  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80676D2C  38 E0 00 00 */	li r7, 0
/* 80676D30  39 00 00 01 */	li r8, 1
/* 80676D34  4B 9A 49 49 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80676D38:
/* 80676D38  7F E3 FB 78 */	mr r3, r31
/* 80676D3C  4B FF BA FD */	bl getNowLevel__FP10fopAc_ac_c
/* 80676D40  2C 03 00 01 */	cmpwi r3, 1
/* 80676D44  41 82 00 54 */	beq lbl_80676D98
/* 80676D48  88 1F 06 00 */	lbz r0, 0x600(r31)
/* 80676D4C  28 00 00 00 */	cmplwi r0, 0
/* 80676D50  40 82 00 48 */	bne lbl_80676D98
/* 80676D54  7F E3 FB 78 */	mr r3, r31
/* 80676D58  4B FF FC 79 */	bl checkStopClose__12daMBdoorL1_cFv
/* 80676D5C  2C 03 00 00 */	cmpwi r3, 0
/* 80676D60  41 82 00 38 */	beq lbl_80676D98
/* 80676D64  38 00 00 01 */	li r0, 1
/* 80676D68  98 1F 06 00 */	stb r0, 0x600(r31)
/* 80676D6C  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80676D70  7F E4 FB 78 */	mr r4, r31
/* 80676D74  38 A0 00 01 */	li r5, 1
/* 80676D78  4B FF BB F9 */	bl closeInit__13dDoor_stop2_cFP10fopAc_ac_cUc
/* 80676D7C  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80676D80  7F E4 FB 78 */	mr r4, r31
/* 80676D84  4B FF BB 31 */	bl calcMtx__13dDoor_stop2_cFP10fopAc_ac_c
/* 80676D88  38 00 00 06 */	li r0, 6
/* 80676D8C  98 1F 05 CC */	stb r0, 0x5cc(r31)
/* 80676D90  38 60 00 01 */	li r3, 1
/* 80676D94  48 00 00 40 */	b lbl_80676DD4
lbl_80676D98:
/* 80676D98  7F E3 FB 78 */	mr r3, r31
/* 80676D9C  4B FF F5 6D */	bl checkOpen__12daMBdoorL1_cFv
/* 80676DA0  2C 03 00 00 */	cmpwi r3, 0
/* 80676DA4  41 82 00 2C */	beq lbl_80676DD0
/* 80676DA8  88 1F 05 DE */	lbz r0, 0x5de(r31)
/* 80676DAC  54 00 08 3C */	slwi r0, r0, 1
/* 80676DB0  7C 7F 02 14 */	add r3, r31, r0
/* 80676DB4  A8 03 05 D4 */	lha r0, 0x5d4(r3)
/* 80676DB8  B0 1F 00 FC */	sth r0, 0xfc(r31)
/* 80676DBC  38 00 00 FF */	li r0, 0xff
/* 80676DC0  98 1F 00 FE */	stb r0, 0xfe(r31)
/* 80676DC4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80676DC8  60 00 00 04 */	ori r0, r0, 4
/* 80676DCC  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80676DD0:
/* 80676DD0  38 60 00 01 */	li r3, 1
lbl_80676DD4:
/* 80676DD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80676DD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80676DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80676DE0  7C 08 03 A6 */	mtlr r0
/* 80676DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80676DE8  4E 80 00 20 */	blr 
