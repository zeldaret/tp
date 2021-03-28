lbl_80AC1274:
/* 80AC1274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC1278  7C 08 02 A6 */	mflr r0
/* 80AC127C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC1280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC1284  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC1288  7C 7E 1B 78 */	mr r30, r3
/* 80AC128C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AC1290  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AC1294  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AC1298  7F E3 FB 78 */	mr r3, r31
/* 80AC129C  3C 80 80 AC */	lis r4, struct_80AC4654+0x0@ha
/* 80AC12A0  38 84 46 54 */	addi r4, r4, struct_80AC4654+0x0@l
/* 80AC12A4  38 84 00 3D */	addi r4, r4, 0x3d
/* 80AC12A8  7F C5 F3 78 */	mr r5, r30
/* 80AC12AC  38 C0 FF FF */	li r6, -1
/* 80AC12B0  4B 58 68 6C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AC12B4  2C 03 FF FF */	cmpwi r3, -1
/* 80AC12B8  41 82 00 68 */	beq lbl_80AC1320
/* 80AC12BC  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80AC12C0  7F E3 FB 78 */	mr r3, r31
/* 80AC12C4  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AC12C8  3C A0 80 AC */	lis r5, mCutNameList__12daNpc_Saru_c@ha
/* 80AC12CC  38 A5 4D 90 */	addi r5, r5, mCutNameList__12daNpc_Saru_c@l
/* 80AC12D0  38 C0 00 04 */	li r6, 4
/* 80AC12D4  38 E0 00 00 */	li r7, 0
/* 80AC12D8  39 00 00 00 */	li r8, 0
/* 80AC12DC  4B 58 6B 34 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80AC12E0  7C 60 1B 78 */	mr r0, r3
/* 80AC12E4  7F C3 F3 78 */	mr r3, r30
/* 80AC12E8  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AC12EC  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80AC12F0  3C A0 80 AC */	lis r5, mCutList__12daNpc_Saru_c@ha
/* 80AC12F4  38 05 4D C4 */	addi r0, r5, mCutList__12daNpc_Saru_c@l
/* 80AC12F8  7D 80 32 14 */	add r12, r0, r6
/* 80AC12FC  4B 8A 0D 88 */	b __ptmf_scall
/* 80AC1300  60 00 00 00 */	nop 
/* 80AC1304  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1308  41 82 00 10 */	beq lbl_80AC1318
/* 80AC130C  7F E3 FB 78 */	mr r3, r31
/* 80AC1310  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AC1314  4B 58 6E 68 */	b cutEnd__16dEvent_manager_cFi
lbl_80AC1318:
/* 80AC1318  38 60 00 01 */	li r3, 1
/* 80AC131C  48 00 00 08 */	b lbl_80AC1324
lbl_80AC1320:
/* 80AC1320  38 60 00 00 */	li r3, 0
lbl_80AC1324:
/* 80AC1324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC1328  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC132C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC1330  7C 08 03 A6 */	mtlr r0
/* 80AC1334  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC1338  4E 80 00 20 */	blr 
